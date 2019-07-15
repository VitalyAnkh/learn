{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.These.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Sum.Base

name38 = "Data.These.Base.These"
d38 a0 a1 a2 a3 = ()
data T38 = C48 AgdaAny | C50 AgdaAny | C52 AgdaAny AgdaAny
name54 = "Data.These.Base.fromSum"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.Sum.Base.T30 -> T38
d54 v0 v1 v2 v3 = du54
du54 :: MAlonzo.Code.Data.Sum.Base.T30 -> T38
du54 = coe MAlonzo.Code.Data.Sum.Base.du66 C48 C50
name60 = "Data.These.Base.map"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T38 -> T38
d60 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du60 v8 v9 v10
du60 :: (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T38 -> T38
du60 v0 v1 v2
  = case coe v2 of
      C48 v3 -> coe (C48 (coe v0 v3))
      C50 v3 -> coe (C50 (coe v1 v3))
      C52 v3 v4 -> coe (C52 (coe v0 v3) (coe v1 v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name84 = "Data.These.Base.map₁"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T38 -> T38
d84 v0 v1 v2 v3 v4 v5 v6 = du84 v6
du84 :: (AgdaAny -> AgdaAny) -> T38 -> T38
du84 v0 = coe (du60 (coe v0) (coe (\ v1 -> v1)))
name90 = "Data.These.Base.map₂"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T38 -> T38
d90 v0 v1 v2 v3 v4 v5 = du90
du90 :: (AgdaAny -> AgdaAny) -> T38 -> T38
du90 = coe (du60 (coe (\ v0 -> v0)))
name92 = "Data.These.Base.fold"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T38 -> AgdaAny
d92 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du92 v6 v7 v8 v9
du92 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T38 -> AgdaAny
du92 v0 v1 v2 v3
  = case coe v3 of
      C48 v4 -> coe v0 v4
      C50 v4 -> coe v1 v4
      C52 v4 v5 -> coe v2 v4 v5
      _ -> MAlonzo.RTE.mazUnreachableError
name120 = "Data.These.Base.foldWithDefaults"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> T38 -> AgdaAny
d120 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du120 v6 v7 v8
du120 ::
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> T38 -> AgdaAny
du120 v0 v1 v2
  = coe (du92 (coe (\ v3 -> coe v2 v3 v1)) (coe v2 v0) (coe v2))
name128 = "Data.These.Base.swap"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T38 -> T38
d128 v0 v1 v2 v3 = du128
du128 :: T38 -> T38
du128
  = coe
      (du92 (coe C50) (coe C48) (coe (\ v0 v1 -> C52 (coe v1) (coe v0))))
name130 = "Data.These.Base.alignWith"
d130 ::
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
  () -> (T38 -> AgdaAny) -> (T38 -> AgdaAny) -> T38 -> T38 -> T38
d130 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du130 v12 v13 v14 v15
du130 :: (T38 -> AgdaAny) -> (T38 -> AgdaAny) -> T38 -> T38 -> T38
du130 v0 v1 v2 v3
  = case coe v2 of
      C48 v4
        -> case coe v3 of
             C48 v5 -> coe (C48 (coe v0 (C52 (coe v4) (coe v5))))
             C50 v5 -> coe (C52 (coe v0 v2) (coe v1 v3))
             C52 v5 v6
               -> coe
                    (C52 (coe v0 (C52 (coe v4) (coe v5))) (coe v1 (C50 (coe v6))))
             _ -> MAlonzo.RTE.mazUnreachableError
      C50 v4
        -> case coe v3 of
             C48 v5 -> coe (C52 (coe v0 (C50 (coe v5))) (coe v1 (C48 (coe v4))))
             C50 v5 -> coe (C50 (coe v1 (C52 (coe v4) (coe v5))))
             C52 v5 v6
               -> coe
                    (C52 (coe v0 (C50 (coe v5))) (coe v1 (C52 (coe v4) (coe v6))))
             _ -> MAlonzo.RTE.mazUnreachableError
      C52 v4 v5
        -> case coe v3 of
             C48 v6
               -> coe
                    (C52 (coe v0 (C52 (coe v4) (coe v6))) (coe v1 (C48 (coe v5))))
             C50 v6
               -> coe
                    (C52 (coe v0 (C48 (coe v4))) (coe v1 (C52 (coe v5) (coe v6))))
             C52 v6 v7
               -> coe
                    (C52
                       (coe v0 (C52 (coe v4) (coe v6))) (coe v1 (C52 (coe v5) (coe v7))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name216 = "Data.These.Base.align"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T38 -> T38 -> T38
d216 v0 v1 v2 v3 v4 v5 v6 v7 = du216
du216 :: T38 -> T38 -> T38
du216 = coe (du130 (coe (\ v0 -> v0)) (coe (\ v0 -> v0)))
