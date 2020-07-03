{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Bundles where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

name8 = "Algebra.Bundles.RawMagma"
d8 a0 a1 = ()
newtype T8 = C47 (AgdaAny -> AgdaAny -> AgdaAny)
name20 = "Algebra.Bundles.RawMagma.Carrier"
d20 :: T8 -> ()
d20 = erased
name22 = "Algebra.Bundles.RawMagma._≈_"
d22 :: T8 -> AgdaAny -> AgdaAny -> ()
d22 = erased
name24 = "Algebra.Bundles.RawMagma._∙_"
d24 :: T8 -> AgdaAny -> AgdaAny -> AgdaAny
d24 v0
  = case coe v0 of
      C47 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name30 = "Algebra.Bundles.Magma"
d30 a0 a1 = ()
data T30
  = C255 (AgdaAny -> AgdaAny -> AgdaAny)
         MAlonzo.Code.Algebra.Structures.T80
name44 = "Algebra.Bundles.Magma.Carrier"
d44 :: T30 -> ()
d44 = erased
name46 = "Algebra.Bundles.Magma._≈_"
d46 :: T30 -> AgdaAny -> AgdaAny -> ()
d46 = erased
name48 = "Algebra.Bundles.Magma._∙_"
d48 :: T30 -> AgdaAny -> AgdaAny -> AgdaAny
d48 v0
  = case coe v0 of
      C255 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name50 = "Algebra.Bundles.Magma.isMagma"
d50 :: T30 -> MAlonzo.Code.Algebra.Structures.T80
d50 v0
  = case coe v0 of
      C255 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name54 = "Algebra.Bundles.Magma._.isEquivalence"
d54 :: T30 -> MAlonzo.Code.Relation.Binary.Structures.T26
d54 v0 = coe MAlonzo.Code.Algebra.Structures.d88 (coe d50 (coe v0))
name56 = "Algebra.Bundles.Magma._.isPartialEquivalence"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 -> MAlonzo.Code.Relation.Binary.Structures.T16
d56 v0 v1 v2 = du56 v2
du56 :: T30 -> MAlonzo.Code.Relation.Binary.Structures.T16
du56 v0
  = let v1 = d50 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v1))
name58 = "Algebra.Bundles.Magma._.refl"
d58 :: T30 -> AgdaAny -> AgdaAny
d58 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe d50 (coe v0)))
name60 = "Algebra.Bundles.Magma._.reflexive"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d60 v0 v1 v2 = du60 v2
du60 ::
  T30 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du60 v0
  = let v1 = d50 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v1)) v2
name62 = "Algebra.Bundles.Magma._.setoid"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d62 v0 v1 v2 = du62 v2
du62 :: T30 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du62 v0
  = coe MAlonzo.Code.Algebra.Structures.du104 (coe d50 (coe v0))
name64 = "Algebra.Bundles.Magma._.sym"
d64 :: T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d64 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe d50 (coe v0)))
name66 = "Algebra.Bundles.Magma._.trans"
d66 ::
  T30 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d66 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe d50 (coe v0)))
name68 = "Algebra.Bundles.Magma._.∙-cong"
d68 ::
  T30 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d68 v0 = coe MAlonzo.Code.Algebra.Structures.d90 (coe d50 (coe v0))
name70 = "Algebra.Bundles.Magma._.∙-congʳ"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d70 v0 v1 v2 = du70 v2
du70 :: T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du70 v0
  = coe MAlonzo.Code.Algebra.Structures.du110 (coe d50 (coe v0))
name72 = "Algebra.Bundles.Magma._.∙-congˡ"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d72 v0 v1 v2 = du72 v2
du72 :: T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du72 v0
  = coe MAlonzo.Code.Algebra.Structures.du106 (coe d50 (coe v0))
name74 = "Algebra.Bundles.Magma.rawMagma"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T30 -> T8
d74 v0 v1 v2 = du74 v2
du74 :: T30 -> T8
du74 v0 = coe C47 (d48 (coe v0))
name80 = "Algebra.Bundles.Semigroup"
d80 a0 a1 = ()
data T80
  = C877 (AgdaAny -> AgdaAny -> AgdaAny)
         MAlonzo.Code.Algebra.Structures.T116
name94 = "Algebra.Bundles.Semigroup.Carrier"
d94 :: T80 -> ()
d94 = erased
name96 = "Algebra.Bundles.Semigroup._≈_"
d96 :: T80 -> AgdaAny -> AgdaAny -> ()
d96 = erased
name98 = "Algebra.Bundles.Semigroup._∙_"
d98 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny
d98 v0
  = case coe v0 of
      C877 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name100 = "Algebra.Bundles.Semigroup.isSemigroup"
d100 :: T80 -> MAlonzo.Code.Algebra.Structures.T116
d100 v0
  = case coe v0 of
      C877 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name104 = "Algebra.Bundles.Semigroup._.assoc"
d104 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d104 v0
  = coe MAlonzo.Code.Algebra.Structures.d126 (coe d100 (coe v0))
name106 = "Algebra.Bundles.Semigroup._.isEquivalence"
d106 :: T80 -> MAlonzo.Code.Relation.Binary.Structures.T26
d106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0)))
name108 = "Algebra.Bundles.Semigroup._.isMagma"
d108 :: T80 -> MAlonzo.Code.Algebra.Structures.T80
d108 v0
  = coe MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0))
name110 = "Algebra.Bundles.Semigroup._.isPartialEquivalence"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T80 -> MAlonzo.Code.Relation.Binary.Structures.T16
d110 v0 v1 v2 = du110 v2
du110 :: T80 -> MAlonzo.Code.Relation.Binary.Structures.T16
du110 v0
  = let v1 = d100 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d124 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v2))
name112 = "Algebra.Bundles.Semigroup._.refl"
d112 :: T80 -> AgdaAny -> AgdaAny
d112 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0))))
name114 = "Algebra.Bundles.Semigroup._.reflexive"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T80 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d114 v0 v1 v2 = du114 v2
du114 ::
  T80 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du114 v0
  = let v1 = d100 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d124 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v2)) v3
name116 = "Algebra.Bundles.Semigroup._.setoid"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T80 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d116 v0 v1 v2 = du116 v2
du116 :: T80 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du116 v0
  = let v1 = d100 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))
name118 = "Algebra.Bundles.Semigroup._.sym"
d118 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d118 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0))))
name120 = "Algebra.Bundles.Semigroup._.trans"
d120 ::
  T80 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d120 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0))))
name122 = "Algebra.Bundles.Semigroup._.∙-cong"
d122 ::
  T80 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0)))
name124 = "Algebra.Bundles.Semigroup._.∙-congʳ"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d124 v0 v1 v2 = du124 v2
du124 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du124 v0
  = let v1 = d100 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))
name126 = "Algebra.Bundles.Semigroup._.∙-congˡ"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d126 v0 v1 v2 = du126 v2
du126 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du126 v0
  = let v1 = d100 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))
name128 = "Algebra.Bundles.Semigroup.magma"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T80 -> T30
d128 v0 v1 v2 = du128 v2
du128 :: T80 -> T30
du128 v0
  = coe
      C255 (d98 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d124 (coe d100 (coe v0)))
name132 = "Algebra.Bundles.Semigroup._.rawMagma"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T80 -> T8
d132 v0 v1 v2 = du132 v2
du132 :: T80 -> T8
du132 v0 = coe du74 (coe du128 (coe v0))
name138 = "Algebra.Bundles.Band"
d138 a0 a1 = ()
data T138
  = C1567 (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T152
name152 = "Algebra.Bundles.Band.Carrier"
d152 :: T138 -> ()
d152 = erased
name154 = "Algebra.Bundles.Band._≈_"
d154 :: T138 -> AgdaAny -> AgdaAny -> ()
d154 = erased
name156 = "Algebra.Bundles.Band._∙_"
d156 :: T138 -> AgdaAny -> AgdaAny -> AgdaAny
d156 v0
  = case coe v0 of
      C1567 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name158 = "Algebra.Bundles.Band.isBand"
d158 :: T138 -> MAlonzo.Code.Algebra.Structures.T152
d158 v0
  = case coe v0 of
      C1567 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name162 = "Algebra.Bundles.Band._.assoc"
d162 :: T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d162 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0)))
name164 = "Algebra.Bundles.Band._.idem"
d164 :: T138 -> AgdaAny -> AgdaAny
d164 v0
  = coe MAlonzo.Code.Algebra.Structures.d162 (coe d158 (coe v0))
name166 = "Algebra.Bundles.Band._.isEquivalence"
d166 :: T138 -> MAlonzo.Code.Relation.Binary.Structures.T26
d166 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0))))
name168 = "Algebra.Bundles.Band._.isMagma"
d168 :: T138 -> MAlonzo.Code.Algebra.Structures.T80
d168 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0)))
name170 = "Algebra.Bundles.Band._.isPartialEquivalence"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T138 -> MAlonzo.Code.Relation.Binary.Structures.T16
d170 v0 v1 v2 = du170 v2
du170 :: T138 -> MAlonzo.Code.Relation.Binary.Structures.T16
du170 v0
  = let v1 = d158 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d124 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v3))
name172 = "Algebra.Bundles.Band._.isSemigroup"
d172 :: T138 -> MAlonzo.Code.Algebra.Structures.T116
d172 v0
  = coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0))
name174 = "Algebra.Bundles.Band._.refl"
d174 :: T138 -> AgdaAny -> AgdaAny
d174 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0)))))
name176 = "Algebra.Bundles.Band._.reflexive"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T138 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d176 v0 v1 v2 = du176 v2
du176 ::
  T138 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du176 v0
  = let v1 = d158 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d124 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v3)) v4
name178 = "Algebra.Bundles.Band._.setoid"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T138 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d178 v0 v1 v2 = du178 v2
du178 :: T138 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du178 v0
  = let v1 = d158 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name180 = "Algebra.Bundles.Band._.sym"
d180 :: T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d180 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0)))))
name182 = "Algebra.Bundles.Band._.trans"
d182 ::
  T138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0)))))
name184 = "Algebra.Bundles.Band._.∙-cong"
d184 ::
  T138 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0))))
name186 = "Algebra.Bundles.Band._.∙-congʳ"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d186 v0 v1 v2 = du186 v2
du186 ::
  T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du186 v0
  = let v1 = d158 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name188 = "Algebra.Bundles.Band._.∙-congˡ"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d188 v0 v1 v2 = du188 v2
du188 ::
  T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du188 v0
  = let v1 = d158 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name190 = "Algebra.Bundles.Band.semigroup"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T138 -> T80
d190 v0 v1 v2 = du190 v2
du190 :: T138 -> T80
du190 v0
  = coe
      C877 (d156 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d160 (coe d158 (coe v0)))
name194 = "Algebra.Bundles.Band._.magma"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T138 -> T30
d194 v0 v1 v2 = du194 v2
du194 :: T138 -> T30
du194 v0 = coe du128 (coe du190 (coe v0))
name196 = "Algebra.Bundles.Band._.rawMagma"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T138 -> T8
d196 v0 v1 v2 = du196 v2
du196 :: T138 -> T8
du196 v0
  = let v1 = coe du190 (coe v0) in coe du74 (coe du128 (coe v1))
name202 = "Algebra.Bundles.CommutativeSemigroup"
d202 a0 a1 = ()
data T202
  = C2287 (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T192
name216 = "Algebra.Bundles.CommutativeSemigroup.Carrier"
d216 :: T202 -> ()
d216 = erased
name218 = "Algebra.Bundles.CommutativeSemigroup._≈_"
d218 :: T202 -> AgdaAny -> AgdaAny -> ()
d218 = erased
name220 = "Algebra.Bundles.CommutativeSemigroup._∙_"
d220 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny
d220 v0
  = case coe v0 of
      C2287 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name222
  = "Algebra.Bundles.CommutativeSemigroup.isCommutativeSemigroup"
d222 :: T202 -> MAlonzo.Code.Algebra.Structures.T192
d222 v0
  = case coe v0 of
      C2287 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name226 = "Algebra.Bundles.CommutativeSemigroup._.assoc"
d226 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0)))
name228 = "Algebra.Bundles.CommutativeSemigroup._.comm"
d228 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny
d228 v0
  = coe MAlonzo.Code.Algebra.Structures.d202 (coe d222 (coe v0))
name230 = "Algebra.Bundles.CommutativeSemigroup._.isEquivalence"
d230 :: T202 -> MAlonzo.Code.Relation.Binary.Structures.T26
d230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0))))
name232 = "Algebra.Bundles.CommutativeSemigroup._.isMagma"
d232 :: T202 -> MAlonzo.Code.Algebra.Structures.T80
d232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0)))
name234
  = "Algebra.Bundles.CommutativeSemigroup._.isPartialEquivalence"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T202 -> MAlonzo.Code.Relation.Binary.Structures.T16
d234 v0 v1 v2 = du234 v2
du234 :: T202 -> MAlonzo.Code.Relation.Binary.Structures.T16
du234 v0
  = let v1 = d222 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d200 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d124 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v3))
name236 = "Algebra.Bundles.CommutativeSemigroup._.isSemigroup"
d236 :: T202 -> MAlonzo.Code.Algebra.Structures.T116
d236 v0
  = coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0))
name238 = "Algebra.Bundles.CommutativeSemigroup._.refl"
d238 :: T202 -> AgdaAny -> AgdaAny
d238 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0)))))
name240 = "Algebra.Bundles.CommutativeSemigroup._.reflexive"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T202 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d240 v0 v1 v2 = du240 v2
du240 ::
  T202 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du240 v0
  = let v1 = d222 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d200 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d124 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v3)) v4
name242 = "Algebra.Bundles.CommutativeSemigroup._.setoid"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T202 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d242 v0 v1 v2 = du242 v2
du242 :: T202 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du242 v0
  = let v1 = d222 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d200 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name244 = "Algebra.Bundles.CommutativeSemigroup._.sym"
d244 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d244 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0)))))
name246 = "Algebra.Bundles.CommutativeSemigroup._.trans"
d246 ::
  T202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d246 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0)))))
name248 = "Algebra.Bundles.CommutativeSemigroup._.∙-cong"
d248 ::
  T202 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0))))
name250 = "Algebra.Bundles.CommutativeSemigroup._.∙-congʳ"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d250 v0 v1 v2 = du250 v2
du250 ::
  T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du250 v0
  = let v1 = d222 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d200 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name252 = "Algebra.Bundles.CommutativeSemigroup._.∙-congˡ"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d252 v0 v1 v2 = du252 v2
du252 ::
  T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du252 v0
  = let v1 = d222 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d200 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name254 = "Algebra.Bundles.CommutativeSemigroup.semigroup"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T202 -> T80
d254 v0 v1 v2 = du254 v2
du254 :: T202 -> T80
du254 v0
  = coe
      C877 (d220 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d200 (coe d222 (coe v0)))
name258 = "Algebra.Bundles.CommutativeSemigroup._.magma"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T202 -> T30
d258 v0 v1 v2 = du258 v2
du258 :: T202 -> T30
du258 v0 = coe du128 (coe du254 (coe v0))
name260 = "Algebra.Bundles.CommutativeSemigroup._.rawMagma"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T202 -> T8
d260 v0 v1 v2 = du260 v2
du260 :: T202 -> T8
du260 v0
  = let v1 = coe du254 (coe v0) in coe du74 (coe du128 (coe v1))
name266 = "Algebra.Bundles.Semilattice"
d266 a0 a1 = ()
data T266
  = C3011 (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T232
name280 = "Algebra.Bundles.Semilattice.Carrier"
d280 :: T266 -> ()
d280 = erased
name282 = "Algebra.Bundles.Semilattice._≈_"
d282 :: T266 -> AgdaAny -> AgdaAny -> ()
d282 = erased
name284 = "Algebra.Bundles.Semilattice._∧_"
d284 :: T266 -> AgdaAny -> AgdaAny -> AgdaAny
d284 v0
  = case coe v0 of
      C3011 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name286 = "Algebra.Bundles.Semilattice.isSemilattice"
d286 :: T266 -> MAlonzo.Code.Algebra.Structures.T232
d286 v0
  = case coe v0 of
      C3011 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name290 = "Algebra.Bundles.Semilattice._.assoc"
d290 :: T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d290 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d160
         (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0))))
name292 = "Algebra.Bundles.Semilattice._.comm"
d292 :: T266 -> AgdaAny -> AgdaAny -> AgdaAny
d292 v0
  = coe MAlonzo.Code.Algebra.Structures.d242 (coe d286 (coe v0))
name294 = "Algebra.Bundles.Semilattice._.idem"
d294 :: T266 -> AgdaAny -> AgdaAny
d294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d162
      (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0)))
name296 = "Algebra.Bundles.Semilattice._.isBand"
d296 :: T266 -> MAlonzo.Code.Algebra.Structures.T152
d296 v0
  = coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0))
name298 = "Algebra.Bundles.Semilattice._.isEquivalence"
d298 :: T266 -> MAlonzo.Code.Relation.Binary.Structures.T26
d298 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d160
            (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0)))))
name300 = "Algebra.Bundles.Semilattice._.isMagma"
d300 :: T266 -> MAlonzo.Code.Algebra.Structures.T80
d300 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d160
         (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0))))
name302 = "Algebra.Bundles.Semilattice._.isPartialEquivalence"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T266 -> MAlonzo.Code.Relation.Binary.Structures.T16
d302 v0 v1 v2 = du302 v2
du302 :: T266 -> MAlonzo.Code.Relation.Binary.Structures.T16
du302 v0
  = let v1 = d286 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4))
name304 = "Algebra.Bundles.Semilattice._.isSemigroup"
d304 :: T266 -> MAlonzo.Code.Algebra.Structures.T116
d304 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d160
      (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0)))
name306 = "Algebra.Bundles.Semilattice._.refl"
d306 :: T266 -> AgdaAny -> AgdaAny
d306 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d160
               (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0))))))
name308 = "Algebra.Bundles.Semilattice._.reflexive"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T266 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d308 v0 v1 v2 = du308 v2
du308 ::
  T266 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du308 v0
  = let v1 = d286 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4)) v5
name310 = "Algebra.Bundles.Semilattice._.setoid"
d310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T266 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d310 v0 v1 v2 = du310 v2
du310 :: T266 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du310 v0
  = let v1 = d286 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name312 = "Algebra.Bundles.Semilattice._.sym"
d312 :: T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d312 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d160
               (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0))))))
name314 = "Algebra.Bundles.Semilattice._.trans"
d314 ::
  T266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d314 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d160
               (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0))))))
name316 = "Algebra.Bundles.Semilattice._.∙-cong"
d316 ::
  T266 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d160
            (coe MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0)))))
name318 = "Algebra.Bundles.Semilattice._.∙-congʳ"
d318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d318 v0 v1 v2 = du318 v2
du318 ::
  T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du318 v0
  = let v1 = d286 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name320 = "Algebra.Bundles.Semilattice._.∙-congˡ"
d320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d320 v0 v1 v2 = du320 v2
du320 ::
  T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du320 v0
  = let v1 = d286 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name322 = "Algebra.Bundles.Semilattice.band"
d322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T266 -> T138
d322 v0 v1 v2 = du322 v2
du322 :: T266 -> T138
du322 v0
  = coe
      C1567 (d284 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d240 (coe d286 (coe v0)))
name326 = "Algebra.Bundles.Semilattice._.magma"
d326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T266 -> T30
d326 v0 v1 v2 = du326 v2
du326 :: T266 -> T30
du326 v0
  = let v1 = coe du322 (coe v0) in coe du128 (coe du190 (coe v1))
name328 = "Algebra.Bundles.Semilattice._.rawMagma"
d328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T266 -> T8
d328 v0 v1 v2 = du328 v2
du328 :: T266 -> T8
du328 v0
  = let v1 = coe du322 (coe v0) in
    let v2 = coe du190 (coe v1) in coe du74 (coe du128 (coe v2))
name330 = "Algebra.Bundles.Semilattice._.semigroup"
d330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T266 -> T80
d330 v0 v1 v2 = du330 v2
du330 :: T266 -> T80
du330 v0 = coe du190 (coe du322 (coe v0))
name336 = "Algebra.Bundles.SelectiveMagma"
d336 a0 a1 = ()
data T336
  = C3765 (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T276
name350 = "Algebra.Bundles.SelectiveMagma.Carrier"
d350 :: T336 -> ()
d350 = erased
name352 = "Algebra.Bundles.SelectiveMagma._≈_"
d352 :: T336 -> AgdaAny -> AgdaAny -> ()
d352 = erased
name354 = "Algebra.Bundles.SelectiveMagma._∙_"
d354 :: T336 -> AgdaAny -> AgdaAny -> AgdaAny
d354 v0
  = case coe v0 of
      C3765 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name356 = "Algebra.Bundles.SelectiveMagma.isSelectiveMagma"
d356 :: T336 -> MAlonzo.Code.Algebra.Structures.T276
d356 v0
  = case coe v0 of
      C3765 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name360 = "Algebra.Bundles.SelectiveMagma._.isEquivalence"
d360 :: T336 -> MAlonzo.Code.Relation.Binary.Structures.T26
d360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0)))
name362 = "Algebra.Bundles.SelectiveMagma._.isMagma"
d362 :: T336 -> MAlonzo.Code.Algebra.Structures.T80
d362 v0
  = coe MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0))
name364 = "Algebra.Bundles.SelectiveMagma._.isPartialEquivalence"
d364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> MAlonzo.Code.Relation.Binary.Structures.T16
d364 v0 v1 v2 = du364 v2
du364 :: T336 -> MAlonzo.Code.Relation.Binary.Structures.T16
du364 v0
  = let v1 = d356 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d284 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v2))
name366 = "Algebra.Bundles.SelectiveMagma._.refl"
d366 :: T336 -> AgdaAny -> AgdaAny
d366 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0))))
name368 = "Algebra.Bundles.SelectiveMagma._.reflexive"
d368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d368 v0 v1 v2 = du368 v2
du368 ::
  T336 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du368 v0
  = let v1 = d356 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d284 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v2)) v3
name370 = "Algebra.Bundles.SelectiveMagma._.sel"
d370 ::
  T336 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d370 v0
  = coe MAlonzo.Code.Algebra.Structures.d286 (coe d356 (coe v0))
name372 = "Algebra.Bundles.SelectiveMagma._.setoid"
d372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d372 v0 v1 v2 = du372 v2
du372 :: T336 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du372 v0
  = let v1 = d356 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))
name374 = "Algebra.Bundles.SelectiveMagma._.sym"
d374 :: T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d374 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0))))
name376 = "Algebra.Bundles.SelectiveMagma._.trans"
d376 ::
  T336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d376 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0))))
name378 = "Algebra.Bundles.SelectiveMagma._.∙-cong"
d378 ::
  T336 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d378 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0)))
name380 = "Algebra.Bundles.SelectiveMagma._.∙-congʳ"
d380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d380 v0 v1 v2 = du380 v2
du380 ::
  T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du380 v0
  = let v1 = d356 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))
name382 = "Algebra.Bundles.SelectiveMagma._.∙-congˡ"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d382 v0 v1 v2 = du382 v2
du382 ::
  T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du382 v0
  = let v1 = d356 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))
name384 = "Algebra.Bundles.SelectiveMagma.magma"
d384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T336 -> T30
d384 v0 v1 v2 = du384 v2
du384 :: T336 -> T30
du384 v0
  = coe
      C255 (d354 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d284 (coe d356 (coe v0)))
name388 = "Algebra.Bundles.SelectiveMagma._.rawMagma"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T336 -> T8
d388 v0 v1 v2 = du388 v2
du388 :: T336 -> T8
du388 v0 = coe du74 (coe du384 (coe v0))
name394 = "Algebra.Bundles.RawMonoid"
d394 a0 a1 = ()
data T394 = C4379 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
name408 = "Algebra.Bundles.RawMonoid.Carrier"
d408 :: T394 -> ()
d408 = erased
name410 = "Algebra.Bundles.RawMonoid._≈_"
d410 :: T394 -> AgdaAny -> AgdaAny -> ()
d410 = erased
name412 = "Algebra.Bundles.RawMonoid._∙_"
d412 :: T394 -> AgdaAny -> AgdaAny -> AgdaAny
d412 v0
  = case coe v0 of
      C4379 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name414 = "Algebra.Bundles.RawMonoid.ε"
d414 :: T394 -> AgdaAny
d414 v0
  = case coe v0 of
      C4379 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name416 = "Algebra.Bundles.RawMonoid.rawMagma"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T394 -> T8
d416 v0 v1 v2 = du416 v2
du416 :: T394 -> T8
du416 v0 = coe C47 (d412 (coe v0))
name422 = "Algebra.Bundles.Monoid"
d422 a0 a1 = ()
data T422
  = C4689 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T314
name438 = "Algebra.Bundles.Monoid.Carrier"
d438 :: T422 -> ()
d438 = erased
name440 = "Algebra.Bundles.Monoid._≈_"
d440 :: T422 -> AgdaAny -> AgdaAny -> ()
d440 = erased
name442 = "Algebra.Bundles.Monoid._∙_"
d442 :: T422 -> AgdaAny -> AgdaAny -> AgdaAny
d442 v0
  = case coe v0 of
      C4689 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name444 = "Algebra.Bundles.Monoid.ε"
d444 :: T422 -> AgdaAny
d444 v0
  = case coe v0 of
      C4689 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name446 = "Algebra.Bundles.Monoid.isMonoid"
d446 :: T422 -> MAlonzo.Code.Algebra.Structures.T314
d446 v0
  = case coe v0 of
      C4689 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name450 = "Algebra.Bundles.Monoid._.assoc"
d450 :: T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0)))
name452 = "Algebra.Bundles.Monoid._.identity"
d452 :: T422 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d452 v0
  = coe MAlonzo.Code.Algebra.Structures.d326 (coe d446 (coe v0))
name454 = "Algebra.Bundles.Monoid._.identityʳ"
d454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> AgdaAny -> AgdaAny
d454 v0 v1 v2 = du454 v2
du454 :: T422 -> AgdaAny -> AgdaAny
du454 v0
  = let v1 = d446 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v1))
