(define (make-segment x1 y1 x2 y2)
  (cons (make-point x1 y1) (make-point x2 y2)))

(define (start-segment seg)
  (car seg))

(define (end-segment seg)
  (cdr seg))

(define (make-point x y)
  (cons x y))

(define (x-point x)
  (car x))

(define (y-point x)
  (cdr x))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (midpoint-segment seg)
  (define (average p1 p2 point-selector)
    (/ (+ (point-selector p1) (point-selector p2)) 2))
  (define (averageX p1 p2)
    (average p1 p2 x-point))
  (define (averageY p1 p2)
    (average p1 p2 y-point))
  (make-point
    (averageX (start-segment seg) (end-segment seg))
    (averageY (start-segment seg) (end-segment seg))))



