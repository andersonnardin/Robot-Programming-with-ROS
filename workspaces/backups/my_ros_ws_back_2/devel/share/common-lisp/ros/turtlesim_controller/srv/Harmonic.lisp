; Auto-generated. Do not edit!


(cl:in-package turtlesim_controller-srv)


;//! \htmlinclude Harmonic-request.msg.html

(cl:defclass <Harmonic-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0))
)

(cl:defclass Harmonic-request (<Harmonic-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Harmonic-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Harmonic-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim_controller-srv:<Harmonic-request> is deprecated: use turtlesim_controller-srv:Harmonic-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Harmonic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim_controller-srv:x-val is deprecated.  Use turtlesim_controller-srv:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Harmonic-request>) ostream)
  "Serializes a message object of type '<Harmonic-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Harmonic-request>) istream)
  "Deserializes a message object of type '<Harmonic-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Harmonic-request>)))
  "Returns string type for a service object of type '<Harmonic-request>"
  "turtlesim_controller/HarmonicRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Harmonic-request)))
  "Returns string type for a service object of type 'Harmonic-request"
  "turtlesim_controller/HarmonicRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Harmonic-request>)))
  "Returns md5sum for a message object of type '<Harmonic-request>"
  "429b093f442ccf5840f55cac49926999")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Harmonic-request)))
  "Returns md5sum for a message object of type 'Harmonic-request"
  "429b093f442ccf5840f55cac49926999")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Harmonic-request>)))
  "Returns full string definition for message of type '<Harmonic-request>"
  (cl:format cl:nil "float32 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Harmonic-request)))
  "Returns full string definition for message of type 'Harmonic-request"
  (cl:format cl:nil "float32 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Harmonic-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Harmonic-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Harmonic-request
    (cl:cons ':x (x msg))
))
;//! \htmlinclude Harmonic-response.msg.html

(cl:defclass <Harmonic-response> (roslisp-msg-protocol:ros-message)
  ((vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass Harmonic-response (<Harmonic-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Harmonic-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Harmonic-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim_controller-srv:<Harmonic-response> is deprecated: use turtlesim_controller-srv:Harmonic-response instead.")))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <Harmonic-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim_controller-srv:vel-val is deprecated.  Use turtlesim_controller-srv:vel instead.")
  (vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Harmonic-response>) ostream)
  "Serializes a message object of type '<Harmonic-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Harmonic-response>) istream)
  "Deserializes a message object of type '<Harmonic-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Harmonic-response>)))
  "Returns string type for a service object of type '<Harmonic-response>"
  "turtlesim_controller/HarmonicResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Harmonic-response)))
  "Returns string type for a service object of type 'Harmonic-response"
  "turtlesim_controller/HarmonicResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Harmonic-response>)))
  "Returns md5sum for a message object of type '<Harmonic-response>"
  "429b093f442ccf5840f55cac49926999")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Harmonic-response)))
  "Returns md5sum for a message object of type 'Harmonic-response"
  "429b093f442ccf5840f55cac49926999")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Harmonic-response>)))
  "Returns full string definition for message of type '<Harmonic-response>"
  (cl:format cl:nil "float32 vel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Harmonic-response)))
  "Returns full string definition for message of type 'Harmonic-response"
  (cl:format cl:nil "float32 vel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Harmonic-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Harmonic-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Harmonic-response
    (cl:cons ':vel (vel msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Harmonic)))
  'Harmonic-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Harmonic)))
  'Harmonic-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Harmonic)))
  "Returns string type for a service object of type '<Harmonic>"
  "turtlesim_controller/Harmonic")