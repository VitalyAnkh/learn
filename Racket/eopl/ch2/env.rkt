#lang eopl

;; Env = (empty-env | (extenv-env Var SchemeVal Evn))
;; Var = Sym

;; empty-env : () -> Env
(define empty-env
  (lambda ()
    (list 'empty-env))
  )
