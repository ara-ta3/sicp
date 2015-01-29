(define (cube n) (* n n n))

(define (sum-integers a b)
  (if (> a b)
    0
    (+ a (sum-integers (+ a 1) b))))

(define (sum-cubus a b)
  (if (> a b)
    0
    (+ (cube a) (sum-cubus (+ a 1) b))))

(define (pi-sum a b)
  (if (> a b)
    0
    (+ (/ 1.0 (* a (+ a 2))) (pi-sum (+ a 4) b))))


; sum の定義
(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b))))

(define (inc n) (+ n 1))

(define (sum-cubus a b)
  (sum inc a cube b))

(define (identity x) x)

(define (sum-integers a b)
  (sum identity a inc b))

(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))


(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)))
