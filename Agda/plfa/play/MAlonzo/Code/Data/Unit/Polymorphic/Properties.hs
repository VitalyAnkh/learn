{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Unit.Polymorphic.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name10 = "Data.Unit.Polymorphic.Properties._≟_"
d10 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Level.T8 ->
  MAlonzo.Code.Level.T8 -> MAlonzo.Code.Relation.Nullary.T32
d10 v0 v1 v2 = du10
du10 :: MAlonzo.Code.Relation.Nullary.T32
du10
  = coe
      MAlonzo.Code.Relation.Nullary.C46
      (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
      (coe MAlonzo.Code.Relation.Nullary.C22 erased)
name14 = "Data.Unit.Polymorphic.Properties.≡-setoid"
d14 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d14 v0 = du14
du14 :: MAlonzo.Code.Relation.Binary.Bundles.T44
du14
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250
name18 = "Data.Unit.Polymorphic.Properties.≡-decSetoid"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84
d18 v0 = du18
du18 :: MAlonzo.Code.Relation.Binary.Bundles.T84
du18
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du254
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Relation.Nullary.C46
              (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
              (coe MAlonzo.Code.Relation.Nullary.C22 erased)))
name20 = "Data.Unit.Polymorphic.Properties.≡-total"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Level.T8 ->
  MAlonzo.Code.Level.T8 -> MAlonzo.Code.Data.Sum.Base.T30
d20 v0 v1 v2 = du20
du20 :: MAlonzo.Code.Data.Sum.Base.T30
du20 = coe MAlonzo.Code.Data.Sum.Base.C38 erased
name22 = "Data.Unit.Polymorphic.Properties.≡-antisym"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Level.T8 ->
  MAlonzo.Code.Level.T8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d22 = erased
name28 = "Data.Unit.Polymorphic.Properties.≡-isPreorder"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d28 v0 = du28
du28 :: MAlonzo.Code.Relation.Binary.Structures.T70
du28
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du242)
      (coe (\ v0 v1 v2 -> v2)) erased
name36 = "Data.Unit.Polymorphic.Properties.≡-isPartialOrder"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d36 v0 = du36
du36 :: MAlonzo.Code.Relation.Binary.Structures.T118
du36
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865 (coe du28)
      (coe (\ v0 v1 v2 v3 -> v2))
name42 = "Data.Unit.Polymorphic.Properties.≡-isTotalOrder"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
d42 v0 = du42
du42 :: MAlonzo.Code.Relation.Binary.Structures.T340
du42
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C11665 (coe du36)
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Sum.Base.C38 erased))
name48 = "Data.Unit.Polymorphic.Properties.≡-isDecTotalOrder"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Structures.T388
d48 v0 = du48
du48 :: MAlonzo.Code.Relation.Binary.Structures.T388
du48
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C12739 (coe du42)
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Relation.Nullary.C46
              (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
              (coe MAlonzo.Code.Relation.Nullary.C22 erased)))
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Relation.Nullary.C46
              (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
              (coe MAlonzo.Code.Relation.Nullary.C22 erased)))
name54 = "Data.Unit.Polymorphic.Properties.≡-preorder"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d54 v0 = du54
du54 :: MAlonzo.Code.Relation.Binary.Bundles.T132
du54 = coe MAlonzo.Code.Relation.Binary.Bundles.C1509 (coe du28)
name60 = "Data.Unit.Polymorphic.Properties.≡-poset"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d60 v0 = du60
du60 :: MAlonzo.Code.Relation.Binary.Bundles.T204
du60 = coe MAlonzo.Code.Relation.Binary.Bundles.C2365 (coe du36)
name66 = "Data.Unit.Polymorphic.Properties.≡-totalOrder"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574
d66 v0 = du66
du66 :: MAlonzo.Code.Relation.Binary.Bundles.T574
du66 = coe MAlonzo.Code.Relation.Binary.Bundles.C6779 (coe du42)
name72 = "Data.Unit.Polymorphic.Properties.≡-decTotalOrder"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
d72 v0 = du72
du72 :: MAlonzo.Code.Relation.Binary.Bundles.T658
du72 = coe MAlonzo.Code.Relation.Binary.Bundles.C7777 (coe du48)
