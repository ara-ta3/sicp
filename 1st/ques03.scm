(define (square x) (* x x))

(define (sum-of-2-square x y)
  (+ (square x) (square y)))

(define (sum-of-largest-and-2nd-largest x y z)
  (if (> x y)
    (sum-of-2-square x (if (> x z) (if (> y z) y z) z) )
    (sum-of-2-square y (if (> y z) (if (> x z) x z) z) )
    ))

(print (sum-of-largest-and-2nd-largest 3 2 1))
; 13

(print (sum-of-largest-and-2nd-largest 3 1 2))

(print (sum-of-largest-and-2nd-largest 2 3 1))

(print (sum-of-largest-and-2nd-largest 2 1 3))

(print (sum-of-largest-and-2nd-largest 1 3 2))

(print (sum-of-largest-and-2nd-largest 1 2 3))

(print (sum-of-largest-and-2nd-largest 1 3 3))

(print (sum-of-largest-and-2nd-largest 3 3 3))
