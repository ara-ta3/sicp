(define (pascal-part x y)
  (if (or (= x 1) (= x y))
    1
    (+ (pascal-part x (- y 1)) (pascal-part (- x 1) (- y 1)))
    ))

(print (pascal-part 1 1))

(print (pascal-part 1 2) " " (pascal-part 2 2))

(print (pascal-part 1 3) " " (pascal-part 2 3) " " (pascal-part 3 3))

(print (pascal-part 1 4) " " (pascal-part 2 4) " " (pascal-part 3 4) " " (pascal-part 4 4))

(print (pascal-part 1 5) " " (pascal-part 2 5) " " (pascal-part 3 5) " " (pascal-part 4 5) " " (pascal-part 5 5))

; (pascal-line)とかでx 1 ~ yとか
; (pascal n)でn行出すとかやりたい。


