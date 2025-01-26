
(cl:in-package :asdf)

(defsystem "cob_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Dock" :depends-on ("_package_Dock"))
    (:file "_package_Dock" :depends-on ("_package"))
    (:file "SetFloat" :depends-on ("_package_SetFloat"))
    (:file "_package_SetFloat" :depends-on ("_package"))
    (:file "SetInt" :depends-on ("_package_SetInt"))
    (:file "_package_SetInt" :depends-on ("_package"))
    (:file "SetString" :depends-on ("_package_SetString"))
    (:file "_package_SetString" :depends-on ("_package"))
  ))