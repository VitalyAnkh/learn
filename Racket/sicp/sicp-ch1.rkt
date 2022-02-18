#lang racket
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

(define (square x)
  (* x x))

(define (sum-of-squares-of-two-larger-numbers x y z)
  (cond
    ((and (<= x y) (<= x z)) (+ (* y y) (* z z)))
    ((and (<= y x) (<= y z)) (+ (* x x) (* z z)))
    ((and (<= z x) (<= z y)) (+ (* x x) (* y y)))
    ))


(define (average x y)
  (/ (+ x y) 2))

;; (define (improve guess x)
;;   (average guess (/ x guess)))
(define (improve guess x)
  (average guess (/ x guess))
  )

(define (good-enough? guess x)
  (< ( abs (- (square guess) x)) 0.00001)
  )

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x))
  )

(define (sqrt x)
  (sqrt-iter 1.0 x)
  )
