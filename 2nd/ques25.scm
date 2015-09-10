(define (c1 x)
  (car (cdr (car (cdr (cdr x))))))

(define (c2 x)
  (car (car x)))

(define (c3 x)
  (define (tail x)
    (car (cdr x)))
  (tail (tail (tail (tail (tail (tail x)))))))

