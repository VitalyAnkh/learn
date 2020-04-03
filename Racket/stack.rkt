#lang scheme
;; implement a stack

(define (make-stack)
  (define stack '())
  (define (empty?) (null? stack))

  (define (top)
    (if (null? stack)
        (error "empty stack: connot get the top")
        (car stack)))
  
  (define top-nth-helper
    (lambda (n)
      (if (< n 0)
          (error "The argument must be bigger than 0!")
          (cond
            ((eq? 1 n)(top))
            (else  
                  (top-nth-helper (- n 1)))))))
  (define top-nth
    (lambda (n)
      (if (< (length stack) n)
          (error "not enough elements")
      (let ((object stack)
            (result (top-nth-helper n)))
        (set! stack (cdr stack))
        (set! result (top-nth-helper n))
        (set! stack object)
        result))))
  
  (define (push! object) 
    (set! stack (cons object stack)) 
    object) 
 
  (define (pop!) 
    (if (null? stack) 
        (error "tmpty stack: cannot pop"
               stack) 
        (let ((object (car stack))) 
          (set! stack (cdr stack)) 
          object))) 
  
  (define (dispatch op . args) 
    (case op 
      ((empty?) (apply empty? args)) 
      ((top) (apply top args))
      ((top-nth) (apply top-nth args))
      ((push!) (apply push! args)) 
      ((pop!) (apply pop! args))
      (else
        (error "unknown operation")))) 
  dispatch)

(define my_stack (make-stack))
(my_stack 'push! 4)
(my_stack 'push! 1)
(my_stack 'push! 5)
(my_stack 'top)
(display "***")
(my_stack 'top-nth 2)
;(my_stack 'top-nth 4)
;(my_stack 'pop!)
;(my_stack 'pop!)
;(my_stack 'empty)
;(my_stack 'empty?)
;(display "***")
;(my_stack 'pop!)
;(my_stack 'top)
;(my_stack 'pop!)