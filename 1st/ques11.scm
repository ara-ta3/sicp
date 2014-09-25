(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) (* (f (- n 2)) 2) (* (f (- n 3)) 3)))
  ))


(print (f 1))
(print (f 2))
(print (f 3))
(print (f 4))
(print (f 5))

;(define (f n)
;  (f-iter 0 0 n)
;  )

;  (if ((< i 3) i)
;    (f (+ sum (f (- i 1)) (* (f (- i 2) 2)) (* (f (- i 3) 3))) (+ i 1) (

;だめだ、反復的プロセスで書けない

;(define (f-iter sum i n)
;  (if (> i n)
;    sum
;    (if (< n 3)
;      n
;      (f-iter (+ sum (* (f-iter 0 0 (- i 1)) 2) (* (f-iter 0 0 (- i 2)) 3)) (+ i 1) n)
;    )))

(print (f 1))
(print (f 2))
(print (f 3))
(print (f 4))
(print (f 5))



