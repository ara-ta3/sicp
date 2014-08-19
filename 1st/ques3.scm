(define (square x) (* x x))

(define (sum-of-largest-and-2nd-largest x y z)
  (if (> x y)
    (if (> x z)
      (if (> y z)
        (+ (square x) (square y))
        (+ (square x) (square z))
        )
      (+ (square z) (square x))
      )
    (if (> y z)
      (if (> x z)
        (+ (square y) (square x))
        (+ (square y) (square z))
        )
      (+ (square z) (square y))
      )
    ))

(print (sum-of-largest-and-2nd-largest 3 2 1))
; 13

(print (sum-of-largest-and-2nd-largest 3 1 2))

(print (sum-of-largest-and-2nd-largest 2 3 1))

(print (sum-of-largest-and-2nd-largest 2 1 3))

(print (sum-of-largest-and-2nd-largest 1 3 2))

(print (sum-of-largest-and-2nd-largest 1 2 3))
