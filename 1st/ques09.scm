(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))

;(+ 4 5)
;(inc (+ (dec 4) 5))
;(inc (+ 3 5))
;階乗計算手続きの前者板
;再帰的プロセス

;(+ 2 5)
;(inc (+ (dec 2) 5))
;(inc (+ 1 5))
;(inc (inc (+ (dec 1) 5)))
;(inc (inc (+ 0 5)))
;(inc (inc 5))
;(inc 6)
;7

(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))

;(+ 4 5)
;(+ 3 6)
;階乗計算手続きの後者板
;反復的プロセス


