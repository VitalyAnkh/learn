#lang eopl
;; Bignum representation for number in scheme
;; a number is represented by a base N and a list of digit
;; e.g. N = 16, then repr(33) = (1 2), for 33 = 1 + 2 * 16 ^ 1
;;
;; Next I assume N == 16
(define base 16)

(define zero (lambda () '(0)))

(define is-zero?
  (lambda (n)
     (cond
        ((null? n) #f)
        ((and (eq? (length n) 1) (eq? (car n) 0)) #t)
        (else #f))))

(define successor
  (lambda (n)
    (if (is-zero? n)
        '(1)
        (let ((r (+ 1 (car n))))
          (if
            (eq? r base)
            (cons 0 (successor (cdr n)))
            (cons r (cdr n)))
          ))))

(define predecessor
  (lambda (n)
    (if (is-zero? n)
        ;; '() means NULL for big num representation
        '()
        (if (equal? '(1) n)
            '(0)
            (let ((r (- (car n) 1)))
              (if (negative? r)
                  (cons (- base 1) (predecessor (cdr n)))
                  (cons r (cdr n))))))))
