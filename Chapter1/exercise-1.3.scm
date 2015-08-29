;;;; SICP Exercise 1.3.
;;;;
;;;; Jonas Nockert, 2015.
;;;; @lemonad

;; x^2.
(define (square x) (* x x))


;; x^2 + y^2.
(define (sum-of-squares x y) (+ (square x) (square y)))


;; Given three values, finds the two largest and adds the squares of these.
;;
;; FIXME Surely, there must be a simpler/better construction than this.
(define (add-and-square-largest x y z)
  (cond ((> x y) (cond ((> y z) (sum-of-squares x y))
                       (else (sum-of-squares x z))))
        (else (cond ((> x z) (sum-of-squares x y))
                    (else (sum-of-squares y z))))))
