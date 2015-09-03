(define (list-ref items n)
       (if (= n 0)
         (car items)
         (list-ref (cdr items) (- n 1))))

(define squares (list 1 4 9 16 25))

(define (length items)
  (if (null? items)
    0
    (+ 1 (length (cdr items)))))

(define (odds 1 3 5 7))

(define (length items)
  (define (length-iter a count)
    (if (null? a)
      count
      (length-iter (cdr a) (+ 1 count))))
  (length-iter items 0))

(define (append l1 l2)
  (if (null? l1)
    l2
    (cons (car list1) (append (cdr l1) l2))))
