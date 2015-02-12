(load "./lib/commons")
(load "./ques36.scm")
(load "./p41.scm")

(define dx 0.00001)

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

;(print ((deriv cube) 5))
;75.00014999664018


(define (newton-transform g)
  (lambda (x) 
    (- x (/ (g x) ((deriv g) x)))))

(define (newton-method g guess)
  (fixed-point (newton-transform g) guess))


(define (sqrt x)
  (newton-method (lambda (y) (- (square y) x))
                 1.0))



(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))

(define (sqrt x)
  (fixed-point-of-transform (lambda (y) (/ x y))
                            average-damp
                            1.0))

;(print (sqrt 9))
