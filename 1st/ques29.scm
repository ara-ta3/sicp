(load "./p31.scm")
(load "./lib/trace.scm")

(define (even? n)
  (= (remainder n 2) 0))

(define (simpson f a b n)
  (define (h)
    (if (even? n)
      (/ (- b a) n)
      0))

  (define (yk k)
    (f (+ a (* k (h)))))

  (define (simpson-term k)
    (if (even? k)
      (* (yk (+ k 1)) 4)
      (* (yk (+ k 1)) 2)))
  (* (+ (sum simpson-term 0 inc (- n 1))) (yk n) (/ (h) 3.0)))


;(trace sum)
;(print (sum cube 0 inc 1))

(print (simpson cube 0 1 100))
(print (simpson cube 0 1 1000))
(print (simpson cube 0 1 10000))
(print (simpson cube 0 1 100000))

