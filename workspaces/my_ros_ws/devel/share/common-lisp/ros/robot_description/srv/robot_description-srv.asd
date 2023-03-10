
(cl:in-package :asdf)

(defsystem "robot_description-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Position" :depends-on ("_package_Position"))
    (:file "_package_Position" :depends-on ("_package"))
    (:file "Random" :depends-on ("_package_Random"))
    (:file "_package_Random" :depends-on ("_package"))
  ))