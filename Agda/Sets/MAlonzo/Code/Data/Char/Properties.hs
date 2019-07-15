{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Char.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Construct.On
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name6 = "Data.Char.Properties.≈⇒≡"
d6 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d6 = erased
name8 = "Data.Char.Properties.≈-reflexive"
d8 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d8 = erased
name10 = "Data.Char.Properties.≈-refl"
d10 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d10 = erased
name12 = "Data.Char.Properties.≈-sym"
d12 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d12 = erased
name14 = "Data.Char.Properties.≈-trans"
d14 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d14 = erased
name18 = "Data.Char.Properties.≈-subst"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Char.T6 -> ()) ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d18 v0 v1 v2 v3 v4 v5 = du18 v5
du18 :: AgdaAny -> AgdaAny
du18 v0 = coe v0
name26 = "Data.Char.Properties._≈?_"
d26 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Relation.Nullary.T14
d26 v0 v1
  = coe
      (MAlonzo.Code.Data.Nat.Properties.d1268
         (coe MAlonzo.Code.Agda.Builtin.Char.d28 v0)
         (coe MAlonzo.Code.Agda.Builtin.Char.d28 v1))
name32 = "Data.Char.Properties.≈-isEquivalence"
d32 :: MAlonzo.Code.Relation.Binary.Core.T402
d32
  = coe
      (MAlonzo.Code.Relation.Binary.Core.C5081 erased erased erased)
name46 = "Data.Char.Properties.≈-setoid"
d46 :: MAlonzo.Code.Relation.Binary.T128
d46
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Relation.Binary.C1037 v2) erased erased
      d32
name48 = "Data.Char.Properties.≈-isDecEquivalence"
d48 :: MAlonzo.Code.Relation.Binary.T174
d48 = coe (MAlonzo.Code.Relation.Binary.C1313 (coe d32) (coe d26))
name50 = "Data.Char.Properties.≈-decSetoid"
d50 :: MAlonzo.Code.Relation.Binary.T206
d50
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Relation.Binary.C1455 v2) erased erased
      d48
name52 = "Data.Char.Properties._≟_"
d52 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Relation.Nullary.T14
d52 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du24 erased erased
      (d26 (coe v0) (coe v1))
name58 = "Data.Char.Properties.≡-setoid"
d58 :: MAlonzo.Code.Relation.Binary.T128
d58 = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66
name60 = "Data.Char.Properties.≡-decSetoid"
d60 :: MAlonzo.Code.Relation.Binary.T206
d60
  = coe
      (MAlonzo.Code.Relation.Binary.PropositionalEquality.du70 (coe d52))
name62 = "Data.Char.Properties._==_"
d62 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 -> Bool
d62 v0 v1
  = coe
      (MAlonzo.Code.Relation.Nullary.Decidable.Core.du16
         (coe (d52 (coe v0) (coe v1))))
name80 = "Data.Char.Properties._<?_"
d80 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Relation.Nullary.T14
d80
  = coe
      (MAlonzo.Code.Relation.Binary.Construct.On.du132
         (coe MAlonzo.Code.Agda.Builtin.Char.d28)
         (coe MAlonzo.Code.Data.Nat.Properties.d1614))
name82 = "Data.Char.Properties.<-strictTotalOrder-≈"
d82 :: MAlonzo.Code.Relation.Binary.T1268
d82
  = coe
      (MAlonzo.Code.Relation.Binary.Construct.On.du754
         (coe MAlonzo.Code.Data.Nat.Properties.d1636)
         (coe MAlonzo.Code.Agda.Builtin.Char.d28))
name84 = "Data.Char.Properties.toNat-injective"
d84 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d84 = erased
name86 = "Data.Char.Properties.setoid"
d86 :: MAlonzo.Code.Relation.Binary.T128
d86 = coe d58
name88 = "Data.Char.Properties.decSetoid"
d88 :: MAlonzo.Code.Relation.Binary.T206
d88 = coe d60
name90 = "Data.Char.Properties.strictTotalOrder"
d90 :: MAlonzo.Code.Relation.Binary.T1268
d90 = coe d82
