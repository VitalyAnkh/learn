#lang racket
(define (f lst)
  ; (a) ; check if the list is null
  (if (null? lst)
      ; (b) ; if the list is null, return null list
      '()
      ; (c) ; if the list is not null, plus 1 to the fist element of
      ; the list, and cons the result to (f (cdr lst)), which is a recursive computation
      (cons (+ 1 (car lst)) (f (cdr lst)))
  ))

(define (member? e lst)
  ;; If the list is null
  (if (null? lst)
      ;; False
      #f
      ;; If the first element is equal to `e`
      (if (eq? e (car lst))
          ;; True
          #t
          ;; else go to recursion
          (member? e (cdr lst)))))

(define (set? lst)
  ;; If the list is null
  (if (null? lst)
      ;; True
      #t
      ;; If the first element is a member of the rest of the list
      (if (member? (car lst) (cdr lst))
          ;; false
          #f
          ;; else go into iteration
          (set? (cdr lst)))))


(define (union lst1 lst2)
  ;; If the first lst1 is null
  ;; just return the second one
  (if (null? lst1)
      lst2
      ;; If the first element is also a member of the second,
      (if (member? (car lst1) lst2)
          ;; discard the first element, and go into recursion
          (union (cdr lst1) lst2)
          ;; else cons and go into recursion
          (union (cdr lst1) (cons (car lst1) lst2)))))


(define (intersect lst1 lst2)
  (cond
    ;; If the first list is null,
    ;; return null list
    ((null? lst1) '())
    ;; if the first element of the first list is also a member of the second
    ;; cons the first element of the first list and the result of recursion
    ((member? (car lst1) lst2)(cons (car lst1)(intersect (cdr lst1) lst2)))
    ;; else go into recursion
    (else (intersect (cdr lst1) lst2))))

(define (difference lst1 lst2)
    (cond
      ((null? lst1) '())
      ((member? (car lst1) lst2) (difference (cdr lst1) lst2))
      (else (cons (car lst1) (difference (cdr lst1) lst2)))))


(define (flatten lst)
  ;; three situations
  (cond
    ;; When the list is null return empty list
    [(null? lst) '()]
    ;; If the list is a pair, that's to say,
    ;; a list with two element and maybe one of the two
    ;; is also a list, we flatten them perpectively
    [(pair? lst) (append (flatten (car lst)) (flatten (cdr lst)))]
    ;; If the list only has one element, return it
    [else (list lst)]))

(define-namespace-anchor anc)
(define ns (namespace-anchor->namespace anc))
(let loop ()
(define line (read-line (current-input-port) 'any))
(if (eof-object? line)
(display "")
(begin (print (eval (read (open-input-string line)) ns)) (newline) (loop))))
