#lang eopl
;; Bignum representation for number in scheme
;; a number is represented by a base N and a list of digit
;; e.g. N = 16, then repr(33) = (1 . 2), for 33 = 1 + 2 * 16 ^ 1
;;
;; Next I assume N == 16
(define base 16)

;; '() and '(0) are both zeros, but only
;; define zero as '()
(define zero (lambda () '()))

(define is-zero? null?)

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

;; let '(0) doesn't exist in our world
;; we will always use '() as zero
(define predecessor
  (lambda (n)
    (if (is-zero? n)
        ;; '() means NULL for big num representation
        (zero)
        (if (equal? '(1) n)
            (zero)
            (let ((r (- (car n) 1)))
              (if (negative? r)
                  (cons (- base 1) (predecessor (cdr n)))
                  (cons r (cdr n))))))))

(define plus
  (lambda (x y)
    (if (is-zero? x)
        y
        (successor (plus (predecessor x) y)))))

;; define (subtract x y) as x - y
(define vr/subtract
  (lambda (x y)
    (cond
      ;; this is a world without sign
      ;; x should be bigger than y!!!
      ((is-zero? y) x)
      ((let ((r (- (car x) (car y))))
         (cond
           ((negative? r) ((cons (- (+ base (car x) ) (car y))
                                 (vr/subtract (predecessor (cdr x)) (cdr y)))))
           (else
            (cons r (vr/subtract (cdr x) (cdr y))))
           )  )))))

(define vr/multiply
  (lambda (x y)
    (cond
      ((or (is-zero? x) (is-zero? y)) (zero))
      ((equal? '(1) x) y)
      ((equal? '(1) y) x)
      (else (plus (vr/multiply (predecessor x) y) y)
            )
      )))
