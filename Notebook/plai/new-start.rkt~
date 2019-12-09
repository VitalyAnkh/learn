;; COSC 3410 - Homework 8
;; Due Date: 12/4/19
;; Jianfei Lin & Tuoxuan Ren


#lang plai

(define-type TBOB
  [num (n number?)]
  [add (lhs TBOB?) (rhs TBOB?)]
  [sub (lhs TBOB?) (rhs TBOB?)] 
  [mul (lhs TBOB?) (rhs TBOB?)]
  [div (lhs TBOB?) (rhs TBOB?)] 
  [um  (lhs TBOB?)]            
  [equality (lhs TBOB?) (rhs TBOB?)] 
  [lt (lhs TBOB?) (rhs TBOB?)]
  [id (name symbol?)]
 ; [with (name symbol?) (id-type Type?) (named-expr TBOB?) (body TBOB?)]
  [iff (test-val TBOB?) (true-val TBOB?) (false-val TBOB?)] 
  [fun (arg-name symbol?) (id-type Type?) (body TBOB?)]
  [rec (bound-id symbol?) (id-type Type?)
       (named-expr TBOB?)
       (bound-body TBOB?)]
  [app (fun-expr TBOB?) (arg TBOB?)]) 


; (define-type TBOB-value
;   [numV (n number?)]
;   [closureV (param symbol?)
;             (body TBOB?)
;             (env Env?)]
;   [boolV (b boolean?)] 
;   )



(define-type TypeEnv
  [mtTypeSub]
  [aTypeSub (name symbol?) (value Type?) (env TypeEnv?)]
  )


;; TYPE CHECKER EXAMPLE RECOMMENDED FOR REFERENCE NOV15-DEFS.RKT

(define-type Type
  [numType]
  [boolType]
  [funType (domain Type?) (codomain Type?)])


