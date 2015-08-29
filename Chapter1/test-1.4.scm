;;;; Tests for exercise 1.4.
;;;;
;;;; Jonas Nockert, 2015.
;;;; @lemonad

(load "../../test-manager/load.scm")
(load "exercise-1.4.scm")

(in-test-group
  test-exercise

  ; Test permutations of 1,2,3.
  (define-test (permutations)
    "Checking permutations of 1,2,3."
    (check (= 3 (a-plus-abs-b 1 2)) "2+3")
    (check (= 3 (a-plus-abs-b 1 -2)) "2+|-3|")))

(run-registered-tests)
