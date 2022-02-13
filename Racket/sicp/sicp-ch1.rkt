#lang sicp
(define pi 3.14)

(define (s x y) (+ x y))

(define (minus x y)
  (- x y))

(define (abs x)
  (cond
    ((> x 0) x)
    ((= x 0) 0)
    ((< x 0) (- x))
    ))

(define (>= x y)
  (or (> x y) (= x y))
  )

(define (<= x y)
  (or (< x y) (= x y)))
(define (sum-of-squares-of-two-larger-numbers x y z)
  (cond
    ((and (<= x y) (<= x z)) (+ (* y y) (* z z)))
    ((and (<= y x) (<= y z)) (+ (* x x) (* z z)))
    ((and (<= z x) (<= z y)) (+ (* x x) (* y y)))
    ))
