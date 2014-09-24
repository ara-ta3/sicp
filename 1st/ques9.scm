(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))

;(+ 4 5)
;(inc (+ (dec 4) 5))
;(inc (+ 3 5))
;階乗計算手続きの前者板
;再帰的プロセス

(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))

;(+ 4 5)
;(+ 3 6)
;階乗計算手続きの後者板
;反復的プロセス


