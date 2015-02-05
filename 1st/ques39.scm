(load "./ques37.scm")

(define (tan-cf x k)
    (cont-frac (lambda (i) (if (= i 1)
                             x
                             (* x x -1)))
               (lambda (i) (- (* 2 i) 1))
               k))

;(print (tan-cf 3.14 10000))
;-0.0015926549364072742
