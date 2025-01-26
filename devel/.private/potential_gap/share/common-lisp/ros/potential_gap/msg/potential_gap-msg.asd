
(cl:in-package :asdf)

(defsystem "potential_gap-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TrajPlan" :depends-on ("_package_TrajPlan"))
    (:file "_package_TrajPlan" :depends-on ("_package"))
  ))