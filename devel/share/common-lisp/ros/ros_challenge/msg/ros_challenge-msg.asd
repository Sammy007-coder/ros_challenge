
(cl:in-package :asdf)

(defsystem "ros_challenge-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Orientation" :depends-on ("_package_Orientation"))
    (:file "_package_Orientation" :depends-on ("_package"))
    (:file "Position" :depends-on ("_package_Position"))
    (:file "_package_Position" :depends-on ("_package"))
    (:file "frame" :depends-on ("_package_frame"))
    (:file "_package_frame" :depends-on ("_package"))
  ))