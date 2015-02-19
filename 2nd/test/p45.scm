(use gauche.test)
(load "./p45.scm")

(test "add-rat" (cons 5 6) (lambda () (add-rat (make-rat 1 2) (make-rat 1 3))))

(test "sub-rat" (cons 1 6) (lambda () (sub-rat (make-rat 1 2) (make-rat 1 3))))

(test "mul-rat" (cons 3 2) (lambda () (mul-rat (make-rat 1 2) (make-rat 3 1))))

(test "div-rat" (cons 3 2) (lambda () (div-rat (make-rat 1 2) (make-rat 1 3))))

(test "make-rat" (cons 1 2) (lambda () (make-rat 1 2)))

(test "denom" 2 (lambda () (denom (make-rat 1 2))))

(test "numer" 1 (lambda () (numer (make-rat 1 2))))

(test "make-rat" (cons 1 2) (lambda () (make-rat 2 4)))
