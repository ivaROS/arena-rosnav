
(cl:in-package :asdf)

(defsystem "rosnav-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ResetStackedObs" :depends-on ("_package_ResetStackedObs"))
    (:file "_package_ResetStackedObs" :depends-on ("_package"))
  ))