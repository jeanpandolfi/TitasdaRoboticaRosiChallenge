;; Auto-generated. Do not edit!


(when (boundp 'rosi_defy::HokuyoReading)
  (if (not (find-package "ROSI_DEFY"))
    (make-package "ROSI_DEFY"))
  (shadow 'HokuyoReading (find-package "ROSI_DEFY")))
(unless (find-package "ROSI_DEFY::HOKUYOREADING")
  (make-package "ROSI_DEFY::HOKUYOREADING"))

(in-package "ROS")
;;//! \htmlinclude HokuyoReading.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosi_defy::HokuyoReading
  :super ros::object
  :slots (_header _reading ))

(defmethod rosi_defy::HokuyoReading
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:reading __reading) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _reading __reading)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:reading
   (&optional __reading)
   (if __reading (setq _reading __reading)) _reading)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _reading
    (* 4    (length _reading)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _reading
     (write-long (length _reading) s)
     (dotimes (i (length _reading))
       (sys::poke (elt _reading i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _reading
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reading (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _reading i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get rosi_defy::HokuyoReading :md5sum-) "5281b4d1d68ebd51c09c4a46698bf9a4")
(setf (get rosi_defy::HokuyoReading :datatype-) "rosi_defy/HokuyoReading")
(setf (get rosi_defy::HokuyoReading :definition-)
      "Header header
float32[] reading


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



(provide :rosi_defy/HokuyoReading "5281b4d1d68ebd51c09c4a46698bf9a4")


