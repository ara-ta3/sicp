(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(print (car (cons 3 5)))

(define (cdr z)
  (z (lambda (p q) q)))

(print (cdr (cons 3 5)))

;(car (cons 3 5))
;((cons 3 5) (lambda (p q) p))
;((lambda (m) (m 3 5)) (lambda (p q) p))
;((lambda (p q) p) 3 5)
;3
