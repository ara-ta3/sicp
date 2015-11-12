(use gauche.test)
(load "./util/accumulate.scm")

(test "accumulate + 0" 15 (lambda () (accumulate + 0 (list 1 2 3 4 5))))

(test "accumulate * 1" 120 (lambda () (accumulate * 1 (list 1 2 3 4 5))))

(test "cons nil" (list 1 2 3 4 5) (lambda () (accumulate cons '() (list 1 2 3 4 5))))
