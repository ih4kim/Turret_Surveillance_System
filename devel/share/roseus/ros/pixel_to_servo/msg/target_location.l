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
  :slots (_xpos _ypos _shoot ))

(defmethod pixel_to_servo::target_location
  (:init
   (&key
    ((:xpos __xpos) 0)
    ((:ypos __ypos) 0)
    ((:shoot __shoot) nil)
    )
   (send-super :init)
   (setq _xpos (round __xpos))
   (setq _ypos (round __ypos))
   (setq _shoot __shoot)
   self)
  (:xpos
   (&optional __xpos)
   (if __xpos (setq _xpos __xpos)) _xpos)
  (:ypos
   (&optional __ypos)
   (if __ypos (setq _ypos __ypos)) _ypos)
  (:shoot
   (&optional (__shoot :null))
   (if (not (eq __shoot :null)) (setq _shoot __shoot)) _shoot)
  (:serialization-length
   ()
   (+
    ;; int64 _xpos
    8
    ;; int64 _ypos
    8
    ;; bool _shoot
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _xpos
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _xpos (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _xpos) (= (length (_xpos . bv)) 2)) ;; bignum
              (write-long (ash (elt (_xpos . bv) 0) 0) s)
              (write-long (ash (elt (_xpos . bv) 1) -1) s))
             ((and (class _xpos) (= (length (_xpos . bv)) 1)) ;; big1
              (write-long (elt (_xpos . bv) 0) s)
              (write-long (if (>= _xpos 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _xpos s)(write-long (if (>= _xpos 0) 0 #xffffffff) s)))
     ;; int64 _ypos
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ypos (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ypos) (= (length (_ypos . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ypos . bv) 0) 0) s)
              (write-long (ash (elt (_ypos . bv) 1) -1) s))
             ((and (class _ypos) (= (length (_ypos . bv)) 1)) ;; big1
              (write-long (elt (_ypos . bv) 0) s)
              (write-long (if (>= _ypos 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ypos s)(write-long (if (>= _ypos 0) 0 #xffffffff) s)))
     ;; bool _shoot
       (if _shoot (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _xpos
#+(or :alpha :irix6 :x86_64)
      (setf _xpos (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _xpos (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _ypos
#+(or :alpha :irix6 :x86_64)
      (setf _ypos (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ypos (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _shoot
     (setq _shoot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pixel_to_servo::target_location :md5sum-) "7c6d9597e9887f51e118b0aa12a96938")
(setf (get pixel_to_servo::target_location :datatype-) "pixel_to_servo/target_location")
(setf (get pixel_to_servo::target_location :definition-)
      "int64 xpos
int64 ypos
bool shoot

")



(provide :pixel_to_servo/target_location "7c6d9597e9887f51e118b0aa12a96938")


