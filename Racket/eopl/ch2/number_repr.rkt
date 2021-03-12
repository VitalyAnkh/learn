#lang eopl

(define zero (lambda () 0))
(define is-zero? (lambda (n) (zero? n)))
(define successor (lambda (n) (+ 1 n)))
(define predecessor (lambda (n) (- n 1)))
