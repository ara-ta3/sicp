(use gauche.test)
(load "./util/filter.scm")

(test "filter odd?" (list 1 3 5) (lambda () (filter odd? (list 1 2 3 4 5))))
