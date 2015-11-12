(define zero (lambda (f) (lambda (x) x)))

(define one (lambda (f) (lambda (x) (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

; こっちだとおもったけど、括弧の数的に違うのかなぁと思ってる
; (define two (lambda (f) (lambda (x) (f f x))))

; $zero = function(f) { return function(x) { return x;};};
; $a = $zero('a')
; $a('b') // b

;(lambda (f) (lambda (x) (x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;足し算
(define (+ a b) (lambda (f) (lambda (x) ((a f) ((b f) x)))))

; zeroの表現に必然性はない
; xのことを0とかんがえると良さそう
; fを作用させた回数を数として名前をつけてるっぽい

;(print (add-1 zero))
;(print (add-1 one))

;(add-1 zero)
;(lambda (f) (lambda (x) (f ((n f) x))) zero)
;(lambda (f) (lambda (x) (f ((n f) x))) (lambda (f) (lambda (x) x)))
;(lambda (x) (lambda (f) (lambda (x) x)) ((n (lambda (f) (lambda (x) x))) x))

;(lambda (f) (lambda (((n (lambda (f) (lambda (x) x))) x) ((n (lambda (f) (lambda (x) x))) x))) ((n (lambda (f) (lambda (x) x))) x))
;ちょっと無理

;(define (lm n)
;  (lambda (f) n))

;(print ((lm 5) 1))
