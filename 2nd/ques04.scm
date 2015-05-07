(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))


(define (cdr z)
  (z (lambda (p q) q)))

;(car (cons 3 5))

;carを評価すると
;((cons 3 5) (lambda (p q) p))

;consを評価すると
;((lambda (m) (m 3 5)) (lambda (p q) p))

;前のlambdaを評価すると
;((lambda (p q) p) 3 5)
;3
