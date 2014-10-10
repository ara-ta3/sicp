(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
    angle
    (p (sine (/ angle 3.0)))))

;(define (sine angle)
;  (if (<= (abs angle) 0.1) ; angle <= 0.1
;    angle
;    (p (sine (/ angle 3.0)))))


(sine 12.15)
(p (sine (/ 12.5 3.0)))
(p (sine 4.05))
(p (p (sine 1.35)))
(p (p (p (sine 0.45))))
(p (p (p (p (sine 0.15)))))
(p (p (p (p (p (sine 0.05))))))
(p (p (p (p (p 0.05)))))
(p (p (p (p 0.14950000000000002))))


;5回
;a / 3^n >= 0.1を満たす最大のn
;n = loga (底3)

(use slib)
(require `trace)
(trace p)
(sine 12.15)

