
(cl:in-package :asdf)

(defsystem "pixel_to_servo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "target_location" :depends-on ("_package_target_location"))
    (:file "_package_target_location" :depends-on ("_package"))
  ))