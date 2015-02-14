(use gauche.test)
(use file.util)
(test-start "commons")

(load "./lib/commons.scm")

(test "cube" 27 (lambda () (cube 3)))

(test "inc" 1 (lambda () (inc 0)))

(test "average" 2 (lambda () (average 2 2)))

