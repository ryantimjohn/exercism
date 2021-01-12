(defpackage #:hamming
  (:use #:cl)
  (:export #:distance))

(in-package #:hamming)

(defun distance (dna1 dna2)
  (let ((d 0)) (if (/= (length dna1) (length dna2)) () (
    (dotimes (n(length dna1))
    (when (/= (subseq dna1 n n+1) (subseq dna2 n n+1)) (+ d 1)))))d)
)
