;; Auto-generated. Do not edit!


(when (boundp 'ros_challenge::frame)
  (if (not (find-package "ROS_CHALLENGE"))
    (make-package "ROS_CHALLENGE"))
  (shadow 'frame (find-package "ROS_CHALLENGE")))
(unless (find-package "ROS_CHALLENGE::FRAME")
  (make-package "ROS_CHALLENGE::FRAME"))

(in-package "ROS")
;;//! \htmlinclude frame.msg.html


(defclass ros_challenge::frame
  :super ros::object
  :slots (_position _orientation ))

(defmethod ros_challenge::frame
  (:init
   (&key
    ((:position __position) (instance ros_challenge::Position :init))
    ((:orientation __orientation) (instance ros_challenge::Orientation :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _orientation __orientation)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:serialization-length
   ()
   (+
    ;; ros_challenge/Position _position
    (send _position :serialization-length)
    ;; ros_challenge/Orientation _orientation
    (send _orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_challenge/Position _position
       (send _position :serialize s)
     ;; ros_challenge/Orientation _orientation
       (send _orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_challenge/Position _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; ros_challenge/Orientation _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(setf (get ros_challenge::frame :md5sum-) "e45d45a5a1ce597b249e23fb30fc871f")
(setf (get ros_challenge::frame :datatype-) "ros_challenge/frame")
(setf (get ros_challenge::frame :definition-)
      "Position position
Orientation orientation

================================================================================
MSG: ros_challenge/Position
float64 x
float64 y
float64 z

================================================================================
MSG: ros_challenge/Orientation
float64 x
float64 y
float64 z
float64 w

")



(provide :ros_challenge/frame "e45d45a5a1ce597b249e23fb30fc871f")


