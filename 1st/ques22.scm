(load "./p28.scm")

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime))
)

(define (start-prime-test n start-time)
  (if (prime? n)
    (report-prime (- (runtime) start-time)))
  )

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time)
)

(define (search-for-primes i end)
  (cond ((divides? i 2) (search-for-primes (+ i 1) end))
        ((> i end) "end")
        (else 
            (timed-prime-test i)
            (search-for-primes (+ i 1) end)
            )
        )
  )

(use slib)
(require `trace)
(trace search-for-primes)

(print (search-for-primes 1000 10000))

