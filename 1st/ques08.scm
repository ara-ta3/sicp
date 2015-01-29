(define (cube x)
  (cube-iter 1.0 x)
)

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)
)

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.1)
)

(define (cube-iter guess x)
  (if   (good-enough? guess x)
        guess
        (cube-iter (improve guess x)
                   x)))

(print (cube 27))

(print (cube 64))

(print (cube 125))
