{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Reasoning.Base.Single where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial

name24 = "Relation.Binary.Reasoning.Base.Single._._IsRelatedTo_"
d24 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name26 = "Relation.Binary.Reasoning.Base.Single._._≡⟨⟩_"
d26 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d26 v0 = coe v0
name28 = "Relation.Binary.Reasoning.Base.Single._.begin_"
d28 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 -> AgdaAny
d28 = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
name32 = "Relation.Binary.Reasoning.Base.Single._.step-∼"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d32 v0 v1 v2 v3 v4 v5 = du32 v5
du32 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du32 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48 (coe v0)
name34 = "Relation.Binary.Reasoning.Base.Single._.step-≡"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d34 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du34 v9
du34 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du34 v0 = coe v0
name36 = "Relation.Binary.Reasoning.Base.Single._.step-≡˘"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d36 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du36 v9
du36 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du36 v0 = coe v0
name44 = "Relation.Binary.Reasoning.Base.Single._∎"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d44 v0 v1 v2 v3 v4 v5 v6 = du44 v4 v6
du44 ::
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du44 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32 (coe v0 v1)