name456 = "Algebra.Bundles.Monoid._.identityˡ"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> AgdaAny -> AgdaAny
d456 v0 v1 v2 = du456 v2
du456 :: T422 -> AgdaAny -> AgdaAny
du456 v0
  = let v1 = d446 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v1))
name458 = "Algebra.Bundles.Monoid._.isEquivalence"
d458 :: T422 -> MAlonzo.Code.Relation.Binary.Structures.T26
d458 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0))))
name460 = "Algebra.Bundles.Monoid._.isMagma"
d460 :: T422 -> MAlonzo.Code.Algebra.Structures.T80
d460 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0)))
name462 = "Algebra.Bundles.Monoid._.isPartialEquivalence"
d462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T422 -> MAlonzo.Code.Relation.Binary.Structures.T16
d462 v0 v1 v2 = du462 v2
du462 :: T422 -> MAlonzo.Code.Relation.Binary.Structures.T16
du462 v0
  = let v1 = d446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d324 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d124 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v3))
name464 = "Algebra.Bundles.Monoid._.isSemigroup"
d464 :: T422 -> MAlonzo.Code.Algebra.Structures.T116
d464 v0
  = coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0))
name466 = "Algebra.Bundles.Monoid._.refl"
d466 :: T422 -> AgdaAny -> AgdaAny
d466 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0)))))
name468 = "Algebra.Bundles.Monoid._.reflexive"
d468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T422 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d468 v0 v1 v2 = du468 v2
du468 ::
  T422 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du468 v0
  = let v1 = d446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d324 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d124 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v3)) v4
name470 = "Algebra.Bundles.Monoid._.setoid"
d470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T422 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d470 v0 v1 v2 = du470 v2
du470 :: T422 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du470 v0
  = let v1 = d446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d324 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name472 = "Algebra.Bundles.Monoid._.sym"
d472 :: T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d472 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0)))))
name474 = "Algebra.Bundles.Monoid._.trans"
d474 ::
  T422 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d474 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0)))))
name476 = "Algebra.Bundles.Monoid._.∙-cong"
d476 ::
  T422 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d476 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0))))
name478 = "Algebra.Bundles.Monoid._.∙-congʳ"
d478 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d478 v0 v1 v2 = du478 v2
du478 ::
  T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du478 v0
  = let v1 = d446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d324 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name480 = "Algebra.Bundles.Monoid._.∙-congˡ"
d480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d480 v0 v1 v2 = du480 v2
du480 ::
  T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du480 v0
  = let v1 = d446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d324 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name482 = "Algebra.Bundles.Monoid.semigroup"
d482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> T80
d482 v0 v1 v2 = du482 v2
du482 :: T422 -> T80
du482 v0
  = coe
      C877 (d442 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d324 (coe d446 (coe v0)))
name486 = "Algebra.Bundles.Monoid._.magma"
d486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> T30
d486 v0 v1 v2 = du486 v2
du486 :: T422 -> T30
du486 v0 = coe du128 (coe du482 (coe v0))
name488 = "Algebra.Bundles.Monoid._.rawMagma"
d488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> T8
d488 v0 v1 v2 = du488 v2
du488 :: T422 -> T8
du488 v0
  = let v1 = coe du482 (coe v0) in coe du74 (coe du128 (coe v1))
name490 = "Algebra.Bundles.Monoid.rawMonoid"
d490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> T394
d490 v0 v1 v2 = du490 v2
du490 :: T422 -> T394
du490 v0 = coe C4379 (d442 (coe v0)) (d444 (coe v0))
name496 = "Algebra.Bundles.CommutativeMonoid"
d496 a0 a1 = ()
data T496
  = C5649 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T362
name512 = "Algebra.Bundles.CommutativeMonoid.Carrier"
d512 :: T496 -> ()
d512 = erased
name514 = "Algebra.Bundles.CommutativeMonoid._≈_"
d514 :: T496 -> AgdaAny -> AgdaAny -> ()
d514 = erased
name516 = "Algebra.Bundles.CommutativeMonoid._∙_"
d516 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny
d516 v0
  = case coe v0 of
      C5649 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name518 = "Algebra.Bundles.CommutativeMonoid.ε"
d518 :: T496 -> AgdaAny
d518 v0
  = case coe v0 of
      C5649 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name520 = "Algebra.Bundles.CommutativeMonoid.isCommutativeMonoid"
d520 :: T496 -> MAlonzo.Code.Algebra.Structures.T362
d520 v0
  = case coe v0 of
      C5649 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name524 = "Algebra.Bundles.CommutativeMonoid._.assoc"
d524 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d524 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0))))
name526 = "Algebra.Bundles.CommutativeMonoid._.comm"
d526 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny
d526 v0
  = coe MAlonzo.Code.Algebra.Structures.d374 (coe d520 (coe v0))
name528 = "Algebra.Bundles.CommutativeMonoid._.identity"
d528 :: T496 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0)))
name530 = "Algebra.Bundles.CommutativeMonoid._.identityʳ"
d530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> AgdaAny -> AgdaAny
d530 v0 v1 v2 = du530 v2
du530 :: T496 -> AgdaAny -> AgdaAny
du530 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name532 = "Algebra.Bundles.CommutativeMonoid._.identityˡ"
d532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> AgdaAny -> AgdaAny
d532 v0 v1 v2 = du532 v2
du532 :: T496 -> AgdaAny -> AgdaAny
du532 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name534
  = "Algebra.Bundles.CommutativeMonoid._.isCommutativeSemigroup"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Algebra.Structures.T192
d534 v0 v1 v2 = du534 v2
du534 :: T496 -> MAlonzo.Code.Algebra.Structures.T192
du534 v0
  = coe MAlonzo.Code.Algebra.Structures.du410 (coe d520 (coe v0))
name536 = "Algebra.Bundles.CommutativeMonoid._.isEquivalence"
d536 :: T496 -> MAlonzo.Code.Relation.Binary.Structures.T26
d536 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0)))))
name538 = "Algebra.Bundles.CommutativeMonoid._.isMagma"
d538 :: T496 -> MAlonzo.Code.Algebra.Structures.T80
d538 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0))))
name540 = "Algebra.Bundles.CommutativeMonoid._.isMonoid"
d540 :: T496 -> MAlonzo.Code.Algebra.Structures.T314
d540 v0
  = coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0))
name542
  = "Algebra.Bundles.CommutativeMonoid._.isPartialEquivalence"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Relation.Binary.Structures.T16
d542 v0 v1 v2 = du542 v2
du542 :: T496 -> MAlonzo.Code.Relation.Binary.Structures.T16
du542 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4))
name544 = "Algebra.Bundles.CommutativeMonoid._.isSemigroup"
d544 :: T496 -> MAlonzo.Code.Algebra.Structures.T116
d544 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0)))
name546 = "Algebra.Bundles.CommutativeMonoid._.refl"
d546 :: T496 -> AgdaAny -> AgdaAny
d546 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0))))))
name548 = "Algebra.Bundles.CommutativeMonoid._.reflexive"
d548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d548 v0 v1 v2 = du548 v2
du548 ::
  T496 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du548 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4)) v5
name550 = "Algebra.Bundles.CommutativeMonoid._.setoid"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d550 v0 v1 v2 = du550 v2
du550 :: T496 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du550 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name552 = "Algebra.Bundles.CommutativeMonoid._.sym"
d552 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d552 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0))))))
name554 = "Algebra.Bundles.CommutativeMonoid._.trans"
d554 ::
  T496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d554 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0))))))
name556 = "Algebra.Bundles.CommutativeMonoid._.∙-cong"
d556 ::
  T496 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d556 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0)))))
name558 = "Algebra.Bundles.CommutativeMonoid._.∙-congʳ"
d558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d558 v0 v1 v2 = du558 v2
du558 ::
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du558 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name560 = "Algebra.Bundles.CommutativeMonoid._.∙-congˡ"
d560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d560 v0 v1 v2 = du560 v2
du560 ::
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du560 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d372 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name562 = "Algebra.Bundles.CommutativeMonoid.monoid"
d562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T422
d562 v0 v1 v2 = du562 v2
du562 :: T496 -> T422
du562 v0
  = coe
      C4689 (d516 (coe v0)) (d518 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d372 (coe d520 (coe v0)))
name566 = "Algebra.Bundles.CommutativeMonoid._.magma"
d566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T30
d566 v0 v1 v2 = du566 v2
du566 :: T496 -> T30
du566 v0
  = let v1 = coe du562 (coe v0) in coe du128 (coe du482 (coe v1))
name568 = "Algebra.Bundles.CommutativeMonoid._.rawMagma"
d568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T8
d568 v0 v1 v2 = du568 v2
du568 :: T496 -> T8
du568 v0
  = let v1 = coe du562 (coe v0) in
    let v2 = coe du482 (coe v1) in coe du74 (coe du128 (coe v2))
name570 = "Algebra.Bundles.CommutativeMonoid._.rawMonoid"
d570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T394
d570 v0 v1 v2 = du570 v2
du570 :: T496 -> T394
du570 v0 = coe du490 (coe du562 (coe v0))
name572 = "Algebra.Bundles.CommutativeMonoid._.semigroup"
d572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T80
d572 v0 v1 v2 = du572 v2
du572 :: T496 -> T80
du572 v0 = coe du482 (coe du562 (coe v0))
name574 = "Algebra.Bundles.CommutativeMonoid.commutativeSemigroup"
d574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T202
d574 v0 v1 v2 = du574 v2
du574 :: T496 -> T202
du574 v0
  = coe
      C2287 (d516 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du410 (coe d520 (coe v0)))
name580 = "Algebra.Bundles.IdempotentCommutativeMonoid"
d580 a0 a1 = ()
data T580
  = C6733 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T416
name596 = "Algebra.Bundles.IdempotentCommutativeMonoid.Carrier"
d596 :: T580 -> ()
d596 = erased
name598 = "Algebra.Bundles.IdempotentCommutativeMonoid._≈_"
d598 :: T580 -> AgdaAny -> AgdaAny -> ()
d598 = erased
name600 = "Algebra.Bundles.IdempotentCommutativeMonoid._∙_"
d600 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny
d600 v0
  = case coe v0 of
      C6733 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name602 = "Algebra.Bundles.IdempotentCommutativeMonoid.ε"
d602 :: T580 -> AgdaAny
d602 v0
  = case coe v0 of
      C6733 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name604
  = "Algebra.Bundles.IdempotentCommutativeMonoid.isIdempotentCommutativeMonoid"
d604 :: T580 -> MAlonzo.Code.Algebra.Structures.T416
d604 v0
  = case coe v0 of
      C6733 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name608 = "Algebra.Bundles.IdempotentCommutativeMonoid._.assoc"
d608 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))
name610 = "Algebra.Bundles.IdempotentCommutativeMonoid._.comm"
d610 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny
d610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))
name612 = "Algebra.Bundles.IdempotentCommutativeMonoid._.idem"
d612 :: T580 -> AgdaAny -> AgdaAny
d612 v0
  = coe MAlonzo.Code.Algebra.Structures.d428 (coe d604 (coe v0))
name614 = "Algebra.Bundles.IdempotentCommutativeMonoid._.identity"
d614 :: T580 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d614 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))
name616 = "Algebra.Bundles.IdempotentCommutativeMonoid._.identityʳ"
d616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> AgdaAny -> AgdaAny
d616 v0 v1 v2 = du616 v2
du616 :: T580 -> AgdaAny -> AgdaAny
du616 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name618 = "Algebra.Bundles.IdempotentCommutativeMonoid._.identityˡ"
d618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> AgdaAny -> AgdaAny
d618 v0 v1 v2 = du618 v2
du618 :: T580 -> AgdaAny -> AgdaAny
du618 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name620
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isCommutativeMonoid"
d620 :: T580 -> MAlonzo.Code.Algebra.Structures.T362
d620 v0
  = coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))
name622
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isCommutativeSemigroup"
d622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> MAlonzo.Code.Algebra.Structures.T192
d622 v0 v1 v2 = du622 v2
du622 :: T580 -> MAlonzo.Code.Algebra.Structures.T192
du622 v0
  = let v1 = d604 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d426 (coe v1))
name624
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isEquivalence"
d624 :: T580 -> MAlonzo.Code.Relation.Binary.Structures.T26
d624 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))))
name626 = "Algebra.Bundles.IdempotentCommutativeMonoid._.isMagma"
d626 :: T580 -> MAlonzo.Code.Algebra.Structures.T80
d626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))
name628 = "Algebra.Bundles.IdempotentCommutativeMonoid._.isMonoid"
d628 :: T580 -> MAlonzo.Code.Algebra.Structures.T314
d628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))
name630
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isPartialEquivalence"
d630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> MAlonzo.Code.Relation.Binary.Structures.T16
d630 v0 v1 v2 = du630 v2
du630 :: T580 -> MAlonzo.Code.Relation.Binary.Structures.T16
du630 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5))
name632
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isSemigroup"
d632 :: T580 -> MAlonzo.Code.Algebra.Structures.T116
d632 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))
name634 = "Algebra.Bundles.IdempotentCommutativeMonoid._.refl"
d634 :: T580 -> AgdaAny -> AgdaAny
d634 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))))
name636 = "Algebra.Bundles.IdempotentCommutativeMonoid._.reflexive"
d636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d636 v0 v1 v2 = du636 v2
du636 ::
  T580 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du636 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5)) v6
name638 = "Algebra.Bundles.IdempotentCommutativeMonoid._.setoid"
d638 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d638 v0 v1 v2 = du638 v2
du638 :: T580 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du638 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name640 = "Algebra.Bundles.IdempotentCommutativeMonoid._.sym"
d640 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d640 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))))
name642 = "Algebra.Bundles.IdempotentCommutativeMonoid._.trans"
d642 ::
  T580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d642 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))))
name644 = "Algebra.Bundles.IdempotentCommutativeMonoid._.∙-cong"
d644 ::
  T580 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))))
name646 = "Algebra.Bundles.IdempotentCommutativeMonoid._.∙-congʳ"
d646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d646 v0 v1 v2 = du646 v2
du646 ::
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du646 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name648 = "Algebra.Bundles.IdempotentCommutativeMonoid._.∙-congˡ"
d648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d648 v0 v1 v2 = du648 v2
du648 ::
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du648 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name650
  = "Algebra.Bundles.IdempotentCommutativeMonoid.commutativeMonoid"
d650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T496
d650 v0 v1 v2 = du650 v2
du650 :: T580 -> T496
du650 v0
  = coe
      C5649 (d600 (coe v0)) (d602 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))
name654 = "Algebra.Bundles.IdempotentCommutativeMonoid._.magma"
d654 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T30
d654 v0 v1 v2 = du654 v2
du654 :: T580 -> T30
du654 v0
  = let v1 = coe du650 (coe v0) in
    let v2 = coe du562 (coe v1) in coe du128 (coe du482 (coe v2))
name656 = "Algebra.Bundles.IdempotentCommutativeMonoid._.monoid"
d656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T422
d656 v0 v1 v2 = du656 v2
du656 :: T580 -> T422
du656 v0 = coe du562 (coe du650 (coe v0))
name658 = "Algebra.Bundles.IdempotentCommutativeMonoid._.rawMagma"
d658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T8
d658 v0 v1 v2 = du658 v2
du658 :: T580 -> T8
du658 v0
  = let v1 = coe du650 (coe v0) in
    let v2 = coe du562 (coe v1) in
    let v3 = coe du482 (coe v2) in coe du74 (coe du128 (coe v3))
name660 = "Algebra.Bundles.IdempotentCommutativeMonoid._.rawMonoid"
d660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T394
d660 v0 v1 v2 = du660 v2
du660 :: T580 -> T394
du660 v0
  = let v1 = coe du650 (coe v0) in coe du490 (coe du562 (coe v1))
name662 = "Algebra.Bundles.IdempotentCommutativeMonoid._.semigroup"
d662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T80
d662 v0 v1 v2 = du662 v2
du662 :: T580 -> T80
du662 v0
  = let v1 = coe du650 (coe v0) in coe du482 (coe du562 (coe v1))
name664 = "Algebra.Bundles.BoundedLattice"
d664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d664 = erased
name674 = "Algebra.Bundles.BoundedLattice._∙_"
d674 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny
d674 v0 = coe d600 (coe v0)
name676 = "Algebra.Bundles.BoundedLattice._≈_"
d676 :: T580 -> AgdaAny -> AgdaAny -> ()
d676 = erased
name678 = "Algebra.Bundles.BoundedLattice.Carrier"
d678 :: T580 -> ()
d678 = erased
name680 = "Algebra.Bundles.BoundedLattice.assoc"
d680 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d680 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))
name682 = "Algebra.Bundles.BoundedLattice.comm"
d682 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny
d682 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))
name684 = "Algebra.Bundles.BoundedLattice.commutativeMonoid"
d684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T496
d684 v0 v1 v2 = du684 v2
du684 :: T580 -> T496
du684 v0 = coe du650 (coe v0)
name686 = "Algebra.Bundles.BoundedLattice.idem"
d686 :: T580 -> AgdaAny -> AgdaAny
d686 v0
  = coe MAlonzo.Code.Algebra.Structures.d428 (coe d604 (coe v0))
name688 = "Algebra.Bundles.BoundedLattice.identity"
d688 :: T580 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d688 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))
name690 = "Algebra.Bundles.BoundedLattice.identityʳ"
d690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> AgdaAny -> AgdaAny
d690 v0 v1 v2 = du690 v2
du690 :: T580 -> AgdaAny -> AgdaAny
du690 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name692 = "Algebra.Bundles.BoundedLattice.identityˡ"
d692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> AgdaAny -> AgdaAny
d692 v0 v1 v2 = du692 v2
du692 :: T580 -> AgdaAny -> AgdaAny
du692 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name694 = "Algebra.Bundles.BoundedLattice.isCommutativeMonoid"
d694 :: T580 -> MAlonzo.Code.Algebra.Structures.T362
d694 v0
  = coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))
name696 = "Algebra.Bundles.BoundedLattice.isCommutativeSemigroup"
d696 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> MAlonzo.Code.Algebra.Structures.T192
d696 v0 v1 v2 = du696 v2
du696 :: T580 -> MAlonzo.Code.Algebra.Structures.T192
du696 v0
  = let v1 = d604 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d426 (coe v1))
name698 = "Algebra.Bundles.BoundedLattice.isEquivalence"
d698 :: T580 -> MAlonzo.Code.Relation.Binary.Structures.T26
d698 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))))
name700
  = "Algebra.Bundles.BoundedLattice.isIdempotentCommutativeMonoid"
d700 :: T580 -> MAlonzo.Code.Algebra.Structures.T416
d700 v0 = coe d604 (coe v0)
name702 = "Algebra.Bundles.BoundedLattice.isMagma"
d702 :: T580 -> MAlonzo.Code.Algebra.Structures.T80
d702 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))
name704 = "Algebra.Bundles.BoundedLattice.isMonoid"
d704 :: T580 -> MAlonzo.Code.Algebra.Structures.T314
d704 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))
name706 = "Algebra.Bundles.BoundedLattice.isPartialEquivalence"
d706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> MAlonzo.Code.Relation.Binary.Structures.T16
d706 v0 v1 v2 = du706 v2
du706 :: T580 -> MAlonzo.Code.Relation.Binary.Structures.T16
du706 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5))
name708 = "Algebra.Bundles.BoundedLattice.isSemigroup"
d708 :: T580 -> MAlonzo.Code.Algebra.Structures.T116
d708 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))
name710 = "Algebra.Bundles.BoundedLattice.magma"
d710 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T30
d710 v0 v1 v2 = du710 v2
du710 :: T580 -> T30
du710 v0
  = let v1 = coe du650 (coe v0) in
    let v2 = coe du562 (coe v1) in coe du128 (coe du482 (coe v2))
name712 = "Algebra.Bundles.BoundedLattice.monoid"
d712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T422
d712 v0 v1 v2 = du712 v2
du712 :: T580 -> T422
du712 v0 = coe du562 (coe du650 (coe v0))
name714 = "Algebra.Bundles.BoundedLattice.rawMagma"
d714 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T8
d714 v0 v1 v2 = du714 v2
du714 :: T580 -> T8
du714 v0
  = let v1 = coe du650 (coe v0) in
    let v2 = coe du562 (coe v1) in
    let v3 = coe du482 (coe v2) in coe du74 (coe du128 (coe v3))
name716 = "Algebra.Bundles.BoundedLattice.rawMonoid"
d716 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T394
d716 v0 v1 v2 = du716 v2
du716 :: T580 -> T394
du716 v0
  = let v1 = coe du650 (coe v0) in coe du490 (coe du562 (coe v1))
name718 = "Algebra.Bundles.BoundedLattice.refl"
d718 :: T580 -> AgdaAny -> AgdaAny
d718 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))))
name720 = "Algebra.Bundles.BoundedLattice.reflexive"
d720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d720 v0 v1 v2 = du720 v2
du720 ::
  T580 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du720 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5)) v6
name722 = "Algebra.Bundles.BoundedLattice.semigroup"
d722 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T580 -> T80
d722 v0 v1 v2 = du722 v2
du722 :: T580 -> T80
du722 v0
  = let v1 = coe du650 (coe v0) in coe du482 (coe du562 (coe v1))
name724 = "Algebra.Bundles.BoundedLattice.setoid"
d724 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d724 v0 v1 v2 = du724 v2
du724 :: T580 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du724 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name726 = "Algebra.Bundles.BoundedLattice.sym"
d726 :: T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d726 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))))
name728 = "Algebra.Bundles.BoundedLattice.trans"
d728 ::
  T580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d728 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0)))))))
name730 = "Algebra.Bundles.BoundedLattice.ε"
d730 :: T580 -> AgdaAny
d730 v0 = coe d602 (coe v0)
name732 = "Algebra.Bundles.BoundedLattice.∙-cong"
d732 ::
  T580 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d426 (coe d604 (coe v0))))))
name734 = "Algebra.Bundles.BoundedLattice.∙-congʳ"
d734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d734 v0 v1 v2 = du734 v2
du734 ::
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du734 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name736 = "Algebra.Bundles.BoundedLattice.∙-congˡ"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d736 v0 v1 v2 = du736 v2
du736 ::
  T580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du736 v0
  = let v1 = d604 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d426 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name742 = "Algebra.Bundles.RawGroup"
d742 a0 a1 = ()
data T742
  = C7753 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny)
name758 = "Algebra.Bundles.RawGroup.Carrier"
d758 :: T742 -> ()
d758 = erased
name760 = "Algebra.Bundles.RawGroup._≈_"
d760 :: T742 -> AgdaAny -> AgdaAny -> ()
d760 = erased
name762 = "Algebra.Bundles.RawGroup._∙_"
d762 :: T742 -> AgdaAny -> AgdaAny -> AgdaAny
d762 v0
  = case coe v0 of
      C7753 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name764 = "Algebra.Bundles.RawGroup.ε"
d764 :: T742 -> AgdaAny
d764 v0
  = case coe v0 of
      C7753 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name766 = "Algebra.Bundles.RawGroup._⁻¹"
d766 :: T742 -> AgdaAny -> AgdaAny
d766 v0
  = case coe v0 of
      C7753 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name768 = "Algebra.Bundles.RawGroup.rawMonoid"
d768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T742 -> T394
d768 v0 v1 v2 = du768 v2
du768 :: T742 -> T394
du768 v0 = coe C4379 (d762 (coe v0)) (d764 (coe v0))
name772 = "Algebra.Bundles.RawGroup._.rawMagma"
d772 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T742 -> T8
d772 v0 v1 v2 = du772 v2
du772 :: T742 -> T8
du772 v0 = coe du416 (coe du768 (coe v0))
name778 = "Algebra.Bundles.Group"
d778 a0 a1 = ()
data T778
  = C8157 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny) MAlonzo.Code.Algebra.Structures.T528
name796 = "Algebra.Bundles.Group.Carrier"
d796 :: T778 -> ()
d796 = erased
name798 = "Algebra.Bundles.Group._≈_"
d798 :: T778 -> AgdaAny -> AgdaAny -> ()
d798 = erased
name800 = "Algebra.Bundles.Group._∙_"
d800 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny
d800 v0
  = case coe v0 of
      C8157 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name802 = "Algebra.Bundles.Group.ε"
d802 :: T778 -> AgdaAny
d802 v0
  = case coe v0 of
      C8157 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name804 = "Algebra.Bundles.Group._⁻¹"
d804 :: T778 -> AgdaAny -> AgdaAny
d804 v0
  = case coe v0 of
      C8157 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name806 = "Algebra.Bundles.Group.isGroup"
d806 :: T778 -> MAlonzo.Code.Algebra.Structures.T528
d806 v0
  = case coe v0 of
      C8157 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name810 = "Algebra.Bundles.Group._._-_"
d810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> AgdaAny -> AgdaAny -> AgdaAny
d810 v0 v1 v2 = du810 v2
du810 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny
du810 v0
  = let v1 = d800 (coe v0) in
    let v2 = d804 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name812 = "Algebra.Bundles.Group._.assoc"
d812 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d812 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0))))
name814 = "Algebra.Bundles.Group._.identity"
d814 :: T778 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d814 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0)))
name816 = "Algebra.Bundles.Group._.identityʳ"
d816 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> AgdaAny -> AgdaAny
d816 v0 v1 v2 = du816 v2
du816 :: T778 -> AgdaAny -> AgdaAny
du816 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name818 = "Algebra.Bundles.Group._.identityˡ"
d818 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> AgdaAny -> AgdaAny
d818 v0 v1 v2 = du818 v2
du818 :: T778 -> AgdaAny -> AgdaAny
du818 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name820 = "Algebra.Bundles.Group._.inverse"
d820 :: T778 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d820 v0
  = coe MAlonzo.Code.Algebra.Structures.d544 (coe d806 (coe v0))
name822 = "Algebra.Bundles.Group._.inverseʳ"
d822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> AgdaAny -> AgdaAny
d822 v0 v1 v2 = du822 v2
du822 :: T778 -> AgdaAny -> AgdaAny
du822 v0
  = let v1 = d806 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v1))
