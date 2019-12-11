#lang plai-typed
(case 'goodbye
  ['hello 'hello]
  ['goodbye 'bye])
(lambda (x) (+ x 1))
(when (< 1 2 ) (display 'hi\n))
(unless (< 1 2 ) (display 'hello))

(if (< 1 2 ) (display "if is the same as when?") (display "no"))

(define (double x) (+ x x))
(define (quadruple x) (double (double x)))
(define (const5 _) 5)

(define-type ExprC
  [numC (n : number)]
  [idC (id : symbol)]
  [appC (fun : symbol) (arg : ExprC)]
  [plusC (l : ExprC ) (r : ExprC)]
  [multC (l : ExprC ) (r : ExprC)])
(define-type FunDefC
  [fdC (name : symbol) (arg : symbol) (body : ExprC)])

(define (interp [e : ExprC] [fds : (listof FunDefC)]) : number
  (type-case ExprC e
    [numC (n) n]
    [idC (_) (error 'interp "shouldn't get here")]
    [appC (f a) (local ([define fd (get-fundef f fds)])
                  (interp (subst a
                         (fdC-arg fd)
                         (fdC-body fd))
                          fds))]
    [plusC (l r ) (+ (interp l fds) (interp r fds))]
    [multC (l r) (* (interp l fds) (interp r fds))]))
(define (get-fundef [n : symbol] [fds : (listof FunDefC) ]): FunDefC
  (cond
    [(empty? fds) (error 'get-fundef "reference to undefined function")]
    [(cons? fds) (cond
                   [(equal? n (fdC-name (first fds))) (first fds)]
                   [else (get-fundef n (rest fds))])]))

(define (subst [what : ExprC] [for : symbol] [in : ExprC ] ) : ExprC
  (type-case ExprC in
    [numC (n) in]
    [idC (s) (cond
               [(symbol=? s for) what ]
               [else in])]
    [appC (f a) (appC f (subst what for a))]
    [plusC (l r) (plusC (subst what for l)
                       (subst what for r))]
    [multC (l r) (multC (subst what for l)
                        (subst what for r))]
  ))

(define-type Binding
  [bind (name : symbol) (value : number)])

(define-type-alias Env (listof Binding))

(define mt-env empty)
(define extend-env cons)
