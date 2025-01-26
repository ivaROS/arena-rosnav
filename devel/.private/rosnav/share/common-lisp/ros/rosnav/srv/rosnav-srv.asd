
(cl:in-package :asdf)

(defsystem "rosnav-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetAction" :depends-on ("_package_GetAction"))
    (:file "_package_GetAction" :depends-on ("_package"))
  ))