(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))
        ))
;(A 1 10)
;(A 0 (A 1 9))
;(A 0 (A 0 (A 1 8)))
;このまま続いて
;(A 0 ... (A 1 1))
;yが2になる
(print (A 1 10))
;2^10^1

(print (A 1 2))
;(A 1 2)
;(A 0 (A 1 1))
;(A 0 2)
;(* 2 2)

;(A 1 3)
;(A 0 (A 1 2))
;(A 0 (* 2 2))
;(* 2 (* 2 2))

(print (A 2 4))
;(A 2 4)
;(A 1 (A 2 3))
;2^4^2

(print (A 3 3))
;2^3^3
(print (A 4 2))
(print (A 5 2))

(define (f n) (A 0 n))
;2n

(define (g n) (A 1 n))
;2^n

(define (h n) (A 2 n))
;2^( 2^(n-1) )

(print (h 1)) ; 2^0
(print (h 2)) ; 2^(2^(2-1))
(print (h 3)) ; 2^(2^(3-1))
(print (h 4)) ; 2^(2^(4-1))


