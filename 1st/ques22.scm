(load "./p28.scm")
(load "./runtime.scm")
(load "./trace.scm")

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
  (cond ((divides? 2 i) (search-for-primes (+ i 1) end))
        ((< i end) 
            (timed-prime-test i)
            (search-for-primes (+ i 1) end)
            )
        )
  )

;(trace search-for-primes)

(print (search-for-primes 100000000 1001000000))

