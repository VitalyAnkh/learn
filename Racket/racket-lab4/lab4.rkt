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
  (if (null? lst)
      #f
      (if (eq? e (car lst))
          #t
          (member? e (cdr lst)))))

(define (set? lst)
  (if (null? lst)
      #t
      (if (member? (car lst) (cdr lst))
          #f
          (set? (cdr lst))))
  )

(define (deduplicate lst)
  ;; A helper function for union.
  ;; To remove duplicate elements of a list
  (if (set? lst)
      lst
      (if (member? (car lst) (cdr lst))
          (deduplicate (cdr lst))
          (cons (car lst) (deduplicate (cdr lst))))))

(define (union lst1 lst2)
  ;; We don't need to check if the lists are null.
  ;; Just append the two lists and deduplicate the result
  (deduplicate (append lst1 lst2))
  )

(define (intersect lst1 lst2)
  ;; null test
  (if (null? lst1)
      '()
  ;; go through every element of lst1, check if it is a member of lst2
  ;; if not, don't cons it to (cdr lst1)
      (if (member? (car lst1) lst2)
          ;; assume all the lists are proper sets
          ;; so we don't need to use our deduplicate function
          (cons (car lst1) (intersect (cdr lst1) lst2))
          ( intersect (cdr lst1) lst2)
      )))

(define (difference lst1 lst2)
  ;; This function is similar to function deduplicate
  (if (null? lst1)
      '()
      (if (member? (car lst1) lst2)
          (difference (cdr lst1) lst2)
          (cons (car lst1) (difference (cdr lst1) lst2))))
  )

(define-namespace-anchor anc)
(define ns (namespace-anchor->namespace anc))
(let loop ()
(define line (read-line (current-input-port) 'any))
(if (eof-object? line)
(display "")
(begin (print (eval (read (open-input-string line)) ns)) (newline) (loop))))
