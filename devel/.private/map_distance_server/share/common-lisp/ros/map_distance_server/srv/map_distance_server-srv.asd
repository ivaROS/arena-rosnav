
(cl:in-package :asdf)

(defsystem "map_distance_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GetDistanceMap" :depends-on ("_package_GetDistanceMap"))
    (:file "_package_GetDistanceMap" :depends-on ("_package"))
  ))