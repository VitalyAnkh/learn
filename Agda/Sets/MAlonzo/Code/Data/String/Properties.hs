{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.String.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Char.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Lex.Strict
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Construct.On
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name6 = "Data.String.Properties.≈⇒≡"
d6 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d6 = erased
name8 = "Data.String.Properties.≈-reflexive"
d8 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
d8 v0 v1 v2 = du8 v0 v1
du8 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
du8 v0 v1
  = coe
      (MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du158
         erased (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
         (coe MAlonzo.Code.Agda.Builtin.String.d8 v1)
         (coe
            (MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du1004
               (coe MAlonzo.Code.Agda.Builtin.String.d8 v0))))
name10 = "Data.String.Properties.≈-refl"
d10 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
d10 v0 = coe (du8 (coe v0) (coe v0))
name14 = "Data.String.Properties.≈-sym"
d14 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
d14 v0 v1
  = coe
      (MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du198
         erased (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
         (coe MAlonzo.Code.Agda.Builtin.String.d8 v1))
name20 = "Data.String.Properties.≈-trans"
d20 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
d20 v0 v1 v2
  = coe
      (MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du214
         erased (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
         (coe MAlonzo.Code.Agda.Builtin.String.d8 v1)
         (coe MAlonzo.Code.Agda.Builtin.String.d8 v2))
name30 = "Data.String.Properties.≈-subst"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.String.T6 -> ()) ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 ->
  AgdaAny -> AgdaAny
d30 v0 v1 v2 v3 v4 v5 = du30 v5
du30 :: AgdaAny -> AgdaAny
du30 v0 = coe v0
name38 = "Data.String.Properties._≈?_"
d38 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Relation.Nullary.T14
d38 v0 v1
  = coe
      (MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du286
         (coe MAlonzo.Code.Data.Char.Properties.d26)
         (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
         (coe MAlonzo.Code.Agda.Builtin.String.d8 v1))
name44 = "Data.String.Properties.≈-isEquivalence"
d44 :: MAlonzo.Code.Relation.Binary.Core.T402
d44
  = coe
      (MAlonzo.Code.Relation.Binary.Core.C5081
         (coe d10) (coe d14) (coe d20))
name58 = "Data.String.Properties.≈-setoid"
d58 :: MAlonzo.Code.Relation.Binary.T128
d58
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Relation.Binary.C1037 v2) erased erased
      d44
name60 = "Data.String.Properties.≈-isDecEquivalence"
d60 :: MAlonzo.Code.Relation.Binary.T174
d60 = coe (MAlonzo.Code.Relation.Binary.C1313 (coe d44) (coe d38))
name62 = "Data.String.Properties.≈-decSetoid"
d62 :: MAlonzo.Code.Relation.Binary.T206
d62
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Relation.Binary.C1455 v2) erased erased
      d60
name64 = "Data.String.Properties._≟_"
d64 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Relation.Nullary.T14
d64 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du24 erased
      (\ v2 -> du8 (coe v0) (coe v1)) (d38 (coe v0) (coe v1))
name70 = "Data.String.Properties.≡-setoid"
d70 :: MAlonzo.Code.Relation.Binary.T128
d70 = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66
name72 = "Data.String.Properties.≡-decSetoid"
d72 :: MAlonzo.Code.Relation.Binary.T206
d72
  = coe
      (MAlonzo.Code.Relation.Binary.PropositionalEquality.du70 (coe d64))
name74 = "Data.String.Properties._<?_"
d74 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Relation.Nullary.T14
d74 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Lex.Strict.du276
      MAlonzo.Code.Data.Char.Properties.d26
      MAlonzo.Code.Data.Char.Properties.d80
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v1)
name80 = "Data.String.Properties.<-strictTotalOrder-≈"
d80 :: MAlonzo.Code.Relation.Binary.T1268
d80
  = coe
      (MAlonzo.Code.Relation.Binary.Construct.On.du754
         (coe
            (MAlonzo.Code.Data.List.Relation.Binary.Lex.Strict.du420
               (coe MAlonzo.Code.Level.d22)
               (coe MAlonzo.Code.Data.Char.Properties.d82)))
         (coe MAlonzo.Code.Agda.Builtin.String.d8))
name82 = "Data.String.Properties._==_"
d82 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> Bool
d82 v0 v1
  = coe
      (MAlonzo.Code.Relation.Nullary.Decidable.Core.du16
         (coe (d64 (coe v0) (coe v1))))
name96 = "Data.String.Properties.setoid"
d96 :: MAlonzo.Code.Relation.Binary.T128
d96 = coe d70
name98 = "Data.String.Properties.decSetoid"
d98 :: MAlonzo.Code.Relation.Binary.T206
d98 = coe d72
name100 = "Data.String.Properties.strictTotalOrder"
d100 :: MAlonzo.Code.Relation.Binary.T1268
d100 = coe d80
