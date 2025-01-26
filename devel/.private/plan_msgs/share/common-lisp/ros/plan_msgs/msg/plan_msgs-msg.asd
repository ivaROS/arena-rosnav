
(cl:in-package :asdf)

(defsystem "plan_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RobotState" :depends-on ("_package_RobotState"))
    (:file "_package_RobotState" :depends-on ("_package"))
    (:file "RobotStateStamped" :depends-on ("_package_RobotStateStamped"))
    (:file "_package_RobotStateStamped" :depends-on ("_package"))
  ))