;; type-parse : sexp -> Type
(define (type-parse sexp)
  (cond [(eq? sexp 'number) (numType)]
        [(eq? sexp 'boolean) (boolType)]
        [else (funType (type-parse (first sexp)) (type-parse (third sexp)))]
 ))


;; parse : sexp -> TBOB abstract syntax trees
;; added --> error checking for members of sexp and CHANGES FOR TYPE SPECIFICATIONS
(define (parse sexp)
  (cond [(number? sexp) (num sexp)]
        [(symbol? sexp) (id sexp)]
        [(eq? (first sexp) '+) (cond [(=(length sexp)3) (add (parse (second (type-parse sexp))) 
                                     (parse (third (type-parse sexp))))]
                                     [else (error 'parse "length of 'addition' expression incorrect")])]
        [(eq? (first sexp) '*) (cond [(=(length sexp)3) (mul (parse (second (type-parse sexp))) 
                                    (parse (third (type-parse sexp))))]
                                    [else (error 'parse "length of 'multiplication' expression incorrect")])]
        [(eq? (first sexp) '-) (cond [(=(length sexp)3) (sub (parse (second (type-parse sexp)))
                                    (parse (third (type-parse sexp))))]
                                    [(=(length sexp)2) (um (parse (second (type-parse sexp))))]
                                    [else (error 'parse "Length of 'subtraction' expression or 'um' expression incorrect")])]
        [(eq? (first sexp) '/) (cond[(=(length sexp)3) (div (parse (second (type-parse sexp))) 
                                    (parse (third (type-parse sexp))))]
                                    [else (error 'parse "length of 'division' expression incorrect")])]
        [(eq? (first sexp) '=) (cond[(=(length sexp)3) (equality (parse (second (type-parse sexp))) 
                                    (parse (third (type-parse sexp))))]
                                    [else (error 'parse "length of 'equality' expression incorrect")])]
        [(eq? (first sexp) '<) (cond[(=(length sexp)3) (lt (parse (second (type-parse sexp))) 
                                    (parse (third (type-parse sexp))))]
                                    [else (error 'parse "length of 'less than' expression incorrect")])]
        [(eq? (first sexp) 'with) (cond[(and (=(length sexp)3) (and (list? (second sexp)) (symbol? (first (second sexp))))) (app (fun (first (second (type-parse sexp))) (parse (third (type-parse sexp)))) (parse (second (second (type-parse sexp)))))]
                                    [else (error 'parse "length of 'with' expression incorrect")])]
        [(eq? (first sexp) 'rec) (cond [(and (=(length sexp)3) (and (list? (second sexp)) (symbol? (first (second sexp))))) (rec (first (second (type-parse sexp))) 
                                    (parse (second (second (type-parse sexp))))
                                    (parse (third (type-parse sexp))))]
                                    [else (error 'parse "length or contents of 'rec' expression incorrect")])]
        [(eq? (first sexp) 'fun) (cond [(and (=(length sexp)3) (and (list? (second sexp)) (symbol? (first (second sexp))))) (fun (first (second (type-parse sexp))) 
                                      (parse (third (type-parse sexp))))]
                                      [else (error 'parse "length or contents of 'fun' expression incorrect")])]
        [(eq? (first sexp) 'if) (cond [(=(length sexp)4) (iff (parse (second (type-parse sexp)))
                                      (parse (third (type-parse sexp)))
                                      (parse (fourth (type-parse sexp))))]
                                       [else (error 'parse "length of if statement incorrect")])]
        [else (cond [(= (length sexp) 2) (app (parse (first (type-parse sexp))) 
                   (parse (second (type-parse sexp))))]
                    [else (error 'parse "length of 'app' incorrect")])]
        ))


;; lookup: symbol TypeEnv --> Type
(define (lookup name tenv)
  (type-case TypeEnv tenv
    [mtTypeSub () (error 'lookup "no binding found for id ~a" name)]
    [aTypeSub (bound-name bound-type rest-tenv)
          (if (symbol=? name bound-name)
              bound-type
              (lookup name rest-tenv))]
 ))

; get-type: TBOB TypeEnv--> Type
(define (get-type expr tenv)
  (type-case TBOB expr
    [num (n) (numType)]
    [add (l r) (if (and (numType? (get-type l tenv))
                        (numType? (get-type r tenv)))
                   (numType)
                   (error 'get-type "wrong type operands for +"))]
    [sub (l r) (if (and (numType? (get-type l tenv))
                        (numType? (get-type r tenv)))
                   (numType)
                   (error 'get-type "wrong type operands for -"))]
    [mul (l r) (if (and (numType? (get-type l tenv))
                        (numType? (get-type r tenv)))
                   (numType)
                   (error 'get-type "wrong type operands for *"))]
    [div (l r) (if (and (numType? (get-type l tenv))
                        (numType? (get-type r tenv)))
                   (numType)
                   (error 'get-type "wrong type operands for /"))]
    [um (l) (if (numType? (get-type l tenv))
                   (numType)
                   (error 'get-type "wrong type operands for -"))]
    [equality (l r) (if (and (numType? (get-type l tenv))
                        (numType? (get-type r tenv)))
                   (boolType)
                   (error 'get-type "wrong type operands for ="))]
    [lt (l r) (if (and (numType? (get-type l tenv))
                         (numType? (get-type r tenv)))
                    (boolType)
                    (error 'get-type "wrong type operands for <"))]
;    [with (bound-id id-type named-expr bound-body)
;         (if (equal? id-type (get-type named-expr tenv))
;             (get-type bound-body (aTypeSub bound-id id-type tenv))
;             (error 'get-type "Type mismatch in with declaration"))]
    [id (v) (lookup v tenv)]
    [iff (test-val true-val false-val)
         (if (equal? (get-type true-val tenv) (get-type false-val tenv))
             (get-type true-val tenv)
             (error 'get-type "Type mismatch in iff declaration"))]
    [fun (arg-name id-type body)
             (funType id-type (get-type body (aTypeSub arg-name id-type tenv)))]
             ;(error 'get-type "Type mismatch in fun declaration"))]
    [rec (bound-id id-type named-expr bound-body)
      (if (equal? (get-type bound-body (aTypeSub bound-id id-type tenv)) id-type)
                   (funType-codomain id-type)
                   (error 'get-type "Type mismath in fun declaration"))]
    [app (fun-expr arg) (lookup arg tenv)]

  ))


;; helper function defined to help run the sample programs
(define (run expr) (get-type (parse expr) (mtTypeSub)))




;;--------------------------------

;; sample programs that are provided:

(run '{with {x : number 2}
  {with {y : number 12}
    {+ {* x x} {* y y}}
}})



(run {- 1 {- 2 {- 3 {- 4 {- 5 6}}}}})



(run '{with {x : number 3} ;; this should evaluate to a boolean value
  {= x 2}})
  
  
(run '{with {not : (boolean -> boolean)
         {fun {v : boolean}
           {if v {= 0 1} {= 0 0}}
      }  }
   {with {limit : number 44}
      {with {flag : boolean {< 70 limit}}
        {not flag}
   }  }
})
  
(run {if {= {* 5 21} {* 7 15}}
    9999
    5555
})


;; A silly example:
(run '{with {number : (number -> number) {fun {number : number}
        {* number number}}}
   {with {num : number 8}
     {number num} }})


(run '{with {x : number 9}    ; you can change these vals, but the larger one should
  {with {y : number 3}  ; always wind up at the left of the final number
               ; and the smaller one at the right
     {with  {min : number  {if {< x y}
                     x 
                     y}}
        {with  {max : number  {if {< x y}
                        y 
                        x}}
           {+ {* max 1000} min} ; output will be best if smaller is
 }}}})                        ; no more than two digits


(run '{with {double : (number -> number) {fun {n : number} {* 2 n}}}
  {double 12}})


(run '{with {abs : (number -> number) {fun {x : number} {if {< x 0} {- x} x}}} ;; absolute value
   {abs -101}
})

(run '{rec {fac : (number -> number) {fun {n}
              {if {< n 2} 1
                  {* n {fac {- n 1}}}}}}
           
                       {fac 6}})



;; Use currying to define "two-parameter"
;; function in terms of one-parameter
;; (first-class) functions
;;
;;  {{mod-base b} n}
;;
;; returns n modulo b.
;; [This should work in the language TBOB]
;;
;; written by mike slattery - nov 2013
;;;;;;;;;;;;;;;;;;;;;;;;;

(run '{with {mod-base : (number -> (number -> number)) {fun {b : number}
                  {fun {n : number}
                    {- n {* b {/ n b}}}
                  }
                }
      }
  {{mod-base 7} 11} ;; Compute 11 mod 7
})


;; Or put the parameters in the more
;; traditional order: 

(run '{with {mod : (number -> (number -> number)) {fun {n : number}
                  {fun {b : number}
                    {- n {* b {/ n b}}}
                  }
                }
      }
  {{mod 100} 7} ;; Compute 100 mod 7
})


;;----------------------------

;Invalid programs the parser shouldn't like:

(run {+ 3 4 5})

(run '{with {x:number 3}
   x})
   
(run '{with {x 3}
   x})

(run {6 - 7})

(run '{fun {n : number 12}
   {+ n 3}}
)   

(run '{fun {n 12} : number
   {+ n 3}})
   
(run '{with {y : number}
   {+ x y}})

;; The INCORRECT silly example:
(run '{with {number {fun {number : number}
        {* number number}}}
   {with {num : number 8}
     {number num} }})

;;----------------------------

;Invalid programs the parser will like, but the type
;checker shouldn't:

(run {* 3 {< 7 8}})


(run '{with {double : (number -> number) {fun {n : number} {* 2 n}}}
  {with {x : number 7}
    {if {= x 10} x double}
 }})


(run {if 5 3 4})


(run '{with {double : (number -> number) {fun {n : number} {* 2 n}}}
  {with {val : boolean {< 8 7}}
    {double val}}})
    
    
(run '{with {f : number 10}
  {f 3}
})


(run '{with {b : boolean {= 0 0}}
    {/ b 45} })
  
  
(run '{with {b : boolean 5}
    b })

(run '{with {not : (boolean -> boolean)
         {fun {v : boolean}
           {if v {= 0 1} {= 0 0}}
      }  }
   {not 11}
})

(run '{rec {fac : (number -> number) {fun {n}
              {if {< n 2} 1
                  {* n fac}}}}
           
                       {fac 6}})

(run '{rec {fac : (number -> boolean) {fun {n}
              {if {< n 2} 1
                  {* n {fac {- n 1}}}}}}
           
                       {fac 6}})

;;-------------------------------------------------

;; Our 2 sample problems

;; #1
(run {if {< 2 3} {/ 2 3} {* 3 2}})

;; #2
(run {= {if {= 3 3} 4 5} {if {= 3 4} 5 4}})