(use gauche.test)

(load "./ques05.scm")

(test "a,b = 1,1" 6 (lambda () (cons 1 1)))

(test "a,b = 2,3" 108 (lambda () (cons 2 3)))

(test "a,b = 2,3 car" 2 (lambda () (car (cons 2 3))))

(test "a,b = 2,3 cdr" 3 (lambda () (cdr (cons 2 3))))
