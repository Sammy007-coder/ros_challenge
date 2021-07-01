; Auto-generated. Do not edit!


(cl:in-package ros_challenge-msg)


;//! \htmlinclude frame.msg.html

(cl:defclass <frame> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type ros_challenge-msg:Position
    :initform (cl:make-instance 'ros_challenge-msg:Position))
   (orientation
    :reader orientation
    :initarg :orientation
    :type ros_challenge-msg:Orientation
    :initform (cl:make-instance 'ros_challenge-msg:Orientation)))
)

(cl:defclass frame (<frame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <frame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'frame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_challenge-msg:<frame> is deprecated: use ros_challenge-msg:frame instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_challenge-msg:position-val is deprecated.  Use ros_challenge-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_challenge-msg:orientation-val is deprecated.  Use ros_challenge-msg:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <frame>) ostream)
  "Serializes a message object of type '<frame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <frame>) istream)
  "Deserializes a message object of type '<frame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<frame>)))
  "Returns string type for a message object of type '<frame>"
  "ros_challenge/frame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'frame)))
  "Returns string type for a message object of type 'frame"
  "ros_challenge/frame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<frame>)))
  "Returns md5sum for a message object of type '<frame>"
  "e45d45a5a1ce597b249e23fb30fc871f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'frame)))
  "Returns md5sum for a message object of type 'frame"
  "e45d45a5a1ce597b249e23fb30fc871f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<frame>)))
  "Returns full string definition for message of type '<frame>"
  (cl:format cl:nil "Position position~%Orientation orientation~%~%================================================================================~%MSG: ros_challenge/Position~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: ros_challenge/Orientation~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'frame)))
  "Returns full string definition for message of type 'frame"
  (cl:format cl:nil "Position position~%Orientation orientation~%~%================================================================================~%MSG: ros_challenge/Position~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: ros_challenge/Orientation~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <frame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <frame>))
  "Converts a ROS message object to a list"
  (cl:list 'frame
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
))
