; Auto-generated. Do not edit!


(cl:in-package rosi_defy-msg)


;//! \htmlinclude RosiMovementArray.msg.html

(cl:defclass <RosiMovementArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (movement_array
    :reader movement_array
    :initarg :movement_array
    :type (cl:vector rosi_defy-msg:RosiMovement)
   :initform (cl:make-array 0 :element-type 'rosi_defy-msg:RosiMovement :initial-element (cl:make-instance 'rosi_defy-msg:RosiMovement))))
)

(cl:defclass RosiMovementArray (<RosiMovementArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RosiMovementArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RosiMovementArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosi_defy-msg:<RosiMovementArray> is deprecated: use rosi_defy-msg:RosiMovementArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RosiMovementArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosi_defy-msg:header-val is deprecated.  Use rosi_defy-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'movement_array-val :lambda-list '(m))
(cl:defmethod movement_array-val ((m <RosiMovementArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosi_defy-msg:movement_array-val is deprecated.  Use rosi_defy-msg:movement_array instead.")
  (movement_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RosiMovementArray>) ostream)
  "Serializes a message object of type '<RosiMovementArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'movement_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'movement_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RosiMovementArray>) istream)
  "Deserializes a message object of type '<RosiMovementArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'movement_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'movement_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rosi_defy-msg:RosiMovement))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RosiMovementArray>)))
  "Returns string type for a message object of type '<RosiMovementArray>"
  "rosi_defy/RosiMovementArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RosiMovementArray)))
  "Returns string type for a message object of type 'RosiMovementArray"
  "rosi_defy/RosiMovementArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RosiMovementArray>)))
  "Returns md5sum for a message object of type '<RosiMovementArray>"
  "a054d7e26f4857f061b21c11e4cd865f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RosiMovementArray)))
  "Returns md5sum for a message object of type 'RosiMovementArray"
  "a054d7e26f4857f061b21c11e4cd865f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RosiMovementArray>)))
  "Returns full string definition for message of type '<RosiMovementArray>"
  (cl:format cl:nil "Header header~%RosiMovement[] movement_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rosi_defy/RosiMovement~%int64 nodeID~%float64 joint_var~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RosiMovementArray)))
  "Returns full string definition for message of type 'RosiMovementArray"
  (cl:format cl:nil "Header header~%RosiMovement[] movement_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rosi_defy/RosiMovement~%int64 nodeID~%float64 joint_var~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RosiMovementArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'movement_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RosiMovementArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RosiMovementArray
    (cl:cons ':header (header msg))
    (cl:cons ':movement_array (movement_array msg))
))
