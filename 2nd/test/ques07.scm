(use gauche.test)

(load "./ques07.scm")

(test "区間" (cons 1 2) (lambda () (make-interval 1 2)))

(test "上限" 2 (lambda () (upper-bound (make-interval 1 2))))

(test "下限" 1 (lambda () (lower-bound (make-interval 1 2))))

(test "足し算" (cons 2 4) (lambda () (add-interval (make-interval 1 2) (make-interval 1 2))))

(test "かけ算" (cons 1 4) (lambda () (mul-interval (make-interval 1 2) (make-interval 1 2))))

