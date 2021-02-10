#lang eopl

;; bigits representation of number
(define zero (lambda () '()))
(define is-zero? (lambda (n) (equal? n '())))
(define successor (lambda (n) (+ n 1)))

