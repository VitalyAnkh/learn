{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
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
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.On
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name6 = "Data.String.Properties.≈⇒≡"
d6 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d6 = erased
name8 = "Data.String.Properties.≈-reflexive"
d8 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d8 v0 v1 v2 = du8 v0 v1
du8 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du8 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du170 erased
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v1)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du1050
         (coe MAlonzo.Code.Agda.Builtin.String.d8 v0))
name10 = "Data.String.Properties.≈-refl"
d10 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d10 v0 = coe du8 (coe v0) (coe v0)
name14 = "Data.String.Properties.≈-sym"
d14 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d14 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du210 erased
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v1)
name20 = "Data.String.Properties.≈-trans"
d20 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d20 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du226 erased
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v1)
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v2)
name30 = "Data.String.Properties.≈-subst"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.String.T6 -> ()) ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  AgdaAny -> AgdaAny
d30 v0 v1 v2 v3 v4 v5 = du30 v5
du30 :: AgdaAny -> AgdaAny
du30 v0 = coe v0
name38 = "Data.String.Properties._≈?_"
d38 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Relation.Nullary.T32
d38 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du310
      (coe MAlonzo.Code.Data.Char.Properties.d26)
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v1)
name44 = "Data.String.Properties.≈-isEquivalence"
d44 :: MAlonzo.Code.Relation.Binary.Structures.T26
d44
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C483 (coe d10) (coe d14)
      (coe d20)
name58 = "Data.String.Properties.≈-setoid"
d58 :: MAlonzo.Code.Relation.Binary.Bundles.T44
d58 = coe MAlonzo.Code.Relation.Binary.Bundles.C501 d44
name60 = "Data.String.Properties.≈-isDecEquivalence"
d60 :: MAlonzo.Code.Relation.Binary.Structures.T44
d60
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C1529 (coe d44) (coe d38)
name62 = "Data.String.Properties.≈-decSetoid"
d62 :: MAlonzo.Code.Relation.Binary.Bundles.T84
d62 = coe MAlonzo.Code.Relation.Binary.Bundles.C939 d60
name64 = "Data.String.Properties._≟_"
d64 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Relation.Nullary.T32
d64 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du168 erased
      (coe d38 (coe v0) (coe v1))
name70 = "Data.String.Properties.≡-setoid"
d70 :: MAlonzo.Code.Relation.Binary.Bundles.T44
d70
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250
name72 = "Data.String.Properties.≡-decSetoid"
d72 :: MAlonzo.Code.Relation.Binary.Bundles.T84
d72
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du254
      (coe d64)
name74 = "Data.String.Properties._<?_"
d74 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Relation.Nullary.T32
d74 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Lex.Strict.du276
      MAlonzo.Code.Data.Char.Properties.d26
      MAlonzo.Code.Data.Char.Properties.d80
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v1)
name80 = "Data.String.Properties.<-isStrictPartialOrder-≈"
d80 :: MAlonzo.Code.Relation.Binary.Structures.T222
d80
  = coe
      MAlonzo.Code.Relation.Binary.Construct.On.du356
      (coe MAlonzo.Code.Agda.Builtin.String.d8)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Lex.Strict.du280
         (coe MAlonzo.Code.Data.Char.Properties.d82))
name82 = "Data.String.Properties.<-isStrictTotalOrder-≈"
d82 :: MAlonzo.Code.Relation.Binary.Structures.T454
d82
  = coe
      MAlonzo.Code.Relation.Binary.Construct.On.du496
      (coe MAlonzo.Code.Agda.Builtin.String.d8)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Lex.Strict.du318 (coe ())
         (coe MAlonzo.Code.Data.Char.Properties.d84))
name84 = "Data.String.Properties.<-strictPartialOrder-≈"
d84 :: MAlonzo.Code.Relation.Binary.Bundles.T394
d84
  = coe
      MAlonzo.Code.Relation.Binary.Construct.On.du590
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Lex.Strict.du376
         (coe MAlonzo.Code.Data.Char.Properties.d86))
      (coe MAlonzo.Code.Agda.Builtin.String.d8)
name86 = "Data.String.Properties.<-strictTotalOrder-≈"
d86 :: MAlonzo.Code.Relation.Binary.Bundles.T780
d86
  = coe
      MAlonzo.Code.Relation.Binary.Construct.On.du614
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Lex.Strict.du440
         (coe MAlonzo.Code.Level.d22)
         (coe MAlonzo.Code.Data.Char.Properties.d88))
      (coe MAlonzo.Code.Agda.Builtin.String.d8)
name88 = "Data.String.Properties._==_"
d88 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> Bool
d88 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du16
      (coe d64 (coe v0) (coe v1))
name102 = "Data.String.Properties.setoid"
d102 :: MAlonzo.Code.Relation.Binary.Bundles.T44
d102 = coe d70
name104 = "Data.String.Properties.decSetoid"
d104 :: MAlonzo.Code.Relation.Binary.Bundles.T84
d104 = coe d72
name106 = "Data.String.Properties.strictTotalOrder"
d106 :: MAlonzo.Code.Relation.Binary.Bundles.T780
d106 = coe d86
