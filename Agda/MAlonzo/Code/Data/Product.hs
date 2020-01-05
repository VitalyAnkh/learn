{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Product where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive

name38 = "Data.Product.Σ.fst"
d38 :: MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d38 v0 = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v0))
name40 = "Data.Product.Σ.snd"
d40 :: MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d40 v0 = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v0))
name46 = "Data.Product.Σ-syntax"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> ()) -> ()
d46 = erased
name52 = "Data.Product._×_"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d52 = erased
name60 = "Data.Product._,′_"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d60 v0 v1 v2 v3 = du60
du60 :: AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du60 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
name64 = "Data.Product.∃"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> ()) -> ()
d64 = erased
name68 = "Data.Product.∄"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> ()) -> ()
d68 = erased
name80 = "Data.Product.∃₂"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d80 = erased
name90 = "Data.Product.∃!"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d90 = erased
name102 = "Data.Product.∃-syntax"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> ()) -> ()
d102 = erased
name106 = "Data.Product.∄-syntax"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> ()) -> ()
d106 = erased
name114 = "Data.Product.-,_"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d114 v0 v1 v2 v3 v4 v5 = du114 v4 v5
du114 :: AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du114 v0 v1
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0) (coe v1))
name134 = "Data.Product.<_,_>"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d134 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du134 v6 v7 v8
du134 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du134 v0 v1 v2
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0 v2) (coe v1 v2))
name139 = "Agda.Builtin.Sigma.Σ"
d139 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
name150 = "Data.Product.map"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d150 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du150 v8 v9 v10
du150 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du150 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0 v3) (coe v1 v3 v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name160 = "Data.Product.map₁"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d160 v0 v1 v2 v3 v4 v5 v6 = du160 v6
du160 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du160 v0 = coe (du150 (coe v0) (coe (\ v1 v2 -> v2)))
name172 = "Data.Product.map₂"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d172 v0 v1 v2 v3 v4 v5 v6 = du172 v6
du172 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du172 v0 = coe (du150 (coe (\ v1 -> v1)) (coe v0))
name188 = "Data.Product.zip"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d188 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du188 v12 v13 v14 v15
du188 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du188 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v4 v5
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
               -> coe
                    (MAlonzo.Code.Agda.Builtin.Sigma.C32
                       (coe v0 v4 v6) (coe v1 v4 v6 v5 v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name214 = "Data.Product.curry"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d214 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du214 v6 v7 v8
du214 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du214 v0 v1 v2
  = coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v2))
name234 = "Data.Product.uncurry"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d234 v0 v1 v2 v3 v4 v5 v6 v7 = du234 v6 v7
du234 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
du234 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3 -> coe v0 v2 v3
      _ -> MAlonzo.RTE.mazUnreachableError
name242 = "Data.Product.zip′"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d242 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du242 v12 v13
du242 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du242 v0 v1 = coe (du188 (coe v0) (coe (\ v2 v3 -> v1)))
name248 = "Data.Product.curry′"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d248 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du248 v6 v7 v8
du248 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du248 v0 v1 v2
  = coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v2))
name250 = "Data.Product.uncurry′"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d250 v0 v1 v2 v3 v4 v5 = du250
du250 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
du250 = coe du234
name252 = "Data.Product.swap"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d252 v0 v1 v2 v3 v4 = du252 v4
du252 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du252 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v1 v2
        -> coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name258 = "Data.Product._-×-_"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d258 = erased
name264 = "Data.Product._-,-_"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d264 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du264 v8 v9 v10 v11
du264 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du264 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0 v2 v3) (coe v1 v2 v3))
