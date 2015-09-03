(use gauche.test)

(load "./ques17.scm")

(test "最後の要素が返ること" (last-pair (list 12 72 149 34)) (lambda () 34))

