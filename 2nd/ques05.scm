(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (car c)
  (divide-count c 2))

(define (cdr c)
  (divide-count c 3))

(define (divide-count x divider)
  (divide-count-iter x divider 0))

(define (divide-count-iter x divider n)
  (if (= (remainder x divider) 0)
    (divide-count-iter (/ x divider) divider (+ n 1))
    n))

