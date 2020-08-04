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

(define (dedup e)
  (if (null? e) '()
      (cons (car e) (dedup (my-filter (lambda (x) (not (equal? x (car e))))
                                    (cdr e))))))

(define (my-filter pred ls)
  (cond ((null? ls) '())
        ((pred (car ls)) (cons (car ls) (my-filter pred (cdr ls))))
        (else (my-filter pred (cdr ls)))))

(define (union lst1 lst2)
  ;; We don't need to check if the lists are null.
  ;; Just append the two lists and deduplicate the result
  (dedup (append lst1 lst2))
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
          (intersect (cdr lst1) lst2)
      )))

(define (difference lst1 lst2)
  ;; This function is similar to function deduplicate
  (if (null? lst1)
      '()
      (if (member? (car lst1) lst2)
          (difference (cdr lst1) lst2)
          (cons (car lst1) (difference (cdr lst1) lst2))))
  )

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
