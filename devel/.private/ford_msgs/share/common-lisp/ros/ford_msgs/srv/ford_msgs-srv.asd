
(cl:in-package :asdf)

(defsystem "ford_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "GetSafeActions" :depends-on ("_package_GetSafeActions"))
    (:file "_package_GetSafeActions" :depends-on ("_package"))
  ))