(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
  (else else-clause))
)

(define (sqrt-iter guess x)
  (new-if (< (abs (- (* guess guess) x)) 0.001)
    guess
  (sqrt-iter (/ (+ guess (/ x guess)) 2) x))
)
; new-ifを展開
; sqrt-iterを展開
; new-ifを展開、以後ループ？

;(define (sqrt-iter guess x)
;  (cond ( (< (abs (- (* guess guess) x)) 0.001) guess)
;  (else sqrt-iter (/ (+ guess (/ x guess)) 2) x))
;)
;こっちは
; condが見えたので、述語を評価、elseになったので、sqrt-iterを評価
; でゴール
; ということ？

; 特殊形式は独自の評価順序を持つ
; ifもまたそう
; ifはpredicateを評価し、その値を返す
; condもそう
; predicateを評価し続け、当てはまったものの帰結式を評価した値を返す


(define (sqrt x)
  (sqrt-iter 1.0 x)
)
;(define (sqrt-iter guess x)
;  (new-if (good-enough? guess x)
;    guess
;  (sqrt-iter (improve guess x) x))
;)

;(define (improve guess x)
;  (/ (+ guess (/ x guess)) 2)
;)
;
;(define (good-enough? guess x)
;  (< (abs (- (* guess guess) x)) 0.001)
;)

;(define (improve guess x)
;  (average guess (/ x guess))
;)
;
;(define (average x y)
;  (/ (+ x y) 2)
;)


;(define (good-enough? guess x)
;  (< (abs (- (square guess) x)) 0.001)
;)
;
;(define (square x) (* x x))


(print (new-if (= 2 3) 0 5))
(print (new-if (= 1 1) 0 5))

(print (sqrt 9))
