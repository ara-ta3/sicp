(define (fib n)
  (if (< n 2)
    1
    (+ (fib (- n 1)) (fib (- n 2))))
  )

(print (fib 1))
(print (fib 2))
(print (fib 3))
(print (fib 4))
(print (fib 5))

(define (fib n)
  (fib-iter 1 0 n)
  )

(define (fib-iter a1 a0 max)
  (if (= 0 max)
    a0
    (fib-iter (+ a1 a0) a1 (- max 1)))
  )

(print (fib 1))
(print (fib 2))
(print (fib 3))
(print (fib 4))
(print (fib 5))

