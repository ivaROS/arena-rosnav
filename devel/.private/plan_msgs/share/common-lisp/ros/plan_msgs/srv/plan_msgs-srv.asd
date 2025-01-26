
(cl:in-package :asdf)

(defsystem "plan_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "MakeGlobalPlan" :depends-on ("_package_MakeGlobalPlan"))
    (:file "_package_MakeGlobalPlan" :depends-on ("_package"))
    (:file "Subgoal" :depends-on ("_package_Subgoal"))
    (:file "_package_Subgoal" :depends-on ("_package"))
  ))