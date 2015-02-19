(use gauche.test)

(load "./ques02.scm")

(test "consになること" (cons (cons 1 2) (cons 2 4)) (lambda () (make-segment 1 2 2 4)))

(test "startが取得できること" (make-point 1 2) (lambda () (start-segment (make-segment 1 2 2 4))))

(test "endが取得できること" (make-point 2 4) (lambda () (end-segment (make-segment 1 2 2 4))))

(test "consになること" (cons 1 2) (lambda () (make-point 1 2)))

(test "xが取得できること" 1 (lambda () (x-point (make-point 1 2))))

(test "yが取得できること" 2 (lambda () (y-point (make-point 1 2))))

(test "中点がが取得できること" (make-point 2 4) (lambda () (midpoint-segment (make-segment 1 2 3 6))))

