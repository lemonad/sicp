;;;; SICP Exercise 1.5.
;;;;
;;;; Jonas Nockert, 2015.
;;;; @lemonad

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; In applicative-order evaluation, this becomes a forever-expanding
;; statement.
(test 0 (p))
