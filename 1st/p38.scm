(define (search f neg-point pos-point)
  (let ((midpoint (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
      midpoint
      (let ((test-value (f midpoint)))
        (cond ((positive? test-value)
               (search f neg-point midpoint))
              ((negative? test-value)
               (search f midpoint pos-point))
              (else midpoint))))))

(define (close-enough? x y)
  (< (abs (- x y)) 0.001))


(define (half-interval-method f a b)
  (let ((a-value (f a))
        (b-value (f b)))
    (cond ((and (negative? a-value) (positive? b-value))
           (search f a b))
          ((and (negative? b-value) (positive? a-value))
           (search f b a))
          (else 
            (error "Values are not of opposite sign" a b)))))

(define (average a b)
  (/ (+ a b) 2))


;(print (half-interval-method sin 2.0 4.0))
;3.14111328125
;(print (half-interval-method (lambda (x) (- (* x x x) (* 2 x) 3))
;                             1.0
;                             2.0))
;1.89306640625

(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
        next
        (try next))))
  (try first-guess))


;(print (fixed-point cos 1.0))

;(print (fixed-point (lambda (y) (+ (sin y) (cos y)))
;                    1.0))

;(print (fixed-point (lambda (x) (- (* x x) x))
;                    -1.1))
;数秒じゃおわらんｗ
(define (sqrt x)
  (fixed-point (lambda (y) (/ x y))
               1.0))
;これは収束しない
;なぜなら振動してしまうから
;上の奴もそうっぽい
;予測値を振動しないものにする

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
               1.0))

;(print (fixed-point (lambda (x) (average x (- (* x x) x)))
;                    -1.0))
;1.0842021724855044e-19


;(print (sqrt 9.0))
;3.0




