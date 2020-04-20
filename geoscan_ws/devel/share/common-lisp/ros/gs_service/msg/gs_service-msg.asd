
(cl:in-package :asdf)

(defsystem "gs_service-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RGBgs" :depends-on ("_package_RGBgs"))
    (:file "_package_RGBgs" :depends-on ("_package"))
  ))