(use gauche.test)
(load "./ques32.scm")

;(print (subsets (list 1 2 3)))

(test "subsets of 1 2 3" (list '() (list 3) (list 2) (list 2 3) (list 1) (list 1 3) (list 1 2) (list 1 2 3)) (lambda () (subsets (list 1 2 3))))

