; Auto-generated. Do not edit!


(cl:in-package robot_description-srv)


;//! \htmlinclude Random-request.msg.html

(cl:defclass <Random-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Random-request (<Random-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Random-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Random-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_description-srv:<Random-request> is deprecated: use robot_description-srv:Random-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Random-request>) ostream)
  "Serializes a message object of type '<Random-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Random-request>) istream)
  "Deserializes a message object of type '<Random-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Random-request>)))
  "Returns string type for a service object of type '<Random-request>"
  "robot_description/RandomRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Random-request)))
  "Returns string type for a service object of type 'Random-request"
  "robot_description/RandomRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Random-request>)))
  "Returns md5sum for a message object of type '<Random-request>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Random-request)))
  "Returns md5sum for a message object of type 'Random-request"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Random-request>)))
  "Returns full string definition for message of type '<Random-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Random-request)))
  "Returns full string definition for message of type 'Random-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Random-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Random-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Random-request
))
;//! \htmlinclude Random-response.msg.html

(cl:defclass <Random-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Random-response (<Random-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Random-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Random-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_description-srv:<Random-response> is deprecated: use robot_description-srv:Random-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Random-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_description-srv:x-val is deprecated.  Use robot_description-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Random-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_description-srv:y-val is deprecated.  Use robot_description-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Random-response>) ostream)
  "Serializes a message object of type '<Random-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Random-response>) istream)
  "Deserializes a message object of type '<Random-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Random-response>)))
  "Returns string type for a service object of type '<Random-response>"
  "robot_description/RandomResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Random-response)))
  "Returns string type for a service object of type 'Random-response"
  "robot_description/RandomResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Random-response>)))
  "Returns md5sum for a message object of type '<Random-response>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Random-response)))
  "Returns md5sum for a message object of type 'Random-response"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Random-response>)))
  "Returns full string definition for message of type '<Random-response>"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Random-response)))
  "Returns full string definition for message of type 'Random-response"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Random-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Random-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Random-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Random)))
  'Random-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Random)))
  'Random-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Random)))
  "Returns string type for a service object of type '<Random>"
  "robot_description/Random")