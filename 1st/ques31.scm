(load "./p31.scm")

(define (even? n)
  (= (remainder n 2) 0))

(define (odd? n)
  (= (remainder n 2) 1))


(define (product term a next b)
  (if (> a b)
    1
    (* (term a) (product term (next a) next b))))

(define (factorial n)
  (product identity 1 inc n))

(define (letNum term n)
  (if (term n)
    n
    (+ n 1)))

(define (letEven n)
  (letNum even? n))

(define (letOdd n)
  (letNum odd? n))

(define (pi-product n)
  (/ (product letEven 2.0 inc n) (product letOdd 2.0 inc n)))

(define (pi-product n)
  (define (letFraction n)
    (/ (letEven n) (letOdd n)))
  (product letFraction 2.0 inc n))


;(print (* (pi-product 1000) 4))

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* (term a) result))))
  (iter a 1)
  )

(define (factorial n)
  (product identity 1 inc n))

;(print (factorial 5))

