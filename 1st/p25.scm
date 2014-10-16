(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (square x) (* x x))

(define (even? n)
  (= (remainder n 2) 0))

(use slib)
(require `trace)
(trace fast-expt)

(print (fast-expt 2 10))


(define (expt b n)
  (if (= n 0)
    1
    (* b (expt b (- n 1)))))

(trace expt)
(print (expt 2 5))
(print (expt 2 10))



