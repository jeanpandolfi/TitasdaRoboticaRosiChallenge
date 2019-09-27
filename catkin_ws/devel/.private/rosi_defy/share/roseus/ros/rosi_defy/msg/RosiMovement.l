;; Auto-generated. Do not edit!


(when (boundp 'rosi_defy::RosiMovement)
  (if (not (find-package "ROSI_DEFY"))
    (make-package "ROSI_DEFY"))
  (shadow 'RosiMovement (find-package "ROSI_DEFY")))
(unless (find-package "ROSI_DEFY::ROSIMOVEMENT")
  (make-package "ROSI_DEFY::ROSIMOVEMENT"))

(in-package "ROS")
;;//! \htmlinclude RosiMovement.msg.html


(defclass rosi_defy::RosiMovement
  :super ros::object
  :slots (_nodeID _joint_var ))

(defmethod rosi_defy::RosiMovement
  (:init
   (&key
    ((:nodeID __nodeID) 0)
    ((:joint_var __joint_var) 0.0)
    )
   (send-super :init)
   (setq _nodeID (round __nodeID))
   (setq _joint_var (float __joint_var))
   self)
  (:nodeID
   (&optional __nodeID)
   (if __nodeID (setq _nodeID __nodeID)) _nodeID)
  (:joint_var
   (&optional __joint_var)
   (if __joint_var (setq _joint_var __joint_var)) _joint_var)
  (:serialization-length
   ()
   (+
    ;; int64 _nodeID
    8
    ;; float64 _joint_var
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _nodeID
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _nodeID (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _nodeID) (= (length (_nodeID . bv)) 2)) ;; bignum
              (write-long (ash (elt (_nodeID . bv) 0) 0) s)
              (write-long (ash (elt (_nodeID . bv) 1) -1) s))
             ((and (class _nodeID) (= (length (_nodeID . bv)) 1)) ;; big1
              (write-long (elt (_nodeID . bv) 0) s)
              (write-long (if (>= _nodeID 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _nodeID s)(write-long (if (>= _nodeID 0) 0 #xffffffff) s)))
     ;; float64 _joint_var
       (sys::poke _joint_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _nodeID
#+(or :alpha :irix6 :x86_64)
      (setf _nodeID (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _nodeID (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _joint_var
     (setq _joint_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rosi_defy::RosiMovement :md5sum-) "2e8245905f61ae0a097d16c2c66c69fc")
(setf (get rosi_defy::RosiMovement :datatype-) "rosi_defy/RosiMovement")
(setf (get rosi_defy::RosiMovement :definition-)
      "int64 nodeID
float64 joint_var


")



(provide :rosi_defy/RosiMovement "2e8245905f61ae0a097d16c2c66c69fc")


