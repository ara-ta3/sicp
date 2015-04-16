(define zero (lambda (f) (lambda (x) x)))

;(lambda (f) (lambda (x) (x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;(add-1 zero)
;(lambda (f) (lambda (x) (f ((n f) x))) zero)
;(lambda (f) (lambda (x) (f ((n f) x))) (lambda (f) (lambda (x) x)))
;(lambda (x) (lambda (f) (lambda (x) x)) ((n (lambda (f) (lambda (x) x))) x))

;(lambda (f) (lambda (((n (lambda (f) (lambda (x) x))) x) ((n (lambda (f) (lambda (x) x))) x))) ((n (lambda (f) (lambda (x) x))) x))
;ちょっと無理


