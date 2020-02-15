(define (inc a)
  (+ a 1))

(define (dec a)
  (- a 1))

(define (new-plus-1 a b)
  (if (= a 0)
      b
      (inc (new-plus-1 (dec a)
                       b))))
;; TODO Wirte comments for the question

(define (new-plus-2 a b)
  (if (= a 0)
      b
      (new-plus-2 (dec a)
                  (inc b))))
;; TODO Wirte comments for the question

(new-plus-1 4 5)
(new-plus-2 4 5)
