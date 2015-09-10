(define (subsets s)
  (if (null? s)
    (list '())
    (let ((rest (subsets (cdr s))))
      (append rest (map (lambda (x) (map (lambda (y) (if (list? x) (append y x) (append y (list x)))) s)) rest)))))

;1 2 3
;2 3
;3
