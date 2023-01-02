;; Auto-generated. Do not edit!


(when (boundp 'robot_description::Random)
  (if (not (find-package "ROBOT_DESCRIPTION"))
    (make-package "ROBOT_DESCRIPTION"))
  (shadow 'Random (find-package "ROBOT_DESCRIPTION")))
(unless (find-package "ROBOT_DESCRIPTION::RANDOM")
  (make-package "ROBOT_DESCRIPTION::RANDOM"))
(unless (find-package "ROBOT_DESCRIPTION::RANDOMREQUEST")
  (make-package "ROBOT_DESCRIPTION::RANDOMREQUEST"))
(unless (find-package "ROBOT_DESCRIPTION::RANDOMRESPONSE")
  (make-package "ROBOT_DESCRIPTION::RANDOMRESPONSE"))

(in-package "ROS")





(defclass robot_description::RandomRequest
  :super ros::object
  :slots ())

(defmethod robot_description::RandomRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robot_description::RandomResponse
  :super ros::object
  :slots (_x _y ))

(defmethod robot_description::RandomResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robot_description::Random
  :super ros::object
  :slots ())

(setf (get robot_description::Random :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get robot_description::Random :datatype-) "robot_description/Random")
(setf (get robot_description::Random :request) robot_description::RandomRequest)
(setf (get robot_description::Random :response) robot_description::RandomResponse)

(defmethod robot_description::RandomRequest
  (:response () (instance robot_description::RandomResponse :init)))

(setf (get robot_description::RandomRequest :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get robot_description::RandomRequest :datatype-) "robot_description/RandomRequest")
(setf (get robot_description::RandomRequest :definition-)
      "---
float32 x
float32 y

")

(setf (get robot_description::RandomResponse :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get robot_description::RandomResponse :datatype-) "robot_description/RandomResponse")
(setf (get robot_description::RandomResponse :definition-)
      "---
float32 x
float32 y

")



(provide :robot_description/Random "ff8d7d66dd3e4b731ef14a45d38888b6")


