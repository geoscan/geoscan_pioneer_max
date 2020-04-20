
(cl:in-package :asdf)

(defsystem "gs_vision-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Apriltag" :depends-on ("_package_Apriltag"))
    (:file "_package_Apriltag" :depends-on ("_package"))
    (:file "Apriltag_array" :depends-on ("_package_Apriltag_array"))
    (:file "_package_Apriltag_array" :depends-on ("_package"))
    (:file "ArUco" :depends-on ("_package_ArUco"))
    (:file "_package_ArUco" :depends-on ("_package"))
    (:file "ArUco_array" :depends-on ("_package_ArUco_array"))
    (:file "_package_ArUco_array" :depends-on ("_package"))
    (:file "QR" :depends-on ("_package_QR"))
    (:file "_package_QR" :depends-on ("_package"))
    (:file "QR_array" :depends-on ("_package_QR_array"))
    (:file "_package_QR_array" :depends-on ("_package"))
  ))