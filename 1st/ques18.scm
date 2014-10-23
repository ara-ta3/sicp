(define (even? n)
  (= (remainder n 2) 0))

(define (halve x)
  (/ x 2))

(define (double x)
  (* x 2))

(define (* a b)
  (if (= b 0)
    0
    (+ a (* a (- b 1)))))

(define (fast* a b)
  (fast-iter* 0 a b))

(define (fast-iter* t a b)
  (if (= b 0)
    t
    (if (even? b)
      (fast-iter* t (double a) (halve b))
      (fast-iter* (+ t a) a (- b 1))
      )))


(use slib)
(require `trace)
(trace fast-iter*)

(print (fast* 2 2))
(print (fast* 2 5))
(print (fast* 2 8))


