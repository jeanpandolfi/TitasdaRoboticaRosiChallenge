
(cl:in-package :asdf)

(defsystem "rosi_defy-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "HokuyoReading" :depends-on ("_package_HokuyoReading"))
    (:file "_package_HokuyoReading" :depends-on ("_package"))
    (:file "ManipulatorJoints" :depends-on ("_package_ManipulatorJoints"))
    (:file "_package_ManipulatorJoints" :depends-on ("_package"))
    (:file "RosiMovement" :depends-on ("_package_RosiMovement"))
    (:file "_package_RosiMovement" :depends-on ("_package"))
    (:file "RosiMovementArray" :depends-on ("_package_RosiMovementArray"))
    (:file "_package_RosiMovementArray" :depends-on ("_package"))
  ))