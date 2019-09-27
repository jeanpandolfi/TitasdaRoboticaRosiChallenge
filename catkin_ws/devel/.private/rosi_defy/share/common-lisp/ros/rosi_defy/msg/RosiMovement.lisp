; Auto-generated. Do not edit!


(cl:in-package rosi_defy-msg)


;//! \htmlinclude RosiMovement.msg.html

(cl:defclass <RosiMovement> (roslisp-msg-protocol:ros-message)
  ((nodeID
    :reader nodeID
    :initarg :nodeID
    :type cl:integer
    :initform 0)
   (joint_var
    :reader joint_var
    :initarg :joint_var
    :type cl:float
    :initform 0.0))
)

(cl:defclass RosiMovement (<RosiMovement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RosiMovement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RosiMovement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosi_defy-msg:<RosiMovement> is deprecated: use rosi_defy-msg:RosiMovement instead.")))

(cl:ensure-generic-function 'nodeID-val :lambda-list '(m))
(cl:defmethod nodeID-val ((m <RosiMovement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosi_defy-msg:nodeID-val is deprecated.  Use rosi_defy-msg:nodeID instead.")
  (nodeID m))

(cl:ensure-generic-function 'joint_var-val :lambda-list '(m))
(cl:defmethod joint_var-val ((m <RosiMovement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosi_defy-msg:joint_var-val is deprecated.  Use rosi_defy-msg:joint_var instead.")
  (joint_var m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RosiMovement>) ostream)
  "Serializes a message object of type '<RosiMovement>"
  (cl:let* ((signed (cl:slot-value msg 'nodeID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_var))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RosiMovement>) istream)
  "Deserializes a message object of type '<RosiMovement>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nodeID) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_var) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RosiMovement>)))
  "Returns string type for a message object of type '<RosiMovement>"
  "rosi_defy/RosiMovement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RosiMovement)))
  "Returns string type for a message object of type 'RosiMovement"
  "rosi_defy/RosiMovement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RosiMovement>)))
  "Returns md5sum for a message object of type '<RosiMovement>"
  "2e8245905f61ae0a097d16c2c66c69fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RosiMovement)))
  "Returns md5sum for a message object of type 'RosiMovement"
  "2e8245905f61ae0a097d16c2c66c69fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RosiMovement>)))
  "Returns full string definition for message of type '<RosiMovement>"
  (cl:format cl:nil "int64 nodeID~%float64 joint_var~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RosiMovement)))
  "Returns full string definition for message of type 'RosiMovement"
  (cl:format cl:nil "int64 nodeID~%float64 joint_var~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RosiMovement>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RosiMovement>))
  "Converts a ROS message object to a list"
  (cl:list 'RosiMovement
    (cl:cons ':nodeID (nodeID msg))
    (cl:cons ':joint_var (joint_var msg))
))
