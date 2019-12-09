#lang plai-typed
(define-type MisspelledAnimal
  (caml (humps : number))
  (yacc (height : number)))
(define (good? [ma : MisspelledAnimal]): boolean
  (type-case MisspelledAnimal ma
    [caml (humps) (>= humps 2)]
    [yacc (height) (> height 2.1)]))

(display 1)
(define ma1 (caml 2))
(define ma2 (yacc 1.9))
(test (good? ma1) #t)
(test (good? ma2 ) #f)

(define (good?? [ma : MisspelledAnimal] ) : boolean
   (cond
    [(caml? ma) (>= (caml-humps ma) 2)]
    [(yacc? ma) (> (yacc-height ma) 2.1)]))

;; (define malformed (caml "dsaf"))

(define-type ArithC
  [numC (n : number)]
  [plusC (l : ArithC) (r : ArithC)]
  
  [multC (l : ArithC ) (r : ArithC)]
  [subC (l : ArithC) (r: ArithC)]
  )

(define (parse [s : s-expression]) : ArithC
  (cond
    [(s-exp-number? s) (numC (s-exp->number s))]
    [(s-exp-list? s)
     (let ([sl (s-exp->list s)])
       (case (s-exp->symbol (first sl))
         [(+) (plusC (parse (second sl)) (parse (third sl)))]
         [(*) (multC (parse (second sl)) (parse (third sl)))]
         [else (error 'parse "invalid list input")]))]
    [else (error 'parse "invalid input")]))

(define (interp [a : ArithC] ): number
  (type-case ArithC a
    [numC (n) n]
    [plusC (l r) (+ (interp l) (interp r))]
    [multC (l r) (* (interp l) (interp r))]
    ))

(define input '(+ 1 3))

(test (interp (parse input)) 4)