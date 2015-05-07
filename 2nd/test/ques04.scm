(use gauche.test)

(load "../ques04.scm")

(test "(cons 3 5)に対してcarが3を返すこと" 3 (lambda () (car (cons 3 5))))

(test "(cons 3 5)に対してcdrが5を返すこと" 5 (lambda () (cdr (cons 3 5))))
