
(cl:in-package :asdf)

(defsystem "all_in_one_local_planner_interface-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "GetVelCmd" :depends-on ("_package_GetVelCmd"))
    (:file "_package_GetVelCmd" :depends-on ("_package"))
    (:file "GetVelCmdWithGlobalPlan" :depends-on ("_package_GetVelCmdWithGlobalPlan"))
    (:file "_package_GetVelCmdWithGlobalPlan" :depends-on ("_package"))
    (:file "ResetCostmap" :depends-on ("_package_ResetCostmap"))
    (:file "_package_ResetCostmap" :depends-on ("_package"))
    (:file "SetGlobalPlan" :depends-on ("_package_SetGlobalPlan"))
    (:file "_package_SetGlobalPlan" :depends-on ("_package"))
  ))