name824 = "Algebra.Bundles.Group._.inverseˡ"
d824 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> AgdaAny -> AgdaAny
d824 v0 v1 v2 = du824 v2
du824 :: T778 -> AgdaAny -> AgdaAny
du824 v0
  = let v1 = d806 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v1))
name826 = "Algebra.Bundles.Group._.isEquivalence"
d826 :: T778 -> MAlonzo.Code.Relation.Binary.Structures.T26
d826 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0)))))
name828 = "Algebra.Bundles.Group._.isMagma"
d828 :: T778 -> MAlonzo.Code.Algebra.Structures.T80
d828 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0))))
name830 = "Algebra.Bundles.Group._.isMonoid"
d830 :: T778 -> MAlonzo.Code.Algebra.Structures.T314
d830 v0
  = coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0))
name832 = "Algebra.Bundles.Group._.isPartialEquivalence"
d832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> MAlonzo.Code.Relation.Binary.Structures.T16
d832 v0 v1 v2 = du832 v2
du832 :: T778 -> MAlonzo.Code.Relation.Binary.Structures.T16
du832 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4))
name834 = "Algebra.Bundles.Group._.isSemigroup"
d834 :: T778 -> MAlonzo.Code.Algebra.Structures.T116
d834 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0)))
name836 = "Algebra.Bundles.Group._.refl"
d836 :: T778 -> AgdaAny -> AgdaAny
d836 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0))))))
name838 = "Algebra.Bundles.Group._.reflexive"
d838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d838 v0 v1 v2 = du838 v2
du838 ::
  T778 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du838 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4)) v5
name840 = "Algebra.Bundles.Group._.setoid"
d840 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d840 v0 v1 v2 = du840 v2
du840 :: T778 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du840 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name842 = "Algebra.Bundles.Group._.sym"
d842 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d842 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0))))))
name844 = "Algebra.Bundles.Group._.trans"
d844 ::
  T778 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d844 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0))))))
name846 = "Algebra.Bundles.Group._.uniqueʳ-⁻¹"
d846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d846 v0 v1 v2 = du846 v2
du846 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du846 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du602 (coe d800 (coe v0))
      (coe d802 (coe v0)) (coe d804 (coe v0)) (coe d806 (coe v0))
name848 = "Algebra.Bundles.Group._.uniqueˡ-⁻¹"
d848 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d848 v0 v1 v2 = du848 v2
du848 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du848 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du596 (coe d800 (coe v0))
      (coe d802 (coe v0)) (coe d804 (coe v0)) (coe d806 (coe v0))
name850 = "Algebra.Bundles.Group._.⁻¹-cong"
d850 :: T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d850 v0
  = coe MAlonzo.Code.Algebra.Structures.d546 (coe d806 (coe v0))
name852 = "Algebra.Bundles.Group._.∙-cong"
d852 ::
  T778 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d852 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0)))))
name854 = "Algebra.Bundles.Group._.∙-congʳ"
d854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d854 v0 v1 v2 = du854 v2
du854 ::
  T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du854 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name856 = "Algebra.Bundles.Group._.∙-congˡ"
d856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d856 v0 v1 v2 = du856 v2
du856 ::
  T778 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du856 v0
  = let v1 = d806 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d542 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name858 = "Algebra.Bundles.Group.rawGroup"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> T742
d858 v0 v1 v2 = du858 v2
du858 :: T778 -> T742
du858 v0
  = coe C7753 (d800 (coe v0)) (d802 (coe v0)) (d804 (coe v0))
name860 = "Algebra.Bundles.Group.monoid"
d860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> T422
d860 v0 v1 v2 = du860 v2
du860 :: T778 -> T422
du860 v0
  = coe
      C4689 (d800 (coe v0)) (d802 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d542 (coe d806 (coe v0)))
name864 = "Algebra.Bundles.Group._.magma"
d864 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> T30
d864 v0 v1 v2 = du864 v2
du864 :: T778 -> T30
du864 v0
  = let v1 = coe du860 (coe v0) in coe du128 (coe du482 (coe v1))
name866 = "Algebra.Bundles.Group._.rawMagma"
d866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> T8
d866 v0 v1 v2 = du866 v2
du866 :: T778 -> T8
du866 v0
  = let v1 = coe du860 (coe v0) in
    let v2 = coe du482 (coe v1) in coe du74 (coe du128 (coe v2))
name868 = "Algebra.Bundles.Group._.rawMonoid"
d868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> T394
d868 v0 v1 v2 = du868 v2
du868 :: T778 -> T394
du868 v0 = coe du490 (coe du860 (coe v0))
name870 = "Algebra.Bundles.Group._.semigroup"
d870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T778 -> T80
d870 v0 v1 v2 = du870 v2
du870 :: T778 -> T80
du870 v0 = coe du482 (coe du860 (coe v0))
name876 = "Algebra.Bundles.AbelianGroup"
d876 a0 a1 = ()
data T876
  = C9391 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny) MAlonzo.Code.Algebra.Structures.T610
name894 = "Algebra.Bundles.AbelianGroup.Carrier"
d894 :: T876 -> ()
d894 = erased
name896 = "Algebra.Bundles.AbelianGroup._≈_"
d896 :: T876 -> AgdaAny -> AgdaAny -> ()
d896 = erased
name898 = "Algebra.Bundles.AbelianGroup._∙_"
d898 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny
d898 v0
  = case coe v0 of
      C9391 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name900 = "Algebra.Bundles.AbelianGroup.ε"
d900 :: T876 -> AgdaAny
d900 v0
  = case coe v0 of
      C9391 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name902 = "Algebra.Bundles.AbelianGroup._⁻¹"
d902 :: T876 -> AgdaAny -> AgdaAny
d902 v0
  = case coe v0 of
      C9391 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name904 = "Algebra.Bundles.AbelianGroup.isAbelianGroup"
d904 :: T876 -> MAlonzo.Code.Algebra.Structures.T610
d904 v0
  = case coe v0 of
      C9391 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name908 = "Algebra.Bundles.AbelianGroup._._-_"
d908 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> AgdaAny -> AgdaAny -> AgdaAny
d908 v0 v1 v2 = du908 v2
du908 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny
du908 v0
  = let v1 = d898 (coe v0) in
    let v2 = d902 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name910 = "Algebra.Bundles.AbelianGroup._.assoc"
d910 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d910 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d542
            (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))))
name912 = "Algebra.Bundles.AbelianGroup._.comm"
d912 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny
d912 v0
  = coe MAlonzo.Code.Algebra.Structures.d624 (coe d904 (coe v0))
name914 = "Algebra.Bundles.AbelianGroup._.identity"
d914 :: T876 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d914 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d542
         (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0))))
name916 = "Algebra.Bundles.AbelianGroup._.identityʳ"
d916 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> AgdaAny -> AgdaAny
d916 v0 v1 v2 = du916 v2
du916 :: T876 -> AgdaAny -> AgdaAny
du916 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name918 = "Algebra.Bundles.AbelianGroup._.identityˡ"
d918 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> AgdaAny -> AgdaAny
d918 v0 v1 v2 = du918 v2
du918 :: T876 -> AgdaAny -> AgdaAny
du918 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name920 = "Algebra.Bundles.AbelianGroup._.inverse"
d920 :: T876 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d920 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d544
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))
name922 = "Algebra.Bundles.AbelianGroup._.inverseʳ"
d922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> AgdaAny -> AgdaAny
d922 v0 v1 v2 = du922 v2
du922 :: T876 -> AgdaAny -> AgdaAny
du922 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v2))
name924 = "Algebra.Bundles.AbelianGroup._.inverseˡ"
d924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> AgdaAny -> AgdaAny
d924 v0 v1 v2 = du924 v2
du924 :: T876 -> AgdaAny -> AgdaAny
du924 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v2))
name926 = "Algebra.Bundles.AbelianGroup._.isCommutativeMonoid"
d926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> MAlonzo.Code.Algebra.Structures.T362
d926 v0 v1 v2 = du926 v2
du926 :: T876 -> MAlonzo.Code.Algebra.Structures.T362
du926 v0
  = coe MAlonzo.Code.Algebra.Structures.du676 (coe d904 (coe v0))
name928 = "Algebra.Bundles.AbelianGroup._.isCommutativeSemigroup"
d928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> MAlonzo.Code.Algebra.Structures.T192
d928 v0 v1 v2 = du928 v2
du928 :: T876 -> MAlonzo.Code.Algebra.Structures.T192
du928 v0
  = let v1 = d904 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.du676 (coe v1))
name930 = "Algebra.Bundles.AbelianGroup._.isEquivalence"
d930 :: T876 -> MAlonzo.Code.Relation.Binary.Structures.T26
d930 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0))))))
name932 = "Algebra.Bundles.AbelianGroup._.isGroup"
d932 :: T876 -> MAlonzo.Code.Algebra.Structures.T528
d932 v0
  = coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0))
name934 = "Algebra.Bundles.AbelianGroup._.isMagma"
d934 :: T876 -> MAlonzo.Code.Algebra.Structures.T80
d934 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d542
            (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))))
name936 = "Algebra.Bundles.AbelianGroup._.isMonoid"
d936 :: T876 -> MAlonzo.Code.Algebra.Structures.T314
d936 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d542
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))
name938 = "Algebra.Bundles.AbelianGroup._.isPartialEquivalence"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> MAlonzo.Code.Relation.Binary.Structures.T16
d938 v0 v1 v2 = du938 v2
du938 :: T876 -> MAlonzo.Code.Relation.Binary.Structures.T16
du938 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5))
name940 = "Algebra.Bundles.AbelianGroup._.isSemigroup"
d940 :: T876 -> MAlonzo.Code.Algebra.Structures.T116
d940 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d542
         (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0))))
name942 = "Algebra.Bundles.AbelianGroup._.refl"
d942 :: T876 -> AgdaAny -> AgdaAny
d942 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))))))
name944 = "Algebra.Bundles.AbelianGroup._.reflexive"
d944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d944 v0 v1 v2 = du944 v2
du944 ::
  T876 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du944 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5)) v6
name946 = "Algebra.Bundles.AbelianGroup._.setoid"
d946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d946 v0 v1 v2 = du946 v2
du946 :: T876 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du946 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name948 = "Algebra.Bundles.AbelianGroup._.sym"
d948 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d948 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))))))
name950 = "Algebra.Bundles.AbelianGroup._.trans"
d950 ::
  T876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d950 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))))))
name952 = "Algebra.Bundles.AbelianGroup._.uniqueʳ-⁻¹"
d952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d952 v0 v1 v2 = du952 v2
du952 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du952 v0
  = let v1 = d898 (coe v0) in
    let v2 = d900 (coe v0) in
    let v3 = d902 (coe v0) in
    let v4 = d904 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du602 (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe v4))
name954 = "Algebra.Bundles.AbelianGroup._.uniqueˡ-⁻¹"
d954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d954 v0 v1 v2 = du954 v2
du954 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du954 v0
  = let v1 = d898 (coe v0) in
    let v2 = d900 (coe v0) in
    let v3 = d902 (coe v0) in
    let v4 = d904 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du596 (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe v4))
name956 = "Algebra.Bundles.AbelianGroup._.⁻¹-cong"
d956 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d956 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d546
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))
name958 = "Algebra.Bundles.AbelianGroup._.∙-cong"
d958 ::
  T876 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d958 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0))))))
name960 = "Algebra.Bundles.AbelianGroup._.∙-congʳ"
d960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d960 v0 v1 v2 = du960 v2
du960 ::
  T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du960 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name962 = "Algebra.Bundles.AbelianGroup._.∙-congˡ"
d962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d962 v0 v1 v2 = du962 v2
du962 ::
  T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du962 v0
  = let v1 = d904 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d622 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d542 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name964 = "Algebra.Bundles.AbelianGroup.group"
d964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T778
d964 v0 v1 v2 = du964 v2
du964 :: T876 -> T778
du964 v0
  = coe
      C8157 (d898 (coe v0)) (d900 (coe v0)) (d902 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d622 (coe d904 (coe v0)))
name968 = "Algebra.Bundles.AbelianGroup._.magma"
d968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T30
d968 v0 v1 v2 = du968 v2
du968 :: T876 -> T30
du968 v0
  = let v1 = coe du964 (coe v0) in
    let v2 = coe du860 (coe v1) in coe du128 (coe du482 (coe v2))
name970 = "Algebra.Bundles.AbelianGroup._.monoid"
d970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T422
d970 v0 v1 v2 = du970 v2
du970 :: T876 -> T422
du970 v0 = coe du860 (coe du964 (coe v0))
name972 = "Algebra.Bundles.AbelianGroup._.rawGroup"
d972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T742
d972 v0 v1 v2 = du972 v2
du972 :: T876 -> T742
du972 v0 = coe du858 (coe du964 (coe v0))
name974 = "Algebra.Bundles.AbelianGroup._.rawMagma"
d974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T8
d974 v0 v1 v2 = du974 v2
du974 :: T876 -> T8
du974 v0
  = let v1 = coe du964 (coe v0) in
    let v2 = coe du860 (coe v1) in
    let v3 = coe du482 (coe v2) in coe du74 (coe du128 (coe v3))
name976 = "Algebra.Bundles.AbelianGroup._.rawMonoid"
d976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T394
d976 v0 v1 v2 = du976 v2
du976 :: T876 -> T394
du976 v0
  = let v1 = coe du964 (coe v0) in coe du490 (coe du860 (coe v1))
name978 = "Algebra.Bundles.AbelianGroup._.semigroup"
d978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T80
d978 v0 v1 v2 = du978 v2
du978 :: T876 -> T80
du978 v0
  = let v1 = coe du964 (coe v0) in coe du482 (coe du860 (coe v1))
name980 = "Algebra.Bundles.AbelianGroup.commutativeMonoid"
d980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T496
d980 v0 v1 v2 = du980 v2
du980 :: T876 -> T496
du980 v0
  = coe
      C5649 (d898 (coe v0)) (d900 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du676 (coe d904 (coe v0)))
name984 = "Algebra.Bundles.AbelianGroup._.commutativeSemigroup"
d984 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T876 -> T202
d984 v0 v1 v2 = du984 v2
du984 :: T876 -> T202
du984 v0 = coe du574 (coe du980 (coe v0))
name990 = "Algebra.Bundles.Lattice"
d990 a0 a1 = ()
data T990
  = C10791 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny)
           MAlonzo.Code.Algebra.Structures.T686
name1006 = "Algebra.Bundles.Lattice.Carrier"
d1006 :: T990 -> ()
d1006 = erased
name1008 = "Algebra.Bundles.Lattice._≈_"
d1008 :: T990 -> AgdaAny -> AgdaAny -> ()
d1008 = erased
name1010 = "Algebra.Bundles.Lattice._∨_"
d1010 :: T990 -> AgdaAny -> AgdaAny -> AgdaAny
d1010 v0
  = case coe v0 of
      C10791 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1012 = "Algebra.Bundles.Lattice._∧_"
d1012 :: T990 -> AgdaAny -> AgdaAny -> AgdaAny
d1012 v0
  = case coe v0 of
      C10791 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1014 = "Algebra.Bundles.Lattice.isLattice"
d1014 :: T990 -> MAlonzo.Code.Algebra.Structures.T686
d1014 v0
  = case coe v0 of
      C10791 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1018 = "Algebra.Bundles.Lattice._.absorptive"
d1018 :: T990 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1018 v0
  = coe MAlonzo.Code.Algebra.Structures.d722 (coe d1014 (coe v0))
name1020 = "Algebra.Bundles.Lattice._.isEquivalence"
d1020 :: T990 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1020 v0
  = coe MAlonzo.Code.Algebra.Structures.d708 (coe d1014 (coe v0))
name1022 = "Algebra.Bundles.Lattice._.isPartialEquivalence"
d1022 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T990 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1022 v0 v1 v2 = du1022 v2
du1022 :: T990 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1022 v0
  = let v1 = d1014 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d708 (coe v1))
name1024 = "Algebra.Bundles.Lattice._.refl"
d1024 :: T990 -> AgdaAny -> AgdaAny
d1024 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe MAlonzo.Code.Algebra.Structures.d708 (coe d1014 (coe v0)))
name1026 = "Algebra.Bundles.Lattice._.reflexive"
d1026 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T990 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1026 v0 v1 v2 = du1026 v2
du1026 ::
  T990 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1026 v0
  = let v1 = d1014 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d708 (coe v1)) v2
name1028 = "Algebra.Bundles.Lattice._.sym"
d1028 :: T990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1028 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe MAlonzo.Code.Algebra.Structures.d708 (coe d1014 (coe v0)))
name1030 = "Algebra.Bundles.Lattice._.trans"
d1030 ::
  T990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1030 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe MAlonzo.Code.Algebra.Structures.d708 (coe d1014 (coe v0)))
name1032 = "Algebra.Bundles.Lattice._.∧-absorbs-∨"
d1032 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T990 -> AgdaAny -> AgdaAny -> AgdaAny
d1032 v0 v1 v2 = du1032 v2
du1032 :: T990 -> AgdaAny -> AgdaAny -> AgdaAny
du1032 v0
  = let v1 = d1014 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d722 (coe v1))
name1034 = "Algebra.Bundles.Lattice._.∧-assoc"
d1034 :: T990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1034 v0
  = coe MAlonzo.Code.Algebra.Structures.d718 (coe d1014 (coe v0))
name1036 = "Algebra.Bundles.Lattice._.∧-comm"
d1036 :: T990 -> AgdaAny -> AgdaAny -> AgdaAny
d1036 v0
  = coe MAlonzo.Code.Algebra.Structures.d716 (coe d1014 (coe v0))
name1038 = "Algebra.Bundles.Lattice._.∧-cong"
d1038 ::
  T990 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1038 v0
  = coe MAlonzo.Code.Algebra.Structures.d720 (coe d1014 (coe v0))
name1040 = "Algebra.Bundles.Lattice._.∧-congʳ"
d1040 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1040 v0 v1 v2 = du1040 v2
du1040 ::
  T990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1040 v0
  = coe MAlonzo.Code.Algebra.Structures.du744 (coe d1014 (coe v0))
name1042 = "Algebra.Bundles.Lattice._.∧-congˡ"
d1042 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1042 v0 v1 v2 = du1042 v2
du1042 ::
  T990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1042 v0
  = coe MAlonzo.Code.Algebra.Structures.du740 (coe d1014 (coe v0))
name1044 = "Algebra.Bundles.Lattice._.∨-absorbs-∧"
d1044 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T990 -> AgdaAny -> AgdaAny -> AgdaAny
d1044 v0 v1 v2 = du1044 v2
du1044 :: T990 -> AgdaAny -> AgdaAny -> AgdaAny
du1044 v0
  = let v1 = d1014 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d722 (coe v1))
name1046 = "Algebra.Bundles.Lattice._.∨-assoc"
d1046 :: T990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1046 v0
  = coe MAlonzo.Code.Algebra.Structures.d712 (coe d1014 (coe v0))
name1048 = "Algebra.Bundles.Lattice._.∨-comm"
d1048 :: T990 -> AgdaAny -> AgdaAny -> AgdaAny
d1048 v0
  = coe MAlonzo.Code.Algebra.Structures.d710 (coe d1014 (coe v0))
name1050 = "Algebra.Bundles.Lattice._.∨-cong"
d1050 ::
  T990 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1050 v0
  = coe MAlonzo.Code.Algebra.Structures.d714 (coe d1014 (coe v0))
name1052 = "Algebra.Bundles.Lattice._.∨-congʳ"
d1052 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1052 v0 v1 v2 = du1052 v2
du1052 ::
  T990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1052 v0
  = coe MAlonzo.Code.Algebra.Structures.du752 (coe d1014 (coe v0))
name1054 = "Algebra.Bundles.Lattice._.∨-congˡ"
d1054 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1054 v0 v1 v2 = du1054 v2
du1054 ::
  T990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1054 v0
  = coe MAlonzo.Code.Algebra.Structures.du748 (coe d1014 (coe v0))
name1056 = "Algebra.Bundles.Lattice.setoid"
d1056 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T990 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1056 v0 v1 v2 = du1056 v2
du1056 :: T990 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1056 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (MAlonzo.Code.Algebra.Structures.d708 (coe d1014 (coe v0)))
name1062 = "Algebra.Bundles.DistributiveLattice"
d1062 a0 a1 = ()
data T1062
  = C11717 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny)
           MAlonzo.Code.Algebra.Structures.T760
name1078 = "Algebra.Bundles.DistributiveLattice.Carrier"
d1078 :: T1062 -> ()
d1078 = erased
name1080 = "Algebra.Bundles.DistributiveLattice._≈_"
d1080 :: T1062 -> AgdaAny -> AgdaAny -> ()
d1080 = erased
name1082 = "Algebra.Bundles.DistributiveLattice._∨_"
d1082 :: T1062 -> AgdaAny -> AgdaAny -> AgdaAny
d1082 v0
  = case coe v0 of
      C11717 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1084 = "Algebra.Bundles.DistributiveLattice._∧_"
d1084 :: T1062 -> AgdaAny -> AgdaAny -> AgdaAny
d1084 v0
  = case coe v0 of
      C11717 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1086
  = "Algebra.Bundles.DistributiveLattice.isDistributiveLattice"
d1086 :: T1062 -> MAlonzo.Code.Algebra.Structures.T760
d1086 v0
  = case coe v0 of
      C11717 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1090 = "Algebra.Bundles.DistributiveLattice._.absorptive"
d1090 :: T1062 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1090 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d722
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0)))
name1092 = "Algebra.Bundles.DistributiveLattice._.isEquivalence"
d1092 :: T1062 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1092 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d708
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0)))
name1094 = "Algebra.Bundles.DistributiveLattice._.isLattice"
d1094 :: T1062 -> MAlonzo.Code.Algebra.Structures.T686
d1094 v0
  = coe MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0))
name1096
  = "Algebra.Bundles.DistributiveLattice._.isPartialEquivalence"
d1096 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1062 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1096 v0 v1 v2 = du1096 v2
du1096 :: T1062 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1096 v0
  = let v1 = d1086 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d770 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d708 (coe v2))
name1098 = "Algebra.Bundles.DistributiveLattice._.refl"
d1098 :: T1062 -> AgdaAny -> AgdaAny
d1098 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0))))
name1100 = "Algebra.Bundles.DistributiveLattice._.reflexive"
d1100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1062 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1100 v0 v1 v2 = du1100 v2
du1100 ::
  T1062 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1100 v0
  = let v1 = d1086 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d770 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d708 (coe v2)) v3
name1102 = "Algebra.Bundles.DistributiveLattice._.sym"
d1102 :: T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1102 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0))))
name1104 = "Algebra.Bundles.DistributiveLattice._.trans"
d1104 ::
  T1062 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1104 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0))))
name1106 = "Algebra.Bundles.DistributiveLattice._.∧-absorbs-∨"
d1106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1062 -> AgdaAny -> AgdaAny -> AgdaAny
d1106 v0 v1 v2 = du1106 v2
du1106 :: T1062 -> AgdaAny -> AgdaAny -> AgdaAny
du1106 v0
  = let v1 = d1086 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d770 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d722 (coe v2))
name1108 = "Algebra.Bundles.DistributiveLattice._.∧-assoc"
d1108 :: T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d718
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0)))
name1110 = "Algebra.Bundles.DistributiveLattice._.∧-comm"
d1110 :: T1062 -> AgdaAny -> AgdaAny -> AgdaAny
d1110 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d716
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0)))
name1112 = "Algebra.Bundles.DistributiveLattice._.∧-cong"
d1112 ::
  T1062 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1112 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d720
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0)))
name1114 = "Algebra.Bundles.DistributiveLattice._.∧-congʳ"
d1114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1114 v0 v1 v2 = du1114 v2
du1114 ::
  T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1114 v0
  = let v1 = d1086 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du744
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v1))
name1116 = "Algebra.Bundles.DistributiveLattice._.∧-congˡ"
d1116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1116 v0 v1 v2 = du1116 v2
du1116 ::
  T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1116 v0
  = let v1 = d1086 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du740
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v1))
name1118 = "Algebra.Bundles.DistributiveLattice._.∨-absorbs-∧"
d1118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1062 -> AgdaAny -> AgdaAny -> AgdaAny
d1118 v0 v1 v2 = du1118 v2
du1118 :: T1062 -> AgdaAny -> AgdaAny -> AgdaAny
du1118 v0
  = let v1 = d1086 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d770 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d722 (coe v2))
name1120 = "Algebra.Bundles.DistributiveLattice._.∨-assoc"
d1120 :: T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1120 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d712
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0)))
name1122 = "Algebra.Bundles.DistributiveLattice._.∨-comm"
d1122 :: T1062 -> AgdaAny -> AgdaAny -> AgdaAny
d1122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d710
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0)))
name1124 = "Algebra.Bundles.DistributiveLattice._.∨-cong"
d1124 ::
  T1062 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d714
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0)))
name1126 = "Algebra.Bundles.DistributiveLattice._.∨-congʳ"
d1126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1126 v0 v1 v2 = du1126 v2
du1126 ::
  T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1126 v0
  = let v1 = d1086 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du752
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v1))
name1128 = "Algebra.Bundles.DistributiveLattice._.∨-congˡ"
d1128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1128 v0 v1 v2 = du1128 v2
du1128 ::
  T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1128 v0
  = let v1 = d1086 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du748
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v1))
name1130 = "Algebra.Bundles.DistributiveLattice._.∨-distribʳ-∧"
d1130 :: T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1130 v0
  = coe MAlonzo.Code.Algebra.Structures.d772 (coe d1086 (coe v0))
name1132 = "Algebra.Bundles.DistributiveLattice._.∨-∧-distribʳ"
d1132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1132 v0 v1 v2 = du1132 v2
du1132 :: T1062 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1132 v0
  = coe MAlonzo.Code.Algebra.Structures.du814 (coe d1086 (coe v0))
name1134 = "Algebra.Bundles.DistributiveLattice.lattice"
d1134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1062 -> T990
d1134 v0 v1 v2 = du1134 v2
du1134 :: T1062 -> T990
du1134 v0
  = coe
      C10791 (d1082 (coe v0)) (d1084 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d770 (coe d1086 (coe v0)))
