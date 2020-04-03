#lang scheme
(define split-by
  (lambda (l p k)
  (let loop ((low '())
             (high '())
             (l l))
    (cond ((null? l)
           (k low high))
          ((p (car l))
           (loop low (cons (car l) high) (cdr l)))
          (else
           (loop (cons (car l) low) high (cdr l)))))))
 
(define quicksort
  (lambda (l)
  (if (null? l)
      '()
      (split-by (cdr l) 
                (lambda (x) (> x (car l)))
                (lambda (low high)
                  (append (quicksort low)
                          (list (car l))
                          (quicksort high)))))))