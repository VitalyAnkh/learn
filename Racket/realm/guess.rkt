#lang racket
(define lower 1)
(define upper 100)
(define (guess)
  (quotient (+ lower upper) 2))
(define (return-five) 5)

(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))

(define (bigger)
  (set! lower (min upper (add1 (guess))))
  (guess))

(define (start n m)
  (set! lower (min n m))
  (set! upper (max n m))
  (guess))

(define (square n)
  (* n n))
(define (sin-sub-cos x)
  (- (sin x) (cos x)))


(struct student (name id# dorm) #:transparent)
(define snack '(hulatang hvmm yh))
(struct transparent-struct (good bad racket?) #:transparent)
(define jane (student 23 321 532))
(define bob (student "Bob" 1234 'Jix))
(define (tell-odd n) (if (odd? n)
                         'odd-number
                         'even-number))
(define (fuck-odd n) (if (odd? n)
                         (/ 1 0)
                         'even-number))

(define (my-length a-list)
  (if (empty? a-list)
      0
      (add1 (my-length (rest a-list)))))