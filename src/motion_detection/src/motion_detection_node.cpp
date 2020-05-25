#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <pixel_to_servo/target_location.h>
#include <queue>
#include <iostream>
#include <std_msgs/Int16.h>
#include <std_msgs/Bool.h>
#include <opencv2/imgproc/types_c.h>

static const std::string OPENCV_WINDOW = "Pi Cam";
static const std::string other_window = "other window..";
static const std::string the_other_window = "the other window..";

class ImageConverter{
    ros::NodeHandle nh_;
    image_transport::ImageTransport it_;
    image_transport::Subscriber image_sub;
    ros::Publisher servoPub;
    bool first_time = 1;
    cv::Mat sigh;
    cv::Mat sighsigh;

    public:
    ImageConverter(): it_(nh_)
    {
        servoPub = nh_.advertise<pixel_to_servo::target_location>("Target_Location",10);
        image_sub = it_.subscribe("PiCamera_topic", 1, &ImageConverter::imageCallback, this);
        cv::namedWindow(OPENCV_WINDOW);
        cv::namedWindow(other_window);
        cv::namedWindow(the_other_window);
    }

    ~ImageConverter(){
        cv::destroyWindow(OPENCV_WINDOW);
    }

    void imageCallback(const sensor_msgs::ImageConstPtr& msg){
        cv_bridge::CvImagePtr cv_ptr;
        try{
            cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);

        }
        catch(cv_bridge::Exception& e){
            ROS_ERROR("cv_bridge exception: %s", e.what());
            return;
        }
        cv::imshow(OPENCV_WINDOW, cv_ptr->image);

        if(first_time){
            cvtColor(cv_ptr->image, sigh, cv::COLOR_RGB2GRAY);
            first_time = false;
            return;       

        }
        cv::Mat sigh2;        

        cvtColor(cv_ptr->image, sigh2, cv::COLOR_RGB2GRAY);
        cv::subtract(sigh, sigh2, sighsigh);
        cv::Canny(sighsigh, sighsigh, 50, 150);
        cv::dilate(sighsigh, sighsigh, (10,10));

        cv::threshold(sighsigh,sighsigh, 0, 200, cv::THRESH_BINARY);
        cv::erode(sighsigh, sighsigh, cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(1, 1), cv::Point(-1, -1)), cv::Point(-1, -1), 1, 0, cv::morphologyDefaultBorderValue());

	    cv::dilate(sighsigh , sighsigh, cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(5, 5), cv::Point(-1, -1)), cv::Point(-1, -1), 1, 0, cv::morphologyDefaultBorderValue());

        std::vector<std::vector<cv::Point> > contours;
        cv::findContours( sighsigh, contours, cv::RETR_TREE, cv::CHAIN_APPROX_SIMPLE );
        cv::Mat somesome = cv_ptr->image;
        //cv::drawContours(somesome , contours, -1, (0,255,0), 3);
        cv::Moments m = cv::moments(sighsigh, true);
        cv::Point p(m.m10/m.m00, m.m01/m.m00);
        
        cv::imshow(other_window, sighsigh);

        cv::Point bigPoint;
        if(contours.size()!=0){
        for (int i = 0; i < contours.size(); i++){
            cv::Rect rect = cv::boundingRect(contours[i]);
            cv::Point centre = cv::Point((rect.x + rect.width) /2 , (rect.y+rect.height)/2);
            bigPoint.x += centre.x;
            bigPoint.y += centre.y;
            //   if (cv::contourArea(contours[i]) < 2){
            //       std::cout<<"HERE";
            //       break;
            //   }
            
            cv::rectangle(somesome,rect,(255,255,255),2);
        }
        bigPoint.x = bigPoint.x/contours.size() *2;
        bigPoint.y = bigPoint.y/contours.size() *2;
        cv::circle(somesome, bigPoint, 15, (255,255,255), 3);
    
        pixel_to_servo::target_location targetMsg;

        targetMsg.xpos = bigPoint.x;
        targetMsg.ypos = bigPoint.y;
        targetMsg.shoot = false;

        servoPub.publish(targetMsg);

        cv::imshow(the_other_window, somesome);
        }
        
        sigh = sigh2;
        
        char c = (char)cv::waitKey(1);
        if( c == 27 )
            ROS_INFO("esc pressed");
    
    }
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "motion_detection_node");
  ImageConverter ic;
  ros::spin();
  return 0;
}