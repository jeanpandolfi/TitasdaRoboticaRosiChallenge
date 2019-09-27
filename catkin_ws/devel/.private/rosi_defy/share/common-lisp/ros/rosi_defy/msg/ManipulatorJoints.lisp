; Auto-generated. Do not edit!


(cl:in-package rosi_defy-msg)


;//! \htmlinclude ManipulatorJoints.msg.html

(cl:defclass <ManipulatorJoints> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (joint_variable
    :reader joint_variable
    :initarg :joint_variable
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ManipulatorJoints (<ManipulatorJoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManipulatorJoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManipulatorJoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosi_defy-msg:<ManipulatorJoints> is deprecated: use rosi_defy-msg:ManipulatorJoints instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ManipulatorJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosi_defy-msg:header-val is deprecated.  Use rosi_defy-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'joint_variable-val :lambda-list '(m))
(cl:defmethod joint_variable-val ((m <ManipulatorJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosi_defy-msg:joint_variable-val is deprecated.  Use rosi_defy-msg:joint_variable instead.")
  (joint_variable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManipulatorJoints>) ostream)
  "Serializes a message object of type '<ManipulatorJoints>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_variable))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_variable))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManipulatorJoints>) istream)
  "Deserializes a message object of type '<ManipulatorJoints>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_variable) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_variable)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManipulatorJoints>)))
  "Returns string type for a message object of type '<ManipulatorJoints>"
  "rosi_defy/ManipulatorJoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManipulatorJoints)))
  "Returns string type for a message object of type 'ManipulatorJoints"
  "rosi_defy/ManipulatorJoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManipulatorJoints>)))
  "Returns md5sum for a message object of type '<ManipulatorJoints>"
  "cdea252426110b7426593c625fd3bf46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManipulatorJoints)))
  "Returns md5sum for a message object of type 'ManipulatorJoints"
  "cdea252426110b7426593c625fd3bf46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManipulatorJoints>)))
  "Returns full string definition for message of type '<ManipulatorJoints>"
  (cl:format cl:nil "Header header~%float32[] joint_variable~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManipulatorJoints)))
  "Returns full string definition for message of type 'ManipulatorJoints"
  (cl:format cl:nil "Header header~%float32[] joint_variable~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManipulatorJoints>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_variable) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManipulatorJoints>))
  "Converts a ROS message object to a list"
  (cl:list 'ManipulatorJoints
    (cl:cons ':header (header msg))
    (cl:cons ':joint_variable (joint_variable msg))
))
