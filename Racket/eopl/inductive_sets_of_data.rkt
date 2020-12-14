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

(reverse '(1 23 4))


;; occurs-free? : Sym -> LcExp -> Bool
;; determine whether a symbol occurs free in a lambda expression
(define occurs-free?
  (lambda (var exp)
    (cond
      ((symbol? exp) (eqv? var exp))
      ((eqv? (car exp) 'lambda)
       (and
        (not (eqv? var (car (cadr exp))))
        (occurs-free? var (car (cddr exp)))))
      (else
       (or
       (occurs-free? var (car exp))
       (occurs-free? var (cadr exp))))
      )))

;; subst :: Sym -> Sym -> S-list -> S-list
(define subst
  (lambda (new old slist)
  (if (null? slist)
      '()
      (cons
       (subst-in-s-exp new old (car slist))
       (subst new old (cdr slist))))))

(define subst-in-s-exp
  (lambda (new old sexp)
  (if (symbol? sexp)
      (if (eqv? old sexp)
          new
          sexp)
      (subst new old sexp))))

;; number-elements-from :: Listof(SchemeVal) -> Int -> Listof(List(Int, SchemeVal))
(define number-elements-from
  (lambda (lst n)
    (if (null? lst)
        '()
        (cons (list n (car lst))
              (number-elements-from (cdr lst) (+ n 1))))))
;; number-elements :: Listof(SchemeVal) -> Listof(List(Int, SchemeVal))
(define number-elements
  (lambda (lst)
    (number-elements-from lst 0)))

;; sum-list :: Listof(Int) -> Int
(define sum-list
  (lambda (lst)
    (cond
      ((null? lst) 0)
      ((eq? (length lst) 1) (car lst))
      (else (+ (car lst) (sum-list (cdr lst)))))))

;; partial-vector-sum :: Vectorof(Int) -> Int -> Int
(define partial-vector-sum
  (lambda (v n)
    (if (zero? n)
        (vector-ref v 0)
        (+ (vector-ref v n)
           (partial-vector-sum v (- n 1))))))


;; vector-sum :: Vectorof(Int) -> Int
(define vector-sum
  (lambda (v)
    (if (null? v)
        0
        (partial-vector-sum v (- (vector-length v) 1)))))

;; ex1.15
;; duple :: int -> SchemeVal -> Listof(SchemeVal)
;; contract: (duple n x) give a list containing n copies of x
(define duple
  (lambda (n x)
    (if (zero? n)
        '()
        (cons x (duple (- n 1) x)))))

;; ex1.16
;; invert :: Listof(List(a, b)) -> Listof(List(b, a))
;; (invert lst), where lst is a list of 2-lists(list of length two), returns a
;; list with each 2-list inverted
(define invert
  (lambda (lst)
    (if (null? lst)
        '()
        (cons (list (cadar lst) (caar lst))
              (invert (cdr lst))))))

;; ex1.17
;; down :: Listof(SchemeVal) -> Listof(List(SchemeVal))
;; (down lst) wraps parenthese around each top level element of lst
;; example : (down '(a b c)) => '((a) (b) (c))
(define down
  (lambda (lst)
    (if (null? lst)
        '()
        (cons (list (car lst))
              (down (cdr lst))))))

;; ex1.18
;; swapper :: SchemeVal -> SchemeVal -> Listof(SchemeVal) -> Listof(SchemeVal)
;; (swapper s1 s2 slist) swaps s1 and s2 in the slist
;; TODO: buggy, fix it!!!
(define swapper
  (lambda (s1 s2 slist)
    (cond
      ((null? slist) '())
      (cons (swapper-in-s-exp s1 s2 (car slist))
            (swapper s1 s2 (cdr slist))))))
;; ex1.18
;; swapper-in-s-exp :: SchemeVal -> SchemeVal -> S-exp -> S-exp
;; (swapper s1 s2 sexp) swaps s1 and s2 in the sexp
(define swapper-in-s-exp
  (lambda (s1 s2 sexp)
    (cond
      ((symbol? sexp)
       (cond
        ((equal? s1 sexp) s2)
        ((equal? s2 sexp) s1)
        (else sexp)
      ))
      (else
       (swapper s1 s2 sexp)))))
