(
   print "はろーせかい"
 )

(define pi 3.13)

(print
  (* pi 
     (* 4 4)
     ))

(define (square x) (* x x))

(print (square 5))

; x^2 + y^2

(define 
  (sum-of-squares x y)
    (+ (square x) (square y))
    )

(print (sum-of-squares 3 4))

; 置換えモデル
; (print (+ (square 3) (square 4)))
; (print (+ (* 3 3) (* 4 4)))

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))
        )
  )

(print (abs -10))
(print (abs 10))


(define (abs x)
  (cond ((< x 0) (- x))
        (else x)
        ))

(print (abs -10))
