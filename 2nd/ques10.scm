(use gauche.test)

(load "./ques07.scm")

(print (div-interval 
  (make-interval 1 2)
  (make-interval 0 2)))

(define (div-interval x y)
  (if (or (= (upper-bound y) 0) (= (lower-bound y) 0))
    (raise "0 division")
    (mul-interval x (make-interval (/ 1.0 (upper-bound y))
                                   (/ 1.0 (lower-bound y))))))

(print (div-interval 
  (make-interval 1 2)
  (make-interval 0 2)))


