{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Reasoning.Base.Single where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

name26 = "Relation.Binary.Reasoning.Base.Single._IsRelatedTo_"
d26 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T26 = C34 AgdaAny
name40 = "Relation.Binary.Reasoning.Base.Single.begin_"
d40 :: T26 -> AgdaAny
d40 v0
  = case coe v0 of
      C34 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name50 = "Relation.Binary.Reasoning.Base.Single._∼⟨_⟩_"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T26 -> T26
d50 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du50 v5 v6 v7 v8 v9 v10
du50 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T26 -> T26
du50 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C34 v6 -> coe (C34 (coe v0 v1 v2 v3 v4 v6))
      _ -> MAlonzo.RTE.mazUnreachableError
name62 = "Relation.Binary.Reasoning.Base.Single._≡⟨_⟩_"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T26 -> T26
d62 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du62 v10
du62 :: T26 -> T26
du62 v0 = coe v0
name72 = "Relation.Binary.Reasoning.Base.Single._≡˘⟨_⟩_"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T26 -> T26
d72 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du72 v10
du72 :: T26 -> T26
du72 v0 = coe v0
name80 = "Relation.Binary.Reasoning.Base.Single._≡⟨⟩_"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> T26
d80 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du80 v8
du80 :: T26 -> T26
du80 v0 = coe v0
name86 = "Relation.Binary.Reasoning.Base.Single._∎"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T26
d86 v0 v1 v2 v3 v4 v5 v6 = du86 v4 v6
du86 :: (AgdaAny -> AgdaAny) -> AgdaAny -> T26
du86 v0 v1 = coe (C34 (coe v0 v1))
