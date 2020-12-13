#lang eopl

;; remove-first: Symbol -> List-of(Symbol) -> List-of(Symbol)
;; List-of-Symbol do not contain sublists
;; #TODO: how to implement this function for s-list (lists may contain sublists)
;; #TODO: what's the difference between eq?, eqv? and equal? ?
(define remove-first
  (lambda (sym los)
    (if (null? los)
        los
        (if (eqv? sym (car los))
            (cdr los)
            (cons (car los) (remove-first sym (cdr los)))))))

;; remove: Symbol -> List-of(Symbol) -> List-of(Symbol)
(define remove
  (lambda (sym los)
    (if (null? los)
        los
        (if (eqv? sym (car los))
            (remove sym (cdr los))
            (cons (car los) (remove sym (cdr los)))))))
