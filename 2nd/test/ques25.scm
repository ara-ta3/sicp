(use gauche.test)

(load "./ques25.scm")

(test "7 (1 3 (5 7) 9)"
      7
      (lambda () (c1 (list 1 3 (list 5 7) 9))))

(test "7 ((7))"
      7
      (lambda () (c2 (list (list 7)))))

(test "7 (1 (2 (3 (4 (5 (6 7))))))"
      7
      (lambda () (c3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))))


