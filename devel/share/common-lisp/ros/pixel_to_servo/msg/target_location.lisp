; Auto-generated. Do not edit!


(cl:in-package pixel_to_servo-msg)


;//! \htmlinclude target_location.msg.html

(cl:defclass <target_location> (roslisp-msg-protocol:ros-message)
  ((xpos
    :reader xpos
    :initarg :xpos
    :type cl:integer
    :initform 0)
   (ypos
    :reader ypos
    :initarg :ypos
    :type cl:integer
    :initform 0)
   (shoot
    :reader shoot
    :initarg :shoot
    :type cl:boolean
    :initform cl:nil))
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

(cl:ensure-generic-function 'shoot-val :lambda-list '(m))
(cl:defmethod shoot-val ((m <target_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pixel_to_servo-msg:shoot-val is deprecated.  Use pixel_to_servo-msg:shoot instead.")
  (shoot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <target_location>) ostream)
  "Serializes a message object of type '<target_location>"
  (cl:let* ((signed (cl:slot-value msg 'xpos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ypos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'shoot) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <target_location>) istream)
  "Deserializes a message object of type '<target_location>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xpos) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ypos) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'shoot) (cl:not (cl:zerop (cl:read-byte istream))))
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
  "7c6d9597e9887f51e118b0aa12a96938")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'target_location)))
  "Returns md5sum for a message object of type 'target_location"
  "7c6d9597e9887f51e118b0aa12a96938")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<target_location>)))
  "Returns full string definition for message of type '<target_location>"
  (cl:format cl:nil "int64 xpos~%int64 ypos~%bool shoot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'target_location)))
  "Returns full string definition for message of type 'target_location"
  (cl:format cl:nil "int64 xpos~%int64 ypos~%bool shoot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <target_location>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <target_location>))
  "Converts a ROS message object to a list"
  (cl:list 'target_location
    (cl:cons ':xpos (xpos msg))
    (cl:cons ':ypos (ypos msg))
    (cl:cons ':shoot (shoot msg))
))
