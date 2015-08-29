;;;; SICP Exercise 1.4.
;;;;
;;;; Jonas Nockert, 2015.
;;;; @lemonad

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
