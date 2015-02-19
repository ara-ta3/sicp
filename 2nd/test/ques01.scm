(use gauche.test)

(load "./ques01.scm")

(test "既約分数になること" (cons 1 2) (lambda () (make-rat 2 4)))

(test "マイナスになること" (cons -1 2) (lambda () (make-rat -1 2)))

(test "分母がマイナスでも分子がマイナスになること" (cons -1 2) (lambda () (make-rat 1 -2)))

(test "分子分母がマイナスの時はプラスになること" (cons 1 2) (lambda () (make-rat -1 -2)))
