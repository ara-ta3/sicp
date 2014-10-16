(define (square x)
  (* x x))
(define (fast-expt-iter b n)
  (expt-iter 1 b n))

(define (expt-iter a b n)
  (if (= n 0)
    a
    (if (even? n)
      (expt-iter a (* b b) (/ n 2))
      (expt-iter (* a b) b (- n 1))
      )))

(define (even? n)
  (= (remainder n 2) 0))

(use slib)
(require `trace)
(trace expt-iter)

(print (fast-expt-iter 2 5))
; 32
(print (fast-expt-iter 2 10))
; 1024
(print (fast-expt-iter 2 4))