name1138 = "Algebra.Bundles.DistributiveLattice._.setoid"
d1138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1062 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1138 v0 v1 v2 = du1138 v2
du1138 :: T1062 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1138 v0 = coe du1056 (coe du1134 (coe v0))
name1144 = "Algebra.Bundles.NearSemiring"
d1144 a0 a1 = ()
data T1144
  = C12823 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
           MAlonzo.Code.Algebra.Structures.T822
name1162 = "Algebra.Bundles.NearSemiring.Carrier"
d1162 :: T1144 -> ()
d1162 = erased
name1164 = "Algebra.Bundles.NearSemiring._≈_"
d1164 :: T1144 -> AgdaAny -> AgdaAny -> ()
d1164 = erased
name1166 = "Algebra.Bundles.NearSemiring._+_"
d1166 :: T1144 -> AgdaAny -> AgdaAny -> AgdaAny
d1166 v0
  = case coe v0 of
      C12823 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1168 = "Algebra.Bundles.NearSemiring._*_"
d1168 :: T1144 -> AgdaAny -> AgdaAny -> AgdaAny
d1168 v0
  = case coe v0 of
      C12823 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1170 = "Algebra.Bundles.NearSemiring.0#"
d1170 :: T1144 -> AgdaAny
d1170 v0
  = case coe v0 of
      C12823 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1172 = "Algebra.Bundles.NearSemiring.isNearSemiring"
d1172 :: T1144 -> MAlonzo.Code.Algebra.Structures.T822
d1172 v0
  = case coe v0 of
      C12823 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1176 = "Algebra.Bundles.NearSemiring._.assoc"
d1176 :: T1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1176 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe MAlonzo.Code.Algebra.Structures.d840 (coe d1172 (coe v0)))
name1178 = "Algebra.Bundles.NearSemiring._.∙-cong"
d1178 ::
  T1144 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1178 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d840 (coe d1172 (coe v0))))
name1180 = "Algebra.Bundles.NearSemiring._.∙-congʳ"
d1180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1180 v0 v1 v2 = du1180 v2
du1180 ::
  T1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1180 v0
  = let v1 = d1172 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d840 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name1182 = "Algebra.Bundles.NearSemiring._.∙-congˡ"
d1182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1182 v0 v1 v2 = du1182 v2
du1182 ::
  T1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1182 v0
  = let v1 = d1172 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d840 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v2))
name1184 = "Algebra.Bundles.NearSemiring._.isMagma"
d1184 :: T1144 -> MAlonzo.Code.Algebra.Structures.T80
d1184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe MAlonzo.Code.Algebra.Structures.d840 (coe d1172 (coe v0)))
name1186 = "Algebra.Bundles.NearSemiring._.*-isSemigroup"
d1186 :: T1144 -> MAlonzo.Code.Algebra.Structures.T116
d1186 v0
  = coe MAlonzo.Code.Algebra.Structures.d840 (coe d1172 (coe v0))
name1188 = "Algebra.Bundles.NearSemiring._.assoc"
d1188 :: T1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1188 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1172 (coe v0))))
name1190 = "Algebra.Bundles.NearSemiring._.∙-cong"
d1190 ::
  T1144 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1172 (coe v0)))))
name1192 = "Algebra.Bundles.NearSemiring._.∙-congʳ"
d1192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1192 v0 v1 v2 = du1192 v2
du1192 ::
  T1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1192 v0
  = let v1 = d1172 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1194 = "Algebra.Bundles.NearSemiring._.∙-congˡ"
d1194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1194 v0 v1 v2 = du1194 v2
du1194 ::
  T1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1194 v0
  = let v1 = d1172 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1196 = "Algebra.Bundles.NearSemiring._.identity"
d1196 :: T1144 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1196 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1172 (coe v0)))
name1198 = "Algebra.Bundles.NearSemiring._.identityʳ"
d1198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1144 -> AgdaAny -> AgdaAny
d1198 v0 v1 v2 = du1198 v2
du1198 :: T1144 -> AgdaAny -> AgdaAny
du1198 v0
  = let v1 = d1172 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name1200 = "Algebra.Bundles.NearSemiring._.identityˡ"
d1200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1144 -> AgdaAny -> AgdaAny
d1200 v0 v1 v2 = du1200 v2
du1200 :: T1144 -> AgdaAny -> AgdaAny
du1200 v0
  = let v1 = d1172 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name1202 = "Algebra.Bundles.NearSemiring._.isMagma"
d1202 :: T1144 -> MAlonzo.Code.Algebra.Structures.T80
d1202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1172 (coe v0))))
name1204 = "Algebra.Bundles.NearSemiring._.+-isMonoid"
d1204 :: T1144 -> MAlonzo.Code.Algebra.Structures.T314
d1204 v0
  = coe MAlonzo.Code.Algebra.Structures.d838 (coe d1172 (coe v0))
name1206 = "Algebra.Bundles.NearSemiring._.isSemigroup"
d1206 :: T1144 -> MAlonzo.Code.Algebra.Structures.T116
d1206 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1172 (coe v0)))
name1208 = "Algebra.Bundles.NearSemiring._.distribʳ"
d1208 :: T1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1208 v0
  = coe MAlonzo.Code.Algebra.Structures.d842 (coe d1172 (coe v0))
name1210 = "Algebra.Bundles.NearSemiring._.isEquivalence"
d1210 :: T1144 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1210 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1172 (coe v0)))))
name1212 = "Algebra.Bundles.NearSemiring._.isPartialEquivalence"
d1212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1144 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1212 v0 v1 v2 = du1212 v2
du1212 :: T1144 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1212 v0
  = let v1 = d1172 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4))
name1214 = "Algebra.Bundles.NearSemiring._.refl"
d1214 :: T1144 -> AgdaAny -> AgdaAny
d1214 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1172 (coe v0))))))
name1216 = "Algebra.Bundles.NearSemiring._.reflexive"
d1216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1144 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1216 v0 v1 v2 = du1216 v2
du1216 ::
  T1144 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1216 v0
  = let v1 = d1172 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v4)) v5
name1218 = "Algebra.Bundles.NearSemiring._.setoid"
d1218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1144 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1218 v0 v1 v2 = du1218 v2
du1218 :: T1144 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1218 v0
  = let v1 = d1172 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1220 = "Algebra.Bundles.NearSemiring._.sym"
d1220 :: T1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1220 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1172 (coe v0))))))
name1222 = "Algebra.Bundles.NearSemiring._.trans"
d1222 ::
  T1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1222 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d838 (coe d1172 (coe v0))))))
name1224 = "Algebra.Bundles.NearSemiring._.zeroˡ"
d1224 :: T1144 -> AgdaAny -> AgdaAny
d1224 v0
  = coe MAlonzo.Code.Algebra.Structures.d844 (coe d1172 (coe v0))
name1226 = "Algebra.Bundles.NearSemiring.+-monoid"
d1226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1144 -> T422
d1226 v0 v1 v2 = du1226 v2
du1226 :: T1144 -> T422
du1226 v0
  = coe
      C4689 (d1166 (coe v0)) (d1170 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d838 (coe d1172 (coe v0)))
name1230 = "Algebra.Bundles.NearSemiring._.magma"
d1230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1144 -> T30
d1230 v0 v1 v2 = du1230 v2
du1230 :: T1144 -> T30
du1230 v0
  = let v1 = coe du1226 (coe v0) in coe du128 (coe du482 (coe v1))
name1232 = "Algebra.Bundles.NearSemiring._.rawMagma"
d1232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1144 -> T8
d1232 v0 v1 v2 = du1232 v2
du1232 :: T1144 -> T8
du1232 v0
  = let v1 = coe du1226 (coe v0) in
    let v2 = coe du482 (coe v1) in coe du74 (coe du128 (coe v2))
name1234 = "Algebra.Bundles.NearSemiring._.rawMonoid"
d1234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1144 -> T394
d1234 v0 v1 v2 = du1234 v2
du1234 :: T1144 -> T394
du1234 v0 = coe du490 (coe du1226 (coe v0))
name1236 = "Algebra.Bundles.NearSemiring._.semigroup"
d1236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1144 -> T80
d1236 v0 v1 v2 = du1236 v2
du1236 :: T1144 -> T80
du1236 v0 = coe du482 (coe du1226 (coe v0))
name1238 = "Algebra.Bundles.NearSemiring.*-semigroup"
d1238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1144 -> T80
d1238 v0 v1 v2 = du1238 v2
du1238 :: T1144 -> T80
du1238 v0
  = coe
      C877 (d1168 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d840 (coe d1172 (coe v0)))
name1242 = "Algebra.Bundles.NearSemiring._.magma"
d1242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1144 -> T30
d1242 v0 v1 v2 = du1242 v2
du1242 :: T1144 -> T30
du1242 v0 = coe du128 (coe du1238 (coe v0))
name1244 = "Algebra.Bundles.NearSemiring._.rawMagma"
d1244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1144 -> T8
d1244 v0 v1 v2 = du1244 v2
du1244 :: T1144 -> T8
du1244 v0
  = let v1 = coe du1238 (coe v0) in coe du74 (coe du128 (coe v1))
name1250 = "Algebra.Bundles.SemiringWithoutOne"
d1250 a0 a1 = ()
data T1250
  = C14177 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
           MAlonzo.Code.Algebra.Structures.T898
name1268 = "Algebra.Bundles.SemiringWithoutOne.Carrier"
d1268 :: T1250 -> ()
d1268 = erased
name1270 = "Algebra.Bundles.SemiringWithoutOne._≈_"
d1270 :: T1250 -> AgdaAny -> AgdaAny -> ()
d1270 = erased
name1272 = "Algebra.Bundles.SemiringWithoutOne._+_"
d1272 :: T1250 -> AgdaAny -> AgdaAny -> AgdaAny
d1272 v0
  = case coe v0 of
      C14177 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1274 = "Algebra.Bundles.SemiringWithoutOne._*_"
d1274 :: T1250 -> AgdaAny -> AgdaAny -> AgdaAny
d1274 v0
  = case coe v0 of
      C14177 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1276 = "Algebra.Bundles.SemiringWithoutOne.0#"
d1276 :: T1250 -> AgdaAny
d1276 v0
  = case coe v0 of
      C14177 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1278
  = "Algebra.Bundles.SemiringWithoutOne.isSemiringWithoutOne"
d1278 :: T1250 -> MAlonzo.Code.Algebra.Structures.T898
d1278 v0
  = case coe v0 of
      C14177 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1282 = "Algebra.Bundles.SemiringWithoutOne._.assoc"
d1282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1282 v0 v1 v2 = du1282 v2
du1282 :: T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1282 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe MAlonzo.Code.Algebra.Structures.d916 (coe v1))
name1284 = "Algebra.Bundles.SemiringWithoutOne._.∙-cong"
d1284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1284 v0 v1 v2 = du1284 v2
du1284 ::
  T1250 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1284 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d916 (coe v1)))
name1286 = "Algebra.Bundles.SemiringWithoutOne._.∙-congʳ"
d1286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1286 v0 v1 v2 = du1286 v2
du1286 ::
  T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1286 v0
  = let v1 = d1278 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d840 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1288 = "Algebra.Bundles.SemiringWithoutOne._.∙-congˡ"
d1288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1288 v0 v1 v2 = du1288 v2
du1288 ::
  T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1288 v0
  = let v1 = d1278 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d840 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1290 = "Algebra.Bundles.SemiringWithoutOne._.isMagma"
d1290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> MAlonzo.Code.Algebra.Structures.T80
d1290 v0 v1 v2 = du1290 v2
du1290 :: T1250 -> MAlonzo.Code.Algebra.Structures.T80
du1290 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe MAlonzo.Code.Algebra.Structures.d916 (coe v1))
name1292 = "Algebra.Bundles.SemiringWithoutOne._.*-isSemigroup"
d1292 :: T1250 -> MAlonzo.Code.Algebra.Structures.T116
d1292 v0
  = coe MAlonzo.Code.Algebra.Structures.d916 (coe d1278 (coe v0))
name1294 = "Algebra.Bundles.SemiringWithoutOne._.assoc"
d1294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1294 v0 v1 v2 = du1294 v2
du1294 :: T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1294 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1))))
name1296 = "Algebra.Bundles.SemiringWithoutOne._.comm"
d1296 :: T1250 -> AgdaAny -> AgdaAny -> AgdaAny
d1296 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe MAlonzo.Code.Algebra.Structures.d914 (coe d1278 (coe v0)))
name1298 = "Algebra.Bundles.SemiringWithoutOne._.∙-cong"
d1298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1298 v0 v1 v2 = du1298 v2
du1298 ::
  T1250 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1298 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1)))))
name1300 = "Algebra.Bundles.SemiringWithoutOne._.∙-congʳ"
d1300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1300 v0 v1 v2 = du1300 v2
du1300 ::
  T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1300 v0
  = let v1 = d1278 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1302 = "Algebra.Bundles.SemiringWithoutOne._.∙-congˡ"
d1302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1302 v0 v1 v2 = du1302 v2
du1302 ::
  T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1302 v0
  = let v1 = d1278 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1304 = "Algebra.Bundles.SemiringWithoutOne._.identity"
d1304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1304 v0 v1 v2 = du1304 v2
du1304 :: T1250 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1304 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1)))
name1306 = "Algebra.Bundles.SemiringWithoutOne._.identityʳ"
d1306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> AgdaAny -> AgdaAny
d1306 v0 v1 v2 = du1306 v2
du1306 :: T1250 -> AgdaAny -> AgdaAny
du1306 v0
  = let v1 = d1278 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name1308 = "Algebra.Bundles.SemiringWithoutOne._.identityˡ"
d1308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> AgdaAny -> AgdaAny
d1308 v0 v1 v2 = du1308 v2
du1308 :: T1250 -> AgdaAny -> AgdaAny
du1308 v0
  = let v1 = d1278 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name1310
  = "Algebra.Bundles.SemiringWithoutOne._.+-isCommutativeMonoid"
d1310 :: T1250 -> MAlonzo.Code.Algebra.Structures.T362
d1310 v0
  = coe MAlonzo.Code.Algebra.Structures.d914 (coe d1278 (coe v0))
name1312
  = "Algebra.Bundles.SemiringWithoutOne._.isCommutativeSemigroup"
d1312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> MAlonzo.Code.Algebra.Structures.T192
d1312 v0 v1 v2 = du1312 v2
du1312 :: T1250 -> MAlonzo.Code.Algebra.Structures.T192
du1312 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1))
name1314 = "Algebra.Bundles.SemiringWithoutOne._.isMagma"
d1314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> MAlonzo.Code.Algebra.Structures.T80
d1314 v0 v1 v2 = du1314 v2
du1314 :: T1250 -> MAlonzo.Code.Algebra.Structures.T80
du1314 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1))))
name1316 = "Algebra.Bundles.SemiringWithoutOne._.isMonoid"
d1316 :: T1250 -> MAlonzo.Code.Algebra.Structures.T314
d1316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe MAlonzo.Code.Algebra.Structures.d914 (coe d1278 (coe v0)))
name1318 = "Algebra.Bundles.SemiringWithoutOne._.isSemigroup"
d1318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> MAlonzo.Code.Algebra.Structures.T116
d1318 v0 v1 v2 = du1318 v2
du1318 :: T1250 -> MAlonzo.Code.Algebra.Structures.T116
du1318 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1)))
name1320 = "Algebra.Bundles.SemiringWithoutOne._.distrib"
d1320 :: T1250 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1320 v0
  = coe MAlonzo.Code.Algebra.Structures.d918 (coe d1278 (coe v0))
name1322 = "Algebra.Bundles.SemiringWithoutOne._.distribʳ"
d1322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1322 v0 v1 v2 = du1322 v2
du1322 :: T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1322 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d918 (coe v1))
name1324 = "Algebra.Bundles.SemiringWithoutOne._.isEquivalence"
d1324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1324 v0 v1 v2 = du1324 v2
du1324 :: T1250 -> MAlonzo.Code.Relation.Binary.Structures.T26
du1324 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1)))))
name1326 = "Algebra.Bundles.SemiringWithoutOne._.isNearSemiring"
d1326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> MAlonzo.Code.Algebra.Structures.T822
d1326 v0 v1 v2 = du1326 v2
du1326 :: T1250 -> MAlonzo.Code.Algebra.Structures.T822
du1326 v0
  = coe MAlonzo.Code.Algebra.Structures.du934 (coe d1278 (coe v0))
name1328
  = "Algebra.Bundles.SemiringWithoutOne._.isPartialEquivalence"
d1328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1328 v0 v1 v2 = du1328 v2
du1328 :: T1250 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1328 v0
  = let v1 = d1278 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5))
name1330 = "Algebra.Bundles.SemiringWithoutOne._.refl"
d1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> AgdaAny -> AgdaAny
d1330 v0 v1 v2 = du1330 v2
du1330 :: T1250 -> AgdaAny -> AgdaAny
du1330 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1))))))
name1332 = "Algebra.Bundles.SemiringWithoutOne._.reflexive"
d1332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1332 v0 v1 v2 = du1332 v2
du1332 ::
  T1250 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1332 v0
  = let v1 = d1278 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5)) v6
name1334 = "Algebra.Bundles.SemiringWithoutOne._.setoid"
d1334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1334 v0 v1 v2 = du1334 v2
du1334 :: T1250 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1334 v0
  = let v1 = d1278 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1336 = "Algebra.Bundles.SemiringWithoutOne._.sym"
d1336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1336 v0 v1 v2 = du1336 v2
du1336 :: T1250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1336 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1))))))
name1338 = "Algebra.Bundles.SemiringWithoutOne._.trans"
d1338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1338 v0 v1 v2 = du1338 v2
du1338 ::
  T1250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1338 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d914 (coe v1))))))
name1340 = "Algebra.Bundles.SemiringWithoutOne._.zero"
d1340 :: T1250 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1340 v0
  = coe MAlonzo.Code.Algebra.Structures.d920 (coe d1278 (coe v0))
name1342 = "Algebra.Bundles.SemiringWithoutOne._.zeroʳ"
d1342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> AgdaAny -> AgdaAny
d1342 v0 v1 v2 = du1342 v2
du1342 :: T1250 -> AgdaAny -> AgdaAny
du1342 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v1))
name1344 = "Algebra.Bundles.SemiringWithoutOne._.zeroˡ"
d1344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> AgdaAny -> AgdaAny
d1344 v0 v1 v2 = du1344 v2
du1344 :: T1250 -> AgdaAny -> AgdaAny
du1344 v0
  = let v1 = d1278 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v1))
name1346 = "Algebra.Bundles.SemiringWithoutOne.nearSemiring"
d1346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> T1144
d1346 v0 v1 v2 = du1346 v2
du1346 :: T1250 -> T1144
du1346 v0
  = coe
      C12823 (d1272 (coe v0)) (d1274 (coe v0)) (d1276 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du934 (coe d1278 (coe v0)))
name1350 = "Algebra.Bundles.SemiringWithoutOne._.magma"
d1350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> T30
d1350 v0 v1 v2 = du1350 v2
du1350 :: T1250 -> T30
du1350 v0
  = let v1 = coe du1346 (coe v0) in coe du128 (coe du1238 (coe v1))
name1352 = "Algebra.Bundles.SemiringWithoutOne._.rawMagma"
d1352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> T8
d1352 v0 v1 v2 = du1352 v2
du1352 :: T1250 -> T8
du1352 v0
  = let v1 = coe du1346 (coe v0) in
    let v2 = coe du1238 (coe v1) in coe du74 (coe du128 (coe v2))
name1354 = "Algebra.Bundles.SemiringWithoutOne._.*-semigroup"
d1354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> T80
d1354 v0 v1 v2 = du1354 v2
du1354 :: T1250 -> T80
du1354 v0 = coe du1238 (coe du1346 (coe v0))
name1356 = "Algebra.Bundles.SemiringWithoutOne._.magma"
d1356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> T30
d1356 v0 v1 v2 = du1356 v2
du1356 :: T1250 -> T30
du1356 v0
  = let v1 = coe du1346 (coe v0) in
    let v2 = coe du1226 (coe v1) in coe du128 (coe du482 (coe v2))
name1358 = "Algebra.Bundles.SemiringWithoutOne._.+-monoid"
d1358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> T422
d1358 v0 v1 v2 = du1358 v2
du1358 :: T1250 -> T422
du1358 v0 = coe du1226 (coe du1346 (coe v0))
name1360 = "Algebra.Bundles.SemiringWithoutOne._.rawMagma"
d1360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> T8
d1360 v0 v1 v2 = du1360 v2
du1360 :: T1250 -> T8
du1360 v0
  = let v1 = coe du1346 (coe v0) in
    let v2 = coe du1226 (coe v1) in
    let v3 = coe du482 (coe v2) in coe du74 (coe du128 (coe v3))
name1362 = "Algebra.Bundles.SemiringWithoutOne._.rawMonoid"
d1362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> T394
d1362 v0 v1 v2 = du1362 v2
du1362 :: T1250 -> T394
du1362 v0
  = let v1 = coe du1346 (coe v0) in coe du490 (coe du1226 (coe v1))
name1364 = "Algebra.Bundles.SemiringWithoutOne._.semigroup"
d1364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> T80
d1364 v0 v1 v2 = du1364 v2
du1364 :: T1250 -> T80
du1364 v0
  = let v1 = coe du1346 (coe v0) in coe du482 (coe du1226 (coe v1))
name1366 = "Algebra.Bundles.SemiringWithoutOne.+-commutativeMonoid"
d1366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> T496
d1366 v0 v1 v2 = du1366 v2
du1366 :: T1250 -> T496
du1366 v0
  = coe
      C5649 (d1272 (coe v0)) (d1276 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d914 (coe d1278 (coe v0)))
name1370
  = "Algebra.Bundles.SemiringWithoutOne._.commutativeSemigroup"
d1370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1250 -> T202
d1370 v0 v1 v2 = du1370 v2
du1370 :: T1250 -> T202
du1370 v0 = coe du574 (coe du1366 (coe v0))
name1376 = "Algebra.Bundles.CommutativeSemiringWithoutOne"
d1376 a0 a1 = ()
data T1376
  = C15627 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
           MAlonzo.Code.Algebra.Structures.T988
name1394 = "Algebra.Bundles.CommutativeSemiringWithoutOne.Carrier"
d1394 :: T1376 -> ()
d1394 = erased
name1396 = "Algebra.Bundles.CommutativeSemiringWithoutOne._≈_"
d1396 :: T1376 -> AgdaAny -> AgdaAny -> ()
d1396 = erased
name1398 = "Algebra.Bundles.CommutativeSemiringWithoutOne._+_"
d1398 :: T1376 -> AgdaAny -> AgdaAny -> AgdaAny
d1398 v0
  = case coe v0 of
      C15627 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1400 = "Algebra.Bundles.CommutativeSemiringWithoutOne._*_"
d1400 :: T1376 -> AgdaAny -> AgdaAny -> AgdaAny
d1400 v0
  = case coe v0 of
      C15627 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1402 = "Algebra.Bundles.CommutativeSemiringWithoutOne.0#"
d1402 :: T1376 -> AgdaAny
d1402 v0
  = case coe v0 of
      C15627 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1404
  = "Algebra.Bundles.CommutativeSemiringWithoutOne.isCommutativeSemiringWithoutOne"
d1404 :: T1376 -> MAlonzo.Code.Algebra.Structures.T988
d1404 v0
  = case coe v0 of
      C15627 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1408 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.assoc"
d1408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1408 v0 v1 v2 = du1408 v2
du1408 :: T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1408 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe MAlonzo.Code.Algebra.Structures.d916 (coe v2))
name1410 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.*-comm"
d1410 :: T1376 -> AgdaAny -> AgdaAny -> AgdaAny
d1410 v0
  = coe MAlonzo.Code.Algebra.Structures.d1002 (coe d1404 (coe v0))
name1412 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-cong"
d1412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1412 v0 v1 v2 = du1412 v2
du1412 ::
  T1376 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1412 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe MAlonzo.Code.Algebra.Structures.d916 (coe v2)))
name1414
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congʳ"
d1414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1414 v0 v1 v2 = du1414 v2
du1414 ::
  T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1414 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d840 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1416
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congˡ"
d1416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1416 v0 v1 v2 = du1416 v2
du1416 ::
  T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1416 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d840 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1418
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isMagma"
d1418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> MAlonzo.Code.Algebra.Structures.T80
d1418 v0 v1 v2 = du1418 v2
du1418 :: T1376 -> MAlonzo.Code.Algebra.Structures.T80
du1418 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe MAlonzo.Code.Algebra.Structures.d916 (coe v2))
name1420
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.*-isSemigroup"
d1420 :: T1376 -> MAlonzo.Code.Algebra.Structures.T116
d1420 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d916
      (coe MAlonzo.Code.Algebra.Structures.d1000 (coe d1404 (coe v0)))
name1422 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.assoc"
d1422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1422 v0 v1 v2 = du1422 v2
du1422 :: T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1422 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2))))
name1424 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.comm"
d1424 :: T1376 -> AgdaAny -> AgdaAny -> AgdaAny
d1424 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe
         MAlonzo.Code.Algebra.Structures.d914
         (coe MAlonzo.Code.Algebra.Structures.d1000 (coe d1404 (coe v0))))
name1426 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-cong"
d1426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1426 v0 v1 v2 = du1426 v2
du1426 ::
  T1376 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1426 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2)))))
name1428
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congʳ"
d1428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1428 v0 v1 v2 = du1428 v2
du1428 ::
  T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1428 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1430
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congˡ"
d1430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1430 v0 v1 v2 = du1430 v2
du1430 ::
  T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1430 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1432
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.identity"
d1432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1432 v0 v1 v2 = du1432 v2
du1432 :: T1376 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1432 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2)))
name1434
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.identityʳ"
d1434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> AgdaAny -> AgdaAny
d1434 v0 v1 v2 = du1434 v2
du1434 :: T1376 -> AgdaAny -> AgdaAny
du1434 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name1436
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.identityˡ"
d1436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> AgdaAny -> AgdaAny
d1436 v0 v1 v2 = du1436 v2
du1436 :: T1376 -> AgdaAny -> AgdaAny
du1436 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name1438
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.+-isCommutativeMonoid"
d1438 :: T1376 -> MAlonzo.Code.Algebra.Structures.T362
d1438 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d914
      (coe MAlonzo.Code.Algebra.Structures.d1000 (coe d1404 (coe v0)))
