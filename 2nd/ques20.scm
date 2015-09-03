(define (same-parity head . tail)
  (define (iter l ret)
    (cond ((null? l) ret)
          ((= (remainder head 2) (remainder (car l) 2))
           (iter (cdr l) (cons (car l) ret)))
          (else (iter (cdr l) ret))))
  (reverse (iter tail (list head))))

