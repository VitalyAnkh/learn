{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Reasoning.Base.Double where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name54 = "Relation.Binary.Reasoning.Base.Double._IsRelatedTo_"
d54 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T54 = C62 AgdaAny | C66 AgdaAny
name72 = "Relation.Binary.Reasoning.Base.Double.levelOf"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> T54 -> MAlonzo.Code.Agda.Primitive.T4
d72 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du72 v1 v2 v9
du72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 -> MAlonzo.Code.Agda.Primitive.T4
du72 v0 v1 v2
  = case coe v2 of
      C62 v3 -> coe v1
      C66 v3 -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
name84 = "Relation.Binary.Reasoning.Base.Double.relOf"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> T54 -> AgdaAny -> AgdaAny -> ()
d84 = erased
name94 = "Relation.Binary.Reasoning.Base.Double.IsEquality"
d94 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T94 = C102
name110 = "Relation.Binary.Reasoning.Base.Double.IsEquality?"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> T54 -> MAlonzo.Code.Relation.Nullary.T14
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du110 v9
du110 :: T54 -> MAlonzo.Code.Relation.Nullary.T14
du110 v0
  = case coe v0 of
      C62 v1 -> coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased
      C66 v1
        -> coe
             (MAlonzo.Code.Relation.Nullary.C22 (coe (\ v2 -> C102) erased))
      _ -> MAlonzo.RTE.mazUnreachableError
name120 = "Relation.Binary.Reasoning.Base.Double.extractEquality"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> T54 -> T94 -> AgdaAny
d120 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du120 v9 v10
du120 :: T54 -> T94 -> AgdaAny
du120 v0 v1
  = coe
      (seq
         (coe v1)
         (case coe v0 of
            C66 v2 -> coe v2
            _ -> MAlonzo.RTE.mazUnreachableError))
name130 = "Relation.Binary.Reasoning.Base.Double.begin_"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> T54 -> AgdaAny
d130 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du130 v6 v7 v8 v9
du130 ::
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> T54 -> AgdaAny
du130 v0 v1 v2 v3
  = case coe v3 of
      C62 v4 -> coe v4
      C66 v4 -> coe MAlonzo.Code.Relation.Binary.d38 v0 v1 v2 v4
      _ -> MAlonzo.RTE.mazUnreachableError
name144 = "Relation.Binary.Reasoning.Base.Double.begin-equality_"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> T54 -> AgdaAny -> AgdaAny
d144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du144 v9
du144 :: T54 -> AgdaAny
du144 v0
  = coe
      (du120
         (coe v0)
         (coe
            (MAlonzo.Code.Relation.Nullary.Decidable.Core.du28
               (coe (du110 (coe v0))))))
name156 = "Relation.Binary.Reasoning.Base.Double._∼⟨_⟩_"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T54 -> T54
d156 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du156 v6 v7 v8 v9 v10 v11
du156 ::
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T54 -> T54
du156 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C62 v6
        -> coe
             (C62 (coe MAlonzo.Code.Relation.Binary.d40 v0 v1 v2 v3 v4 v6))
      C66 v6
        -> coe
             (C62
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d28
                   (MAlonzo.Code.Relation.Binary.du66 (coe v0)) v1 v2 v3 v6 v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name176 = "Relation.Binary.Reasoning.Base.Double._≈⟨_⟩_"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T54 -> T54
d176 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du176 v6 v7 v8 v9 v10 v11
du176 ::
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T54 -> T54
du176 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C62 v6
        -> coe
             (C62
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d30
                   (MAlonzo.Code.Relation.Binary.du66 (coe v0)) v3 v2 v1
                   (coe
                      MAlonzo.Code.Relation.Binary.Core.d416
                      (MAlonzo.Code.Relation.Binary.d36 (coe v0)) v1 v2 v4)
                   v6))
      C66 v6
        -> coe
             (C66
                (coe
                   MAlonzo.Code.Relation.Binary.Core.d418
                   (MAlonzo.Code.Relation.Binary.d36 (coe v0)) v1 v2 v3 v4 v6))
      _ -> MAlonzo.RTE.mazUnreachableError
name196 = "Relation.Binary.Reasoning.Base.Double._≈˘⟨_⟩_"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T54 -> T54
d196 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du196 v6 v7 v8 v9 v10 v11
du196 ::
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T54 -> T54
du196 v0 v1 v2 v3 v4 v5
  = coe
      (du176
         (coe v0) (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Relation.Binary.Core.d416
            (MAlonzo.Code.Relation.Binary.d36 (coe v0)) v2 v1 v4)
         (coe v5))
name210 = "Relation.Binary.Reasoning.Base.Double._≡⟨_⟩_"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T54 -> T54
d210 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du210 v11
du210 :: T54 -> T54
du210 v0 = coe v0
name234 = "Relation.Binary.Reasoning.Base.Double._≡˘⟨_⟩_"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T54 -> T54
d234 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du234 v11
du234 :: T54 -> T54
du234 v0 = coe v0
name246 = "Relation.Binary.Reasoning.Base.Double._≡⟨⟩_"
d246 :: T54 -> T54
d246 v0 = coe v0
name254 = "Relation.Binary.Reasoning.Base.Double._∎"
d254 :: MAlonzo.Code.Relation.Binary.T16 -> AgdaAny -> T54
d254 v0 v1
  = coe
      (C66
         (coe
            MAlonzo.Code.Relation.Binary.Core.d414
            (MAlonzo.Code.Relation.Binary.d36 (coe v0)) v1))
name1681 = "Relation.Binary.Reasoning.Base.Double..absurdlambda"
d1681 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T94 -> MAlonzo.Code.Data.Empty.T4
d1681 = erased