name1440
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isCommutativeSemigroup"
d1440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> MAlonzo.Code.Algebra.Structures.T192
d1440 v0 v1 v2 = du1440 v2
du1440 :: T1376 -> MAlonzo.Code.Algebra.Structures.T192
du1440 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2))
name1442
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isMagma"
d1442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> MAlonzo.Code.Algebra.Structures.T80
d1442 v0 v1 v2 = du1442 v2
du1442 :: T1376 -> MAlonzo.Code.Algebra.Structures.T80
du1442 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2))))
name1444
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isMonoid"
d1444 :: T1376 -> MAlonzo.Code.Algebra.Structures.T314
d1444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe
         MAlonzo.Code.Algebra.Structures.d914
         (coe MAlonzo.Code.Algebra.Structures.d1000 (coe d1404 (coe v0))))
name1446
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isSemigroup"
d1446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> MAlonzo.Code.Algebra.Structures.T116
d1446 v0 v1 v2 = du1446 v2
du1446 :: T1376 -> MAlonzo.Code.Algebra.Structures.T116
du1446 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2)))
name1448
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.distrib"
d1448 :: T1376 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1448 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d918
      (coe MAlonzo.Code.Algebra.Structures.d1000 (coe d1404 (coe v0)))
name1450
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.distribʳ"
d1450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1450 v0 v1 v2 = du1450 v2
du1450 :: T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1450 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d918 (coe v2))
name1452
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isEquivalence"
d1452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1452 v0 v1 v2 = du1452 v2
du1452 :: T1376 -> MAlonzo.Code.Relation.Binary.Structures.T26
du1452 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2)))))
name1454
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isNearSemiring"
d1454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> MAlonzo.Code.Algebra.Structures.T822
d1454 v0 v1 v2 = du1454 v2
du1454 :: T1376 -> MAlonzo.Code.Algebra.Structures.T822
du1454 v0
  = let v1 = d1404 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.d1000 (coe v1))
name1456
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isPartialEquivalence"
d1456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1456 v0 v1 v2 = du1456 v2
du1456 :: T1376 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1456 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d124 (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v6))
name1458
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isSemiringWithoutOne"
d1458 :: T1376 -> MAlonzo.Code.Algebra.Structures.T898
d1458 v0
  = coe MAlonzo.Code.Algebra.Structures.d1000 (coe d1404 (coe v0))
name1460 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.refl"
d1460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> AgdaAny -> AgdaAny
d1460 v0 v1 v2 = du1460 v2
du1460 :: T1376 -> AgdaAny -> AgdaAny
du1460 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2))))))
name1462
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.reflexive"
d1462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1462 v0 v1 v2 = du1462 v2
du1462 ::
  T1376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1462 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d124 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v6)) v7
name1464 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.setoid"
d1464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1464 v0 v1 v2 = du1464 v2
du1464 :: T1376 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1464 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du934 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1466 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.sym"
d1466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1466 v0 v1 v2 = du1466 v2
du1466 :: T1376 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1466 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2))))))
name1468 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.trans"
d1468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1468 v0 v1 v2 = du1468 v2
du1468 ::
  T1376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1468 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe MAlonzo.Code.Algebra.Structures.d914 (coe v2))))))
name1470 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.zero"
d1470 :: T1376 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1470 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d920
      (coe MAlonzo.Code.Algebra.Structures.d1000 (coe d1404 (coe v0)))
name1472 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.zeroʳ"
d1472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> AgdaAny -> AgdaAny
d1472 v0 v1 v2 = du1472 v2
du1472 :: T1376 -> AgdaAny -> AgdaAny
du1472 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v2))
name1474 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.zeroˡ"
d1474 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> AgdaAny -> AgdaAny
d1474 v0 v1 v2 = du1474 v2
du1474 :: T1376 -> AgdaAny -> AgdaAny
du1474 v0
  = let v1 = d1404 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v2))
name1476
  = "Algebra.Bundles.CommutativeSemiringWithoutOne.semiringWithoutOne"
d1476 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> T1250
d1476 v0 v1 v2 = du1476 v2
du1476 :: T1376 -> T1250
du1476 v0
  = coe
      C14177 (d1398 (coe v0)) (d1400 (coe v0)) (d1402 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1000 (coe d1404 (coe v0)))
name1480 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.magma"
d1480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> T30
d1480 v0 v1 v2 = du1480 v2
du1480 :: T1376 -> T30
du1480 v0
  = let v1 = coe du1476 (coe v0) in
    let v2 = coe du1346 (coe v1) in coe du128 (coe du1238 (coe v2))
name1482
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.rawMagma"
d1482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> T8
d1482 v0 v1 v2 = du1482 v2
du1482 :: T1376 -> T8
du1482 v0
  = let v1 = coe du1476 (coe v0) in
    let v2 = coe du1346 (coe v1) in
    let v3 = coe du1238 (coe v2) in coe du74 (coe du128 (coe v3))
name1484
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.*-semigroup"
d1484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> T80
d1484 v0 v1 v2 = du1484 v2
du1484 :: T1376 -> T80
du1484 v0
  = let v1 = coe du1476 (coe v0) in coe du1238 (coe du1346 (coe v1))
name1486
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.+-commutativeMonoid"
d1486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> T496
d1486 v0 v1 v2 = du1486 v2
du1486 :: T1376 -> T496
du1486 v0 = coe du1366 (coe du1476 (coe v0))
name1488
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.commutativeSemigroup"
d1488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> T202
d1488 v0 v1 v2 = du1488 v2
du1488 :: T1376 -> T202
du1488 v0
  = let v1 = coe du1476 (coe v0) in coe du574 (coe du1366 (coe v1))
name1490 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.magma"
d1490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> T30
d1490 v0 v1 v2 = du1490 v2
du1490 :: T1376 -> T30
du1490 v0
  = let v1 = coe du1476 (coe v0) in
    let v2 = coe du1346 (coe v1) in
    let v3 = coe du1226 (coe v2) in coe du128 (coe du482 (coe v3))
name1492
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.+-monoid"
d1492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> T422
d1492 v0 v1 v2 = du1492 v2
du1492 :: T1376 -> T422
du1492 v0
  = let v1 = coe du1476 (coe v0) in coe du1226 (coe du1346 (coe v1))
name1494
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.rawMagma"
d1494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> T8
d1494 v0 v1 v2 = du1494 v2
du1494 :: T1376 -> T8
du1494 v0
  = let v1 = coe du1476 (coe v0) in
    let v2 = coe du1346 (coe v1) in
    let v3 = coe du1226 (coe v2) in
    let v4 = coe du482 (coe v3) in coe du74 (coe du128 (coe v4))
name1496
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.rawMonoid"
d1496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> T394
d1496 v0 v1 v2 = du1496 v2
du1496 :: T1376 -> T394
du1496 v0
  = let v1 = coe du1476 (coe v0) in
    let v2 = coe du1346 (coe v1) in coe du490 (coe du1226 (coe v2))
name1498
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.semigroup"
d1498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> T80
d1498 v0 v1 v2 = du1498 v2
du1498 :: T1376 -> T80
du1498 v0
  = let v1 = coe du1476 (coe v0) in
    let v2 = coe du1346 (coe v1) in coe du482 (coe du1226 (coe v2))
name1500
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.nearSemiring"
d1500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1376 -> T1144
d1500 v0 v1 v2 = du1500 v2
du1500 :: T1376 -> T1144
du1500 v0 = coe du1346 (coe du1476 (coe v0))
name1506 = "Algebra.Bundles.RawSemiring"
d1506 a0 a1 = ()
data T1506
  = C16783 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
name1524 = "Algebra.Bundles.RawSemiring.Carrier"
d1524 :: T1506 -> ()
d1524 = erased
name1526 = "Algebra.Bundles.RawSemiring._≈_"
d1526 :: T1506 -> AgdaAny -> AgdaAny -> ()
d1526 = erased
name1528 = "Algebra.Bundles.RawSemiring._+_"
d1528 :: T1506 -> AgdaAny -> AgdaAny -> AgdaAny
d1528 v0
  = case coe v0 of
      C16783 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1530 = "Algebra.Bundles.RawSemiring._*_"
d1530 :: T1506 -> AgdaAny -> AgdaAny -> AgdaAny
d1530 v0
  = case coe v0 of
      C16783 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1532 = "Algebra.Bundles.RawSemiring.0#"
d1532 :: T1506 -> AgdaAny
d1532 v0
  = case coe v0 of
      C16783 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1534 = "Algebra.Bundles.RawSemiring.1#"
d1534 :: T1506 -> AgdaAny
d1534 v0
  = case coe v0 of
      C16783 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1540 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero"
d1540 a0 a1 = ()
data T1540
  = C17121 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
           MAlonzo.Code.Algebra.Structures.T1078
name1560
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.Carrier"
d1560 :: T1540 -> ()
d1560 = erased
name1562 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._≈_"
d1562 :: T1540 -> AgdaAny -> AgdaAny -> ()
d1562 = erased
name1564 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._+_"
d1564 :: T1540 -> AgdaAny -> AgdaAny -> AgdaAny
d1564 v0
  = case coe v0 of
      C17121 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1566 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._*_"
d1566 :: T1540 -> AgdaAny -> AgdaAny -> AgdaAny
d1566 v0
  = case coe v0 of
      C17121 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1568 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.0#"
d1568 :: T1540 -> AgdaAny
d1568 v0
  = case coe v0 of
      C17121 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1570 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.1#"
d1570 :: T1540 -> AgdaAny
d1570 v0
  = case coe v0 of
      C17121 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1572
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.isSemiringWithoutAnnihilatingZero"
d1572 :: T1540 -> MAlonzo.Code.Algebra.Structures.T1078
d1572 v0
  = case coe v0 of
      C17121 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1576
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.assoc"
d1576 :: T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1576 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d1096 (coe d1572 (coe v0))))
name1578
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-cong"
d1578 ::
  T1540 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1578 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d1096 (coe d1572 (coe v0)))))
name1580
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congʳ"
d1580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1580 v0 v1 v2 = du1580 v2
du1580 ::
  T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1580 v0
  = let v1 = d1572 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1096 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1582
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congˡ"
d1582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1582 v0 v1 v2 = du1582 v2
du1582 ::
  T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1582 v0
  = let v1 = d1572 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1096 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name1584
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identity"
d1584 :: T1540 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1584 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe MAlonzo.Code.Algebra.Structures.d1096 (coe d1572 (coe v0)))
name1586
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityʳ"
d1586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> AgdaAny -> AgdaAny
d1586 v0 v1 v2 = du1586 v2
du1586 :: T1540 -> AgdaAny -> AgdaAny
du1586 v0
  = let v1 = d1572 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1096 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name1588
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityˡ"
d1588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> AgdaAny -> AgdaAny
d1588 v0 v1 v2 = du1588 v2
du1588 :: T1540 -> AgdaAny -> AgdaAny
du1588 v0
  = let v1 = d1572 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1096 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name1590
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isMagma"
d1590 :: T1540 -> MAlonzo.Code.Algebra.Structures.T80
d1590 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d1096 (coe d1572 (coe v0))))
name1592
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.*-isMonoid"
d1592 :: T1540 -> MAlonzo.Code.Algebra.Structures.T314
d1592 v0
  = coe MAlonzo.Code.Algebra.Structures.d1096 (coe d1572 (coe v0))
name1594
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isSemigroup"
d1594 :: T1540 -> MAlonzo.Code.Algebra.Structures.T116
d1594 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe MAlonzo.Code.Algebra.Structures.d1096 (coe d1572 (coe v0)))
name1596
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.assoc"
d1596 :: T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1596 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0)))))
name1598 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.comm"
d1598 :: T1540 -> AgdaAny -> AgdaAny -> AgdaAny
d1598 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0)))
name1600
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-cong"
d1600 ::
  T1540 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1600 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0))))))
name1602
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congʳ"
d1602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1602 v0 v1 v2 = du1602 v2
du1602 ::
  T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1602 v0
  = let v1 = d1572 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1604
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congˡ"
d1604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1604 v0 v1 v2 = du1604 v2
du1604 ::
  T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1604 v0
  = let v1 = d1572 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1606
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identity"
d1606 :: T1540 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1606 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0))))
name1608
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityʳ"
d1608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> AgdaAny -> AgdaAny
d1608 v0 v1 v2 = du1608 v2
du1608 :: T1540 -> AgdaAny -> AgdaAny
du1608 v0
  = let v1 = d1572 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name1610
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityˡ"
d1610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> AgdaAny -> AgdaAny
d1610 v0 v1 v2 = du1610 v2
du1610 :: T1540 -> AgdaAny -> AgdaAny
du1610 v0
  = let v1 = d1572 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name1612
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.+-isCommutativeMonoid"
d1612 :: T1540 -> MAlonzo.Code.Algebra.Structures.T362
d1612 v0
  = coe MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0))
name1614
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isCommutativeSemigroup"
d1614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1540 -> MAlonzo.Code.Algebra.Structures.T192
d1614 v0 v1 v2 = du1614 v2
du1614 :: T1540 -> MAlonzo.Code.Algebra.Structures.T192
du1614 v0
  = let v1 = d1572 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d1094 (coe v1))
name1616
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isMagma"
d1616 :: T1540 -> MAlonzo.Code.Algebra.Structures.T80
d1616 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0)))))
name1618
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isMonoid"
d1618 :: T1540 -> MAlonzo.Code.Algebra.Structures.T314
d1618 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0)))
name1620
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isSemigroup"
d1620 :: T1540 -> MAlonzo.Code.Algebra.Structures.T116
d1620 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0))))
name1622
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.distrib"
d1622 :: T1540 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1622 v0
  = coe MAlonzo.Code.Algebra.Structures.d1098 (coe d1572 (coe v0))
name1624
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.distribʳ"
d1624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1624 v0 v1 v2 = du1624 v2
du1624 :: T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1624 v0
  = let v1 = d1572 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v1))
name1626
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.distribˡ"
d1626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1626 v0 v1 v2 = du1626 v2
du1626 :: T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1626 v0
  = let v1 = d1572 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v1))
name1628
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isEquivalence"
d1628 :: T1540 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0))))))
name1630
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isPartialEquivalence"
d1630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1540 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1630 v0 v1 v2 = du1630 v2
du1630 :: T1540 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1630 v0
  = let v1 = d1572 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5))
name1632 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.refl"
d1632 :: T1540 -> AgdaAny -> AgdaAny
d1632 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0)))))))
name1634
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.reflexive"
d1634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1540 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1634 v0 v1 v2 = du1634 v2
du1634 ::
  T1540 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1634 v0
  = let v1 = d1572 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v5)) v6
name1636
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.setoid"
d1636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1540 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1636 v0 v1 v2 = du1636 v2
du1636 :: T1540 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1636 v0
  = let v1 = d1572 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d372 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1638 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.sym"
d1638 :: T1540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1638 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0)))))))
name1640
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.trans"
d1640 ::
  T1540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1640 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0)))))))
name1642
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.+-commutativeMonoid"
d1642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> T496
d1642 v0 v1 v2 = du1642 v2
du1642 :: T1540 -> T496
du1642 v0
  = coe
      C5649 (d1564 (coe v0)) (d1568 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1094 (coe d1572 (coe v0)))
name1646
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.commutativeSemigroup"
d1646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> T202
d1646 v0 v1 v2 = du1646 v2
du1646 :: T1540 -> T202
du1646 v0 = coe du574 (coe du1642 (coe v0))
name1648
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.magma"
d1648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> T30
d1648 v0 v1 v2 = du1648 v2
du1648 :: T1540 -> T30
du1648 v0
  = let v1 = coe du1642 (coe v0) in
    let v2 = coe du562 (coe v1) in coe du128 (coe du482 (coe v2))
name1650
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.monoid"
d1650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> T422
d1650 v0 v1 v2 = du1650 v2
du1650 :: T1540 -> T422
du1650 v0 = coe du562 (coe du1642 (coe v0))
name1652
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMagma"
d1652 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> T8
d1652 v0 v1 v2 = du1652 v2
du1652 :: T1540 -> T8
du1652 v0
  = let v1 = coe du1642 (coe v0) in
    let v2 = coe du562 (coe v1) in
    let v3 = coe du482 (coe v2) in coe du74 (coe du128 (coe v3))
name1654
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMonoid"
d1654 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> T394
d1654 v0 v1 v2 = du1654 v2
du1654 :: T1540 -> T394
du1654 v0
  = let v1 = coe du1642 (coe v0) in coe du490 (coe du562 (coe v1))
name1656
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.semigroup"
d1656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> T80
d1656 v0 v1 v2 = du1656 v2
du1656 :: T1540 -> T80
du1656 v0
  = let v1 = coe du1642 (coe v0) in coe du482 (coe du562 (coe v1))
name1658
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.*-monoid"
d1658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> T422
d1658 v0 v1 v2 = du1658 v2
du1658 :: T1540 -> T422
du1658 v0
  = coe
      C4689 (d1566 (coe v0)) (d1570 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1096 (coe d1572 (coe v0)))
name1662
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.magma"
d1662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> T30
d1662 v0 v1 v2 = du1662 v2
du1662 :: T1540 -> T30
du1662 v0
  = let v1 = coe du1658 (coe v0) in coe du128 (coe du482 (coe v1))
name1664
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMagma"
d1664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> T8
d1664 v0 v1 v2 = du1664 v2
du1664 :: T1540 -> T8
du1664 v0
  = let v1 = coe du1658 (coe v0) in
    let v2 = coe du482 (coe v1) in coe du74 (coe du128 (coe v2))
name1666
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMonoid"
d1666 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> T394
d1666 v0 v1 v2 = du1666 v2
du1666 :: T1540 -> T394
du1666 v0 = coe du490 (coe du1658 (coe v0))
name1668
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.semigroup"
d1668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1540 -> T80
d1668 v0 v1 v2 = du1668 v2
du1668 :: T1540 -> T80
du1668 v0 = coe du482 (coe du1658 (coe v0))
name1674 = "Algebra.Bundles.Semiring"
d1674 a0 a1 = ()
data T1674
  = C18667 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
           MAlonzo.Code.Algebra.Structures.T1172
name1694 = "Algebra.Bundles.Semiring.Carrier"
d1694 :: T1674 -> ()
d1694 = erased
name1696 = "Algebra.Bundles.Semiring._≈_"
d1696 :: T1674 -> AgdaAny -> AgdaAny -> ()
d1696 = erased
name1698 = "Algebra.Bundles.Semiring._+_"
d1698 :: T1674 -> AgdaAny -> AgdaAny -> AgdaAny
d1698 v0
  = case coe v0 of
      C18667 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1700 = "Algebra.Bundles.Semiring._*_"
d1700 :: T1674 -> AgdaAny -> AgdaAny -> AgdaAny
d1700 v0
  = case coe v0 of
      C18667 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1702 = "Algebra.Bundles.Semiring.0#"
d1702 :: T1674 -> AgdaAny
d1702 v0
  = case coe v0 of
      C18667 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1704 = "Algebra.Bundles.Semiring.1#"
d1704 :: T1674 -> AgdaAny
d1704 v0
  = case coe v0 of
      C18667 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1706 = "Algebra.Bundles.Semiring.isSemiring"
d1706 :: T1674 -> MAlonzo.Code.Algebra.Structures.T1172
d1706 v0
  = case coe v0 of
      C18667 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1710 = "Algebra.Bundles.Semiring._.assoc"
d1710 :: T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1710 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0)))))
name1712 = "Algebra.Bundles.Semiring._.∙-cong"
d1712 ::
  T1674 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1712 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d1096
               (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0))))))
name1714 = "Algebra.Bundles.Semiring._.∙-congʳ"
d1714 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1714 v0 v1 v2 = du1714 v2
du1714 ::
  T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1714 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1096 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1716 = "Algebra.Bundles.Semiring._.∙-congˡ"
d1716 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1716 v0 v1 v2 = du1716 v2
du1716 ::
  T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1716 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1096 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name1718 = "Algebra.Bundles.Semiring._.identity"
d1718 :: T1674 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0))))
name1720 = "Algebra.Bundles.Semiring._.identityʳ"
d1720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> AgdaAny -> AgdaAny
d1720 v0 v1 v2 = du1720 v2
du1720 :: T1674 -> AgdaAny -> AgdaAny
du1720 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1096 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name1722 = "Algebra.Bundles.Semiring._.identityˡ"
d1722 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> AgdaAny -> AgdaAny
d1722 v0 v1 v2 = du1722 v2
du1722 :: T1674 -> AgdaAny -> AgdaAny
du1722 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1096 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name1724 = "Algebra.Bundles.Semiring._.isMagma"
d1724 :: T1674 -> MAlonzo.Code.Algebra.Structures.T80
d1724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0)))))
name1726 = "Algebra.Bundles.Semiring._.*-isMonoid"
d1726 :: T1674 -> MAlonzo.Code.Algebra.Structures.T314
d1726 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1096
      (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0)))
name1728 = "Algebra.Bundles.Semiring._.isSemigroup"
d1728 :: T1674 -> MAlonzo.Code.Algebra.Structures.T116
d1728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0))))
name1730 = "Algebra.Bundles.Semiring._.assoc"
d1730 :: T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1730 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0))))))
name1732 = "Algebra.Bundles.Semiring._.comm"
d1732 :: T1674 -> AgdaAny -> AgdaAny -> AgdaAny
d1732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0))))
name1734 = "Algebra.Bundles.Semiring._.∙-cong"
d1734 ::
  T1674 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1734 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0)))))))
name1736 = "Algebra.Bundles.Semiring._.∙-congʳ"
d1736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1736 v0 v1 v2 = du1736 v2
du1736 ::
  T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1736 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1094 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1738 = "Algebra.Bundles.Semiring._.∙-congˡ"
d1738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1738 v0 v1 v2 = du1738 v2
du1738 ::
  T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1738 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1094 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1740 = "Algebra.Bundles.Semiring._.identity"
d1740 :: T1674 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1740 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0)))))
name1742 = "Algebra.Bundles.Semiring._.identityʳ"
d1742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> AgdaAny -> AgdaAny
d1742 v0 v1 v2 = du1742 v2
du1742 :: T1674 -> AgdaAny -> AgdaAny
du1742 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1094 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name1744 = "Algebra.Bundles.Semiring._.identityˡ"
d1744 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> AgdaAny -> AgdaAny
d1744 v0 v1 v2 = du1744 v2
du1744 :: T1674 -> AgdaAny -> AgdaAny
du1744 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1094 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name1746 = "Algebra.Bundles.Semiring._.+-isCommutativeMonoid"
d1746 :: T1674 -> MAlonzo.Code.Algebra.Structures.T362
d1746 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1094
      (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0)))
name1748 = "Algebra.Bundles.Semiring._.isCommutativeSemigroup"
d1748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1674 -> MAlonzo.Code.Algebra.Structures.T192
d1748 v0 v1 v2 = du1748 v2
du1748 :: T1674 -> MAlonzo.Code.Algebra.Structures.T192
du1748 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d1094 (coe v2))
name1750 = "Algebra.Bundles.Semiring._.isMagma"
d1750 :: T1674 -> MAlonzo.Code.Algebra.Structures.T80
d1750 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0))))))
name1752 = "Algebra.Bundles.Semiring._.isMonoid"
d1752 :: T1674 -> MAlonzo.Code.Algebra.Structures.T314
d1752 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0))))
name1754 = "Algebra.Bundles.Semiring._.isSemigroup"
d1754 :: T1674 -> MAlonzo.Code.Algebra.Structures.T116
d1754 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0)))))
name1756 = "Algebra.Bundles.Semiring._.distrib"
d1756 :: T1674 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1756 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1098
      (coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0)))
name1758 = "Algebra.Bundles.Semiring._.distribʳ"
d1758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1758 v0 v1 v2 = du1758 v2
du1758 :: T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1758 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v2))
name1760 = "Algebra.Bundles.Semiring._.distribˡ"
d1760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1760 v0 v1 v2 = du1760 v2
du1760 :: T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1760 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v2))
name1762 = "Algebra.Bundles.Semiring._.isEquivalence"
d1762 :: T1674 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1762 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0)))))))
name1764 = "Algebra.Bundles.Semiring._.isNearSemiring"
d1764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1674 -> MAlonzo.Code.Algebra.Structures.T822
d1764 v0 v1 v2 = du1764 v2
du1764 :: T1674 -> MAlonzo.Code.Algebra.Structures.T822
du1764 v0
  = let v1 = d1706 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1258 (coe v1))
name1766 = "Algebra.Bundles.Semiring._.isPartialEquivalence"
d1766 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1674 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1766 v0 v1 v2 = du1766 v2
du1766 :: T1674 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1766 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1094 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d124 (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v6))
name1768
  = "Algebra.Bundles.Semiring._.isSemiringWithoutAnnihilatingZero"
d1768 :: T1674 -> MAlonzo.Code.Algebra.Structures.T1078
d1768 v0
  = coe MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0))
name1770 = "Algebra.Bundles.Semiring._.isSemiringWithoutOne"
d1770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1674 -> MAlonzo.Code.Algebra.Structures.T898
d1770 v0 v1 v2 = du1770 v2
du1770 :: T1674 -> MAlonzo.Code.Algebra.Structures.T898
du1770 v0
  = coe MAlonzo.Code.Algebra.Structures.du1258 (coe d1706 (coe v0))
name1772 = "Algebra.Bundles.Semiring._.refl"
d1772 :: T1674 -> AgdaAny -> AgdaAny
d1772 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0))))))))
name1774 = "Algebra.Bundles.Semiring._.reflexive"
d1774 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1674 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1774 v0 v1 v2 = du1774 v2
du1774 ::
  T1674 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1774 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1094 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d124 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v6)) v7
name1776 = "Algebra.Bundles.Semiring._.setoid"
d1776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1674 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1776 v0 v1 v2 = du1776 v2
du1776 :: T1674 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1776 v0
  = let v1 = d1706 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1186 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1094 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1778 = "Algebra.Bundles.Semiring._.sym"
