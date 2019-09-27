;; Auto-generated. Do not edit!


(when (boundp 'rosi_defy::ManipulatorJoints)
  (if (not (find-package "ROSI_DEFY"))
    (make-package "ROSI_DEFY"))
  (shadow 'ManipulatorJoints (find-package "ROSI_DEFY")))
(unless (find-package "ROSI_DEFY::MANIPULATORJOINTS")
  (make-package "ROSI_DEFY::MANIPULATORJOINTS"))

(in-package "ROS")
;;//! \htmlinclude ManipulatorJoints.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosi_defy::ManipulatorJoints
  :super ros::object
  :slots (_header _joint_variable ))

(defmethod rosi_defy::ManipulatorJoints
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:joint_variable __joint_variable) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _joint_variable __joint_variable)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:joint_variable
   (&optional __joint_variable)
   (if __joint_variable (setq _joint_variable __joint_variable)) _joint_variable)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _joint_variable
    (* 4    (length _joint_variable)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _joint_variable
     (write-long (length _joint_variable) s)
     (dotimes (i (length _joint_variable))
       (sys::poke (elt _joint_variable i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _joint_variable
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_variable (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_variable i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get rosi_defy::ManipulatorJoints :md5sum-) "cdea252426110b7426593c625fd3bf46")
(setf (get rosi_defy::ManipulatorJoints :datatype-) "rosi_defy/ManipulatorJoints")
(setf (get rosi_defy::ManipulatorJoints :definition-)
      "Header header
float32[] joint_variable


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :rosi_defy/ManipulatorJoints "cdea252426110b7426593c625fd3bf46")


