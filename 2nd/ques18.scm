(define (my-reverse l)
  (define (reverse-iter l ret)
    (if (null? l)
      ret
      (reverse-iter (cdr l) (cons (car l) ret))))
  (reverse-iter l '()))
