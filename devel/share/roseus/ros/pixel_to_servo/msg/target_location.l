;; Auto-generated. Do not edit!


(when (boundp 'pixel_to_servo::target_location)
  (if (not (find-package "PIXEL_TO_SERVO"))
    (make-package "PIXEL_TO_SERVO"))
  (shadow 'target_location (find-package "PIXEL_TO_SERVO")))
(unless (find-package "PIXEL_TO_SERVO::TARGET_LOCATION")
  (make-package "PIXEL_TO_SERVO::TARGET_LOCATION"))

(in-package "ROS")
;;//! \htmlinclude target_location.msg.html


(defclass pixel_to_servo::target_location
  :super ros::object
  :slots (_xpos _ypos ))

(defmethod pixel_to_servo::target_location
  (:init
   (&key
    ((:xpos __xpos) 0)
    ((:ypos __ypos) 0)
    )
   (send-super :init)
   (setq _xpos (round __xpos))
   (setq _ypos (round __ypos))
   self)
  (:xpos
   (&optional __xpos)
   (if __xpos (setq _xpos __xpos)) _xpos)
  (:ypos
   (&optional __ypos)
   (if __ypos (setq _ypos __ypos)) _ypos)
  (:serialization-length
   ()
   (+
    ;; int16 _xpos
    2
    ;; int16 _ypos
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _xpos
       (write-word _xpos s)
     ;; int16 _ypos
       (write-word _ypos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _xpos
     (setq _xpos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ypos
     (setq _ypos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get pixel_to_servo::target_location :md5sum-) "d6ba7dc735dee2eb6828c1c2a7ece7d0")
(setf (get pixel_to_servo::target_location :datatype-) "pixel_to_servo/target_location")
(setf (get pixel_to_servo::target_location :definition-)
      "int16 xpos
int16 ypos

")



(provide :pixel_to_servo/target_location "d6ba7dc735dee2eb6828c1c2a7ece7d0")


