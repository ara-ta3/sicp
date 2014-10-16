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
  (if (= b 0)
    0
    (if (even? b)
      (double (fast* a (halve b)))
      (+ a (fast* a (- b 1)))
      )
    ))

(use slib)
(require `trace)
(trace fast*)

(print (fast* 2 2))
(print (fast* 2 5))
(print (fast* 2 8))


