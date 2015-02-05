(load "./lib/runtime.scm")
(define (cont-frac n d k)
  (define (cont-frac-iter n d k i)
    (if (= i k)
      (/ (n i) (d i))
      (/ (n i) (+ (d i) (cont-frac-iter n d k (+ i 1))))))
  (cont-frac-iter n d k 1))

;(display (runtime))
;(newline)
;(print (/ 1 (cont-frac (lambda (i) 1.0)
;                  (lambda (i) 1.0)
;                  10000000)))
;(display (runtime))
;(newline)
;10     : 1.6181818181818184
;1000   : 1.618033988749895

(define (cont-frac n d k)
  (define (cont-frac-iter n d k previous)
    (if (= k 1)
      (/ (n k) (+ (d k) previous))
      (cont-frac-iter n d (- k 1) (/ (n k) (+ (d k) previous)))))
  (cont-frac-iter n d k 1))

;(print (/ 1 (cont-frac (lambda (i) 1.0)
;                  (lambda (i) 1.0)
;                  10)))
;1.6179775280898876
;(print (/ 1 (cont-frac (lambda (i) 1.0)
;                  (lambda (i) 1.0)
;                  1000)))
;1.618033988749895

;(display (runtime))
;(newline)
;(print (/ 1 (cont-frac (lambda (i) 1.0)
;                  (lambda (i) 1.0)
;                  10000000)))
;(display (runtime))

