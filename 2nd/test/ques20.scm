(use gauche.test)

(load "./ques20.scm")

(test "奇数列が返ること"
      (list 1 3 5 7)
      (lambda () (same-parity 1 2 3 4 5 6 7)))

(test "偶数列が返ること"
      (list 2 4 6)
      (lambda () (same-parity 2 3 4 5 6 7)))

(test "先頭のみが返ること"
      (list 1)
      (lambda () (same-parity 1)))

(test "2要素で返ること"
      (list 1 3)
      (lambda () (same-parity 1 2 3)))


