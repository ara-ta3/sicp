(load "./p28.scm")
(load "./runtime.scm")
(load "./trace.scm")

(define (next divisor)
  (if (= 2 divisor)
    3
    (+ 2 divisor)
    ))

(define (report-time elapsed-time)
  (display " *** ")
  (display elapsed-time)
)


(define (divisor-test n start-time)
  (newline)
  (display n)
  (smallest-divisor n)
  (report-time (- (runtime) start-time))
  )

(divisor-test 1009 (runtime))
(divisor-test 1000003 (runtime))
(divisor-test 100000007 (runtime))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))


(divisor-test 1009 (runtime))
(divisor-test 1000003 (runtime))
(divisor-test 100000007 (runtime))
