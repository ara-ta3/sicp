(define (subsets s)
  (if (null? s)
    (list '())
    (let ((rest (subsets (cdr s))))
      (append rest (map (lambda (x) (cons (car s) x)) rest)))))

;1 2 3
;2 3
;3
;rest <- (())
;s <- (3)
;(append '() (map hoge '())
;rest <- (() 3)
;s <- (2 3)
;(append ('() 3) (map hoge '() 3)
;rest <- 
