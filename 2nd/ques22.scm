(define (square-list items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (cons (square (car things))
                  answer))))
  (iter items '()))

(define (square n) (* n n))

(print (square-list (list 1 2 3 4)))

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (cons answer (square (car things))))))
  (iter items '()))


(print (square-list (list 1 2 3 4)))
