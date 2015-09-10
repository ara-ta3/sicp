(use gauche.test)
(load "./p64.scm")

(test "scale-tree" (list 10 (list 20 (list 30 40) 50) (list 60 70)) (lambda () (scale-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)) 10)))

