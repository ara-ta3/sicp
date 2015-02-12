(load "./lib/commons")
(load "./ques41.scm")
(load "./ques42.scm")

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (if (= n 1)
    f
    (compose f (repeated f (- n 1)))))

;(print ((repeated square 2) 5))

(define (repeated f n)
  (if (= n 1)
    f
    (repeated (compose f f) (- n 1))))


;(print ((repeated square 2) 5))
