(load "./lib/commons")

(define (iterative-improve confirm improve)
  (define guess 1.0)
  (define (improve-iter x)
    (if (confirm guess x)
      x
      (improve-iter (improve guess x))))
  (lambda (x) (improve-iter x)))

(define (sqrt x)
  ((iterative-improve good-enough? improve-sqrt) x))

(print (sqrt 9))
(print (sqrt 16))

