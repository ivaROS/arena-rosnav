
(cl:in-package :asdf)

(defsystem "costmap_2d-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :pedsim_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ObstacleDump" :depends-on ("_package_ObstacleDump"))
    (:file "_package_ObstacleDump" :depends-on ("_package"))
    (:file "SemanticDump" :depends-on ("_package_SemanticDump"))
    (:file "_package_SemanticDump" :depends-on ("_package"))
    (:file "VoxelGrid" :depends-on ("_package_VoxelGrid"))
    (:file "_package_VoxelGrid" :depends-on ("_package"))
  ))