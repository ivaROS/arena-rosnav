
(cl:in-package :asdf)

(defsystem "observations-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Observation" :depends-on ("_package_Observation"))
    (:file "_package_Observation" :depends-on ("_package"))
  ))