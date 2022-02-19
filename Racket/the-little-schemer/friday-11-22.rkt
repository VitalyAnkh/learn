#lang scheme
(define l '(((hotdogs)) (and) (pickle) relish) )

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l) ) (lat? (cdr l)))
      (else #f))))

(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? a (car lat))
                (member? a (cdr lat)))))))
(define rember
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
      ((eq? (car lat) a) (cdr lat))
      (else (cons (car lat) (rember a (cdr lat)))))))

(define firsts
  (lambda (l)
    (cond
      ((null? l) '())
      (else (cons (car (car l)) (firsts (cdr l)))))))
;; (define insertR
;;   (lambda (new old lat)
;;     (cond
;;       ((null? lat) '())
;;       ((eq? (car lat) old) (cons (cons (car lat) (cons new '()))

;; (define rember
;;   (lambda (a lat)
;;     (cond
;;       ((null? lat ) (quote ()) )
;;       (else
;;        (cond
;;          ((eq? (car lat) a) (cdr lat))
;;          (else (rember a (cdr lat))))))
;;     ))
