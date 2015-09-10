(use gauche.test)
(load "./p61.scm")

(test "length x" 3 (lambda () (length x)))

(test "count leaves x" 4 (lambda () (count-leaves x)))

