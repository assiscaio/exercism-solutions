(defpackage :raindrops
  (:use :cl)
  (:export :convert))

(in-package :raindrops)

(defun convert (n)
  "Converts a number to a string of raindrop sounds."
  (setf output "")
  (if
     (= (rem n 3) 0) (setq output (concatenate 'string output "Pling"))
   )
  
  (if
     (= (rem n 5) 0) (setq output (concatenate 'string output "Plang"))
   )
  
  (if
     (= (rem n 7) 0) (setq output (concatenate 'string output "Plong"))
   )
  
  (cond 
    ((= (length output) 0) (write-to-string n))
    (t output)
    )
)