(load "./p31.scm")
(load "./lib/trace.scm")

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (+ (term a) result))))
  (iter a 0))

(print (sum cube 0 inc 10))
(print (sum identity 0 inc 10))

