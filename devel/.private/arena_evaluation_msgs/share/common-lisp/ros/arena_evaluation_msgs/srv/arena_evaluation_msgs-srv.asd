
(cl:in-package :asdf)

(defsystem "arena_evaluation_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ChangeDirectory" :depends-on ("_package_ChangeDirectory"))
    (:file "_package_ChangeDirectory" :depends-on ("_package"))
  ))