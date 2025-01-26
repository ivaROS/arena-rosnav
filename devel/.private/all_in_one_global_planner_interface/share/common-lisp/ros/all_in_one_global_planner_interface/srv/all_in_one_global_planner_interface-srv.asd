
(cl:in-package :asdf)

(defsystem "all_in_one_global_planner_interface-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "MakeNewPlan" :depends-on ("_package_MakeNewPlan"))
    (:file "_package_MakeNewPlan" :depends-on ("_package"))
  ))