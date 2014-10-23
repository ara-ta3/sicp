(use slib)
(require `trace)

(define (fib n)
  (fib-iter 1 0 n)
  )

(define (fib-iter a1 a0 max)
  (if (= 0 max)
    a0
    (fib-iter (+ a1 a0) a1 (- max 1)))
  )

(trace fib-iter)
(print (fib 10))
(print (fib 30))


(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))


(trace fib-iter)
(print (fib 10))
(print (fib 30))


(define (square x)
  (* x x))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (square p) (square q))
                   (+ (* 2 p q) (square q))
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))

(trace fib-iter)
(print (fib 10))
(print (fib 30))
