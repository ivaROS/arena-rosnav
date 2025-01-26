
(cl:in-package :asdf)

(defsystem "light_scan_sim-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Material" :depends-on ("_package_Material"))
    (:file "_package_Material" :depends-on ("_package"))
    (:file "MaterialList" :depends-on ("_package_MaterialList"))
    (:file "_package_MaterialList" :depends-on ("_package"))
    (:file "Segment" :depends-on ("_package_Segment"))
    (:file "_package_Segment" :depends-on ("_package"))
    (:file "SegmentList" :depends-on ("_package_SegmentList"))
    (:file "_package_SegmentList" :depends-on ("_package"))
  ))