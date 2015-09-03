(define us-coins (list 50 25 10 5 1))

(define uk-coins (list 100 50 20 10 5 2 1 0.5))


(define (cc amount coin-vals)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (no-more? coin-vals)) 0)
          (else 
            (+ (cc amount
                   (except-first-denomination coin-vals))
               (cc (- amount
                        (first-denomination coin-vals))
                   coin-vals)))))

(define (no-more? items)
  (= (length items) 0))

(define (except-first-denomination items)
  (cdr items))

(define (first-denomination items)
  (car items))

; 順は影響ない?
; 理由: 
