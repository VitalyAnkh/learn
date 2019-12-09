#lang plai


(define-type BOB
  [num (n number?)] 
  [add (lhs BOB?)(rhs BOB?)] 
  [sub (lhs BOB?)(rhs BOB?)]
  [mult (lhs BOB?)(rhs BOB?)]  
  [div (lhs BOB?)(rhs BOB?)]
  [neg (lhs BOB?)]
  [equal (lhs BOB?)(rhs BOB?)]
  [lessThan (lhs BOB?)(rhs BOB?)]
  [with (name symbol?)(named-expr BOB?)(body BOB?)]
  [ifc (lhs BOB?)(rhs BOB?)(opr BOB?) ]
  [id (name symbol?)] 
  [fun (param symbol?)(body BOB?)] 
  [rec (param symbol?)(named-expr BOB?)(bound-body BOB?)] ;{(body BOB?)(body BOB?)}   
  [app (fun-expr BOB?)(arg-expr BOB?)]
 ;; add imperative features:
  [make (name symbol?)(value-expr BOB?)]
  [show (expr BOB?)]
  [seqn (s BOB?)] ; takes a list
)

  
  
  
;; parse: sexp -> BOB
(define (parse sexp)
  (cond
    ((number? sexp)(num sexp))
    ((symbol? sexp)(id sexp))
    ((list? sexp)
     (case (first sexp)
       ((+)(add (parse (second sexp))
                (parse (third sexp))))
       ((-)(sub (parse (second sexp))
                (parse (third sexp))))
       ((*)(mult (parse (second sexp))
                (parse (third sexp))))
       ((/)(div (parse (second sexp))
                (parse (third sexp))))	
       [(-) (neg (parse (second sexp)))] ; unary minus	
       ((=)(equal (parse (second sexp))
                (parse (third sexp))))
       ((<)(lessThan (parse (second sexp))
                     (parse (third sexp))))
	   ((if)(ifc   (parse (second sexp))
                    (parse (third sexp))
				    (parse (fourth sexp))))						
       ((fun)(fun (caadr sexp)
                  (parse (third sexp))))
       ((rec)(rec (caadr sexp)
                      (parse (third sexp))))
					  
					  
       ((app)(app (caadr sexp)
                  (parse (third sexp))))

				  
       ((with)(app (fun (caadr sexp)
                        (parse (third sexp)))
                   (parse (cadadr sexp))))
       ((make)(make (second sexp)
                        (parse (third sexp))))
       ((show)(show (parse (second sexp))))
       ((seqn)(seqn (parse-list (second sexp)))) ; second element of seqn expression is a list of functions
       (else (app (parse(first sexp)) (parse (second sexp))))
      ))
   ))

   
   
(define-type BOB-Value 
  [numV (n number?)] ; number
  [boolV (b boolean?)] ; boolean value
  [closureV (param symbol?) ; function value
            (body BOB?) 
            (env Env?)]) 

(define-type Env 
  [mtSub] 
  [aSub (name symbol?) 
        (location number?) ;; bind to a store location
        (env Env?)]) 

(define-type Store 
  [mtSto] 
  [aSto (location number?) 
        (value BOB-Value?) 
        (store Store?)]) 


;; env-lookup:symbol Env -> location 

(define (env-lookup name env) 
  (type-case Env env 
             [mtSub ()(error 'env-lookup 
                             "no binding for identifier ~a" name)] 
             [aSub (bound-name bound-location rest-env) 
                   (if (symbol=? bound-name name) 
                       bound-location 
                       (env-lookup name rest-env))])) 


;; store-lookup:location Store -> BOB-Value 
(define (store-lookup loc-index sto) 
  (type-case Store sto 
             [mtSto ()(error 'store-lookup 
                             "no value at location ~a" loc-index)] 
             [aSto (location value rest-store) 
                   (if (= location loc-index) 
                       value 
                       (store-lookup loc-index rest-store))])) 


(define-type Value*Store 
  [v*s (value BOB-Value?)(store Store?)]) 

(define next-location 
  (local ([define last-loc (box -1)]) 
    (lambda (store) 
      (begin 
        (set-box! last-loc (+ 1 
                              (unbox last-loc))) 
        (unbox last-loc))))) 

;; num+: numV numV -> numV 
(define (num+ n1 n2) ; addition
  (numV (+(numV-n n1)(numV-n n2))))  
(define (num- n1 n2) ; subtraction
  (numV (-(numV-n n1)(numV-n n2))))  
(define (num* n1 n2) ; multiplication
  (numV (*(numV-n n1)(numV-n n2))))  
