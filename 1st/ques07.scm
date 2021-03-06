(define (improve guess x)
  (/ (+ guess (/ x guess)) 2)
)

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001)
)
(define (sqrt-iter guess x)
  (if   (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                   x)))

(define (sqrt x)
  (sqrt-iter 1.0 x)
)
(print (sqrt 1))
(print (sqrt 0.000000001))
(print (sqrt 0.00000000000000000000000000001))
(print (sqrt 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000))
