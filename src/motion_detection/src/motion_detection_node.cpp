#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

static const std::string OPENCV_WINDOW = "Pi Cam";

class ImageConverter{
    ros::NodeHandle nh_;
    image_transport::ImageTransport it_;
    image_transport::Subscriber image_sub;

    public:
    ImageConverter(): it_(nh_)
    {
        image_sub = it_.subscribe("PiCamera_topic", 1, &ImageConverter::imageCallback, this);
        cv::namedWindow(OPENCV_WINDOW);
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