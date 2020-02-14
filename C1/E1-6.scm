(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x))
     (* x 0.000001)))

(define (improve guess x)
  (/ (+ guess
        (/ x guess))
     2))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(sqrt-iter 1.0 5.0)