d1778 :: T1674 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1778 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0))))))))
name1780 = "Algebra.Bundles.Semiring._.trans"
d1780 ::
  T1674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1780 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0))))))))
name1782 = "Algebra.Bundles.Semiring._.zero"
d1782 :: T1674 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1782 v0
  = coe MAlonzo.Code.Algebra.Structures.d1188 (coe d1706 (coe v0))
name1784 = "Algebra.Bundles.Semiring._.zeroʳ"
d1784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> AgdaAny -> AgdaAny
d1784 v0 v1 v2 = du1784 v2
du1784 :: T1674 -> AgdaAny -> AgdaAny
du1784 v0
  = let v1 = d1706 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v2))
name1786 = "Algebra.Bundles.Semiring._.zeroˡ"
d1786 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> AgdaAny -> AgdaAny
d1786 v0 v1 v2 = du1786 v2
du1786 :: T1674 -> AgdaAny -> AgdaAny
du1786 v0
  = let v1 = d1706 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v2))
name1788 = "Algebra.Bundles.Semiring.rawSemiring"
d1788 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T1506
d1788 v0 v1 v2 = du1788 v2
du1788 :: T1674 -> T1506
du1788 v0
  = coe
      C16783 (d1698 (coe v0)) (d1700 (coe v0)) (d1702 (coe v0))
      (d1704 (coe v0))
name1790
  = "Algebra.Bundles.Semiring.semiringWithoutAnnihilatingZero"
d1790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T1540
d1790 v0 v1 v2 = du1790 v2
du1790 :: T1674 -> T1540
du1790 v0
  = coe
      C17121 (d1698 (coe v0)) (d1700 (coe v0)) (d1702 (coe v0))
      (d1704 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1186 (coe d1706 (coe v0)))
name1794 = "Algebra.Bundles.Semiring._.magma"
d1794 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T30
d1794 v0 v1 v2 = du1794 v2
du1794 :: T1674 -> T30
du1794 v0
  = let v1 = coe du1790 (coe v0) in
    let v2 = coe du1658 (coe v1) in coe du128 (coe du482 (coe v2))
name1796 = "Algebra.Bundles.Semiring._.*-monoid"
d1796 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T422
d1796 v0 v1 v2 = du1796 v2
du1796 :: T1674 -> T422
du1796 v0 = coe du1658 (coe du1790 (coe v0))
name1798 = "Algebra.Bundles.Semiring._.rawMagma"
d1798 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T8
d1798 v0 v1 v2 = du1798 v2
du1798 :: T1674 -> T8
du1798 v0
  = let v1 = coe du1790 (coe v0) in
    let v2 = coe du1658 (coe v1) in
    let v3 = coe du482 (coe v2) in coe du74 (coe du128 (coe v3))
name1800 = "Algebra.Bundles.Semiring._.rawMonoid"
d1800 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T394
d1800 v0 v1 v2 = du1800 v2
du1800 :: T1674 -> T394
du1800 v0
  = let v1 = coe du1790 (coe v0) in coe du490 (coe du1658 (coe v1))
name1802 = "Algebra.Bundles.Semiring._.semigroup"
d1802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T80
d1802 v0 v1 v2 = du1802 v2
du1802 :: T1674 -> T80
du1802 v0
  = let v1 = coe du1790 (coe v0) in coe du482 (coe du1658 (coe v1))
name1804 = "Algebra.Bundles.Semiring._.+-commutativeMonoid"
d1804 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T496
d1804 v0 v1 v2 = du1804 v2
du1804 :: T1674 -> T496
du1804 v0 = coe du1642 (coe du1790 (coe v0))
name1806 = "Algebra.Bundles.Semiring._.commutativeSemigroup"
d1806 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T202
d1806 v0 v1 v2 = du1806 v2
du1806 :: T1674 -> T202
du1806 v0
  = let v1 = coe du1790 (coe v0) in coe du574 (coe du1642 (coe v1))
name1808 = "Algebra.Bundles.Semiring._.magma"
d1808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T30
d1808 v0 v1 v2 = du1808 v2
du1808 :: T1674 -> T30
du1808 v0
  = let v1 = coe du1790 (coe v0) in
    let v2 = coe du1642 (coe v1) in
    let v3 = coe du562 (coe v2) in coe du128 (coe du482 (coe v3))
name1810 = "Algebra.Bundles.Semiring._.monoid"
d1810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T422
d1810 v0 v1 v2 = du1810 v2
du1810 :: T1674 -> T422
du1810 v0
  = let v1 = coe du1790 (coe v0) in coe du562 (coe du1642 (coe v1))
name1812 = "Algebra.Bundles.Semiring._.rawMagma"
d1812 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T8
d1812 v0 v1 v2 = du1812 v2
du1812 :: T1674 -> T8
du1812 v0
  = let v1 = coe du1790 (coe v0) in
    let v2 = coe du1642 (coe v1) in
    let v3 = coe du562 (coe v2) in
    let v4 = coe du482 (coe v3) in coe du74 (coe du128 (coe v4))
name1814 = "Algebra.Bundles.Semiring._.rawMonoid"
d1814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T394
d1814 v0 v1 v2 = du1814 v2
du1814 :: T1674 -> T394
du1814 v0
  = let v1 = coe du1790 (coe v0) in
    let v2 = coe du1642 (coe v1) in coe du490 (coe du562 (coe v2))
name1816 = "Algebra.Bundles.Semiring._.semigroup"
d1816 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T80
d1816 v0 v1 v2 = du1816 v2
du1816 :: T1674 -> T80
du1816 v0
  = let v1 = coe du1790 (coe v0) in
    let v2 = coe du1642 (coe v1) in coe du482 (coe du562 (coe v2))
name1818 = "Algebra.Bundles.Semiring.semiringWithoutOne"
d1818 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T1250
d1818 v0 v1 v2 = du1818 v2
du1818 :: T1674 -> T1250
du1818 v0
  = coe
      C14177 (d1698 (coe v0)) (d1700 (coe v0)) (d1702 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du1258 (coe d1706 (coe v0)))
name1822 = "Algebra.Bundles.Semiring._.nearSemiring"
d1822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1674 -> T1144
d1822 v0 v1 v2 = du1822 v2
du1822 :: T1674 -> T1144
du1822 v0 = coe du1346 (coe du1818 (coe v0))
name1828 = "Algebra.Bundles.CommutativeSemiring"
d1828 a0 a1 = ()
data T1828
  = C20509 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
           MAlonzo.Code.Algebra.Structures.T1276
name1848 = "Algebra.Bundles.CommutativeSemiring.Carrier"
d1848 :: T1828 -> ()
d1848 = erased
name1850 = "Algebra.Bundles.CommutativeSemiring._≈_"
d1850 :: T1828 -> AgdaAny -> AgdaAny -> ()
d1850 = erased
name1852 = "Algebra.Bundles.CommutativeSemiring._+_"
d1852 :: T1828 -> AgdaAny -> AgdaAny -> AgdaAny
d1852 v0
  = case coe v0 of
      C20509 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1854 = "Algebra.Bundles.CommutativeSemiring._*_"
d1854 :: T1828 -> AgdaAny -> AgdaAny -> AgdaAny
d1854 v0
  = case coe v0 of
      C20509 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1856 = "Algebra.Bundles.CommutativeSemiring.0#"
d1856 :: T1828 -> AgdaAny
d1856 v0
  = case coe v0 of
      C20509 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1858 = "Algebra.Bundles.CommutativeSemiring.1#"
d1858 :: T1828 -> AgdaAny
d1858 v0
  = case coe v0 of
      C20509 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1860
  = "Algebra.Bundles.CommutativeSemiring.isCommutativeSemiring"
d1860 :: T1828 -> MAlonzo.Code.Algebra.Structures.T1276
d1860 v0
  = case coe v0 of
      C20509 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1864 = "Algebra.Bundles.CommutativeSemiring._.assoc"
d1864 :: T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1864 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0))))))
name1866 = "Algebra.Bundles.CommutativeSemiring._.*-comm"
d1866 :: T1828 -> AgdaAny -> AgdaAny -> AgdaAny
d1866 v0
  = coe MAlonzo.Code.Algebra.Structures.d1292 (coe d1860 (coe v0))
name1868 = "Algebra.Bundles.CommutativeSemiring._.∙-cong"
d1868 ::
  T1828 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1868 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d1096
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))))))
name1870 = "Algebra.Bundles.CommutativeSemiring._.∙-congʳ"
d1870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1870 v0 v1 v2 = du1870 v2
du1870 ::
  T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1870 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1872 = "Algebra.Bundles.CommutativeSemiring._.∙-congˡ"
d1872 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1872 v0 v1 v2 = du1872 v2
du1872 ::
  T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1872 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name1874 = "Algebra.Bundles.CommutativeSemiring._.identity"
d1874 :: T1828 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))))
name1876 = "Algebra.Bundles.CommutativeSemiring._.identityʳ"
d1876 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> AgdaAny -> AgdaAny
d1876 v0 v1 v2 = du1876 v2
du1876 :: T1828 -> AgdaAny -> AgdaAny
du1876 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name1878 = "Algebra.Bundles.CommutativeSemiring._.identityˡ"
d1878 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> AgdaAny -> AgdaAny
d1878 v0 v1 v2 = du1878 v2
du1878 :: T1828 -> AgdaAny -> AgdaAny
du1878 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name1880
  = "Algebra.Bundles.CommutativeSemiring._.*-isCommutativeMonoid"
d1880 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> MAlonzo.Code.Algebra.Structures.T362
d1880 v0 v1 v2 = du1880 v2
du1880 :: T1828 -> MAlonzo.Code.Algebra.Structures.T362
du1880 v0
  = coe MAlonzo.Code.Algebra.Structures.du1378 (coe d1860 (coe v0))
name1882
  = "Algebra.Bundles.CommutativeSemiring._.*-isCommutativeSemigroup"
d1882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> MAlonzo.Code.Algebra.Structures.T192
d1882 v0 v1 v2 = du1882 v2
du1882 :: T1828 -> MAlonzo.Code.Algebra.Structures.T192
du1882 v0
  = coe MAlonzo.Code.Algebra.Structures.du1376 (coe d1860 (coe v0))
name1884 = "Algebra.Bundles.CommutativeSemiring._.isMagma"
d1884 :: T1828 -> MAlonzo.Code.Algebra.Structures.T80
d1884 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0))))))
name1886 = "Algebra.Bundles.CommutativeSemiring._.*-isMonoid"
d1886 :: T1828 -> MAlonzo.Code.Algebra.Structures.T314
d1886 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1096
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0))))
name1888 = "Algebra.Bundles.CommutativeSemiring._.isSemigroup"
d1888 :: T1828 -> MAlonzo.Code.Algebra.Structures.T116
d1888 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))))
name1890 = "Algebra.Bundles.CommutativeSemiring._.assoc"
d1890 :: T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1890 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))))))
name1892 = "Algebra.Bundles.CommutativeSemiring._.comm"
d1892 :: T1828 -> AgdaAny -> AgdaAny -> AgdaAny
d1892 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))))
name1894 = "Algebra.Bundles.CommutativeSemiring._.∙-cong"
d1894 ::
  T1828 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1894 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0))))))))
name1896 = "Algebra.Bundles.CommutativeSemiring._.∙-congʳ"
d1896 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1896 v0 v1 v2 = du1896 v2
du1896 ::
  T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1896 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name1898 = "Algebra.Bundles.CommutativeSemiring._.∙-congˡ"
d1898 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1898 v0 v1 v2 = du1898 v2
du1898 ::
  T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1898 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name1900 = "Algebra.Bundles.CommutativeSemiring._.identity"
d1900 :: T1828 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1900 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0))))))
name1902 = "Algebra.Bundles.CommutativeSemiring._.identityʳ"
d1902 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> AgdaAny -> AgdaAny
d1902 v0 v1 v2 = du1902 v2
du1902 :: T1828 -> AgdaAny -> AgdaAny
du1902 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name1904 = "Algebra.Bundles.CommutativeSemiring._.identityˡ"
d1904 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> AgdaAny -> AgdaAny
d1904 v0 v1 v2 = du1904 v2
du1904 :: T1828 -> AgdaAny -> AgdaAny
du1904 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name1906
  = "Algebra.Bundles.CommutativeSemiring._.+-isCommutativeMonoid"
d1906 :: T1828 -> MAlonzo.Code.Algebra.Structures.T362
d1906 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1094
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0))))
name1908
  = "Algebra.Bundles.CommutativeSemiring._.isCommutativeSemigroup"
d1908 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> MAlonzo.Code.Algebra.Structures.T192
d1908 v0 v1 v2 = du1908 v2
du1908 :: T1828 -> MAlonzo.Code.Algebra.Structures.T192
du1908 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d1094 (coe v3))
name1910 = "Algebra.Bundles.CommutativeSemiring._.isMagma"
d1910 :: T1828 -> MAlonzo.Code.Algebra.Structures.T80
d1910 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))))))
name1912 = "Algebra.Bundles.CommutativeSemiring._.isMonoid"
d1912 :: T1828 -> MAlonzo.Code.Algebra.Structures.T314
d1912 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))))
name1914 = "Algebra.Bundles.CommutativeSemiring._.isSemigroup"
d1914 :: T1828 -> MAlonzo.Code.Algebra.Structures.T116
d1914 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0))))))
name1916 = "Algebra.Bundles.CommutativeSemiring._.distrib"
d1916 :: T1828 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1916 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1098
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0))))
name1918 = "Algebra.Bundles.CommutativeSemiring._.distribʳ"
d1918 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1918 v0 v1 v2 = du1918 v2
du1918 :: T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1918 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v3))
name1920 = "Algebra.Bundles.CommutativeSemiring._.distribˡ"
d1920 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1920 v0 v1 v2 = du1920 v2
du1920 :: T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1920 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v3))
name1922
  = "Algebra.Bundles.CommutativeSemiring._.isCommutativeSemiringWithoutOne"
d1922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> MAlonzo.Code.Algebra.Structures.T988
d1922 v0 v1 v2 = du1922 v2
du1922 :: T1828 -> MAlonzo.Code.Algebra.Structures.T988
du1922 v0
  = coe MAlonzo.Code.Algebra.Structures.du1374 (coe d1860 (coe v0))
name1924 = "Algebra.Bundles.CommutativeSemiring._.isEquivalence"
d1924 :: T1828 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1924 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0))))))))
name1926 = "Algebra.Bundles.CommutativeSemiring._.isNearSemiring"
d1926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> MAlonzo.Code.Algebra.Structures.T822
d1926 v0 v1 v2 = du1926 v2
du1926 :: T1828 -> MAlonzo.Code.Algebra.Structures.T822
du1926 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1258 (coe v2))
name1928
  = "Algebra.Bundles.CommutativeSemiring._.isPartialEquivalence"
d1928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1928 v0 v1 v2 = du1928 v2
du1928 :: T1828 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1928 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d124 (coe v6) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v7))
name1930 = "Algebra.Bundles.CommutativeSemiring._.isSemiring"
d1930 :: T1828 -> MAlonzo.Code.Algebra.Structures.T1172
d1930 v0
  = coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0))
name1932
  = "Algebra.Bundles.CommutativeSemiring._.isSemiringWithoutAnnihilatingZero"
d1932 :: T1828 -> MAlonzo.Code.Algebra.Structures.T1078
d1932 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1186
      (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))
name1934
  = "Algebra.Bundles.CommutativeSemiring._.isSemiringWithoutOne"
d1934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> MAlonzo.Code.Algebra.Structures.T898
d1934 v0 v1 v2 = du1934 v2
du1934 :: T1828 -> MAlonzo.Code.Algebra.Structures.T898
du1934 v0
  = let v1 = d1860 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du1258
      (coe MAlonzo.Code.Algebra.Structures.d1290 (coe v1))
name1936 = "Algebra.Bundles.CommutativeSemiring._.refl"
d1936 :: T1828 -> AgdaAny -> AgdaAny
d1936 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))))))))
name1938 = "Algebra.Bundles.CommutativeSemiring._.reflexive"
d1938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1938 v0 v1 v2 = du1938 v2
du1938 ::
  T1828 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1938 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d124 (coe v6) in
    \ v8 v9 v10 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v7)) v8
name1940 = "Algebra.Bundles.CommutativeSemiring._.setoid"
d1940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1828 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1940 v0 v1 v2 = du1940 v2
du1940 :: T1828 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1940 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name1942 = "Algebra.Bundles.CommutativeSemiring._.sym"
d1942 :: T1828 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1942 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))))))))
name1944 = "Algebra.Bundles.CommutativeSemiring._.trans"
d1944 ::
  T1828 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1944 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))))))))
name1946 = "Algebra.Bundles.CommutativeSemiring._.zero"
d1946 :: T1828 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1946 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1188
      (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))
name1948 = "Algebra.Bundles.CommutativeSemiring._.zeroʳ"
d1948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> AgdaAny -> AgdaAny
d1948 v0 v1 v2 = du1948 v2
du1948 :: T1828 -> AgdaAny -> AgdaAny
du1948 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v3))
name1950 = "Algebra.Bundles.CommutativeSemiring._.zeroˡ"
d1950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> AgdaAny -> AgdaAny
d1950 v0 v1 v2 = du1950 v2
du1950 :: T1828 -> AgdaAny -> AgdaAny
du1950 v0
  = let v1 = d1860 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v3))
name1952 = "Algebra.Bundles.CommutativeSemiring.semiring"
d1952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T1674
d1952 v0 v1 v2 = du1952 v2
du1952 :: T1828 -> T1674
du1952 v0
  = coe
      C18667 (d1852 (coe v0)) (d1854 (coe v0)) (d1856 (coe v0))
      (d1858 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1290 (coe d1860 (coe v0)))
name1956 = "Algebra.Bundles.CommutativeSemiring._.magma"
d1956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T30
d1956 v0 v1 v2 = du1956 v2
du1956 :: T1828 -> T30
du1956 v0
  = let v1 = coe du1952 (coe v0) in
    let v2 = coe du1790 (coe v1) in
    let v3 = coe du1658 (coe v2) in coe du128 (coe du482 (coe v3))
name1958 = "Algebra.Bundles.CommutativeSemiring._.*-monoid"
d1958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T422
d1958 v0 v1 v2 = du1958 v2
du1958 :: T1828 -> T422
du1958 v0
  = let v1 = coe du1952 (coe v0) in coe du1658 (coe du1790 (coe v1))
name1960 = "Algebra.Bundles.CommutativeSemiring._.rawMagma"
d1960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T8
d1960 v0 v1 v2 = du1960 v2
du1960 :: T1828 -> T8
du1960 v0
  = let v1 = coe du1952 (coe v0) in
    let v2 = coe du1790 (coe v1) in
    let v3 = coe du1658 (coe v2) in
    let v4 = coe du482 (coe v3) in coe du74 (coe du128 (coe v4))
name1962 = "Algebra.Bundles.CommutativeSemiring._.rawMonoid"
d1962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T394
d1962 v0 v1 v2 = du1962 v2
du1962 :: T1828 -> T394
du1962 v0
  = let v1 = coe du1952 (coe v0) in
    let v2 = coe du1790 (coe v1) in coe du490 (coe du1658 (coe v2))
name1964 = "Algebra.Bundles.CommutativeSemiring._.semigroup"
d1964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T80
d1964 v0 v1 v2 = du1964 v2
du1964 :: T1828 -> T80
du1964 v0
  = let v1 = coe du1952 (coe v0) in
    let v2 = coe du1790 (coe v1) in coe du482 (coe du1658 (coe v2))
name1966
  = "Algebra.Bundles.CommutativeSemiring._.+-commutativeMonoid"
d1966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T496
d1966 v0 v1 v2 = du1966 v2
du1966 :: T1828 -> T496
du1966 v0
  = let v1 = coe du1952 (coe v0) in coe du1642 (coe du1790 (coe v1))
name1968
  = "Algebra.Bundles.CommutativeSemiring._.commutativeSemigroup"
d1968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T202
d1968 v0 v1 v2 = du1968 v2
du1968 :: T1828 -> T202
du1968 v0
  = let v1 = coe du1952 (coe v0) in
    let v2 = coe du1790 (coe v1) in coe du574 (coe du1642 (coe v2))
name1970 = "Algebra.Bundles.CommutativeSemiring._.magma"
d1970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T30
d1970 v0 v1 v2 = du1970 v2
du1970 :: T1828 -> T30
du1970 v0
  = let v1 = coe du1952 (coe v0) in
    let v2 = coe du1790 (coe v1) in
    let v3 = coe du1642 (coe v2) in
    let v4 = coe du562 (coe v3) in coe du128 (coe du482 (coe v4))
name1972 = "Algebra.Bundles.CommutativeSemiring._.monoid"
d1972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T422
d1972 v0 v1 v2 = du1972 v2
du1972 :: T1828 -> T422
du1972 v0
  = let v1 = coe du1952 (coe v0) in
    let v2 = coe du1790 (coe v1) in coe du562 (coe du1642 (coe v2))
name1974 = "Algebra.Bundles.CommutativeSemiring._.rawMagma"
d1974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T8
d1974 v0 v1 v2 = du1974 v2
du1974 :: T1828 -> T8
du1974 v0
  = let v1 = coe du1952 (coe v0) in
    let v2 = coe du1790 (coe v1) in
    let v3 = coe du1642 (coe v2) in
    let v4 = coe du562 (coe v3) in
    let v5 = coe du482 (coe v4) in coe du74 (coe du128 (coe v5))
name1976 = "Algebra.Bundles.CommutativeSemiring._.rawMonoid"
d1976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T394
d1976 v0 v1 v2 = du1976 v2
du1976 :: T1828 -> T394
du1976 v0
  = let v1 = coe du1952 (coe v0) in
    let v2 = coe du1790 (coe v1) in
    let v3 = coe du1642 (coe v2) in coe du490 (coe du562 (coe v3))
name1978 = "Algebra.Bundles.CommutativeSemiring._.semigroup"
d1978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T80
d1978 v0 v1 v2 = du1978 v2
du1978 :: T1828 -> T80
du1978 v0
  = let v1 = coe du1952 (coe v0) in
    let v2 = coe du1790 (coe v1) in
    let v3 = coe du1642 (coe v2) in coe du482 (coe du562 (coe v3))
name1980 = "Algebra.Bundles.CommutativeSemiring._.nearSemiring"
d1980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T1144
d1980 v0 v1 v2 = du1980 v2
du1980 :: T1828 -> T1144
du1980 v0
  = let v1 = coe du1952 (coe v0) in coe du1346 (coe du1818 (coe v1))
name1982 = "Algebra.Bundles.CommutativeSemiring._.rawSemiring"
d1982 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T1506
d1982 v0 v1 v2 = du1982 v2
du1982 :: T1828 -> T1506
du1982 v0 = coe du1788 (coe du1952 (coe v0))
name1984
  = "Algebra.Bundles.CommutativeSemiring._.semiringWithoutAnnihilatingZero"
d1984 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T1540
d1984 v0 v1 v2 = du1984 v2
du1984 :: T1828 -> T1540
du1984 v0 = coe du1790 (coe du1952 (coe v0))
name1986
  = "Algebra.Bundles.CommutativeSemiring._.semiringWithoutOne"
d1986 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T1250
d1986 v0 v1 v2 = du1986 v2
du1986 :: T1828 -> T1250
du1986 v0 = coe du1818 (coe du1952 (coe v0))
name1988
  = "Algebra.Bundles.CommutativeSemiring.*-commutativeSemigroup"
d1988 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T202
d1988 v0 v1 v2 = du1988 v2
du1988 :: T1828 -> T202
du1988 v0
  = coe
      C2287 (d1854 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du1376 (coe d1860 (coe v0)))
name1990
  = "Algebra.Bundles.CommutativeSemiring.*-commutativeMonoid"
d1990 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T496
d1990 v0 v1 v2 = du1990 v2
du1990 :: T1828 -> T496
du1990 v0
  = coe
      C5649 (d1854 (coe v0)) (d1858 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du1378 (coe d1860 (coe v0)))
name1992
  = "Algebra.Bundles.CommutativeSemiring.commutativeSemiringWithoutOne"
d1992 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1828 -> T1376
d1992 v0 v1 v2 = du1992 v2
du1992 :: T1828 -> T1376
du1992 v0
  = coe
      C15627 (d1852 (coe v0)) (d1854 (coe v0)) (d1856 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du1374 (coe d1860 (coe v0)))
name1998 = "Algebra.Bundles.RawRing"
d1998 a0 a1 = ()
data T1998
  = C22533 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
           AgdaAny
name2018 = "Algebra.Bundles.RawRing.Carrier"
d2018 :: T1998 -> ()
d2018 = erased
name2020 = "Algebra.Bundles.RawRing._≈_"
d2020 :: T1998 -> AgdaAny -> AgdaAny -> ()
d2020 = erased
name2022 = "Algebra.Bundles.RawRing._+_"
d2022 :: T1998 -> AgdaAny -> AgdaAny -> AgdaAny
d2022 v0
  = case coe v0 of
      C22533 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2024 = "Algebra.Bundles.RawRing._*_"
d2024 :: T1998 -> AgdaAny -> AgdaAny -> AgdaAny
d2024 v0
  = case coe v0 of
      C22533 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2026 = "Algebra.Bundles.RawRing.-_"
d2026 :: T1998 -> AgdaAny -> AgdaAny
d2026 v0
  = case coe v0 of
      C22533 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2028 = "Algebra.Bundles.RawRing.0#"
d2028 :: T1998 -> AgdaAny
d2028 v0
  = case coe v0 of
      C22533 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2030 = "Algebra.Bundles.RawRing.1#"
d2030 :: T1998 -> AgdaAny
d2030 v0
  = case coe v0 of
      C22533 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2032 = "Algebra.Bundles.RawRing.+-rawGroup"
d2032 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1998 -> T742
d2032 v0 v1 v2 = du2032 v2
du2032 :: T1998 -> T742
du2032 v0
  = coe C7753 (d2022 (coe v0)) (d2028 (coe v0)) (d2026 (coe v0))
