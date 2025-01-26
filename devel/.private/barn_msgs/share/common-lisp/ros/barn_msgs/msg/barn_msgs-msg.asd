
(cl:in-package :asdf)

(defsystem "barn_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BARN_data" :depends-on ("_package_BARN_data"))
    (:file "_package_BARN_data" :depends-on ("_package"))
  ))