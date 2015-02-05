(load "./lib/commons.scm")

(define (f g)
  (g 2))

(print (f square))


(print (f (lambda (z) (* z (+ z 1)))))

;(print (f f))
;(print f (f 2)))
;(2 2)を評価できずエラー
