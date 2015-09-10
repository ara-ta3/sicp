(define (tree-map func tree)
  (define (loop l)
    (map (lambda (x) (if (pair? x) (loop x) (func x))) l))
  (loop tree))

(define (square x) (* x x))

(define (square-tree tree) (tree-map square tree))

(define (scale-tree tree factor) (tree-map (lambda (x) (* x factor)) tree))