name2034 = "Algebra.Bundles.RawRing.*-rawMonoid"
d2034 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1998 -> T394
d2034 v0 v1 v2 = du2034 v2
du2034 :: T1998 -> T394
du2034 v0 = coe C4379 (d2024 (coe v0)) (d2030 (coe v0))
name2040 = "Algebra.Bundles.Ring"
d2040 a0 a1 = ()
data T2040
  = C23081 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
           AgdaAny MAlonzo.Code.Algebra.Structures.T1390
name2062 = "Algebra.Bundles.Ring.Carrier"
d2062 :: T2040 -> ()
d2062 = erased
name2064 = "Algebra.Bundles.Ring._≈_"
d2064 :: T2040 -> AgdaAny -> AgdaAny -> ()
d2064 = erased
name2066 = "Algebra.Bundles.Ring._+_"
d2066 :: T2040 -> AgdaAny -> AgdaAny -> AgdaAny
d2066 v0
  = case coe v0 of
      C23081 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2068 = "Algebra.Bundles.Ring._*_"
d2068 :: T2040 -> AgdaAny -> AgdaAny -> AgdaAny
d2068 v0
  = case coe v0 of
      C23081 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2070 = "Algebra.Bundles.Ring.-_"
d2070 :: T2040 -> AgdaAny -> AgdaAny
d2070 v0
  = case coe v0 of
      C23081 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2072 = "Algebra.Bundles.Ring.0#"
d2072 :: T2040 -> AgdaAny
d2072 v0
  = case coe v0 of
      C23081 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2074 = "Algebra.Bundles.Ring.1#"
d2074 :: T2040 -> AgdaAny
d2074 v0
  = case coe v0 of
      C23081 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2076 = "Algebra.Bundles.Ring.isRing"
d2076 :: T2040 -> MAlonzo.Code.Algebra.Structures.T1390
d2076 v0
  = case coe v0 of
      C23081 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name2080 = "Algebra.Bundles.Ring._._-_"
d2080 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny
d2080 v0 v1 v2 = du2080 v2
du2080 :: T2040 -> AgdaAny -> AgdaAny -> AgdaAny
du2080 v0
  = let v1 = d2066 (coe v0) in
    let v2 = d2070 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name2082 = "Algebra.Bundles.Ring._.assoc"
d2082 :: T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2082 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d1412 (coe d2076 (coe v0))))
name2084 = "Algebra.Bundles.Ring._.∙-cong"
d2084 ::
  T2040 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2084 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe MAlonzo.Code.Algebra.Structures.d1412 (coe d2076 (coe v0)))))
name2086 = "Algebra.Bundles.Ring._.∙-congʳ"
d2086 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2086 v0 v1 v2 = du2086 v2
du2086 ::
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2086 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1412 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name2088 = "Algebra.Bundles.Ring._.∙-congˡ"
d2088 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2088 v0 v1 v2 = du2088 v2
du2088 ::
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2088 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1412 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d324 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3))
name2090 = "Algebra.Bundles.Ring._.identity"
d2090 :: T2040 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2090 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe MAlonzo.Code.Algebra.Structures.d1412 (coe d2076 (coe v0)))
name2092 = "Algebra.Bundles.Ring._.identityʳ"
d2092 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> AgdaAny -> AgdaAny
d2092 v0 v1 v2 = du2092 v2
du2092 :: T2040 -> AgdaAny -> AgdaAny
du2092 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1412 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name2094 = "Algebra.Bundles.Ring._.identityˡ"
d2094 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> AgdaAny -> AgdaAny
d2094 v0 v1 v2 = du2094 v2
du2094 :: T2040 -> AgdaAny -> AgdaAny
du2094 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1412 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v2))
name2096 = "Algebra.Bundles.Ring._.isMagma"
d2096 :: T2040 -> MAlonzo.Code.Algebra.Structures.T80
d2096 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe MAlonzo.Code.Algebra.Structures.d1412 (coe d2076 (coe v0))))
name2098 = "Algebra.Bundles.Ring._.*-isMonoid"
d2098 :: T2040 -> MAlonzo.Code.Algebra.Structures.T314
d2098 v0
  = coe MAlonzo.Code.Algebra.Structures.d1412 (coe d2076 (coe v0))
name2100 = "Algebra.Bundles.Ring._.isSemigroup"
d2100 :: T2040 -> MAlonzo.Code.Algebra.Structures.T116
d2100 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe MAlonzo.Code.Algebra.Structures.d1412 (coe d2076 (coe v0)))
name2102 = "Algebra.Bundles.Ring._.assoc"
d2102 :: T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2102 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d542
            (coe
               MAlonzo.Code.Algebra.Structures.d622
               (coe MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0))))))
name2104 = "Algebra.Bundles.Ring._.comm"
d2104 :: T2040 -> AgdaAny -> AgdaAny -> AgdaAny
d2104 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d624
      (coe MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0)))
name2106 = "Algebra.Bundles.Ring._.∙-cong"
d2106 ::
  T2040 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe
                  MAlonzo.Code.Algebra.Structures.d622
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0)))))))
name2108 = "Algebra.Bundles.Ring._.∙-congʳ"
d2108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2108 v0 v1 v2 = du2108 v2
du2108 ::
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2108 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name2110 = "Algebra.Bundles.Ring._.∙-congˡ"
d2110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2110 v0 v1 v2 = du2110 v2
du2110 ::
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2110 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name2112 = "Algebra.Bundles.Ring._.identity"
d2112 :: T2040 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2112 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d542
         (coe
            MAlonzo.Code.Algebra.Structures.d622
            (coe MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0)))))
name2114 = "Algebra.Bundles.Ring._.identityʳ"
d2114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> AgdaAny -> AgdaAny
d2114 v0 v1 v2 = du2114 v2
du2114 :: T2040 -> AgdaAny -> AgdaAny
du2114 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name2116 = "Algebra.Bundles.Ring._.identityˡ"
d2116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> AgdaAny -> AgdaAny
d2116 v0 v1 v2 = du2116 v2
du2116 :: T2040 -> AgdaAny -> AgdaAny
du2116 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name2118 = "Algebra.Bundles.Ring._.+-isAbelianGroup"
d2118 :: T2040 -> MAlonzo.Code.Algebra.Structures.T610
d2118 v0
  = coe MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0))
name2120 = "Algebra.Bundles.Ring._.isCommutativeMonoid"
d2120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> MAlonzo.Code.Algebra.Structures.T362
d2120 v0 v1 v2 = du2120 v2
du2120 :: T2040 -> MAlonzo.Code.Algebra.Structures.T362
du2120 v0
  = let v1 = d2076 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du676
      (coe MAlonzo.Code.Algebra.Structures.d1410 (coe v1))
name2122 = "Algebra.Bundles.Ring._.isCommutativeSemigroup"
d2122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> MAlonzo.Code.Algebra.Structures.T192
d2122 v0 v1 v2 = du2122 v2
du2122 :: T2040 -> MAlonzo.Code.Algebra.Structures.T192
du2122 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.du676 (coe v2))
name2124 = "Algebra.Bundles.Ring._.isGroup"
d2124 :: T2040 -> MAlonzo.Code.Algebra.Structures.T528
d2124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d622
      (coe MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0)))
name2126 = "Algebra.Bundles.Ring._.isMagma"
d2126 :: T2040 -> MAlonzo.Code.Algebra.Structures.T80
d2126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d542
            (coe
               MAlonzo.Code.Algebra.Structures.d622
               (coe MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0))))))
name2128 = "Algebra.Bundles.Ring._.isMonoid"
d2128 :: T2040 -> MAlonzo.Code.Algebra.Structures.T314
d2128 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d542
      (coe
         MAlonzo.Code.Algebra.Structures.d622
         (coe MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0))))
name2130 = "Algebra.Bundles.Ring._.isSemigroup"
d2130 :: T2040 -> MAlonzo.Code.Algebra.Structures.T116
d2130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d542
         (coe
            MAlonzo.Code.Algebra.Structures.d622
            (coe MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0)))))
name2132 = "Algebra.Bundles.Ring._.⁻¹-cong"
d2132 :: T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d546
      (coe
         MAlonzo.Code.Algebra.Structures.d622
         (coe MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0))))
name2134 = "Algebra.Bundles.Ring._.inverse"
d2134 :: T2040 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2134 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d544
      (coe
         MAlonzo.Code.Algebra.Structures.d622
         (coe MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0))))
name2136 = "Algebra.Bundles.Ring._.inverseʳ"
d2136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> AgdaAny -> AgdaAny
d2136 v0 v1 v2 = du2136 v2
du2136 :: T2040 -> AgdaAny -> AgdaAny
du2136 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v3))
name2138 = "Algebra.Bundles.Ring._.inverseˡ"
d2138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> AgdaAny -> AgdaAny
d2138 v0 v1 v2 = du2138 v2
du2138 :: T2040 -> AgdaAny -> AgdaAny
du2138 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v3))
name2140 = "Algebra.Bundles.Ring._.distrib"
d2140 :: T2040 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2140 v0
  = coe MAlonzo.Code.Algebra.Structures.d1414 (coe d2076 (coe v0))
name2142 = "Algebra.Bundles.Ring._.distribʳ"
d2142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2142 v0 v1 v2 = du2142 v2
du2142 :: T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2142 v0
  = let v1 = d2076 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du1502 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v3))
name2144 = "Algebra.Bundles.Ring._.distribˡ"
d2144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2144 v0 v1 v2 = du2144 v2
du2144 :: T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2144 v0
  = let v1 = d2076 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du1502 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v3))
name2146 = "Algebra.Bundles.Ring._.isEquivalence"
d2146 :: T2040 -> MAlonzo.Code.Relation.Binary.Structures.T26
d2146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe
                  MAlonzo.Code.Algebra.Structures.d622
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0)))))))
name2148 = "Algebra.Bundles.Ring._.isNearSemiring"
d2148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> MAlonzo.Code.Algebra.Structures.T822
d2148 v0 v1 v2 = du2148 v2
du2148 :: T2040 -> MAlonzo.Code.Algebra.Structures.T822
du2148 v0
  = let v1 = d2076 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Structures.du1502 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1258 (coe v2))
name2150 = "Algebra.Bundles.Ring._.isPartialEquivalence"
d2150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> MAlonzo.Code.Relation.Binary.Structures.T16
d2150 v0 v1 v2 = du2150 v2
du2150 :: T2040 -> MAlonzo.Code.Relation.Binary.Structures.T16
du2150 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d124 (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v6))
name2152 = "Algebra.Bundles.Ring._.isSemiring"
d2152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> MAlonzo.Code.Algebra.Structures.T1172
d2152 v0 v1 v2 = du2152 v2
du2152 :: T2040 -> MAlonzo.Code.Algebra.Structures.T1172
du2152 v0
  = coe MAlonzo.Code.Algebra.Structures.du1502 (coe d2076 (coe v0))
name2154
  = "Algebra.Bundles.Ring._.isSemiringWithoutAnnihilatingZero"
d2154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> MAlonzo.Code.Algebra.Structures.T1078
d2154 v0 v1 v2 = du2154 v2
du2154 :: T2040 -> MAlonzo.Code.Algebra.Structures.T1078
du2154 v0
  = coe MAlonzo.Code.Algebra.Structures.du1500 (coe d2076 (coe v0))
name2156 = "Algebra.Bundles.Ring._.isSemiringWithoutOne"
d2156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> MAlonzo.Code.Algebra.Structures.T898
d2156 v0 v1 v2 = du2156 v2
du2156 :: T2040 -> MAlonzo.Code.Algebra.Structures.T898
du2156 v0
  = let v1 = d2076 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du1258
      (coe MAlonzo.Code.Algebra.Structures.du1502 (coe v1))
name2158 = "Algebra.Bundles.Ring._.refl"
d2158 :: T2040 -> AgdaAny -> AgdaAny
d2158 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d622
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0))))))))
name2160 = "Algebra.Bundles.Ring._.reflexive"
d2160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2160 v0 v1 v2 = du2160 v2
du2160 ::
  T2040 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2160 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d124 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v6)) v7
name2162 = "Algebra.Bundles.Ring._.setoid"
d2162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d2162 v0 v1 v2 = du2162 v2
du2162 :: T2040 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du2162 v0
  = let v1 = d2076 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d622 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d542 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name2164 = "Algebra.Bundles.Ring._.sym"
d2164 :: T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d622
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0))))))))
name2166 = "Algebra.Bundles.Ring._.trans"
d2166 ::
  T2040 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2166 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d622
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0))))))))
name2168 = "Algebra.Bundles.Ring._.uniqueʳ-⁻¹"
d2168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2168 v0 v1 v2 = du2168 v2
du2168 :: T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2168 v0
  = let v1 = d2066 (coe v0) in
    let v2 = d2070 (coe v0) in
    let v3 = d2072 (coe v0) in
    let v4 = d2076 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1410 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du602 (coe v1) (coe v3) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe v5))
name2170 = "Algebra.Bundles.Ring._.uniqueˡ-⁻¹"
d2170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2170 v0 v1 v2 = du2170 v2
du2170 :: T2040 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2170 v0
  = let v1 = d2066 (coe v0) in
    let v2 = d2070 (coe v0) in
    let v3 = d2072 (coe v0) in
    let v4 = d2076 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1410 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du596 (coe v1) (coe v3) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe v5))
name2172 = "Algebra.Bundles.Ring._.zero"
d2172 :: T2040 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2172 v0
  = coe MAlonzo.Code.Algebra.Structures.d1416 (coe d2076 (coe v0))
name2174 = "Algebra.Bundles.Ring._.zeroʳ"
d2174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> AgdaAny -> AgdaAny
d2174 v0 v1 v2 = du2174 v2
du2174 :: T2040 -> AgdaAny -> AgdaAny
du2174 v0
  = let v1 = d2076 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1416 (coe v1))
name2176 = "Algebra.Bundles.Ring._.zeroˡ"
d2176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> AgdaAny -> AgdaAny
d2176 v0 v1 v2 = du2176 v2
du2176 :: T2040 -> AgdaAny -> AgdaAny
du2176 v0
  = let v1 = d2076 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1416 (coe v1))
name2178 = "Algebra.Bundles.Ring.+-abelianGroup"
d2178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T876
d2178 v0 v1 v2 = du2178 v2
du2178 :: T2040 -> T876
du2178 v0
  = coe
      C9391 (d2066 (coe v0)) (d2072 (coe v0)) (d2070 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1410 (coe d2076 (coe v0)))
name2180 = "Algebra.Bundles.Ring.semiring"
d2180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T1674
d2180 v0 v1 v2 = du2180 v2
du2180 :: T2040 -> T1674
du2180 v0
  = coe
      C18667 (d2066 (coe v0)) (d2068 (coe v0)) (d2072 (coe v0))
      (d2074 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du1502 (coe d2076 (coe v0)))
name2184 = "Algebra.Bundles.Ring._.magma"
d2184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T30
d2184 v0 v1 v2 = du2184 v2
du2184 :: T2040 -> T30
du2184 v0
  = let v1 = coe du2180 (coe v0) in
    let v2 = coe du1790 (coe v1) in
    let v3 = coe du1658 (coe v2) in coe du128 (coe du482 (coe v3))
name2186 = "Algebra.Bundles.Ring._.*-monoid"
d2186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T422
d2186 v0 v1 v2 = du2186 v2
du2186 :: T2040 -> T422
du2186 v0
  = let v1 = coe du2180 (coe v0) in coe du1658 (coe du1790 (coe v1))
name2188 = "Algebra.Bundles.Ring._.rawMagma"
d2188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T8
d2188 v0 v1 v2 = du2188 v2
du2188 :: T2040 -> T8
du2188 v0
  = let v1 = coe du2180 (coe v0) in
    let v2 = coe du1790 (coe v1) in
    let v3 = coe du1658 (coe v2) in
    let v4 = coe du482 (coe v3) in coe du74 (coe du128 (coe v4))
name2190 = "Algebra.Bundles.Ring._.rawMonoid"
d2190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T394
d2190 v0 v1 v2 = du2190 v2
du2190 :: T2040 -> T394
du2190 v0
  = let v1 = coe du2180 (coe v0) in
    let v2 = coe du1790 (coe v1) in coe du490 (coe du1658 (coe v2))
name2192 = "Algebra.Bundles.Ring._.semigroup"
d2192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T80
d2192 v0 v1 v2 = du2192 v2
du2192 :: T2040 -> T80
du2192 v0
  = let v1 = coe du2180 (coe v0) in
    let v2 = coe du1790 (coe v1) in coe du482 (coe du1658 (coe v2))
name2194 = "Algebra.Bundles.Ring._.+-commutativeMonoid"
d2194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T496
d2194 v0 v1 v2 = du2194 v2
du2194 :: T2040 -> T496
du2194 v0
  = let v1 = coe du2180 (coe v0) in coe du1642 (coe du1790 (coe v1))
name2196 = "Algebra.Bundles.Ring._.commutativeSemigroup"
d2196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T202
d2196 v0 v1 v2 = du2196 v2
du2196 :: T2040 -> T202
du2196 v0
  = let v1 = coe du2180 (coe v0) in
    let v2 = coe du1790 (coe v1) in coe du574 (coe du1642 (coe v2))
name2198 = "Algebra.Bundles.Ring._.magma"
d2198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T30
d2198 v0 v1 v2 = du2198 v2
du2198 :: T2040 -> T30
du2198 v0
  = let v1 = coe du2180 (coe v0) in
    let v2 = coe du1790 (coe v1) in
    let v3 = coe du1642 (coe v2) in
    let v4 = coe du562 (coe v3) in coe du128 (coe du482 (coe v4))
name2200 = "Algebra.Bundles.Ring._.monoid"
d2200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T422
d2200 v0 v1 v2 = du2200 v2
du2200 :: T2040 -> T422
du2200 v0
  = let v1 = coe du2180 (coe v0) in
    let v2 = coe du1790 (coe v1) in coe du562 (coe du1642 (coe v2))
name2202 = "Algebra.Bundles.Ring._.rawMagma"
d2202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T8
d2202 v0 v1 v2 = du2202 v2
du2202 :: T2040 -> T8
du2202 v0
  = let v1 = coe du2180 (coe v0) in
    let v2 = coe du1790 (coe v1) in
    let v3 = coe du1642 (coe v2) in
    let v4 = coe du562 (coe v3) in
    let v5 = coe du482 (coe v4) in coe du74 (coe du128 (coe v5))
name2204 = "Algebra.Bundles.Ring._.rawMonoid"
d2204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T394
d2204 v0 v1 v2 = du2204 v2
du2204 :: T2040 -> T394
du2204 v0
  = let v1 = coe du2180 (coe v0) in
    let v2 = coe du1790 (coe v1) in
    let v3 = coe du1642 (coe v2) in coe du490 (coe du562 (coe v3))
name2206 = "Algebra.Bundles.Ring._.semigroup"
d2206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T80
d2206 v0 v1 v2 = du2206 v2
du2206 :: T2040 -> T80
du2206 v0
  = let v1 = coe du2180 (coe v0) in
    let v2 = coe du1790 (coe v1) in
    let v3 = coe du1642 (coe v2) in coe du482 (coe du562 (coe v3))
name2208 = "Algebra.Bundles.Ring._.nearSemiring"
d2208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T1144
d2208 v0 v1 v2 = du2208 v2
du2208 :: T2040 -> T1144
du2208 v0
  = let v1 = coe du2180 (coe v0) in coe du1346 (coe du1818 (coe v1))
name2210 = "Algebra.Bundles.Ring._.semiringWithoutAnnihilatingZero"
d2210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T1540
d2210 v0 v1 v2 = du2210 v2
du2210 :: T2040 -> T1540
du2210 v0 = coe du1790 (coe du2180 (coe v0))
name2212 = "Algebra.Bundles.Ring._.semiringWithoutOne"
d2212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T1250
d2212 v0 v1 v2 = du2212 v2
du2212 :: T2040 -> T1250
du2212 v0 = coe du1818 (coe du2180 (coe v0))
name2216 = "Algebra.Bundles.Ring._.group"
d2216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T778
d2216 v0 v1 v2 = du2216 v2
du2216 :: T2040 -> T778
du2216 v0 = coe du964 (coe du2178 (coe v0))
name2218 = "Algebra.Bundles.Ring.rawRing"
d2218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2040 -> T1998
d2218 v0 v1 v2 = du2218 v2
du2218 :: T2040 -> T1998
du2218 v0
  = coe
      C22533 (d2066 (coe v0)) (d2068 (coe v0)) (d2070 (coe v0))
      (d2072 (coe v0)) (d2074 (coe v0))
name2224 = "Algebra.Bundles.CommutativeRing"
d2224 a0 a1 = ()
data T2224
  = C25183 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
           AgdaAny MAlonzo.Code.Algebra.Structures.T1524
name2246 = "Algebra.Bundles.CommutativeRing.Carrier"
d2246 :: T2224 -> ()
d2246 = erased
name2248 = "Algebra.Bundles.CommutativeRing._≈_"
d2248 :: T2224 -> AgdaAny -> AgdaAny -> ()
d2248 = erased
name2250 = "Algebra.Bundles.CommutativeRing._+_"
d2250 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny
d2250 v0
  = case coe v0 of
      C25183 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2252 = "Algebra.Bundles.CommutativeRing._*_"
d2252 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny
d2252 v0
  = case coe v0 of
      C25183 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2254 = "Algebra.Bundles.CommutativeRing.-_"
d2254 :: T2224 -> AgdaAny -> AgdaAny
d2254 v0
  = case coe v0 of
      C25183 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2256 = "Algebra.Bundles.CommutativeRing.0#"
d2256 :: T2224 -> AgdaAny
d2256 v0
  = case coe v0 of
      C25183 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2258 = "Algebra.Bundles.CommutativeRing.1#"
d2258 :: T2224 -> AgdaAny
d2258 v0
  = case coe v0 of
      C25183 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2260 = "Algebra.Bundles.CommutativeRing.isCommutativeRing"
d2260 :: T2224 -> MAlonzo.Code.Algebra.Structures.T1524
d2260 v0
  = case coe v0 of
      C25183 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name2264 = "Algebra.Bundles.CommutativeRing._._-_"
d2264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny
d2264 v0 v1 v2 = du2264 v2
du2264 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny
du2264 v0
  = let v1 = d2250 (coe v0) in
    let v2 = d2254 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name2266 = "Algebra.Bundles.CommutativeRing._.assoc"
d2266 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1412
            (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))))
name2268 = "Algebra.Bundles.CommutativeRing._.*-comm"
d2268 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny
d2268 v0
  = coe MAlonzo.Code.Algebra.Structures.d1542 (coe d2260 (coe v0))
name2270 = "Algebra.Bundles.CommutativeRing._.∙-cong"
d2270 ::
  T2224 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d1412
               (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0))))))
name2272 = "Algebra.Bundles.CommutativeRing._.∙-congʳ"
d2272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2272 v0 v1 v2 = du2272 v2
du2272 ::
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2272 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1412 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name2274 = "Algebra.Bundles.CommutativeRing._.∙-congˡ"
d2274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2274 v0 v1 v2 = du2274 v2
du2274 ::
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2274 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1412 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d324 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v4))
name2276 = "Algebra.Bundles.CommutativeRing._.identity"
d2276 :: T2224 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2276 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d1412
         (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0))))
name2278 = "Algebra.Bundles.CommutativeRing._.identityʳ"
d2278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> AgdaAny -> AgdaAny
d2278 v0 v1 v2 = du2278 v2
du2278 :: T2224 -> AgdaAny -> AgdaAny
du2278 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1412 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name2280 = "Algebra.Bundles.CommutativeRing._.identityˡ"
d2280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> AgdaAny -> AgdaAny
d2280 v0 v1 v2 = du2280 v2
du2280 :: T2224 -> AgdaAny -> AgdaAny
du2280 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1412 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v3))
name2282
  = "Algebra.Bundles.CommutativeRing._.*-isCommutativeMonoid"
d2282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> MAlonzo.Code.Algebra.Structures.T362
d2282 v0 v1 v2 = du2282 v2
du2282 :: T2224 -> MAlonzo.Code.Algebra.Structures.T362
du2282 v0
  = coe MAlonzo.Code.Algebra.Structures.du1644 (coe d2260 (coe v0))
name2284 = "Algebra.Bundles.CommutativeRing._.isMagma"
d2284 :: T2224 -> MAlonzo.Code.Algebra.Structures.T80
d2284 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1412
            (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))))
name2286 = "Algebra.Bundles.CommutativeRing._.*-isMonoid"
d2286 :: T2224 -> MAlonzo.Code.Algebra.Structures.T314
d2286 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1412
      (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))
name2288 = "Algebra.Bundles.CommutativeRing._.isSemigroup"
d2288 :: T2224 -> MAlonzo.Code.Algebra.Structures.T116
d2288 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d1412
         (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0))))
name2290 = "Algebra.Bundles.CommutativeRing._.assoc"
d2290 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2290 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d542
            (coe
               MAlonzo.Code.Algebra.Structures.d622
               (coe
                  MAlonzo.Code.Algebra.Structures.d1410
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))))))
name2292 = "Algebra.Bundles.CommutativeRing._.comm"
d2292 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny
d2292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d624
      (coe
         MAlonzo.Code.Algebra.Structures.d1410
         (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0))))
name2294 = "Algebra.Bundles.CommutativeRing._.∙-cong"
d2294 ::
  T2224 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe
                  MAlonzo.Code.Algebra.Structures.d622
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1410
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0))))))))
name2296 = "Algebra.Bundles.CommutativeRing._.∙-congʳ"
d2296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2296 v0 v1 v2 = du2296 v2
du2296 ::
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2296 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name2298 = "Algebra.Bundles.CommutativeRing._.∙-congˡ"
d2298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2298 v0 v1 v2 = du2298 v2
du2298 ::
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2298 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name2300 = "Algebra.Bundles.CommutativeRing._.identity"
d2300 :: T2224 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2300 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d542
         (coe
            MAlonzo.Code.Algebra.Structures.d622
            (coe
               MAlonzo.Code.Algebra.Structures.d1410
               (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0))))))
