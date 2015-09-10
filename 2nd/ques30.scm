(define (square-tree tree)
  (if (null? tree)
    '()
    (map (lambda (x) (if (pair? x) (square-tree x) (* x x))) tree)))
