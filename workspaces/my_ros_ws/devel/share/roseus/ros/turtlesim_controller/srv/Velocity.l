;; Auto-generated. Do not edit!


(when (boundp 'turtlesim_controller::Velocity)
  (if (not (find-package "TURTLESIM_CONTROLLER"))
    (make-package "TURTLESIM_CONTROLLER"))
  (shadow 'Velocity (find-package "TURTLESIM_CONTROLLER")))
(unless (find-package "TURTLESIM_CONTROLLER::VELOCITY")
  (make-package "TURTLESIM_CONTROLLER::VELOCITY"))
(unless (find-package "TURTLESIM_CONTROLLER::VELOCITYREQUEST")
  (make-package "TURTLESIM_CONTROLLER::VELOCITYREQUEST"))
(unless (find-package "TURTLESIM_CONTROLLER::VELOCITYRESPONSE")
  (make-package "TURTLESIM_CONTROLLER::VELOCITYRESPONSE"))

(in-package "ROS")





(defclass turtlesim_controller::VelocityRequest
  :super ros::object
  :slots (_min _max ))

(defmethod turtlesim_controller::VelocityRequest
  (:init
   (&key
    ((:min __min) 0.0)
    ((:max __max) 0.0)
    )
   (send-super :init)
   (setq _min (float __min))
   (setq _max (float __max))
   self)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; float32 _min
    4
    ;; float32 _max
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _min
       (sys::poke _min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max
       (sys::poke _max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _min
     (setq _min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max
     (setq _max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtlesim_controller::VelocityResponse
  :super ros::object
  :slots (_x _z ))

(defmethod turtlesim_controller::VelocityResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtlesim_controller::Velocity
  :super ros::object
  :slots ())

(setf (get turtlesim_controller::Velocity :md5sum-) "9a5456fb608aa5d493111238fa8d046f")
(setf (get turtlesim_controller::Velocity :datatype-) "turtlesim_controller/Velocity")
(setf (get turtlesim_controller::Velocity :request) turtlesim_controller::VelocityRequest)
(setf (get turtlesim_controller::Velocity :response) turtlesim_controller::VelocityResponse)

(defmethod turtlesim_controller::VelocityRequest
  (:response () (instance turtlesim_controller::VelocityResponse :init)))

(setf (get turtlesim_controller::VelocityRequest :md5sum-) "9a5456fb608aa5d493111238fa8d046f")
(setf (get turtlesim_controller::VelocityRequest :datatype-) "turtlesim_controller/VelocityRequest")
(setf (get turtlesim_controller::VelocityRequest :definition-)
      "float32 min
float32 max
---
float32 x
float32 z

")

(setf (get turtlesim_controller::VelocityResponse :md5sum-) "9a5456fb608aa5d493111238fa8d046f")
(setf (get turtlesim_controller::VelocityResponse :datatype-) "turtlesim_controller/VelocityResponse")
(setf (get turtlesim_controller::VelocityResponse :definition-)
      "float32 min
float32 max
---
float32 x
float32 z

")



(provide :turtlesim_controller/Velocity "9a5456fb608aa5d493111238fa8d046f")