name2302 = "Algebra.Bundles.CommutativeRing._.identityʳ"
d2302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> AgdaAny -> AgdaAny
d2302 v0 v1 v2 = du2302 v2
du2302 :: T2224 -> AgdaAny -> AgdaAny
du2302 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name2304 = "Algebra.Bundles.CommutativeRing._.identityˡ"
d2304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> AgdaAny -> AgdaAny
d2304 v0 v1 v2 = du2304 v2
du2304 :: T2224 -> AgdaAny -> AgdaAny
du2304 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name2306 = "Algebra.Bundles.CommutativeRing._.+-isAbelianGroup"
d2306 :: T2224 -> MAlonzo.Code.Algebra.Structures.T610
d2306 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1410
      (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))
name2308 = "Algebra.Bundles.CommutativeRing._.isCommutativeMonoid"
d2308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> MAlonzo.Code.Algebra.Structures.T362
d2308 v0 v1 v2 = du2308 v2
du2308 :: T2224 -> MAlonzo.Code.Algebra.Structures.T362
du2308 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du676
      (coe MAlonzo.Code.Algebra.Structures.d1410 (coe v2))
name2310
  = "Algebra.Bundles.CommutativeRing._.isCommutativeSemigroup"
d2310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> MAlonzo.Code.Algebra.Structures.T192
d2310 v0 v1 v2 = du2310 v2
du2310 :: T2224 -> MAlonzo.Code.Algebra.Structures.T192
du2310 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.du676 (coe v3))
name2312 = "Algebra.Bundles.CommutativeRing._.isGroup"
d2312 :: T2224 -> MAlonzo.Code.Algebra.Structures.T528
d2312 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d622
      (coe
         MAlonzo.Code.Algebra.Structures.d1410
         (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0))))
name2314 = "Algebra.Bundles.CommutativeRing._.isMagma"
d2314 :: T2224 -> MAlonzo.Code.Algebra.Structures.T80
d2314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d542
            (coe
               MAlonzo.Code.Algebra.Structures.d622
               (coe
                  MAlonzo.Code.Algebra.Structures.d1410
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))))))
name2316 = "Algebra.Bundles.CommutativeRing._.isMonoid"
d2316 :: T2224 -> MAlonzo.Code.Algebra.Structures.T314
d2316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d542
      (coe
         MAlonzo.Code.Algebra.Structures.d622
         (coe
            MAlonzo.Code.Algebra.Structures.d1410
            (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))))
name2318 = "Algebra.Bundles.CommutativeRing._.isSemigroup"
d2318 :: T2224 -> MAlonzo.Code.Algebra.Structures.T116
d2318 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d542
         (coe
            MAlonzo.Code.Algebra.Structures.d622
            (coe
               MAlonzo.Code.Algebra.Structures.d1410
               (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0))))))
name2320 = "Algebra.Bundles.CommutativeRing._.⁻¹-cong"
d2320 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2320 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d546
      (coe
         MAlonzo.Code.Algebra.Structures.d622
         (coe
            MAlonzo.Code.Algebra.Structures.d1410
            (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))))
name2322 = "Algebra.Bundles.CommutativeRing._.inverse"
d2322 :: T2224 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d544
      (coe
         MAlonzo.Code.Algebra.Structures.d622
         (coe
            MAlonzo.Code.Algebra.Structures.d1410
            (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))))
name2324 = "Algebra.Bundles.CommutativeRing._.inverseʳ"
d2324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> AgdaAny -> AgdaAny
d2324 v0 v1 v2 = du2324 v2
du2324 :: T2224 -> AgdaAny -> AgdaAny
du2324 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v4))
name2326 = "Algebra.Bundles.CommutativeRing._.inverseˡ"
d2326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> AgdaAny -> AgdaAny
d2326 v0 v1 v2 = du2326 v2
du2326 :: T2224 -> AgdaAny -> AgdaAny
du2326 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d544 (coe v4))
name2328 = "Algebra.Bundles.CommutativeRing._.distrib"
d2328 :: T2224 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1414
      (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))
name2330 = "Algebra.Bundles.CommutativeRing._.distribʳ"
d2330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2330 v0 v1 v2 = du2330 v2
du2330 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2330 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du1502 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v4))
name2332 = "Algebra.Bundles.CommutativeRing._.distribˡ"
d2332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2332 v0 v1 v2 = du2332 v2
du2332 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2332 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du1502 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v4))
name2334
  = "Algebra.Bundles.CommutativeRing._.isCommutativeSemiring"
d2334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> MAlonzo.Code.Algebra.Structures.T1276
d2334 v0 v1 v2 = du2334 v2
du2334 :: T2224 -> MAlonzo.Code.Algebra.Structures.T1276
du2334 v0
  = coe MAlonzo.Code.Algebra.Structures.du1646 (coe d2260 (coe v0))
name2336
  = "Algebra.Bundles.CommutativeRing._.isCommutativeSemiringWithoutOne"
d2336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> MAlonzo.Code.Algebra.Structures.T988
d2336 v0 v1 v2 = du2336 v2
du2336 :: T2224 -> MAlonzo.Code.Algebra.Structures.T988
du2336 v0
  = let v1 = d2260 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du1374
      (coe MAlonzo.Code.Algebra.Structures.du1646 (coe v1))
name2338 = "Algebra.Bundles.CommutativeRing._.isEquivalence"
d2338 :: T2224 -> MAlonzo.Code.Relation.Binary.Structures.T26
d2338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe
                  MAlonzo.Code.Algebra.Structures.d622
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1410
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0))))))))
name2340 = "Algebra.Bundles.CommutativeRing._.isNearSemiring"
d2340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> MAlonzo.Code.Algebra.Structures.T822
d2340 v0 v1 v2 = du2340 v2
du2340 :: T2224 -> MAlonzo.Code.Algebra.Structures.T822
du2340 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du1502 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3))
name2342 = "Algebra.Bundles.CommutativeRing._.isPartialEquivalence"
d2342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> MAlonzo.Code.Relation.Binary.Structures.T16
d2342 v0 v1 v2 = du2342 v2
du2342 :: T2224 -> MAlonzo.Code.Relation.Binary.Structures.T16
du2342 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d124 (coe v6) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v7))
name2344 = "Algebra.Bundles.CommutativeRing._.isRing"
d2344 :: T2224 -> MAlonzo.Code.Algebra.Structures.T1390
d2344 v0
  = coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0))
name2346 = "Algebra.Bundles.CommutativeRing._.isSemiring"
d2346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> MAlonzo.Code.Algebra.Structures.T1172
d2346 v0 v1 v2 = du2346 v2
du2346 :: T2224 -> MAlonzo.Code.Algebra.Structures.T1172
du2346 v0
  = let v1 = d2260 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du1502
      (coe MAlonzo.Code.Algebra.Structures.d1540 (coe v1))
name2348
  = "Algebra.Bundles.CommutativeRing._.isSemiringWithoutAnnihilatingZero"
d2348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> MAlonzo.Code.Algebra.Structures.T1078
d2348 v0 v1 v2 = du2348 v2
du2348 :: T2224 -> MAlonzo.Code.Algebra.Structures.T1078
du2348 v0
  = let v1 = d2260 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du1500
      (coe MAlonzo.Code.Algebra.Structures.d1540 (coe v1))
name2350 = "Algebra.Bundles.CommutativeRing._.isSemiringWithoutOne"
d2350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> MAlonzo.Code.Algebra.Structures.T898
d2350 v0 v1 v2 = du2350 v2
du2350 :: T2224 -> MAlonzo.Code.Algebra.Structures.T898
du2350 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du1258
      (coe MAlonzo.Code.Algebra.Structures.du1502 (coe v2))
name2352 = "Algebra.Bundles.CommutativeRing._.refl"
d2352 :: T2224 -> AgdaAny -> AgdaAny
d2352 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d622
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1410
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))))))))
name2354 = "Algebra.Bundles.CommutativeRing._.reflexive"
d2354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2354 v0 v1 v2 = du2354 v2
du2354 ::
  T2224 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2354 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d124 (coe v6) in
    \ v8 v9 v10 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v7)) v8
name2356 = "Algebra.Bundles.CommutativeRing._.setoid"
d2356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d2356 v0 v1 v2 = du2356 v2
du2356 :: T2224 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du2356 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d622 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d542 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name2358 = "Algebra.Bundles.CommutativeRing._.sym"
d2358 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2358 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d622
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1410
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))))))))
name2360 = "Algebra.Bundles.CommutativeRing._.trans"
d2360 ::
  T2224 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2360 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe
                     MAlonzo.Code.Algebra.Structures.d622
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1410
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))))))))
name2362 = "Algebra.Bundles.CommutativeRing._.uniqueʳ-⁻¹"
d2362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2362 v0 v1 v2 = du2362 v2
du2362 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2362 v0
  = let v1 = d2250 (coe v0) in
    let v2 = d2254 (coe v0) in
    let v3 = d2256 (coe v0) in
    let v4 = d2260 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1540 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1410 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du602 (coe v1) (coe v3) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe v6))
name2364 = "Algebra.Bundles.CommutativeRing._.uniqueˡ-⁻¹"
d2364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2364 v0 v1 v2 = du2364 v2
du2364 :: T2224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2364 v0
  = let v1 = d2250 (coe v0) in
    let v2 = d2254 (coe v0) in
    let v3 = d2256 (coe v0) in
    let v4 = d2260 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1540 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1410 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du596 (coe v1) (coe v3) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d622 (coe v6))
name2366 = "Algebra.Bundles.CommutativeRing._.zero"
d2366 :: T2224 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2366 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1416
      (coe MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))
name2368 = "Algebra.Bundles.CommutativeRing._.zeroʳ"
d2368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> AgdaAny -> AgdaAny
d2368 v0 v1 v2 = du2368 v2
du2368 :: T2224 -> AgdaAny -> AgdaAny
du2368 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1416 (coe v2))
name2370 = "Algebra.Bundles.CommutativeRing._.zeroˡ"
d2370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> AgdaAny -> AgdaAny
d2370 v0 v1 v2 = du2370 v2
du2370 :: T2224 -> AgdaAny -> AgdaAny
du2370 v0
  = let v1 = d2260 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1416 (coe v2))
name2372 = "Algebra.Bundles.CommutativeRing.ring"
d2372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T2040
d2372 v0 v1 v2 = du2372 v2
du2372 :: T2224 -> T2040
du2372 v0
  = coe
      C23081 (d2250 (coe v0)) (d2252 (coe v0)) (d2254 (coe v0))
      (d2256 (coe v0)) (d2258 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1540 (coe d2260 (coe v0)))
name2374 = "Algebra.Bundles.CommutativeRing.commutativeSemiring"
d2374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T1828
d2374 v0 v1 v2 = du2374 v2
du2374 :: T2224 -> T1828
du2374 v0
  = coe
      C20509 (d2250 (coe v0)) (d2252 (coe v0)) (d2256 (coe v0))
      (d2258 (coe v0))
      (coe MAlonzo.Code.Algebra.Structures.du1646 (coe d2260 (coe v0)))
name2378 = "Algebra.Bundles.CommutativeRing._.+-abelianGroup"
d2378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T876
d2378 v0 v1 v2 = du2378 v2
du2378 :: T2224 -> T876
du2378 v0 = coe du2178 (coe du2372 (coe v0))
name2380 = "Algebra.Bundles.CommutativeRing._.group"
d2380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T778
d2380 v0 v1 v2 = du2380 v2
du2380 :: T2224 -> T778
du2380 v0
  = let v1 = coe du2372 (coe v0) in coe du964 (coe du2178 (coe v1))
name2382 = "Algebra.Bundles.CommutativeRing._.rawRing"
d2382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T1998
d2382 v0 v1 v2 = du2382 v2
du2382 :: T2224 -> T1998
du2382 v0 = coe du2218 (coe du2372 (coe v0))
name2386 = "Algebra.Bundles.CommutativeRing._.*-commutativeMonoid"
d2386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T496
d2386 v0 v1 v2 = du2386 v2
du2386 :: T2224 -> T496
du2386 v0 = coe du1990 (coe du2374 (coe v0))
name2388
  = "Algebra.Bundles.CommutativeRing._.*-commutativeSemigroup"
d2388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T202
d2388 v0 v1 v2 = du2388 v2
du2388 :: T2224 -> T202
du2388 v0 = coe du1988 (coe du2374 (coe v0))
name2390 = "Algebra.Bundles.CommutativeRing._.magma"
d2390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T30
d2390 v0 v1 v2 = du2390 v2
du2390 :: T2224 -> T30
du2390 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in
    let v3 = coe du1790 (coe v2) in
    let v4 = coe du1658 (coe v3) in coe du128 (coe du482 (coe v4))
name2392 = "Algebra.Bundles.CommutativeRing._.*-monoid"
d2392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T422
d2392 v0 v1 v2 = du2392 v2
du2392 :: T2224 -> T422
du2392 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in coe du1658 (coe du1790 (coe v2))
name2394 = "Algebra.Bundles.CommutativeRing._.rawMagma"
d2394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T8
d2394 v0 v1 v2 = du2394 v2
du2394 :: T2224 -> T8
du2394 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in
    let v3 = coe du1790 (coe v2) in
    let v4 = coe du1658 (coe v3) in
    let v5 = coe du482 (coe v4) in coe du74 (coe du128 (coe v5))
name2396 = "Algebra.Bundles.CommutativeRing._.rawMonoid"
d2396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T394
d2396 v0 v1 v2 = du2396 v2
du2396 :: T2224 -> T394
du2396 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in
    let v3 = coe du1790 (coe v2) in coe du490 (coe du1658 (coe v3))
name2398 = "Algebra.Bundles.CommutativeRing._.semigroup"
d2398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T80
d2398 v0 v1 v2 = du2398 v2
du2398 :: T2224 -> T80
du2398 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in
    let v3 = coe du1790 (coe v2) in coe du482 (coe du1658 (coe v3))
name2400 = "Algebra.Bundles.CommutativeRing._.+-commutativeMonoid"
d2400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T496
d2400 v0 v1 v2 = du2400 v2
du2400 :: T2224 -> T496
du2400 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in coe du1642 (coe du1790 (coe v2))
name2402 = "Algebra.Bundles.CommutativeRing._.commutativeSemigroup"
d2402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T202
d2402 v0 v1 v2 = du2402 v2
du2402 :: T2224 -> T202
du2402 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in
    let v3 = coe du1790 (coe v2) in coe du574 (coe du1642 (coe v3))
name2404 = "Algebra.Bundles.CommutativeRing._.magma"
d2404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T30
d2404 v0 v1 v2 = du2404 v2
du2404 :: T2224 -> T30
du2404 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in
    let v3 = coe du1790 (coe v2) in
    let v4 = coe du1642 (coe v3) in
    let v5 = coe du562 (coe v4) in coe du128 (coe du482 (coe v5))
name2406 = "Algebra.Bundles.CommutativeRing._.monoid"
d2406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T422
d2406 v0 v1 v2 = du2406 v2
du2406 :: T2224 -> T422
du2406 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in
    let v3 = coe du1790 (coe v2) in coe du562 (coe du1642 (coe v3))
name2408 = "Algebra.Bundles.CommutativeRing._.rawMagma"
d2408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T8
d2408 v0 v1 v2 = du2408 v2
du2408 :: T2224 -> T8
du2408 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in
    let v3 = coe du1790 (coe v2) in
    let v4 = coe du1642 (coe v3) in
    let v5 = coe du562 (coe v4) in
    let v6 = coe du482 (coe v5) in coe du74 (coe du128 (coe v6))
name2410 = "Algebra.Bundles.CommutativeRing._.rawMonoid"
d2410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T394
d2410 v0 v1 v2 = du2410 v2
du2410 :: T2224 -> T394
du2410 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in
    let v3 = coe du1790 (coe v2) in
    let v4 = coe du1642 (coe v3) in coe du490 (coe du562 (coe v4))
name2412 = "Algebra.Bundles.CommutativeRing._.semigroup"
d2412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T80
d2412 v0 v1 v2 = du2412 v2
du2412 :: T2224 -> T80
du2412 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in
    let v3 = coe du1790 (coe v2) in
    let v4 = coe du1642 (coe v3) in coe du482 (coe du562 (coe v4))
name2414
  = "Algebra.Bundles.CommutativeRing._.commutativeSemiringWithoutOne"
d2414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T1376
d2414 v0 v1 v2 = du2414 v2
du2414 :: T2224 -> T1376
du2414 v0 = coe du1992 (coe du2374 (coe v0))
name2416 = "Algebra.Bundles.CommutativeRing._.nearSemiring"
d2416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T1144
d2416 v0 v1 v2 = du2416 v2
du2416 :: T2224 -> T1144
du2416 v0
  = let v1 = coe du2374 (coe v0) in
    let v2 = coe du1952 (coe v1) in coe du1346 (coe du1818 (coe v2))
name2418 = "Algebra.Bundles.CommutativeRing._.semiring"
d2418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T1674
d2418 v0 v1 v2 = du2418 v2
du2418 :: T2224 -> T1674
du2418 v0 = coe du1952 (coe du2374 (coe v0))
name2420
  = "Algebra.Bundles.CommutativeRing._.semiringWithoutAnnihilatingZero"
d2420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T1540
d2420 v0 v1 v2 = du2420 v2
du2420 :: T2224 -> T1540
du2420 v0
  = let v1 = coe du2374 (coe v0) in coe du1790 (coe du1952 (coe v1))
name2422 = "Algebra.Bundles.CommutativeRing._.semiringWithoutOne"
d2422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2224 -> T1250
d2422 v0 v1 v2 = du2422 v2
du2422 :: T2224 -> T1250
du2422 v0
  = let v1 = coe du2374 (coe v0) in coe du1818 (coe du1952 (coe v1))
name2428 = "Algebra.Bundles.BooleanAlgebra"
d2428 a0 a1 = ()
data T2428
  = C27307 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
           AgdaAny MAlonzo.Code.Algebra.Structures.T1662
name2450 = "Algebra.Bundles.BooleanAlgebra.Carrier"
d2450 :: T2428 -> ()
d2450 = erased
name2452 = "Algebra.Bundles.BooleanAlgebra._≈_"
d2452 :: T2428 -> AgdaAny -> AgdaAny -> ()
d2452 = erased
name2454 = "Algebra.Bundles.BooleanAlgebra._∨_"
d2454 :: T2428 -> AgdaAny -> AgdaAny -> AgdaAny
d2454 v0
  = case coe v0 of
      C27307 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2456 = "Algebra.Bundles.BooleanAlgebra._∧_"
d2456 :: T2428 -> AgdaAny -> AgdaAny -> AgdaAny
d2456 v0
  = case coe v0 of
      C27307 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2458 = "Algebra.Bundles.BooleanAlgebra.¬_"
d2458 :: T2428 -> AgdaAny -> AgdaAny
d2458 v0
  = case coe v0 of
      C27307 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2460 = "Algebra.Bundles.BooleanAlgebra.⊤"
d2460 :: T2428 -> AgdaAny
d2460 v0
  = case coe v0 of
      C27307 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2462 = "Algebra.Bundles.BooleanAlgebra.⊥"
d2462 :: T2428 -> AgdaAny
d2462 v0
  = case coe v0 of
      C27307 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2464 = "Algebra.Bundles.BooleanAlgebra.isBooleanAlgebra"
d2464 :: T2428 -> MAlonzo.Code.Algebra.Structures.T1662
d2464 v0
  = case coe v0 of
      C27307 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name2468 = "Algebra.Bundles.BooleanAlgebra._.absorptive"
d2468 :: T2428 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2468 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d722
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0))))
name2470 = "Algebra.Bundles.BooleanAlgebra._.isDistributiveLattice"
d2470 :: T2428 -> MAlonzo.Code.Algebra.Structures.T760
d2470 v0
  = coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0))
name2472 = "Algebra.Bundles.BooleanAlgebra._.isEquivalence"
d2472 :: T2428 -> MAlonzo.Code.Relation.Binary.Structures.T26
d2472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d708
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0))))
name2474 = "Algebra.Bundles.BooleanAlgebra._.isLattice"
d2474 :: T2428 -> MAlonzo.Code.Algebra.Structures.T686
d2474 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d770
      (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0)))
name2476 = "Algebra.Bundles.BooleanAlgebra._.isPartialEquivalence"
d2476 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2428 -> MAlonzo.Code.Relation.Binary.Structures.T16
d2476 v0 v1 v2 = du2476 v2
du2476 :: T2428 -> MAlonzo.Code.Relation.Binary.Structures.T16
du2476 v0
  = let v1 = d2464 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d770 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d708 (coe v3))
name2478 = "Algebra.Bundles.BooleanAlgebra._.refl"
d2478 :: T2428 -> AgdaAny -> AgdaAny
d2478 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0)))))
name2480 = "Algebra.Bundles.BooleanAlgebra._.reflexive"
d2480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2428 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2480 v0 v1 v2 = du2480 v2
du2480 ::
  T2428 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2480 v0
  = let v1 = d2464 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d770 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d708 (coe v3)) v4
name2482 = "Algebra.Bundles.BooleanAlgebra._.sym"
d2482 :: T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2482 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0)))))
name2484 = "Algebra.Bundles.BooleanAlgebra._.trans"
d2484 ::
  T2428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2484 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d708
         (coe
            MAlonzo.Code.Algebra.Structures.d770
            (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0)))))
name2486 = "Algebra.Bundles.BooleanAlgebra._.¬-cong"
d2486 :: T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2486 v0
  = coe MAlonzo.Code.Algebra.Structures.d1688 (coe d2464 (coe v0))
name2488 = "Algebra.Bundles.BooleanAlgebra._.∧-absorbs-∨"
d2488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2428 -> AgdaAny -> AgdaAny -> AgdaAny
d2488 v0 v1 v2 = du2488 v2
du2488 :: T2428 -> AgdaAny -> AgdaAny -> AgdaAny
du2488 v0
  = let v1 = d2464 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d770 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d722 (coe v3))
name2490 = "Algebra.Bundles.BooleanAlgebra._.∧-assoc"
d2490 :: T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2490 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d718
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0))))
name2492 = "Algebra.Bundles.BooleanAlgebra._.∧-comm"
d2492 :: T2428 -> AgdaAny -> AgdaAny -> AgdaAny
d2492 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d716
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0))))
name2494 = "Algebra.Bundles.BooleanAlgebra._.∧-complementʳ"
d2494 :: T2428 -> AgdaAny -> AgdaAny
d2494 v0
  = coe MAlonzo.Code.Algebra.Structures.d1686 (coe d2464 (coe v0))
name2496 = "Algebra.Bundles.BooleanAlgebra._.∧-cong"
d2496 ::
  T2428 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2496 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d720
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0))))
name2498 = "Algebra.Bundles.BooleanAlgebra._.∧-congʳ"
d2498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2498 v0 v1 v2 = du2498 v2
du2498 ::
  T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2498 v0
  = let v1 = d2464 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du744
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v2))
name2500 = "Algebra.Bundles.BooleanAlgebra._.∧-congˡ"
d2500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2500 v0 v1 v2 = du2500 v2
du2500 ::
  T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2500 v0
  = let v1 = d2464 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du740
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v2))
name2502 = "Algebra.Bundles.BooleanAlgebra._.∨-absorbs-∧"
d2502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2428 -> AgdaAny -> AgdaAny -> AgdaAny
d2502 v0 v1 v2 = du2502 v2
du2502 :: T2428 -> AgdaAny -> AgdaAny -> AgdaAny
du2502 v0
  = let v1 = d2464 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d770 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d722 (coe v3))
name2504 = "Algebra.Bundles.BooleanAlgebra._.∨-assoc"
d2504 :: T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2504 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d712
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0))))
name2506 = "Algebra.Bundles.BooleanAlgebra._.∨-comm"
d2506 :: T2428 -> AgdaAny -> AgdaAny -> AgdaAny
d2506 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d710
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0))))
name2508 = "Algebra.Bundles.BooleanAlgebra._.∨-complementʳ"
d2508 :: T2428 -> AgdaAny -> AgdaAny
d2508 v0
  = coe MAlonzo.Code.Algebra.Structures.d1684 (coe d2464 (coe v0))
name2510 = "Algebra.Bundles.BooleanAlgebra._.∨-cong"
d2510 ::
  T2428 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2510 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d714
      (coe
         MAlonzo.Code.Algebra.Structures.d770
         (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0))))
name2512 = "Algebra.Bundles.BooleanAlgebra._.∨-congʳ"
d2512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2512 v0 v1 v2 = du2512 v2
du2512 ::
  T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2512 v0
  = let v1 = d2464 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du752
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v2))
name2514 = "Algebra.Bundles.BooleanAlgebra._.∨-congˡ"
d2514 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2514 v0 v1 v2 = du2514 v2
du2514 ::
  T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2514 v0
  = let v1 = d2464 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du748
      (coe MAlonzo.Code.Algebra.Structures.d770 (coe v2))
name2516 = "Algebra.Bundles.BooleanAlgebra._.∨-distribʳ-∧"
d2516 :: T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2516 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d772
      (coe MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0)))
name2518 = "Algebra.Bundles.BooleanAlgebra._.∨-∧-distribʳ"
d2518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2518 v0 v1 v2 = du2518 v2
du2518 :: T2428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2518 v0
  = let v1 = d2464 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du814
      (coe MAlonzo.Code.Algebra.Structures.d1682 (coe v1))
name2520 = "Algebra.Bundles.BooleanAlgebra.distributiveLattice"
d2520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2428 -> T1062
d2520 v0 v1 v2 = du2520 v2
du2520 :: T2428 -> T1062
du2520 v0
  = coe
      C11717 (d2454 (coe v0)) (d2456 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1682 (coe d2464 (coe v0)))
name2524 = "Algebra.Bundles.BooleanAlgebra._.lattice"
d2524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2428 -> T990
d2524 v0 v1 v2 = du2524 v2
du2524 :: T2428 -> T990
du2524 v0 = coe du1134 (coe du2520 (coe v0))
name2526 = "Algebra.Bundles.BooleanAlgebra._.setoid"
d2526 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2428 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d2526 v0 v1 v2 = du2526 v2
du2526 :: T2428 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du2526 v0
  = let v1 = coe du2520 (coe v0) in coe du1056 (coe du1134 (coe v1))
name2528 = "Algebra.Bundles.RawSemigroup"
d2528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d2528 = erased
