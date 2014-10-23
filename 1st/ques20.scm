(use slib)
(require `trace)

(define (rm a b)
  (remainder a b))
(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (rm a b))))
(trace rm)

(print (gcd 206 40))
(print (gcd 28 16))

(gcd 206 40)
(if (= 40 0)
  206
  (gcd 40 (rm 206 40)))




(gcd 40 (rm 206 40))
(if (= (rm 206 40) 0)
  40
  (gcd (rm 206 40) (rm 40 (rm 206 40))))
; 1
(if (= 40 6)
  40
  (gcd (rm 206 40) (rm 40 (rm 206 40))))



(gcd (rm 206 40) (rm 40 (rm 206 40)))

(if (= (rm 40 (rm 206 40)) 0)
  (rm 206 40)
  (gcd (rm 40 (rm 206 40)) (rm (rm 206 40) (rm 40 (rm 206 40)))))
; 3
(if (= 4 0)
  (rm 206 40)
  (gcd (rm 40 (rm 206 40)) (rm (rm 206 40) (rm 40 (rm 206 40)))))

(gcd (rm 40 (rm 206 40)) (rm (rm 206 40) (rm 40 (rm 206 40))))
(if (= (rm (rm 206 40) (rm 40 (rm 206 40))) 0)
  (rm 40 (rm 206 40))
  (gcd (rm (rm 206 40) (rm 40 (rm 206 40))) (rm (rm 40 (rm 206 40)) (rm (rm 206 40) (rm 40 (rm 206 40))))))

; 7
(if (= 2 0)
  (rm 40 (rm 206 40))
  (gcd (rm (rm 206 40) (rm 40 (rm 206 40))) (rm (rm 40 (rm 206 40)) (rm (rm 206 40) (rm 40 (rm 206 40))))))


(gcd (rm (rm 206 40) (rm 40 (rm 206 40))) (rm (rm 40 (rm 206 40)) (rm (rm 206 40) (rm 40 (rm 206 40)))))
(if (= (rm (rm 40 (rm 206 40)) (rm (rm 206 40) (rm 40 (rm 206 40)))) 0)
  (rm (rm 206 40) (rm 40 (rm 206 40)))
  (gcd (rm (rm 40 (rm 206 40)) (rm (rm 206 40) (rm 40 (rm 206 40)))) (rm (rm (rm 206 40) (rm 40 (rm 206 40))) (rm (rm 40 (rm 206 40)) (rm (rm 206 40) (rm 40 (rm 206 40)))))))

; 14
(if (= 0 0)
  (rm (rm 206 40) (rm 40 (rm 206 40)))
  (gcd (rm (rm 40 (rm 206 40)) (rm (rm 206 40) (rm 40 (rm 206 40)))) (rm (rm (rm 206 40) (rm 40 (rm 206 40))) (rm (rm 40 (rm 206 40)) (rm (rm 206 40) (rm 40 (rm 206 40)))))))

; 18
(rm (rm 206 40) (rm 40 (rm 206 40)))
(rm 6 4)
(2)

;正規的順序18回

;作用的順序3回
