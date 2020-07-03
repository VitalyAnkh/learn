{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

name24 = "Relation.Binary.Reasoning.Base.Partial._IsRelatedTo_"
d24 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T24 = C32 AgdaAny
name38 = "Relation.Binary.Reasoning.Base.Partial.begin_"
d38 :: T24 -> AgdaAny
d38 v0
  = case coe v0 of
      C32 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name48 = "Relation.Binary.Reasoning.Base.Partial.step-∼"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> T24 -> AgdaAny -> T24
d48 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du48 v4 v5 v6 v7 v8 v9
du48 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> T24 -> AgdaAny -> T24
du48 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C32 v6 -> coe C32 (coe v0 v1 v2 v3 v5 v6)
      _ -> MAlonzo.RTE.mazUnreachableError
name60 = "Relation.Binary.Reasoning.Base.Partial.step-≡"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> T24 -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T24
d60 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du60 v8
du60 :: T24 -> T24
du60 v0 = coe v0
name70 = "Relation.Binary.Reasoning.Base.Partial.step-≡˘"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> T24 -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T24
d70 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du70 v8
du70 :: T24 -> T24
du70 v0 = coe v0
name78 = "Relation.Binary.Reasoning.Base.Partial._≡⟨⟩_"
d78 :: T24 -> T24
d78 v0 = coe v0
name84 = "Relation.Binary.Reasoning.Base.Partial._∎⟨_⟩"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T24
d84 v0 v1 v2 v3 v4 v5 v6 = du84 v6
du84 :: AgdaAny -> T24
du84 v0 = coe C32 (coe v0)
