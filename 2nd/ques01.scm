(load "./p45.scm")

(define (make-rat n d)
  (let ((g (gcd (abs n) (abs d))))
    (let (
      (N (abs (/ n g)))
      (D (abs (/ d g))))
    (if (> (* n d) 0)
      (cons N D)
      (cons (* -1 N) D)))))

