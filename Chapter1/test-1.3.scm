;;;; Tests for exercise 1.3.
;;;;
;;;; Jonas Nockert, 2015.
;;;; @lemonad

(load "../../test-manager/load.scm")
(load "exercise-1.3.scm")

(in-test-group
  test-exercise

  ;; Test permutations of 1,2,3.
  (define-test (permutations)
    "Checking permutations of 1,2,3."
    (check (= 13 (add-and-square-largest 1 2 3)) "2,3 > 1 (permutation 1)")
    (check (= 13 (add-and-square-largest 1 3 2)) "2,3 > 1 (permutation 2)")
    (check (= 13 (add-and-square-largest 2 1 3)) "2,3 > 1 (permutation 3)")
    (check (= 13 (add-and-square-largest 2 3 1)) "2,3 > 1 (permutation 4)")
    (check (= 13 (add-and-square-largest 3 1 2)) "2,3 > 1 (permutation 5)")
    (check (= 13 (add-and-square-largest 3 2 1)) "2,3 > 1 (permutation 6)"))


  ;; Test two out of three equal.
  (define-test (two-equal)
    "Checking 1,2,2."
    (check (= 8 (add-and-square-largest 1 2 2)) "Two equal 1")
    (check (= 8 (add-and-square-largest 2 1 2)) "Two equal 2")
    (check (= 8 (add-and-square-largest 2 2 1)) "Two equal 3"))


  ;; Test all three values equal.
  (define-test (three-equal)
    "Checking 2,2,2."
    (check (= 8 (add-and-square-largest 2 2 2)) "Three equal"))


  ;; Test negative values.
  (define-test (negatives)
    "Checking negatives."
    (check (= 5 (add-and-square-largest -1 -2 -3)) "-(1,2,3)"))


  ;; Test zeroes.
  (define-test (zeroes)
    "Checking all zeroes."
    (check (= 0 (add-and-square-largest 0 -0 0)) "0")))

(run-registered-tests)
