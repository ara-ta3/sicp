(load "./lib/commons")
(load "./ques41.scm")
(load "./ques42.scm")
(load "./ques43.scm")

(define dx 0.00001)

(define (smooth f)
  (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

;(print ((smooth square) 4))


(define (nfold-smooth f n)
  ((repeated smooth n) f ))

;(print ((smooth square) 4))
;(print ((nfold-smooth square 1) 4))
;(print ((nfold-smooth square 100) 4))

