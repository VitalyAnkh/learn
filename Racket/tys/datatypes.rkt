#lang scheme
(boolean? #t)
(define a 20)
(define b 30)
(when (< a b)
  (display "a是")
  (display a)
  (display "\n")
  (display "b是")
  (display b)
  (display "\n")
  (display "a小于b")
  )

(define c #\c)
(case c
  ((#\a) 1)
  ((#\b) 2)
  ((#\c) 3)
  (else 4)
  )
(define counter 1)

(define bump-counter
  (lambda ()
    (set! counter (+ 1 counter))))

(define x 20)
(let
    ((x 1)
     (y x))
  (list x y))

(let*
    ((x 1)
     (y x))
  (list x y))
