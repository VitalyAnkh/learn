{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Maybe.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary

name22 = "Data.Maybe.Base.Maybe"
d22 a0 a1 = ()
data T22 = C28 AgdaAny | C30
name32 = "Data.Maybe.Base.boolToMaybe"
d32 :: Bool -> T22
d32 v0 = if coe v0 then coe (C28 erased) else coe C30
name34 = "Data.Maybe.Base.is-just"
d34 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> Bool
d34 v0 v1 v2 = du34 v2
du34 :: T22 -> Bool
du34 v0
  = case coe v0 of
      C28 v1 -> coe MAlonzo.Code.Agda.Builtin.Bool.C10
      C30 -> coe MAlonzo.Code.Agda.Builtin.Bool.C8
      _ -> MAlonzo.RTE.mazUnreachableError
name36 = "Data.Maybe.Base.is-nothing"
d36 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> Bool
d36 v0 v1 v2 = du36 v2
du36 :: T22 -> Bool
du36 v0
  = coe (MAlonzo.Code.Data.Bool.Base.d22 (coe (du34 (coe v0))))
name38 = "Data.Maybe.Base.decToMaybe"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T14 -> T22
d38 v0 v1 v2 = du38 v2
du38 :: MAlonzo.Code.Relation.Nullary.T14 -> T22
du38 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1 -> coe (C28 (coe v1))
      MAlonzo.Code.Relation.Nullary.C26 -> coe C30
      _ -> MAlonzo.RTE.mazUnreachableError
name50 = "Data.Maybe.Base.maybe"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (T22 -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> T22 -> AgdaAny
d50 v0 v1 v2 v3 v4 v5 v6 = du50 v4 v5 v6
du50 :: (AgdaAny -> AgdaAny) -> AgdaAny -> T22 -> AgdaAny
du50 v0 v1 v2
  = case coe v2 of
      C28 v3 -> coe v0 v3
      C30 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name62 = "Data.Maybe.Base.maybe′"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> T22 -> AgdaAny
d62 v0 v1 v2 v3 = du62
du62 :: (AgdaAny -> AgdaAny) -> AgdaAny -> T22 -> AgdaAny
du62 = coe du50
name64 = "Data.Maybe.Base.fromMaybe"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T22 -> AgdaAny
d64 v0 v1 = du64
du64 :: AgdaAny -> T22 -> AgdaAny
du64 = coe du62 (\ v0 -> v0)
name74 = "Data.Maybe.Base._.From-just"
d74 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> ()
d74 = erased
name78 = "Data.Maybe.Base._.from-just"
d78 :: T22 -> AgdaAny
d78 v0
  = case coe v0 of
      C28 v1 -> coe v1
      C30 -> coe (MAlonzo.Code.Level.C20 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name82 = "Data.Maybe.Base.map"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T22 -> T22
d82 v0 v1 v2 v3 v4 = du82 v4
du82 :: (AgdaAny -> AgdaAny) -> T22 -> T22
du82 v0 = coe (du50 (coe (\ v1 -> C28 (coe v0 v1))) (coe C30))
name86 = "Data.Maybe.Base.ap"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> T22 -> T22
d86 v0 v1 v2 v3 v4 = du86 v4
du86 :: T22 -> T22 -> T22
du86 v0
  = case coe v0 of
      C28 v1 -> coe (du82 (coe v1))
      C30 -> coe (\ v1 -> v0)
      _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Data.Maybe.Base._>>=_"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T22 -> (AgdaAny -> T22) -> T22
d90 v0 v1 v2 v3 v4 v5 = du90 v4 v5
du90 :: T22 -> (AgdaAny -> T22) -> T22
du90 v0 v1
  = case coe v0 of
      C28 v2 -> coe v1 v2
      C30 -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
name98 = "Data.Maybe.Base._<∣>_"
d98 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> T22 -> T22
d98 v0 v1 v2 v3 = du98 v2 v3
du98 :: T22 -> T22 -> T22
du98 v0 v1
  = case coe v0 of
      C28 v2 -> coe v0
      C30 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name106 = "Data.Maybe.Base.alignWith"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T22 -> T22 -> T22
d106 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du106 v6 v7 v8
du106 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T22 -> T22 -> T22
du106 v0 v1 v2
  = case coe v1 of
      C28 v3
        -> case coe v2 of
             C28 v4
               -> coe
                    (C28 (coe v0 (MAlonzo.Code.Data.These.Base.C52 (coe v3) (coe v4))))
             C30
               -> coe (C28 (coe v0 (MAlonzo.Code.Data.These.Base.C48 (coe v3))))
             _ -> MAlonzo.RTE.mazUnreachableError
      C30
        -> case coe v2 of
             C28 v3
               -> coe (C28 (coe v0 (MAlonzo.Code.Data.These.Base.C50 (coe v3))))
             C30 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name124 = "Data.Maybe.Base.zipWith"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T22 -> T22 -> T22
d124 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du124 v6 v7 v8
du124 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T22 -> T22 -> T22
du124 v0 v1 v2
  = let v3 = C30 in
    case coe v1 of
      C28 v4
        -> case coe v2 of
             C28 v5 -> coe (C28 (coe v0 v4 v5))
             _ -> coe v3
      _ -> coe v3
name132 = "Data.Maybe.Base.align"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> T22 -> T22
d132 v0 v1 v2 v3 = du132
du132 :: T22 -> T22 -> T22
du132 = coe (du106 (coe (\ v0 -> v0)))
name134 = "Data.Maybe.Base.zip"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> T22 -> T22
d134 v0 v1 v2 v3 = du134
du134 :: T22 -> T22 -> T22
du134 = coe (du124 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32))
name136 = "Data.Maybe.Base.thisM"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> T22 -> MAlonzo.Code.Data.These.Base.T38
d136 v0 v1 v2 v3 v4 = du136 v4
du136 :: AgdaAny -> T22 -> MAlonzo.Code.Data.These.Base.T38
du136 v0
  = coe
      du62 (MAlonzo.Code.Data.These.Base.C52 (coe v0))
      (MAlonzo.Code.Data.These.Base.C48 (coe v0))
name140 = "Data.Maybe.Base.thatM"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T22 -> AgdaAny -> MAlonzo.Code.Data.These.Base.T38
d140 v0 v1 v2 v3 = du140
du140 :: T22 -> AgdaAny -> MAlonzo.Code.Data.These.Base.T38
du140
  = coe
      du62 MAlonzo.Code.Data.These.Base.C52
      MAlonzo.Code.Data.These.Base.C50
