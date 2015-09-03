(use gauche.test)

(load "./ques18.scm")

(test "逆順リストが返ること" (my-reverse (list 1 4 9 16 25)) (lambda () (list 25 16 9 4 1)))

