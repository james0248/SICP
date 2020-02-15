(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x))
     (* x 0.0000001)))

(define (improve guess x)
  (/ (+ (* 2 guess)
        (/ x (square guess)))
     3))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))

(cube-iter 1.0 8.0)
