(load "./lib/commons")

(define (double f)
    (lambda (x) (f (f x))))

;(print ((double inc) 10))

;(print (((double (double double)) inc) 5))
;(((double (double double)) inc) 5)
;(((double doubledouble) inc) 5)
;((doubledoubledoubledouble inc) 5)
;2回作用させるのを4回 なので2^4
