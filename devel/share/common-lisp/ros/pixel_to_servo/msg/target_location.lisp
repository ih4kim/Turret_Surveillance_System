; Auto-generated. Do not edit!


(cl:in-package pixel_to_servo-msg)


;//! \htmlinclude target_location.msg.html

(cl:defclass <target_location> (roslisp-msg-protocol:ros-message)
  ((xpos
    :reader xpos
    :initarg :xpos
    :type cl:fixnum
    :initform 0)
   (ypos
    :reader ypos
    :initarg :ypos
    :type cl:fixnum
    :initform 0))
)

(cl:defclass target_location (<target_location>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <target_location>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'target_location)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pixel_to_servo-msg:<target_location> is deprecated: use pixel_to_servo-msg:target_location instead.")))

(cl:ensure-generic-function 'xpos-val :lambda-list '(m))
(cl:defmethod xpos-val ((m <target_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pixel_to_servo-msg:xpos-val is deprecated.  Use pixel_to_servo-msg:xpos instead.")
  (xpos m))

(cl:ensure-generic-function 'ypos-val :lambda-list '(m))
(cl:defmethod ypos-val ((m <target_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pixel_to_servo-msg:ypos-val is deprecated.  Use pixel_to_servo-msg:ypos instead.")
  (ypos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <target_location>) ostream)
  "Serializes a message object of type '<target_location>"
  (cl:let* ((signed (cl:slot-value msg 'xpos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ypos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <target_location>) istream)
  "Deserializes a message object of type '<target_location>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xpos) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ypos) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<target_location>)))
  "Returns string type for a message object of type '<target_location>"
  "pixel_to_servo/target_location")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'target_location)))
  "Returns string type for a message object of type 'target_location"
  "pixel_to_servo/target_location")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<target_location>)))
  "Returns md5sum for a message object of type '<target_location>"
  "d6ba7dc735dee2eb6828c1c2a7ece7d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'target_location)))
  "Returns md5sum for a message object of type 'target_location"
  "d6ba7dc735dee2eb6828c1c2a7ece7d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<target_location>)))
  "Returns full string definition for message of type '<target_location>"
  (cl:format cl:nil "int16 xpos~%int16 ypos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'target_location)))
  "Returns full string definition for message of type 'target_location"
  (cl:format cl:nil "int16 xpos~%int16 ypos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <target_location>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <target_location>))
  "Converts a ROS message object to a list"
  (cl:list 'target_location
    (cl:cons ':xpos (xpos msg))
    (cl:cons ':ypos (ypos msg))
))
