;; Auto-generated. Do not edit!


(when (boundp 'turtlesim_controller::Harmonic)
  (if (not (find-package "TURTLESIM_CONTROLLER"))
    (make-package "TURTLESIM_CONTROLLER"))
  (shadow 'Harmonic (find-package "TURTLESIM_CONTROLLER")))
(unless (find-package "TURTLESIM_CONTROLLER::HARMONIC")
  (make-package "TURTLESIM_CONTROLLER::HARMONIC"))
(unless (find-package "TURTLESIM_CONTROLLER::HARMONICREQUEST")
  (make-package "TURTLESIM_CONTROLLER::HARMONICREQUEST"))
(unless (find-package "TURTLESIM_CONTROLLER::HARMONICRESPONSE")
  (make-package "TURTLESIM_CONTROLLER::HARMONICRESPONSE"))

(in-package "ROS")





(defclass turtlesim_controller::HarmonicRequest
  :super ros::object
  :slots (_x ))

(defmethod turtlesim_controller::HarmonicRequest
  (:init
   (&key
    ((:x __x) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtlesim_controller::HarmonicResponse
  :super ros::object
  :slots (_vel ))

(defmethod turtlesim_controller::HarmonicResponse
  (:init
   (&key
    ((:vel __vel) 0.0)
    )
   (send-super :init)
   (setq _vel (float __vel))
   self)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:serialization-length
   ()
   (+
    ;; float32 _vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtlesim_controller::Harmonic
  :super ros::object
  :slots ())

(setf (get turtlesim_controller::Harmonic :md5sum-) "429b093f442ccf5840f55cac49926999")
(setf (get turtlesim_controller::Harmonic :datatype-) "turtlesim_controller/Harmonic")
(setf (get turtlesim_controller::Harmonic :request) turtlesim_controller::HarmonicRequest)
(setf (get turtlesim_controller::Harmonic :response) turtlesim_controller::HarmonicResponse)

(defmethod turtlesim_controller::HarmonicRequest
  (:response () (instance turtlesim_controller::HarmonicResponse :init)))

(setf (get turtlesim_controller::HarmonicRequest :md5sum-) "429b093f442ccf5840f55cac49926999")
(setf (get turtlesim_controller::HarmonicRequest :datatype-) "turtlesim_controller/HarmonicRequest")
(setf (get turtlesim_controller::HarmonicRequest :definition-)
      "float32 x
---
float32 vel

")

(setf (get turtlesim_controller::HarmonicResponse :md5sum-) "429b093f442ccf5840f55cac49926999")
(setf (get turtlesim_controller::HarmonicResponse :datatype-) "turtlesim_controller/HarmonicResponse")
(setf (get turtlesim_controller::HarmonicResponse :definition-)
      "float32 x
---
float32 vel

")



(provide :turtlesim_controller/Harmonic "429b093f442ccf5840f55cac49926999")


