;;;; Tests for exercise 1.2.
;;;;
;;;; Jonas Nockert, 2015.
;;;; @lemonad

(load "../../test-manager/load.scm")

(in-test-group
  test-exercise

  ; No procedure so run this test interactive.
  (define-test (correct-result)
    (interaction
      (load "exercise-1.2.scm")
      (produces -37/150))))  ; This compares against the value of the last form

(run-registered-tests)
