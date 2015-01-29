(load "./p31.scm")

(define (accumulate combiner null-value term a next b filter?)
  (cond ((> a b) null-value)
        ((not (filter? a)) (accumulate combiner null-value term (next a) next b filter?))
        (else (combiner (term a) (accumulate combiner null-value term (next a) next b filter?)))))

(define (sum-even a b)
  (accumulate + 0 identity a inc b even?))



(print (sum-even 1 4))

; a. filter? にprime?を渡す
; b. filter? GCD(i,n)=1かどうかを判別する関数をた渡す


