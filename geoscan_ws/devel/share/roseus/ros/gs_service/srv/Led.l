;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Led)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Led (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::LED")
  (make-package "GS_SERVICE::LED"))
(unless (find-package "GS_SERVICE::LEDREQUEST")
  (make-package "GS_SERVICE::LEDREQUEST"))
(unless (find-package "GS_SERVICE::LEDRESPONSE")
  (make-package "GS_SERVICE::LEDRESPONSE"))

(in-package "ROS")





(defclass gs_service::LedRequest
  :super ros::object
  :slots (_leds ))

(defmethod gs_service::LedRequest
  (:init
   (&key
    ((:leds __leds) (let (r) (dotimes (i 0) (push (instance gs_service::RGBgs :init) r)) r))
    )
   (send-super :init)
   (setq _leds __leds)
   self)
  (:leds
   (&rest __leds)
   (if (keywordp (car __leds))
       (send* _leds __leds)
     (progn
       (if __leds (setq _leds (car __leds)))
       _leds)))
  (:serialization-length
   ()
   (+
    ;; gs_service/RGBgs[] _leds
    (apply #'+ (send-all _leds :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gs_service/RGBgs[] _leds
     (write-long (length _leds) s)
     (dolist (elem _leds)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gs_service/RGBgs[] _leds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _leds (let (r) (dotimes (i n) (push (instance gs_service::RGBgs :init) r)) r))
     (dolist (elem- _leds)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass gs_service::LedResponse
  :super ros::object
  :slots (_status ))

(defmethod gs_service::LedResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gs_service::Led
  :super ros::object
  :slots ())

(setf (get gs_service::Led :md5sum-) "61be35dc5f864469393369c906dab4cc")
(setf (get gs_service::Led :datatype-) "gs_service/Led")
(setf (get gs_service::Led :request) gs_service::LedRequest)
(setf (get gs_service::Led :response) gs_service::LedResponse)

(defmethod gs_service::LedRequest
  (:response () (instance gs_service::LedResponse :init)))

(setf (get gs_service::LedRequest :md5sum-) "61be35dc5f864469393369c906dab4cc")
(setf (get gs_service::LedRequest :datatype-) "gs_service/LedRequest")
(setf (get gs_service::LedRequest :definition-)
      "RGBgs[] leds


================================================================================
MSG: gs_service/RGBgs
bool r
bool g
---

bool status
")

(setf (get gs_service::LedResponse :md5sum-) "61be35dc5f864469393369c906dab4cc")
(setf (get gs_service::LedResponse :datatype-) "gs_service/LedResponse")
(setf (get gs_service::LedResponse :definition-)
      "RGBgs[] leds


================================================================================
MSG: gs_service/RGBgs
bool r
bool g
---

bool status
")



(provide :gs_service/Led "61be35dc5f864469393369c906dab4cc")


