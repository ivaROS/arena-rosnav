
(cl:in-package :asdf)

(defsystem "flatland_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :flatland_msgs-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "DeleteModel" :depends-on ("_package_DeleteModel"))
    (:file "_package_DeleteModel" :depends-on ("_package"))
    (:file "DeleteModels" :depends-on ("_package_DeleteModels"))
    (:file "_package_DeleteModels" :depends-on ("_package"))
    (:file "MoveModel" :depends-on ("_package_MoveModel"))
    (:file "_package_MoveModel" :depends-on ("_package"))
    (:file "SpawnModel" :depends-on ("_package_SpawnModel"))
    (:file "_package_SpawnModel" :depends-on ("_package"))
    (:file "SpawnModels" :depends-on ("_package_SpawnModels"))
    (:file "_package_SpawnModels" :depends-on ("_package"))
  ))