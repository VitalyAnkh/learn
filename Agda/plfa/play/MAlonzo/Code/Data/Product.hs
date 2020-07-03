{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
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
d38 v0 = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v0)
name40 = "Data.Product.Σ.snd"
d40 :: MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d40 v0 = coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v0)
name44 = "Data.Product.Σ-syntax"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> ()) -> ()
d44 = erased
name50 = "Data.Product._×_"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d50 = erased
name58 = "Data.Product._,′_"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d58 v0 v1 v2 v3 = du58
du58 :: AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du58 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
name62 = "Data.Product.∃"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> ()) -> ()
d62 = erased
name66 = "Data.Product.∄"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> ()) -> ()
d66 = erased
name78 = "Data.Product.∃₂"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d78 = erased
name88 = "Data.Product.∃!"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d88 = erased
name100 = "Data.Product.∃-syntax"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> ()) -> ()
d100 = erased
name104 = "Data.Product.∄-syntax"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> ()) -> ()
d104 = erased
name112 = "Data.Product.-,_"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d112 v0 v1 v2 v3 v4 v5 = du112 v4 v5
du112 :: AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du112 v0 v1
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0) (coe v1)
name132 = "Data.Product.<_,_>"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d132 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du132 v6 v7 v8
du132 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du132 v0 v1 v2
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0 v2) (coe v1 v2)
name148 = "Data.Product.map"
d148 ::
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
d148 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du148 v8 v9 v10
du148 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du148 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0 v3) (coe v1 v3 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name158 = "Data.Product.map₁"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d158 v0 v1 v2 v3 v4 v5 v6 = du158 v6
du158 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du158 v0 = coe du148 (coe v0) (coe (\ v1 v2 -> v2))
name170 = "Data.Product.map₂"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d170 v0 v1 v2 v3 v4 v5 v6 = du170 v6
du170 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du170 v0 = coe du148 (coe (\ v1 -> v1)) (coe v0)
name186 = "Data.Product.zip"
d186 ::
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
d186 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du186 v12 v13 v14 v15
du186 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du186 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v4 v5
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0 v4 v6)
                    (coe v1 v4 v6 v5 v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name212 = "Data.Product.curry"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d212 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du212 v6 v7 v8
du212 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du212 v0 v1 v2
  = coe
      v0 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v2))
name232 = "Data.Product.uncurry"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d232 v0 v1 v2 v3 v4 v5 v6 v7 = du232 v6 v7
du232 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
du232 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3 -> coe v0 v2 v3
      _ -> MAlonzo.RTE.mazUnreachableError
name240 = "Data.Product.zip′"
d240 ::
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
d240 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du240 v12 v13
du240 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du240 v0 v1 = coe du186 (coe v0) (coe (\ v2 v3 -> v1))
name246 = "Data.Product.curry′"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d246 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du246 v6 v7 v8
du246 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du246 v0 v1 v2
  = coe
      v0 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v2))
name248 = "Data.Product.uncurry′"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d248 v0 v1 v2 v3 v4 v5 = du248
du248 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
du248 = coe du232
name250 = "Data.Product.swap"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d250 v0 v1 v2 v3 v4 = du250 v4
du250 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du250 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name256 = "Data.Product._-×-_"
d256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d256 = erased
name262 = "Data.Product._-,-_"
d262 ::
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
d262 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du262 v8 v9 v10 v11
du262 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du262 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0 v2 v3) (coe v1 v2 v3)
