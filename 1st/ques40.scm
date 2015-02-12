(load "./lib/commons")
(load "./ques36.scm")
(load "./p41.scm")
(load "./p42.scm")

(define (cubic a b c)
  (lambda (x) (+ (cube x) (* a (square x) ) (* b x) c)))

(print (newton-method (cubic 1 -1 -1) 2.0))

(print (newton-method (cubic 1 -1 -1) -2.0))


