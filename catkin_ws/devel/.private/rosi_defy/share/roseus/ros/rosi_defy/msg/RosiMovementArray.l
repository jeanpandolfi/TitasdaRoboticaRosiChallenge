;; Auto-generated. Do not edit!


(when (boundp 'rosi_defy::RosiMovementArray)
  (if (not (find-package "ROSI_DEFY"))
    (make-package "ROSI_DEFY"))
  (shadow 'RosiMovementArray (find-package "ROSI_DEFY")))
(unless (find-package "ROSI_DEFY::ROSIMOVEMENTARRAY")
  (make-package "ROSI_DEFY::ROSIMOVEMENTARRAY"))

(in-package "ROS")
;;//! \htmlinclude RosiMovementArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosi_defy::RosiMovementArray
  :super ros::object
  :slots (_header _movement_array ))

(defmethod rosi_defy::RosiMovementArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:movement_array __movement_array) (let (r) (dotimes (i 0) (push (instance rosi_defy::RosiMovement :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _movement_array __movement_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:movement_array
   (&rest __movement_array)
   (if (keywordp (car __movement_array))
       (send* _movement_array __movement_array)
     (progn
       (if __movement_array (setq _movement_array (car __movement_array)))
       _movement_array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rosi_defy/RosiMovement[] _movement_array
    (apply #'+ (send-all _movement_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rosi_defy/RosiMovement[] _movement_array
     (write-long (length _movement_array) s)
     (dolist (elem _movement_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rosi_defy/RosiMovement[] _movement_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _movement_array (let (r) (dotimes (i n) (push (instance rosi_defy::RosiMovement :init) r)) r))
     (dolist (elem- _movement_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rosi_defy::RosiMovementArray :md5sum-) "a054d7e26f4857f061b21c11e4cd865f")
(setf (get rosi_defy::RosiMovementArray :datatype-) "rosi_defy/RosiMovementArray")
(setf (get rosi_defy::RosiMovementArray :definition-)
      "Header header
RosiMovement[] movement_array

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

================================================================================
MSG: rosi_defy/RosiMovement
int64 nodeID
float64 joint_var


")



(provide :rosi_defy/RosiMovementArray "a054d7e26f4857f061b21c11e4cd865f")


