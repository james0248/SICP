(define (square a)
  (* a a))

(define (sum-of-three-squares a b c)
  (+ (square a)
     (square b)
     (square c)))

(sum-of-three-squares 1 2 3)
