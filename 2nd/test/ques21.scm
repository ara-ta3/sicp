(use gauche.test)

(load "./ques21.scm")

(test "2乗された列が返ること"
      (list 1 4 9 16)
      (lambda () (square-list (list 1 2 3 4))))


