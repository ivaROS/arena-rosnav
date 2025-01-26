
(cl:in-package :asdf)

(defsystem "costmap_2d-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :costmap_2d-msg
               :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GetDump" :depends-on ("_package_GetDump"))
    (:file "_package_GetDump" :depends-on ("_package"))
  ))