(define (num/ n1 n2) ; division
  (numV (quotient(numV-n n1)(numV-n n2)))) 
(define (num-- n1) ; negative
  (numV (- 0 (numV-n n1))))
(define (num= n1 n2) ; equal
  (boolV (=(numV-n n1)(numV-n n2)))) 
(define (num< n1 n2) ; less than
  (boolV (<(numV-n n1)(numV-n n2)))) 

;; interp: BOB Env Store -> Value*Store 
(define (interp expr env store) 
  (type-case BOB expr 
     [num (n)(v*s (numV n)store)] 
     [add (l r) 
        (type-case Value*Store (interp r env store) 
           [v*s (r-value r-store) 
             (type-case Value*Store (interp l env r-store); broken 
                [v*s (l-value l-store) 
                   (v*s (num+ r-value l-value) l-store)])])] 
	[sub (l r) 
        (type-case Value*Store (interp l env store) 
           [v*s (l-value l-store) 
             (type-case Value*Store (interp r env l-store); broken 
                [v*s (r-value r-store) 
                   (v*s (num- l-value r-value) r-store)])])]
	[mult (l r) 
        (type-case Value*Store (interp l env store) 
           [v*s (l-value l-store) 
             (type-case Value*Store (interp r env l-store); broken 
                [v*s (r-value r-store) 
                   (v*s (num* l-value r-value) r-store)])])]
	[div (l r) 
        (type-case Value*Store (interp l env store) 
           [v*s (l-value l-store) 
             (type-case Value*Store (interp r env l-store); broken 
                [v*s (r-value r-store) 
                   (v*s (num/ l-value r-value) r-store)])])]
	[neg (b)  
        (type-case Value*Store (interp b env b-store); broken 
                [v*s (b-value b-store) 
                   (v*s (num-- b-value) b-store)])]
	[equal (l r) 
        (type-case Value*Store (interp l env store) 
           [v*s (l-value l-store) 
             (type-case Value*Store (interp r env l-store); broken 
                [v*s (r-value r-store) 
                   (v*s (num= l-value r-value) r-store)])])]
	[lessThan (l r) 
        (type-case Value*Store (interp l env store) 
           [v*s (l-value l-store) 
             (type-case Value*Store (interp r env l-store); broken 
                [v*s (r-value r-store) 
                   (v*s (num< l-value r-value) r-store)])])]
    
     [id (v)(v*s (store-lookup (env-lookup v env) store) store)] 
     [fun (bound-id bound-body) 
        (v*s (closureV bound-id bound-body env) store)]
    
     [app (fun-expr arg-expr) 
        (type-case Value*Store (interp fun-expr env store) 
           [v*s (fun-value fun-store) 
             (type-case Value*Store (interp arg-expr env fun-store) 
                [v*s (arg-value arg-store) 
                   (local ([define new-loc (next-location arg-store)]) 
                      (interp (closureV-body fun-value) 
                         (aSub (closureV-param fun-value) 
                               new-loc 
                               (closureV-env fun-value)) 

                         (aSto new-loc 
                               arg-value 
                               arg-store)))])])] 
     
     [make (name value-expr) 
             (type-case Value*Store (interp value-expr env store) 
                [v*s (value-value value-store) 
                   (local ([define the-loc (env-lookup name env)])
                      (v*s value-value
                          (aSto the-loc value-value value-store)))])] 

     [show (expr) 
        (type-case Value*Store (interp expr env store) 
            [v*s (expr-value expr-store) 
               (begin (print expr-value)
                      (newline)
                      (v*s expr-value 
                         expr-store)
                            )])] 
     [seqn (s) 
        (type-case Value*Store (interp s env store) 
            [v*s (s-value s-store) 
               (calc-seqn s s-store) ; calculate functions in the list
			]
		)
	 ]
	)
)

(define (run sexp)
  (interp (parse sexp) (mtSub) (mtSto))
  )
 
; helper function for parsing seqn expressions 
(define parse-list
	(lambda (s)
		(cond [(null? s) '()]
			  [(list? s) (cons (parse (car s)) (parse-list (cdr s)))]
			  [else (parse-list (cdr s))]
		)
	)
)

; helper function for calculating seqn expressions
(define calc-seqn
	(lambda (s store)
		(cond [(null? s) '()]
			  [(list? (car s)) (interp (car s) env store)]
			  [else (calc-seqn (cdr s) store)]
		)
	)
)

;; sample expression
(run '{with {b 0}  ;; initialize variable b
          {seqn {show b}
            {seqn {make b 5}  ;; change value of b
                  {show b}}}} ) 