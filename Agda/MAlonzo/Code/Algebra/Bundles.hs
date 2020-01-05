{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
newtype T8 = C3 (AgdaAny -> AgdaAny -> AgdaAny)
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
      C3 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name30 = "Algebra.Bundles.Magma"
d30 a0 a1 = ()
data T30
  = C77 (AgdaAny -> AgdaAny -> AgdaAny)
        MAlonzo.Code.Algebra.Structures.T78
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
      C77 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name50 = "Algebra.Bundles.Magma.isMagma"
d50 :: T30 -> MAlonzo.Code.Algebra.Structures.T78
d50 v0
  = case coe v0 of
      C77 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name54 = "Algebra.Bundles.Magma._.isEquivalence"
d54 :: T30 -> MAlonzo.Code.Relation.Binary.Structures.T26
d54 v0
  = coe (MAlonzo.Code.Algebra.Structures.d86 (coe (d50 (coe v0))))
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
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v1))))
name58 = "Algebra.Bundles.Magma._.refl"
d58 :: T30 -> AgdaAny -> AgdaAny
d58 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe (d50 (coe v0))))))
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
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v1))) v2)
name62 = "Algebra.Bundles.Magma._.setoid"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d62 v0 v1 v2 = du62 v2
du62 :: T30 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du62 v0
  = coe (MAlonzo.Code.Algebra.Structures.du102 (coe (d50 (coe v0))))
name64 = "Algebra.Bundles.Magma._.sym"
d64 :: T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d64 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe (d50 (coe v0))))))
name66 = "Algebra.Bundles.Magma._.trans"
d66 ::
  T30 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d66 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe (d50 (coe v0))))))
name68 = "Algebra.Bundles.Magma._.∙-cong"
d68 ::
  T30 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d68 v0
  = coe (MAlonzo.Code.Algebra.Structures.d88 (coe (d50 (coe v0))))
name70 = "Algebra.Bundles.Magma._.∙-congʳ"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d70 v0 v1 v2 = du70 v2
du70 :: T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du70 v0
  = coe (MAlonzo.Code.Algebra.Structures.du108 (coe (d50 (coe v0))))
name72 = "Algebra.Bundles.Magma._.∙-congˡ"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d72 v0 v1 v2 = du72 v2
du72 :: T30 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du72 v0
  = coe (MAlonzo.Code.Algebra.Structures.du104 (coe (d50 (coe v0))))
name74 = "Algebra.Bundles.Magma.rawMagma"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T30 -> T8
d74 v0 v1 v2 = du74 v2
du74 :: T30 -> T8
du74 v0 = coe (\ v1 v2 v3 -> C3 v3) erased erased (d48 (coe v0))
name80 = "Algebra.Bundles.Semigroup"
d80 a0 a1 = ()
data T80
  = C291 (AgdaAny -> AgdaAny -> AgdaAny)
         MAlonzo.Code.Algebra.Structures.T114
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
      C291 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name100 = "Algebra.Bundles.Semigroup.isSemigroup"
d100 :: T80 -> MAlonzo.Code.Algebra.Structures.T114
d100 v0
  = case coe v0 of
      C291 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name104 = "Algebra.Bundles.Semigroup._.assoc"
d104 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d104 v0
  = coe (MAlonzo.Code.Algebra.Structures.d124 (coe (d100 (coe v0))))
name106 = "Algebra.Bundles.Semigroup._.isEquivalence"
d106 :: T80 -> MAlonzo.Code.Relation.Binary.Structures.T26
d106 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe (d100 (coe v0))))))
name108 = "Algebra.Bundles.Semigroup._.isMagma"
d108 :: T80 -> MAlonzo.Code.Algebra.Structures.T78
d108 v0
  = coe (MAlonzo.Code.Algebra.Structures.d122 (coe (d100 (coe v0))))
name110 = "Algebra.Bundles.Semigroup._.isPartialEquivalence"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T80 -> MAlonzo.Code.Relation.Binary.Structures.T16
d110 v0 v1 v2 = du110 v2
du110 :: T80 -> MAlonzo.Code.Relation.Binary.Structures.T16
du110 v0
  = let v1 = d100 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d122 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v2))))
name112 = "Algebra.Bundles.Semigroup._.refl"
d112 :: T80 -> AgdaAny -> AgdaAny
d112 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122 (coe (d100 (coe v0))))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d122 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v2))) v3)
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
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v1))))
name118 = "Algebra.Bundles.Semigroup._.sym"
d118 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d118 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122 (coe (d100 (coe v0))))))))
name120 = "Algebra.Bundles.Semigroup._.trans"
d120 ::
  T80 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d120 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122 (coe (d100 (coe v0))))))))
name122 = "Algebra.Bundles.Semigroup._.∙-cong"
d122 ::
  T80 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d122 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe (d100 (coe v0))))))
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
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v1))))
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
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v1))))
name128 = "Algebra.Bundles.Semigroup.magma"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T80 -> T30
d128 v0 v1 v2 = du128 v2
du128 :: T80 -> T30
du128 v0
  = coe
      (\ v1 v2 v3 v4 -> C77 v3 v4) erased erased (d98 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d122 (coe (d100 (coe v0))))
name132 = "Algebra.Bundles.Semigroup._.rawMagma"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T80 -> T8
d132 v0 v1 v2 = du132 v2
du132 :: T80 -> T8
du132 v0 = coe (du74 (coe (du128 (coe v0))))
name138 = "Algebra.Bundles.Band"
d138 a0 a1 = ()
data T138
  = C527 (AgdaAny -> AgdaAny -> AgdaAny)
         MAlonzo.Code.Algebra.Structures.T150
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
      C527 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name158 = "Algebra.Bundles.Band.isBand"
d158 :: T138 -> MAlonzo.Code.Algebra.Structures.T150
d158 v0
  = case coe v0 of
      C527 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name162 = "Algebra.Bundles.Band._.assoc"
d162 :: T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d162 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe (MAlonzo.Code.Algebra.Structures.d158 (coe (d158 (coe v0))))))
name164 = "Algebra.Bundles.Band._.idem"
d164 :: T138 -> AgdaAny -> AgdaAny
d164 v0
  = coe (MAlonzo.Code.Algebra.Structures.d160 (coe (d158 (coe v0))))
name166 = "Algebra.Bundles.Band._.isEquivalence"
d166 :: T138 -> MAlonzo.Code.Relation.Binary.Structures.T26
d166 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d158 (coe (d158 (coe v0))))))))
name168 = "Algebra.Bundles.Band._.isMagma"
d168 :: T138 -> MAlonzo.Code.Algebra.Structures.T78
d168 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe (MAlonzo.Code.Algebra.Structures.d158 (coe (d158 (coe v0))))))
name170 = "Algebra.Bundles.Band._.isPartialEquivalence"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T138 -> MAlonzo.Code.Relation.Binary.Structures.T16
d170 v0 v1 v2 = du170 v2
du170 :: T138 -> MAlonzo.Code.Relation.Binary.Structures.T16
du170 v0
  = let v1 = d158 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d158 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d122 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v3))))
name172 = "Algebra.Bundles.Band._.isSemigroup"
d172 :: T138 -> MAlonzo.Code.Algebra.Structures.T114
d172 v0
  = coe (MAlonzo.Code.Algebra.Structures.d158 (coe (d158 (coe v0))))
name174 = "Algebra.Bundles.Band._.refl"
d174 :: T138 -> AgdaAny -> AgdaAny
d174 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d158 (coe (d158 (coe v0))))))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d158 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d122 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v3))) v4)
name178 = "Algebra.Bundles.Band._.setoid"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T138 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d178 v0 v1 v2 = du178 v2
du178 :: T138 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du178 v0
  = let v1 = d158 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d158 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v2))))
name180 = "Algebra.Bundles.Band._.sym"
d180 :: T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d180 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d158 (coe (d158 (coe v0))))))))))
name182 = "Algebra.Bundles.Band._.trans"
d182 ::
  T138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d182 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d158 (coe (d158 (coe v0))))))))))
name184 = "Algebra.Bundles.Band._.∙-cong"
d184 ::
  T138 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d184 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d158 (coe (d158 (coe v0))))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d158 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v2))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d158 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v2))))
name190 = "Algebra.Bundles.Band.semigroup"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T138 -> T80
d190 v0 v1 v2 = du190 v2
du190 :: T138 -> T80
du190 v0
  = coe
      (\ v1 v2 v3 v4 -> C291 v3 v4) erased erased (d156 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d158 (coe (d158 (coe v0))))
name194 = "Algebra.Bundles.Band._.magma"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T138 -> T30
d194 v0 v1 v2 = du194 v2
du194 :: T138 -> T30
du194 v0 = coe (du128 (coe (du190 (coe v0))))
name196 = "Algebra.Bundles.Band._.rawMagma"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T138 -> T8
d196 v0 v1 v2 = du196 v2
du196 :: T138 -> T8
du196 v0
  = let v1 = du190 (coe v0) in coe (du74 (coe (du128 (coe v1))))
name202 = "Algebra.Bundles.CommutativeSemigroup"
d202 a0 a1 = ()
data T202
  = C789 (AgdaAny -> AgdaAny -> AgdaAny)
         MAlonzo.Code.Algebra.Structures.T190
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
      C789 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name222
  = "Algebra.Bundles.CommutativeSemigroup.isCommutativeSemigroup"
d222 :: T202 -> MAlonzo.Code.Algebra.Structures.T190
d222 v0
  = case coe v0 of
      C789 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name226 = "Algebra.Bundles.CommutativeSemigroup._.assoc"
d226 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d226 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe (MAlonzo.Code.Algebra.Structures.d198 (coe (d222 (coe v0))))))
name228 = "Algebra.Bundles.CommutativeSemigroup._.comm"
d228 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny
d228 v0
  = coe (MAlonzo.Code.Algebra.Structures.d200 (coe (d222 (coe v0))))
name230 = "Algebra.Bundles.CommutativeSemigroup._.isEquivalence"
d230 :: T202 -> MAlonzo.Code.Relation.Binary.Structures.T26
d230 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d198 (coe (d222 (coe v0))))))))
name232 = "Algebra.Bundles.CommutativeSemigroup._.isMagma"
d232 :: T202 -> MAlonzo.Code.Algebra.Structures.T78
d232 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe (MAlonzo.Code.Algebra.Structures.d198 (coe (d222 (coe v0))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d122 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v3))))
name236 = "Algebra.Bundles.CommutativeSemigroup._.isSemigroup"
d236 :: T202 -> MAlonzo.Code.Algebra.Structures.T114
d236 v0
  = coe (MAlonzo.Code.Algebra.Structures.d198 (coe (d222 (coe v0))))
name238 = "Algebra.Bundles.CommutativeSemigroup._.refl"
d238 :: T202 -> AgdaAny -> AgdaAny
d238 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d198 (coe (d222 (coe v0))))))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d122 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v3))) v4)
name242 = "Algebra.Bundles.CommutativeSemigroup._.setoid"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T202 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d242 v0 v1 v2 = du242 v2
du242 :: T202 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du242 v0
  = let v1 = d222 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v2))))
name244 = "Algebra.Bundles.CommutativeSemigroup._.sym"
d244 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d244 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d198 (coe (d222 (coe v0))))))))))
name246 = "Algebra.Bundles.CommutativeSemigroup._.trans"
d246 ::
  T202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d246 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d198 (coe (d222 (coe v0))))))))))
name248 = "Algebra.Bundles.CommutativeSemigroup._.∙-cong"
d248 ::
  T202 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d248 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d198 (coe (d222 (coe v0))))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v2))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v2))))
name254 = "Algebra.Bundles.CommutativeSemigroup.semigroup"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T202 -> T80
d254 v0 v1 v2 = du254 v2
du254 :: T202 -> T80
du254 v0
  = coe
      (\ v1 v2 v3 v4 -> C291 v3 v4) erased erased (d220 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d198 (coe (d222 (coe v0))))
name258 = "Algebra.Bundles.CommutativeSemigroup._.magma"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T202 -> T30
d258 v0 v1 v2 = du258 v2
du258 :: T202 -> T30
du258 v0 = coe (du128 (coe (du254 (coe v0))))
name260 = "Algebra.Bundles.CommutativeSemigroup._.rawMagma"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T202 -> T8
d260 v0 v1 v2 = du260 v2
du260 :: T202 -> T8
du260 v0
  = let v1 = du254 (coe v0) in coe (du74 (coe (du128 (coe v1))))
name266 = "Algebra.Bundles.Semilattice"
d266 a0 a1 = ()
data T266
  = C1051 (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T230
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
      C1051 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name286 = "Algebra.Bundles.Semilattice.isSemilattice"
d286 :: T266 -> MAlonzo.Code.Algebra.Structures.T230
d286 v0
  = case coe v0 of
      C1051 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name290 = "Algebra.Bundles.Semilattice._.assoc"
d290 :: T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d290 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d158
               (coe
                  (MAlonzo.Code.Algebra.Structures.d238 (coe (d286 (coe v0))))))))
name292 = "Algebra.Bundles.Semilattice._.comm"
d292 :: T266 -> AgdaAny -> AgdaAny -> AgdaAny
d292 v0
  = coe (MAlonzo.Code.Algebra.Structures.d240 (coe (d286 (coe v0))))
name294 = "Algebra.Bundles.Semilattice._.idem"
d294 :: T266 -> AgdaAny -> AgdaAny
d294 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d160
         (coe (MAlonzo.Code.Algebra.Structures.d238 (coe (d286 (coe v0))))))
name296 = "Algebra.Bundles.Semilattice._.isBand"
d296 :: T266 -> MAlonzo.Code.Algebra.Structures.T150
d296 v0
  = coe (MAlonzo.Code.Algebra.Structures.d238 (coe (d286 (coe v0))))
name298 = "Algebra.Bundles.Semilattice._.isEquivalence"
d298 :: T266 -> MAlonzo.Code.Relation.Binary.Structures.T26
d298 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d158
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d238 (coe (d286 (coe v0))))))))))
name300 = "Algebra.Bundles.Semilattice._.isMagma"
d300 :: T266 -> MAlonzo.Code.Algebra.Structures.T78
d300 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d158
               (coe
                  (MAlonzo.Code.Algebra.Structures.d238 (coe (d286 (coe v0))))))))
name302 = "Algebra.Bundles.Semilattice._.isPartialEquivalence"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T266 -> MAlonzo.Code.Relation.Binary.Structures.T16
d302 v0 v1 v2 = du302 v2
du302 :: T266 -> MAlonzo.Code.Relation.Binary.Structures.T16
du302 v0
  = let v1 = d286 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d238 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d158 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d122 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v4))))
name304 = "Algebra.Bundles.Semilattice._.isSemigroup"
d304 :: T266 -> MAlonzo.Code.Algebra.Structures.T114
d304 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d158
         (coe (MAlonzo.Code.Algebra.Structures.d238 (coe (d286 (coe v0))))))
name306 = "Algebra.Bundles.Semilattice._.refl"
d306 :: T266 -> AgdaAny -> AgdaAny
d306 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d158
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d238
                                 (coe (d286 (coe v0))))))))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d238 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d158 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d122 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v4))) v5)
name310 = "Algebra.Bundles.Semilattice._.setoid"
d310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T266 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d310 v0 v1 v2 = du310 v2
du310 :: T266 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du310 v0
  = let v1 = d286 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d238 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d158 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name312 = "Algebra.Bundles.Semilattice._.sym"
d312 :: T266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d312 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d158
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d238
                                 (coe (d286 (coe v0))))))))))))
name314 = "Algebra.Bundles.Semilattice._.trans"
d314 ::
  T266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d314 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d158
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d238
                                 (coe (d286 (coe v0))))))))))))
name316 = "Algebra.Bundles.Semilattice._.∙-cong"
d316 ::
  T266 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d316 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d158
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d238 (coe (d286 (coe v0))))))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d238 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d158 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d238 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d158 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name322 = "Algebra.Bundles.Semilattice.band"
d322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T266 -> T138
d322 v0 v1 v2 = du322 v2
du322 :: T266 -> T138
du322 v0
  = coe
      (\ v1 v2 v3 v4 -> C527 v3 v4) erased erased (d284 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d238 (coe (d286 (coe v0))))
name326 = "Algebra.Bundles.Semilattice._.magma"
d326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T266 -> T30
d326 v0 v1 v2 = du326 v2
du326 :: T266 -> T30
du326 v0
  = let v1 = du322 (coe v0) in coe (du128 (coe (du190 (coe v1))))
name328 = "Algebra.Bundles.Semilattice._.rawMagma"
d328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T266 -> T8
d328 v0 v1 v2 = du328 v2
du328 :: T266 -> T8
du328 v0
  = let v1 = du322 (coe v0) in
    let v2 = du190 (coe v1) in coe (du74 (coe (du128 (coe v2))))
name330 = "Algebra.Bundles.Semilattice._.semigroup"
d330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T266 -> T80
d330 v0 v1 v2 = du330 v2
du330 :: T266 -> T80
du330 v0 = coe (du190 (coe (du322 (coe v0))))
name336 = "Algebra.Bundles.SelectiveMagma"
d336 a0 a1 = ()
data T336
  = C1339 (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T274
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
      C1339 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name356 = "Algebra.Bundles.SelectiveMagma.isSelectiveMagma"
d356 :: T336 -> MAlonzo.Code.Algebra.Structures.T274
d356 v0
  = case coe v0 of
      C1339 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name360 = "Algebra.Bundles.SelectiveMagma._.isEquivalence"
d360 :: T336 -> MAlonzo.Code.Relation.Binary.Structures.T26
d360 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe (MAlonzo.Code.Algebra.Structures.d282 (coe (d356 (coe v0))))))
name362 = "Algebra.Bundles.SelectiveMagma._.isMagma"
d362 :: T336 -> MAlonzo.Code.Algebra.Structures.T78
d362 v0
  = coe (MAlonzo.Code.Algebra.Structures.d282 (coe (d356 (coe v0))))
name364 = "Algebra.Bundles.SelectiveMagma._.isPartialEquivalence"
d364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> MAlonzo.Code.Relation.Binary.Structures.T16
d364 v0 v1 v2 = du364 v2
du364 :: T336 -> MAlonzo.Code.Relation.Binary.Structures.T16
du364 v0
  = let v1 = d356 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d282 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v2))))
name366 = "Algebra.Bundles.SelectiveMagma._.refl"
d366 :: T336 -> AgdaAny -> AgdaAny
d366 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d282 (coe (d356 (coe v0))))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d282 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v2))) v3)
name370 = "Algebra.Bundles.SelectiveMagma._.sel"
d370 ::
  T336 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d370 v0
  = coe (MAlonzo.Code.Algebra.Structures.d284 (coe (d356 (coe v0))))
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
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d282 (coe v1))))
name374 = "Algebra.Bundles.SelectiveMagma._.sym"
d374 :: T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d374 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d282 (coe (d356 (coe v0))))))))
name376 = "Algebra.Bundles.SelectiveMagma._.trans"
d376 ::
  T336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d376 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d282 (coe (d356 (coe v0))))))))
name378 = "Algebra.Bundles.SelectiveMagma._.∙-cong"
d378 ::
  T336 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d378 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe (MAlonzo.Code.Algebra.Structures.d282 (coe (d356 (coe v0))))))
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
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d282 (coe v1))))
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
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d282 (coe v1))))
name384 = "Algebra.Bundles.SelectiveMagma.magma"
d384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T336 -> T30
d384 v0 v1 v2 = du384 v2
du384 :: T336 -> T30
du384 v0
  = coe
      (\ v1 v2 v3 v4 -> C77 v3 v4) erased erased (d354 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d282 (coe (d356 (coe v0))))
name388 = "Algebra.Bundles.SelectiveMagma._.rawMagma"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T336 -> T8
d388 v0 v1 v2 = du388 v2
du388 :: T336 -> T8
du388 v0 = coe (du74 (coe (du384 (coe v0))))
name394 = "Algebra.Bundles.RawMonoid"
d394 a0 a1 = ()
data T394 = C1567 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
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
      C1567 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name414 = "Algebra.Bundles.RawMonoid.ε"
d414 :: T394 -> AgdaAny
d414 v0
  = case coe v0 of
      C1567 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name416 = "Algebra.Bundles.RawMonoid.rawMagma"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T394 -> T8
d416 v0 v1 v2 = du416 v2
du416 :: T394 -> T8
du416 v0 = coe (\ v1 v2 v3 -> C3 v3) erased erased (d412 (coe v0))
name422 = "Algebra.Bundles.Monoid"
d422 a0 a1 = ()
data T422
  = C1701 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T312
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
      C1701 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name444 = "Algebra.Bundles.Monoid.ε"
d444 :: T422 -> AgdaAny
d444 v0
  = case coe v0 of
      C1701 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name446 = "Algebra.Bundles.Monoid.isMonoid"
d446 :: T422 -> MAlonzo.Code.Algebra.Structures.T312
d446 v0
  = case coe v0 of
      C1701 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name450 = "Algebra.Bundles.Monoid._.assoc"
d450 :: T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d450 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe (MAlonzo.Code.Algebra.Structures.d322 (coe (d446 (coe v0))))))
name452 = "Algebra.Bundles.Monoid._.identity"
d452 :: T422 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d452 v0
  = coe (MAlonzo.Code.Algebra.Structures.d324 (coe (d446 (coe v0))))
name454 = "Algebra.Bundles.Monoid._.identityʳ"
d454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> AgdaAny -> AgdaAny
d454 v0 v1 v2 = du454 v2
du454 :: T422 -> AgdaAny -> AgdaAny
du454 v0
  = let v1 = d446 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v1))))
name456 = "Algebra.Bundles.Monoid._.identityˡ"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> AgdaAny -> AgdaAny
d456 v0 v1 v2 = du456 v2
du456 :: T422 -> AgdaAny -> AgdaAny
du456 v0
  = let v1 = d446 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v1))))
name458 = "Algebra.Bundles.Monoid._.isEquivalence"
d458 :: T422 -> MAlonzo.Code.Relation.Binary.Structures.T26
d458 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322 (coe (d446 (coe v0))))))))
name460 = "Algebra.Bundles.Monoid._.isMagma"
d460 :: T422 -> MAlonzo.Code.Algebra.Structures.T78
d460 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe (MAlonzo.Code.Algebra.Structures.d322 (coe (d446 (coe v0))))))
name462 = "Algebra.Bundles.Monoid._.isPartialEquivalence"
d462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T422 -> MAlonzo.Code.Relation.Binary.Structures.T16
d462 v0 v1 v2 = du462 v2
du462 :: T422 -> MAlonzo.Code.Relation.Binary.Structures.T16
du462 v0
  = let v1 = d446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d322 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d122 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v3))))
name464 = "Algebra.Bundles.Monoid._.isSemigroup"
d464 :: T422 -> MAlonzo.Code.Algebra.Structures.T114
d464 v0
  = coe (MAlonzo.Code.Algebra.Structures.d322 (coe (d446 (coe v0))))
name466 = "Algebra.Bundles.Monoid._.refl"
d466 :: T422 -> AgdaAny -> AgdaAny
d466 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322 (coe (d446 (coe v0))))))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d322 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d122 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v3))) v4)
name470 = "Algebra.Bundles.Monoid._.setoid"
d470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T422 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d470 v0 v1 v2 = du470 v2
du470 :: T422 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du470 v0
  = let v1 = d446 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d322 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v2))))
name472 = "Algebra.Bundles.Monoid._.sym"
d472 :: T422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d472 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322 (coe (d446 (coe v0))))))))))
name474 = "Algebra.Bundles.Monoid._.trans"
d474 ::
  T422 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d474 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322 (coe (d446 (coe v0))))))))))
name476 = "Algebra.Bundles.Monoid._.∙-cong"
d476 ::
  T422 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d476 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322 (coe (d446 (coe v0))))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d322 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v2))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d322 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v2))))
name482 = "Algebra.Bundles.Monoid.semigroup"
d482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> T80
d482 v0 v1 v2 = du482 v2
du482 :: T422 -> T80
du482 v0
  = coe
      (\ v1 v2 v3 v4 -> C291 v3 v4) erased erased (d442 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d322 (coe (d446 (coe v0))))
name484 = "Algebra.Bundles.Monoid.rawMonoid"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> T394
d484 v0 v1 v2 = du484 v2
du484 :: T422 -> T394
du484 v0
  = coe
      (\ v1 v2 v3 v4 -> C1567 v3 v4) erased erased (d442 (coe v0))
      (d444 (coe v0))
name488 = "Algebra.Bundles.Monoid._.magma"
d488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> T30
d488 v0 v1 v2 = du488 v2
du488 :: T422 -> T30
du488 v0 = coe (du128 (coe (du482 (coe v0))))
name490 = "Algebra.Bundles.Monoid._.rawMagma"
d490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T422 -> T8
d490 v0 v1 v2 = du490 v2
du490 :: T422 -> T8
du490 v0
  = let v1 = du482 (coe v0) in coe (du74 (coe (du128 (coe v1))))
name496 = "Algebra.Bundles.CommutativeMonoid"
d496 a0 a1 = ()
data T496
  = C2037 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T360
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
      C2037 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name518 = "Algebra.Bundles.CommutativeMonoid.ε"
d518 :: T496 -> AgdaAny
d518 v0
  = case coe v0 of
      C2037 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name520 = "Algebra.Bundles.CommutativeMonoid.isCommutativeMonoid"
d520 :: T496 -> MAlonzo.Code.Algebra.Structures.T360
d520 v0
  = case coe v0 of
      C2037 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name524 = "Algebra.Bundles.CommutativeMonoid._.assoc"
d524 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d524 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370 (coe (d520 (coe v0))))))))
name526 = "Algebra.Bundles.CommutativeMonoid._.comm"
d526 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny
d526 v0
  = coe (MAlonzo.Code.Algebra.Structures.d372 (coe (d520 (coe v0))))
name528 = "Algebra.Bundles.CommutativeMonoid._.identity"
d528 :: T496 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d528 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe (MAlonzo.Code.Algebra.Structures.d370 (coe (d520 (coe v0))))))
name530 = "Algebra.Bundles.CommutativeMonoid._.identityʳ"
d530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> AgdaAny -> AgdaAny
d530 v0 v1 v2 = du530 v2
du530 :: T496 -> AgdaAny -> AgdaAny
du530 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d370 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v2))))
name532 = "Algebra.Bundles.CommutativeMonoid._.identityˡ"
d532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> AgdaAny -> AgdaAny
d532 v0 v1 v2 = du532 v2
du532 :: T496 -> AgdaAny -> AgdaAny
du532 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d370 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v2))))
name534
  = "Algebra.Bundles.CommutativeMonoid._.isCommutativeSemigroup"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Algebra.Structures.T190
d534 v0 v1 v2 = du534 v2
du534 :: T496 -> MAlonzo.Code.Algebra.Structures.T190
du534 v0
  = coe (MAlonzo.Code.Algebra.Structures.du408 (coe (d520 (coe v0))))
name536 = "Algebra.Bundles.CommutativeMonoid._.isEquivalence"
d536 :: T496 -> MAlonzo.Code.Relation.Binary.Structures.T26
d536 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370 (coe (d520 (coe v0))))))))))
name538 = "Algebra.Bundles.CommutativeMonoid._.isMagma"
d538 :: T496 -> MAlonzo.Code.Algebra.Structures.T78
d538 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370 (coe (d520 (coe v0))))))))
name540 = "Algebra.Bundles.CommutativeMonoid._.isMonoid"
d540 :: T496 -> MAlonzo.Code.Algebra.Structures.T312
d540 v0
  = coe (MAlonzo.Code.Algebra.Structures.d370 (coe (d520 (coe v0))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d370 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d122 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v4))))
name544 = "Algebra.Bundles.CommutativeMonoid._.isSemigroup"
d544 :: T496 -> MAlonzo.Code.Algebra.Structures.T114
d544 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe (MAlonzo.Code.Algebra.Structures.d370 (coe (d520 (coe v0))))))
name546 = "Algebra.Bundles.CommutativeMonoid._.refl"
d546 :: T496 -> AgdaAny -> AgdaAny
d546 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe (d520 (coe v0))))))))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d370 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d122 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v4))) v5)
name550 = "Algebra.Bundles.CommutativeMonoid._.setoid"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d550 v0 v1 v2 = du550 v2
du550 :: T496 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du550 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d370 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name552 = "Algebra.Bundles.CommutativeMonoid._.sym"
d552 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d552 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe (d520 (coe v0))))))))))))
name554 = "Algebra.Bundles.CommutativeMonoid._.trans"
d554 ::
  T496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d554 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe (d520 (coe v0))))))))))))
name556 = "Algebra.Bundles.CommutativeMonoid._.∙-cong"
d556 ::
  T496 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d556 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370 (coe (d520 (coe v0))))))))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d370 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
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
    let v2 = MAlonzo.Code.Algebra.Structures.d370 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name562 = "Algebra.Bundles.CommutativeMonoid.monoid"
d562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T422
d562 v0 v1 v2 = du562 v2
du562 :: T496 -> T422
du562 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1701 v3 v4 v5) erased erased (d516 (coe v0))
      (d518 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d370 (coe (d520 (coe v0))))
name566 = "Algebra.Bundles.CommutativeMonoid._.magma"
d566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T30
d566 v0 v1 v2 = du566 v2
du566 :: T496 -> T30
du566 v0
  = let v1 = du562 (coe v0) in coe (du128 (coe (du482 (coe v1))))
name568 = "Algebra.Bundles.CommutativeMonoid._.rawMagma"
d568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T8
d568 v0 v1 v2 = du568 v2
du568 :: T496 -> T8
du568 v0
  = let v1 = du562 (coe v0) in
    let v2 = du482 (coe v1) in coe (du74 (coe (du128 (coe v2))))
name570 = "Algebra.Bundles.CommutativeMonoid._.rawMonoid"
d570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T394
d570 v0 v1 v2 = du570 v2
du570 :: T496 -> T394
du570 v0 = coe (du484 (coe (du562 (coe v0))))
name572 = "Algebra.Bundles.CommutativeMonoid._.semigroup"
d572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T80
d572 v0 v1 v2 = du572 v2
du572 :: T496 -> T80
du572 v0 = coe (du482 (coe (du562 (coe v0))))
name578 = "Algebra.Bundles.IdempotentCommutativeMonoid"
d578 a0 a1 = ()
data T578
  = C2365 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T414
name594 = "Algebra.Bundles.IdempotentCommutativeMonoid.Carrier"
d594 :: T578 -> ()
d594 = erased
name596 = "Algebra.Bundles.IdempotentCommutativeMonoid._≈_"
d596 :: T578 -> AgdaAny -> AgdaAny -> ()
d596 = erased
name598 = "Algebra.Bundles.IdempotentCommutativeMonoid._∙_"
d598 :: T578 -> AgdaAny -> AgdaAny -> AgdaAny
d598 v0
  = case coe v0 of
      C2365 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name600 = "Algebra.Bundles.IdempotentCommutativeMonoid.ε"
d600 :: T578 -> AgdaAny
d600 v0
  = case coe v0 of
      C2365 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name602
  = "Algebra.Bundles.IdempotentCommutativeMonoid.isIdempotentCommutativeMonoid"
d602 :: T578 -> MAlonzo.Code.Algebra.Structures.T414
d602 v0
  = case coe v0 of
      C2365 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name606 = "Algebra.Bundles.IdempotentCommutativeMonoid._.assoc"
d606 :: T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d606 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))))))))
name608 = "Algebra.Bundles.IdempotentCommutativeMonoid._.comm"
d608 :: T578 -> AgdaAny -> AgdaAny -> AgdaAny
d608 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d372
         (coe (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))))
name610 = "Algebra.Bundles.IdempotentCommutativeMonoid._.idem"
d610 :: T578 -> AgdaAny -> AgdaAny
d610 v0
  = coe (MAlonzo.Code.Algebra.Structures.d426 (coe (d602 (coe v0))))
name612 = "Algebra.Bundles.IdempotentCommutativeMonoid._.identity"
d612 :: T578 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d612 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe
                  (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))))))
name614 = "Algebra.Bundles.IdempotentCommutativeMonoid._.identityʳ"
d614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> AgdaAny -> AgdaAny
d614 v0 v1 v2 = du614 v2
du614 :: T578 -> AgdaAny -> AgdaAny
du614 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name616 = "Algebra.Bundles.IdempotentCommutativeMonoid._.identityˡ"
d616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> AgdaAny -> AgdaAny
d616 v0 v1 v2 = du616 v2
du616 :: T578 -> AgdaAny -> AgdaAny
du616 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name618
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isCommutativeMonoid"
d618 :: T578 -> MAlonzo.Code.Algebra.Structures.T360
d618 v0
  = coe (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))
name620
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isCommutativeSemigroup"
d620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T578 -> MAlonzo.Code.Algebra.Structures.T190
d620 v0 v1 v2 = du620 v2
du620 :: T578 -> MAlonzo.Code.Algebra.Structures.T190
du620 v0
  = let v1 = d602 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du408
         (coe (MAlonzo.Code.Algebra.Structures.d424 (coe v1))))
name622
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isEquivalence"
d622 :: T578 -> MAlonzo.Code.Relation.Binary.Structures.T26
d622 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d424
                                 (coe (d602 (coe v0))))))))))))
name624 = "Algebra.Bundles.IdempotentCommutativeMonoid._.isMagma"
d624 :: T578 -> MAlonzo.Code.Algebra.Structures.T78
d624 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))))))))
name626 = "Algebra.Bundles.IdempotentCommutativeMonoid._.isMonoid"
d626 :: T578 -> MAlonzo.Code.Algebra.Structures.T312
d626 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d370
         (coe (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))))
name628
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isPartialEquivalence"
d628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T578 -> MAlonzo.Code.Relation.Binary.Structures.T16
d628 v0 v1 v2 = du628 v2
du628 :: T578 -> MAlonzo.Code.Relation.Binary.Structures.T16
du628 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d122 (coe v4) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v5))))
name630
  = "Algebra.Bundles.IdempotentCommutativeMonoid._.isSemigroup"
d630 :: T578 -> MAlonzo.Code.Algebra.Structures.T114
d630 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe
                  (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))))))
name632 = "Algebra.Bundles.IdempotentCommutativeMonoid._.refl"
d632 :: T578 -> AgdaAny -> AgdaAny
d632 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d424
                                       (coe (d602 (coe v0))))))))))))))
name634 = "Algebra.Bundles.IdempotentCommutativeMonoid._.reflexive"
d634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T578 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d634 v0 v1 v2 = du634 v2
du634 ::
  T578 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du634 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d122 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v5))) v6)
name636 = "Algebra.Bundles.IdempotentCommutativeMonoid._.setoid"
d636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T578 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d636 v0 v1 v2 = du636 v2
du636 :: T578 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du636 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name638 = "Algebra.Bundles.IdempotentCommutativeMonoid._.sym"
d638 :: T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d638 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d424
                                       (coe (d602 (coe v0))))))))))))))
name640 = "Algebra.Bundles.IdempotentCommutativeMonoid._.trans"
d640 ::
  T578 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d640 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d424
                                       (coe (d602 (coe v0))))))))))))))
name642 = "Algebra.Bundles.IdempotentCommutativeMonoid._.∙-cong"
d642 ::
  T578 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d642 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d424
                                 (coe (d602 (coe v0))))))))))))
name644 = "Algebra.Bundles.IdempotentCommutativeMonoid._.∙-congʳ"
d644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d644 v0 v1 v2 = du644 v2
du644 ::
  T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du644 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name646 = "Algebra.Bundles.IdempotentCommutativeMonoid._.∙-congˡ"
d646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d646 v0 v1 v2 = du646 v2
du646 ::
  T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du646 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name648
  = "Algebra.Bundles.IdempotentCommutativeMonoid.commutativeMonoid"
d648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> T496
d648 v0 v1 v2 = du648 v2
du648 :: T578 -> T496
du648 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C2037 v3 v4 v5) erased erased (d598 (coe v0))
      (d600 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))
name652 = "Algebra.Bundles.IdempotentCommutativeMonoid._.magma"
d652 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> T30
d652 v0 v1 v2 = du652 v2
du652 :: T578 -> T30
du652 v0
  = let v1 = du648 (coe v0) in
    let v2 = du562 (coe v1) in coe (du128 (coe (du482 (coe v2))))
name654 = "Algebra.Bundles.IdempotentCommutativeMonoid._.monoid"
d654 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> T422
d654 v0 v1 v2 = du654 v2
du654 :: T578 -> T422
du654 v0 = coe (du562 (coe (du648 (coe v0))))
name656 = "Algebra.Bundles.IdempotentCommutativeMonoid._.rawMagma"
d656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> T8
d656 v0 v1 v2 = du656 v2
du656 :: T578 -> T8
du656 v0
  = let v1 = du648 (coe v0) in
    let v2 = du562 (coe v1) in
    let v3 = du482 (coe v2) in coe (du74 (coe (du128 (coe v3))))
name658 = "Algebra.Bundles.IdempotentCommutativeMonoid._.rawMonoid"
d658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> T394
d658 v0 v1 v2 = du658 v2
du658 :: T578 -> T394
du658 v0
  = let v1 = du648 (coe v0) in coe (du484 (coe (du562 (coe v1))))
name660 = "Algebra.Bundles.IdempotentCommutativeMonoid._.semigroup"
d660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> T80
d660 v0 v1 v2 = du660 v2
du660 :: T578 -> T80
du660 v0
  = let v1 = du648 (coe v0) in coe (du482 (coe (du562 (coe v1))))
name662 = "Algebra.Bundles.BoundedLattice"
d662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d662 = erased
name672 = "Algebra.Bundles.BoundedLattice._∙_"
d672 :: T578 -> AgdaAny -> AgdaAny -> AgdaAny
d672 v0 = coe (d598 (coe v0))
name674 = "Algebra.Bundles.BoundedLattice._≈_"
d674 :: T578 -> AgdaAny -> AgdaAny -> ()
d674 = erased
name676 = "Algebra.Bundles.BoundedLattice.Carrier"
d676 :: T578 -> ()
d676 = erased
name678 = "Algebra.Bundles.BoundedLattice.assoc"
d678 :: T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d678 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))))))))
name680 = "Algebra.Bundles.BoundedLattice.comm"
d680 :: T578 -> AgdaAny -> AgdaAny -> AgdaAny
d680 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d372
         (coe (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))))
name682 = "Algebra.Bundles.BoundedLattice.commutativeMonoid"
d682 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> T496
d682 v0 v1 v2 = du682 v2
du682 :: T578 -> T496
du682 v0 = coe (du648 (coe v0))
name684 = "Algebra.Bundles.BoundedLattice.idem"
d684 :: T578 -> AgdaAny -> AgdaAny
d684 v0
  = coe (MAlonzo.Code.Algebra.Structures.d426 (coe (d602 (coe v0))))
name686 = "Algebra.Bundles.BoundedLattice.identity"
d686 :: T578 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d686 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe
                  (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))))))
name688 = "Algebra.Bundles.BoundedLattice.identityʳ"
d688 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> AgdaAny -> AgdaAny
d688 v0 v1 v2 = du688 v2
du688 :: T578 -> AgdaAny -> AgdaAny
du688 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name690 = "Algebra.Bundles.BoundedLattice.identityˡ"
d690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> AgdaAny -> AgdaAny
d690 v0 v1 v2 = du690 v2
du690 :: T578 -> AgdaAny -> AgdaAny
du690 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name692 = "Algebra.Bundles.BoundedLattice.isCommutativeMonoid"
d692 :: T578 -> MAlonzo.Code.Algebra.Structures.T360
d692 v0
  = coe (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))
name694 = "Algebra.Bundles.BoundedLattice.isCommutativeSemigroup"
d694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T578 -> MAlonzo.Code.Algebra.Structures.T190
d694 v0 v1 v2 = du694 v2
du694 :: T578 -> MAlonzo.Code.Algebra.Structures.T190
du694 v0
  = let v1 = d602 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du408
         (coe (MAlonzo.Code.Algebra.Structures.d424 (coe v1))))
name696 = "Algebra.Bundles.BoundedLattice.isEquivalence"
d696 :: T578 -> MAlonzo.Code.Relation.Binary.Structures.T26
d696 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d424
                                 (coe (d602 (coe v0))))))))))))
name698
  = "Algebra.Bundles.BoundedLattice.isIdempotentCommutativeMonoid"
d698 :: T578 -> MAlonzo.Code.Algebra.Structures.T414
d698 v0 = coe (d602 (coe v0))
name700 = "Algebra.Bundles.BoundedLattice.isMagma"
d700 :: T578 -> MAlonzo.Code.Algebra.Structures.T78
d700 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))))))))
name702 = "Algebra.Bundles.BoundedLattice.isMonoid"
d702 :: T578 -> MAlonzo.Code.Algebra.Structures.T312
d702 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d370
         (coe (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))))
name704 = "Algebra.Bundles.BoundedLattice.isPartialEquivalence"
d704 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T578 -> MAlonzo.Code.Relation.Binary.Structures.T16
d704 v0 v1 v2 = du704 v2
du704 :: T578 -> MAlonzo.Code.Relation.Binary.Structures.T16
du704 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d122 (coe v4) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v5))))
name706 = "Algebra.Bundles.BoundedLattice.isSemigroup"
d706 :: T578 -> MAlonzo.Code.Algebra.Structures.T114
d706 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe
                  (MAlonzo.Code.Algebra.Structures.d424 (coe (d602 (coe v0))))))))
name708 = "Algebra.Bundles.BoundedLattice.magma"
d708 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> T30
d708 v0 v1 v2 = du708 v2
du708 :: T578 -> T30
du708 v0
  = let v1 = du648 (coe v0) in
    let v2 = du562 (coe v1) in coe (du128 (coe (du482 (coe v2))))
name710 = "Algebra.Bundles.BoundedLattice.monoid"
d710 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> T422
d710 v0 v1 v2 = du710 v2
du710 :: T578 -> T422
du710 v0 = coe (du562 (coe (du648 (coe v0))))
name712 = "Algebra.Bundles.BoundedLattice.rawMagma"
d712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> T8
d712 v0 v1 v2 = du712 v2
du712 :: T578 -> T8
du712 v0
  = let v1 = du648 (coe v0) in
    let v2 = du562 (coe v1) in
    let v3 = du482 (coe v2) in coe (du74 (coe (du128 (coe v3))))
name714 = "Algebra.Bundles.BoundedLattice.rawMonoid"
d714 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> T394
d714 v0 v1 v2 = du714 v2
du714 :: T578 -> T394
du714 v0
  = let v1 = du648 (coe v0) in coe (du484 (coe (du562 (coe v1))))
name716 = "Algebra.Bundles.BoundedLattice.refl"
d716 :: T578 -> AgdaAny -> AgdaAny
d716 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d424
                                       (coe (d602 (coe v0))))))))))))))
name718 = "Algebra.Bundles.BoundedLattice.reflexive"
d718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T578 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d718 v0 v1 v2 = du718 v2
du718 ::
  T578 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du718 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d122 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v5))) v6)
name720 = "Algebra.Bundles.BoundedLattice.semigroup"
d720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T578 -> T80
d720 v0 v1 v2 = du720 v2
du720 :: T578 -> T80
du720 v0
  = let v1 = du648 (coe v0) in coe (du482 (coe (du562 (coe v1))))
name722 = "Algebra.Bundles.BoundedLattice.setoid"
d722 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T578 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d722 v0 v1 v2 = du722 v2
du722 :: T578 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du722 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name724 = "Algebra.Bundles.BoundedLattice.sym"
d724 :: T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d724 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d424
                                       (coe (d602 (coe v0))))))))))))))
name726 = "Algebra.Bundles.BoundedLattice.trans"
d726 ::
  T578 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d726 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d424
                                       (coe (d602 (coe v0))))))))))))))
name728 = "Algebra.Bundles.BoundedLattice.ε"
d728 :: T578 -> AgdaAny
d728 v0 = coe (d600 (coe v0))
name730 = "Algebra.Bundles.BoundedLattice.∙-cong"
d730 ::
  T578 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d730 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d424
                                 (coe (d602 (coe v0))))))))))))
name732 = "Algebra.Bundles.BoundedLattice.∙-congʳ"
d732 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d732 v0 v1 v2 = du732 v2
du732 ::
  T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du732 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name734 = "Algebra.Bundles.BoundedLattice.∙-congˡ"
d734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d734 v0 v1 v2 = du734 v2
du734 ::
  T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du734 v0
  = let v1 = d602 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d424 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name740 = "Algebra.Bundles.RawGroup"
d740 a0 a1 = ()
data T740
  = C2789 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny)
name756 = "Algebra.Bundles.RawGroup.Carrier"
d756 :: T740 -> ()
d756 = erased
name758 = "Algebra.Bundles.RawGroup._≈_"
d758 :: T740 -> AgdaAny -> AgdaAny -> ()
d758 = erased
name760 = "Algebra.Bundles.RawGroup._∙_"
d760 :: T740 -> AgdaAny -> AgdaAny -> AgdaAny
d760 v0
  = case coe v0 of
      C2789 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name762 = "Algebra.Bundles.RawGroup.ε"
d762 :: T740 -> AgdaAny
d762 v0
  = case coe v0 of
      C2789 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name764 = "Algebra.Bundles.RawGroup._⁻¹"
d764 :: T740 -> AgdaAny -> AgdaAny
d764 v0
  = case coe v0 of
      C2789 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name766 = "Algebra.Bundles.RawGroup.rawMonoid"
d766 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T740 -> T394
d766 v0 v1 v2 = du766 v2
du766 :: T740 -> T394
du766 v0
  = coe
      (\ v1 v2 v3 v4 -> C1567 v3 v4) erased erased (d760 (coe v0))
      (d762 (coe v0))
name770 = "Algebra.Bundles.RawGroup._.rawMagma"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T740 -> T8
d770 v0 v1 v2 = du770 v2
du770 :: T740 -> T8
du770 v0 = coe (du416 (coe (du766 (coe v0))))
name776 = "Algebra.Bundles.Group"
d776 a0 a1 = ()
data T776
  = C2945 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny) MAlonzo.Code.Algebra.Structures.T526
name794 = "Algebra.Bundles.Group.Carrier"
d794 :: T776 -> ()
d794 = erased
name796 = "Algebra.Bundles.Group._≈_"
d796 :: T776 -> AgdaAny -> AgdaAny -> ()
d796 = erased
name798 = "Algebra.Bundles.Group._∙_"
d798 :: T776 -> AgdaAny -> AgdaAny -> AgdaAny
d798 v0
  = case coe v0 of
      C2945 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name800 = "Algebra.Bundles.Group.ε"
d800 :: T776 -> AgdaAny
d800 v0
  = case coe v0 of
      C2945 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name802 = "Algebra.Bundles.Group._⁻¹"
d802 :: T776 -> AgdaAny -> AgdaAny
d802 v0
  = case coe v0 of
      C2945 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name804 = "Algebra.Bundles.Group.isGroup"
d804 :: T776 -> MAlonzo.Code.Algebra.Structures.T526
d804 v0
  = case coe v0 of
      C2945 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name808 = "Algebra.Bundles.Group._._-_"
d808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T776 -> AgdaAny -> AgdaAny -> AgdaAny
d808 v0 v1 v2 = du808 v2
du808 :: T776 -> AgdaAny -> AgdaAny -> AgdaAny
du808 v0
  = let v1 = d798 (coe v0) in
    let v2 = d802 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name810 = "Algebra.Bundles.Group._.assoc"
d810 :: T776 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d810 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d540 (coe (d804 (coe v0))))))))
name812 = "Algebra.Bundles.Group._.identity"
d812 :: T776 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d812 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe (MAlonzo.Code.Algebra.Structures.d540 (coe (d804 (coe v0))))))
name814 = "Algebra.Bundles.Group._.identityʳ"
d814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T776 -> AgdaAny -> AgdaAny
d814 v0 v1 v2 = du814 v2
du814 :: T776 -> AgdaAny -> AgdaAny
du814 v0
  = let v1 = d804 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d540 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v2))))
name816 = "Algebra.Bundles.Group._.identityˡ"
d816 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T776 -> AgdaAny -> AgdaAny
d816 v0 v1 v2 = du816 v2
du816 :: T776 -> AgdaAny -> AgdaAny
du816 v0
  = let v1 = d804 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d540 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v2))))
name818 = "Algebra.Bundles.Group._.inverse"
d818 :: T776 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d818 v0
  = coe (MAlonzo.Code.Algebra.Structures.d542 (coe (d804 (coe v0))))
name820 = "Algebra.Bundles.Group._.inverseʳ"
d820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T776 -> AgdaAny -> AgdaAny
d820 v0 v1 v2 = du820 v2
du820 :: T776 -> AgdaAny -> AgdaAny
du820 v0
  = let v1 = d804 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d542 (coe v1))))
name822 = "Algebra.Bundles.Group._.inverseˡ"
d822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T776 -> AgdaAny -> AgdaAny
d822 v0 v1 v2 = du822 v2
du822 :: T776 -> AgdaAny -> AgdaAny
du822 v0
  = let v1 = d804 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d542 (coe v1))))
name824 = "Algebra.Bundles.Group._.isEquivalence"
d824 :: T776 -> MAlonzo.Code.Relation.Binary.Structures.T26
d824 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d540 (coe (d804 (coe v0))))))))))
name826 = "Algebra.Bundles.Group._.isMagma"
d826 :: T776 -> MAlonzo.Code.Algebra.Structures.T78
d826 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d540 (coe (d804 (coe v0))))))))
name828 = "Algebra.Bundles.Group._.isMonoid"
d828 :: T776 -> MAlonzo.Code.Algebra.Structures.T312
d828 v0
  = coe (MAlonzo.Code.Algebra.Structures.d540 (coe (d804 (coe v0))))
name830 = "Algebra.Bundles.Group._.isPartialEquivalence"
d830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T776 -> MAlonzo.Code.Relation.Binary.Structures.T16
d830 v0 v1 v2 = du830 v2
du830 :: T776 -> MAlonzo.Code.Relation.Binary.Structures.T16
du830 v0
  = let v1 = d804 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d122 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v4))))
name832 = "Algebra.Bundles.Group._.isSemigroup"
d832 :: T776 -> MAlonzo.Code.Algebra.Structures.T114
d832 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe (MAlonzo.Code.Algebra.Structures.d540 (coe (d804 (coe v0))))))
name834 = "Algebra.Bundles.Group._.refl"
d834 :: T776 -> AgdaAny -> AgdaAny
d834 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d540
                                 (coe (d804 (coe v0))))))))))))
name836 = "Algebra.Bundles.Group._.reflexive"
d836 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T776 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d836 v0 v1 v2 = du836 v2
du836 ::
  T776 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du836 v0
  = let v1 = d804 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d122 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v4))) v5)
name838 = "Algebra.Bundles.Group._.setoid"
d838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T776 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d838 v0 v1 v2 = du838 v2
du838 :: T776 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du838 v0
  = let v1 = d804 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name840 = "Algebra.Bundles.Group._.sym"
d840 :: T776 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d840 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d540
                                 (coe (d804 (coe v0))))))))))))
name842 = "Algebra.Bundles.Group._.trans"
d842 ::
  T776 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d842 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d540
                                 (coe (d804 (coe v0))))))))))))
name844 = "Algebra.Bundles.Group._.uniqueʳ-⁻¹"
d844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T776 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d844 v0 v1 v2 = du844 v2
du844 :: T776 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du844 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du600
         (coe (d798 (coe v0))) (coe (d800 (coe v0))) (coe (d802 (coe v0)))
         (coe (d804 (coe v0))))
name846 = "Algebra.Bundles.Group._.uniqueˡ-⁻¹"
d846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T776 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d846 v0 v1 v2 = du846 v2
du846 :: T776 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du846 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du594
         (coe (d798 (coe v0))) (coe (d800 (coe v0))) (coe (d802 (coe v0)))
         (coe (d804 (coe v0))))
name848 = "Algebra.Bundles.Group._.⁻¹-cong"
d848 :: T776 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d848 v0
  = coe (MAlonzo.Code.Algebra.Structures.d544 (coe (d804 (coe v0))))
name850 = "Algebra.Bundles.Group._.∙-cong"
d850 ::
  T776 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d850 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d540 (coe (d804 (coe v0))))))))))
name852 = "Algebra.Bundles.Group._.∙-congʳ"
d852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T776 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d852 v0 v1 v2 = du852 v2
du852 ::
  T776 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du852 v0
  = let v1 = d804 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name854 = "Algebra.Bundles.Group._.∙-congˡ"
d854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T776 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d854 v0 v1 v2 = du854 v2
du854 ::
  T776 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du854 v0
  = let v1 = d804 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name856 = "Algebra.Bundles.Group.rawGroup"
d856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T776 -> T740
d856 v0 v1 v2 = du856 v2
du856 :: T776 -> T740
du856 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C2789 v3 v4 v5) erased erased (d798 (coe v0))
      (d800 (coe v0)) (d802 (coe v0))
name858 = "Algebra.Bundles.Group.monoid"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T776 -> T422
d858 v0 v1 v2 = du858 v2
du858 :: T776 -> T422
du858 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1701 v3 v4 v5) erased erased (d798 (coe v0))
      (d800 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d540 (coe (d804 (coe v0))))
name862 = "Algebra.Bundles.Group._.magma"
d862 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T776 -> T30
d862 v0 v1 v2 = du862 v2
du862 :: T776 -> T30
du862 v0
  = let v1 = du858 (coe v0) in coe (du128 (coe (du482 (coe v1))))
name864 = "Algebra.Bundles.Group._.rawMagma"
d864 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T776 -> T8
d864 v0 v1 v2 = du864 v2
du864 :: T776 -> T8
du864 v0
  = let v1 = du858 (coe v0) in
    let v2 = du482 (coe v1) in coe (du74 (coe (du128 (coe v2))))
name866 = "Algebra.Bundles.Group._.rawMonoid"
d866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T776 -> T394
d866 v0 v1 v2 = du866 v2
du866 :: T776 -> T394
du866 v0 = coe (du484 (coe (du858 (coe v0))))
name868 = "Algebra.Bundles.Group._.semigroup"
d868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T776 -> T80
d868 v0 v1 v2 = du868 v2
du868 :: T776 -> T80
du868 v0 = coe (du482 (coe (du858 (coe v0))))
name874 = "Algebra.Bundles.AbelianGroup"
d874 a0 a1 = ()
data T874
  = C3397 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny) MAlonzo.Code.Algebra.Structures.T608
name892 = "Algebra.Bundles.AbelianGroup.Carrier"
d892 :: T874 -> ()
d892 = erased
name894 = "Algebra.Bundles.AbelianGroup._≈_"
d894 :: T874 -> AgdaAny -> AgdaAny -> ()
d894 = erased
name896 = "Algebra.Bundles.AbelianGroup._∙_"
d896 :: T874 -> AgdaAny -> AgdaAny -> AgdaAny
d896 v0
  = case coe v0 of
      C3397 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name898 = "Algebra.Bundles.AbelianGroup.ε"
d898 :: T874 -> AgdaAny
d898 v0
  = case coe v0 of
      C3397 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name900 = "Algebra.Bundles.AbelianGroup._⁻¹"
d900 :: T874 -> AgdaAny -> AgdaAny
d900 v0
  = case coe v0 of
      C3397 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name902 = "Algebra.Bundles.AbelianGroup.isAbelianGroup"
d902 :: T874 -> MAlonzo.Code.Algebra.Structures.T608
d902 v0
  = case coe v0 of
      C3397 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name906 = "Algebra.Bundles.AbelianGroup._._-_"
d906 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T874 -> AgdaAny -> AgdaAny -> AgdaAny
d906 v0 v1 v2 = du906 v2
du906 :: T874 -> AgdaAny -> AgdaAny -> AgdaAny
du906 v0
  = let v1 = d896 (coe v0) in
    let v2 = d900 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name908 = "Algebra.Bundles.AbelianGroup._.assoc"
d908 :: T874 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d908 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d540
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d620 (coe (d902 (coe v0))))))))))
name910 = "Algebra.Bundles.AbelianGroup._.comm"
d910 :: T874 -> AgdaAny -> AgdaAny -> AgdaAny
d910 v0
  = coe (MAlonzo.Code.Algebra.Structures.d622 (coe (d902 (coe v0))))
name912 = "Algebra.Bundles.AbelianGroup._.identity"
d912 :: T874 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d912 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d540
               (coe
                  (MAlonzo.Code.Algebra.Structures.d620 (coe (d902 (coe v0))))))))
name914 = "Algebra.Bundles.AbelianGroup._.identityʳ"
d914 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T874 -> AgdaAny -> AgdaAny
d914 v0 v1 v2 = du914 v2
du914 :: T874 -> AgdaAny -> AgdaAny
du914 v0
  = let v1 = d902 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d620 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d540 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name916 = "Algebra.Bundles.AbelianGroup._.identityˡ"
d916 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T874 -> AgdaAny -> AgdaAny
d916 v0 v1 v2 = du916 v2
du916 :: T874 -> AgdaAny -> AgdaAny
du916 v0
  = let v1 = d902 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d620 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d540 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name918 = "Algebra.Bundles.AbelianGroup._.inverse"
d918 :: T874 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d918 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d542
         (coe (MAlonzo.Code.Algebra.Structures.d620 (coe (d902 (coe v0))))))
name920 = "Algebra.Bundles.AbelianGroup._.inverseʳ"
d920 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T874 -> AgdaAny -> AgdaAny
d920 v0 v1 v2 = du920 v2
du920 :: T874 -> AgdaAny -> AgdaAny
du920 v0
  = let v1 = d902 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d620 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d542 (coe v2))))
name922 = "Algebra.Bundles.AbelianGroup._.inverseˡ"
d922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T874 -> AgdaAny -> AgdaAny
d922 v0 v1 v2 = du922 v2
du922 :: T874 -> AgdaAny -> AgdaAny
du922 v0
  = let v1 = d902 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d620 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d542 (coe v2))))
name924 = "Algebra.Bundles.AbelianGroup._.isCommutativeMonoid"
d924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T874 -> MAlonzo.Code.Algebra.Structures.T360
d924 v0 v1 v2 = du924 v2
du924 :: T874 -> MAlonzo.Code.Algebra.Structures.T360
du924 v0
  = coe (MAlonzo.Code.Algebra.Structures.du674 (coe (d902 (coe v0))))
name926 = "Algebra.Bundles.AbelianGroup._.isCommutativeSemigroup"
d926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T874 -> MAlonzo.Code.Algebra.Structures.T190
d926 v0 v1 v2 = du926 v2
du926 :: T874 -> MAlonzo.Code.Algebra.Structures.T190
du926 v0
  = let v1 = d902 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du408
         (coe (MAlonzo.Code.Algebra.Structures.du674 (coe v1))))
name928 = "Algebra.Bundles.AbelianGroup._.isEquivalence"
d928 :: T874 -> MAlonzo.Code.Relation.Binary.Structures.T26
d928 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d540
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d620
                                 (coe (d902 (coe v0))))))))))))
name930 = "Algebra.Bundles.AbelianGroup._.isGroup"
d930 :: T874 -> MAlonzo.Code.Algebra.Structures.T526
d930 v0
  = coe (MAlonzo.Code.Algebra.Structures.d620 (coe (d902 (coe v0))))
name932 = "Algebra.Bundles.AbelianGroup._.isMagma"
d932 :: T874 -> MAlonzo.Code.Algebra.Structures.T78
d932 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d540
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d620 (coe (d902 (coe v0))))))))))
name934 = "Algebra.Bundles.AbelianGroup._.isMonoid"
d934 :: T874 -> MAlonzo.Code.Algebra.Structures.T312
d934 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d540
         (coe (MAlonzo.Code.Algebra.Structures.d620 (coe (d902 (coe v0))))))
name936 = "Algebra.Bundles.AbelianGroup._.isPartialEquivalence"
d936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T874 -> MAlonzo.Code.Relation.Binary.Structures.T16
d936 v0 v1 v2 = du936 v2
du936 :: T874 -> MAlonzo.Code.Relation.Binary.Structures.T16
du936 v0
  = let v1 = d902 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d620 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d540 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d122 (coe v4) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v5))))
name938 = "Algebra.Bundles.AbelianGroup._.isSemigroup"
d938 :: T874 -> MAlonzo.Code.Algebra.Structures.T114
d938 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d540
               (coe
                  (MAlonzo.Code.Algebra.Structures.d620 (coe (d902 (coe v0))))))))
name940 = "Algebra.Bundles.AbelianGroup._.refl"
d940 :: T874 -> AgdaAny -> AgdaAny
d940 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d540
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d620
                                       (coe (d902 (coe v0))))))))))))))
name942 = "Algebra.Bundles.AbelianGroup._.reflexive"
d942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T874 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d942 v0 v1 v2 = du942 v2
du942 ::
  T874 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du942 v0
  = let v1 = d902 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d620 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d540 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d122 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v5))) v6)
name944 = "Algebra.Bundles.AbelianGroup._.setoid"
d944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T874 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d944 v0 v1 v2 = du944 v2
du944 :: T874 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du944 v0
  = let v1 = d902 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d620 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d540 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name946 = "Algebra.Bundles.AbelianGroup._.sym"
d946 :: T874 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d946 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d540
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d620
                                       (coe (d902 (coe v0))))))))))))))
name948 = "Algebra.Bundles.AbelianGroup._.trans"
d948 ::
  T874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d948 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d540
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d620
                                       (coe (d902 (coe v0))))))))))))))
name950 = "Algebra.Bundles.AbelianGroup._.uniqueʳ-⁻¹"
d950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T874 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d950 v0 v1 v2 = du950 v2
du950 :: T874 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du950 v0
  = let v1 = d896 (coe v0) in
    let v2 = d898 (coe v0) in
    let v3 = d900 (coe v0) in
    let v4 = d902 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du600
         (coe v1) (coe v2) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d620 (coe v4))))
name952 = "Algebra.Bundles.AbelianGroup._.uniqueˡ-⁻¹"
d952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T874 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d952 v0 v1 v2 = du952 v2
du952 :: T874 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du952 v0
  = let v1 = d896 (coe v0) in
    let v2 = d898 (coe v0) in
    let v3 = d900 (coe v0) in
    let v4 = d902 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du594
         (coe v1) (coe v2) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d620 (coe v4))))
name954 = "Algebra.Bundles.AbelianGroup._.⁻¹-cong"
d954 :: T874 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d954 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d544
         (coe (MAlonzo.Code.Algebra.Structures.d620 (coe (d902 (coe v0))))))
name956 = "Algebra.Bundles.AbelianGroup._.∙-cong"
d956 ::
  T874 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d956 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d540
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d620
                                 (coe (d902 (coe v0))))))))))))
name958 = "Algebra.Bundles.AbelianGroup._.∙-congʳ"
d958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T874 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d958 v0 v1 v2 = du958 v2
du958 ::
  T874 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du958 v0
  = let v1 = d902 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d620 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d540 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name960 = "Algebra.Bundles.AbelianGroup._.∙-congˡ"
d960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T874 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d960 v0 v1 v2 = du960 v2
du960 ::
  T874 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du960 v0
  = let v1 = d902 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d620 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d540 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name962 = "Algebra.Bundles.AbelianGroup.group"
d962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T874 -> T776
d962 v0 v1 v2 = du962 v2
du962 :: T874 -> T776
du962 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C2945 v3 v4 v5 v6) erased erased
      (d896 (coe v0)) (d898 (coe v0)) (d900 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d620 (coe (d902 (coe v0))))
name966 = "Algebra.Bundles.AbelianGroup._.magma"
d966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T874 -> T30
d966 v0 v1 v2 = du966 v2
du966 :: T874 -> T30
du966 v0
  = let v1 = du962 (coe v0) in
    let v2 = du858 (coe v1) in coe (du128 (coe (du482 (coe v2))))
name968 = "Algebra.Bundles.AbelianGroup._.monoid"
d968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T874 -> T422
d968 v0 v1 v2 = du968 v2
du968 :: T874 -> T422
du968 v0 = coe (du858 (coe (du962 (coe v0))))
name970 = "Algebra.Bundles.AbelianGroup._.rawGroup"
d970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T874 -> T740
d970 v0 v1 v2 = du970 v2
du970 :: T874 -> T740
du970 v0 = coe (du856 (coe (du962 (coe v0))))
name972 = "Algebra.Bundles.AbelianGroup._.rawMagma"
d972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T874 -> T8
d972 v0 v1 v2 = du972 v2
du972 :: T874 -> T8
du972 v0
  = let v1 = du962 (coe v0) in
    let v2 = du858 (coe v1) in
    let v3 = du482 (coe v2) in coe (du74 (coe (du128 (coe v3))))
name974 = "Algebra.Bundles.AbelianGroup._.rawMonoid"
d974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T874 -> T394
d974 v0 v1 v2 = du974 v2
du974 :: T874 -> T394
du974 v0
  = let v1 = du962 (coe v0) in coe (du484 (coe (du858 (coe v1))))
name976 = "Algebra.Bundles.AbelianGroup._.semigroup"
d976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T874 -> T80
d976 v0 v1 v2 = du976 v2
du976 :: T874 -> T80
du976 v0
  = let v1 = du962 (coe v0) in coe (du482 (coe (du858 (coe v1))))
name978 = "Algebra.Bundles.AbelianGroup.commutativeMonoid"
d978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T874 -> T496
d978 v0 v1 v2 = du978 v2
du978 :: T874 -> T496
du978 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C2037 v3 v4 v5) erased erased (d896 (coe v0))
      (d898 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du674 (coe (d902 (coe v0))))
name984 = "Algebra.Bundles.Lattice"
d984 a0 a1 = ()
data T984
  = C3887 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T684
name1000 = "Algebra.Bundles.Lattice.Carrier"
d1000 :: T984 -> ()
d1000 = erased
name1002 = "Algebra.Bundles.Lattice._≈_"
d1002 :: T984 -> AgdaAny -> AgdaAny -> ()
d1002 = erased
name1004 = "Algebra.Bundles.Lattice._∨_"
d1004 :: T984 -> AgdaAny -> AgdaAny -> AgdaAny
d1004 v0
  = case coe v0 of
      C3887 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1006 = "Algebra.Bundles.Lattice._∧_"
d1006 :: T984 -> AgdaAny -> AgdaAny -> AgdaAny
d1006 v0
  = case coe v0 of
      C3887 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1008 = "Algebra.Bundles.Lattice.isLattice"
d1008 :: T984 -> MAlonzo.Code.Algebra.Structures.T684
d1008 v0
  = case coe v0 of
      C3887 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1012 = "Algebra.Bundles.Lattice._.absorptive"
d1012 :: T984 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1012 v0
  = coe (MAlonzo.Code.Algebra.Structures.d720 (coe (d1008 (coe v0))))
name1014 = "Algebra.Bundles.Lattice._.isEquivalence"
d1014 :: T984 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1014 v0
  = coe (MAlonzo.Code.Algebra.Structures.d706 (coe (d1008 (coe v0))))
name1016 = "Algebra.Bundles.Lattice._.isPartialEquivalence"
d1016 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T984 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1016 v0 v1 v2 = du1016 v2
du1016 :: T984 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1016 v0
  = let v1 = d1008 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d706 (coe v1))))
name1018 = "Algebra.Bundles.Lattice._.refl"
d1018 :: T984 -> AgdaAny -> AgdaAny
d1018 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d706 (coe (d1008 (coe v0))))))
name1020 = "Algebra.Bundles.Lattice._.reflexive"
d1020 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T984 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1020 v0 v1 v2 = du1020 v2
du1020 ::
  T984 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1020 v0
  = let v1 = d1008 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d706 (coe v1))) v2)
name1022 = "Algebra.Bundles.Lattice._.sym"
d1022 :: T984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1022 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d706 (coe (d1008 (coe v0))))))
name1024 = "Algebra.Bundles.Lattice._.trans"
d1024 ::
  T984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1024 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d706 (coe (d1008 (coe v0))))))
name1026 = "Algebra.Bundles.Lattice._.∧-absorbs-∨"
d1026 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T984 -> AgdaAny -> AgdaAny -> AgdaAny
d1026 v0 v1 v2 = du1026 v2
du1026 :: T984 -> AgdaAny -> AgdaAny -> AgdaAny
du1026 v0
  = let v1 = d1008 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d720 (coe v1))))
name1028 = "Algebra.Bundles.Lattice._.∧-assoc"
d1028 :: T984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1028 v0
  = coe (MAlonzo.Code.Algebra.Structures.d716 (coe (d1008 (coe v0))))
name1030 = "Algebra.Bundles.Lattice._.∧-comm"
d1030 :: T984 -> AgdaAny -> AgdaAny -> AgdaAny
d1030 v0
  = coe (MAlonzo.Code.Algebra.Structures.d714 (coe (d1008 (coe v0))))
name1032 = "Algebra.Bundles.Lattice._.∧-cong"
d1032 ::
  T984 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1032 v0
  = coe (MAlonzo.Code.Algebra.Structures.d718 (coe (d1008 (coe v0))))
name1034 = "Algebra.Bundles.Lattice._.∧-congʳ"
d1034 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1034 v0 v1 v2 = du1034 v2
du1034 ::
  T984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1034 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du742 (coe (d1008 (coe v0))))
name1036 = "Algebra.Bundles.Lattice._.∧-congˡ"
d1036 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1036 v0 v1 v2 = du1036 v2
du1036 ::
  T984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1036 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du738 (coe (d1008 (coe v0))))
name1038 = "Algebra.Bundles.Lattice._.∨-absorbs-∧"
d1038 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T984 -> AgdaAny -> AgdaAny -> AgdaAny
d1038 v0 v1 v2 = du1038 v2
du1038 :: T984 -> AgdaAny -> AgdaAny -> AgdaAny
du1038 v0
  = let v1 = d1008 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d720 (coe v1))))
name1040 = "Algebra.Bundles.Lattice._.∨-assoc"
d1040 :: T984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1040 v0
  = coe (MAlonzo.Code.Algebra.Structures.d710 (coe (d1008 (coe v0))))
name1042 = "Algebra.Bundles.Lattice._.∨-comm"
d1042 :: T984 -> AgdaAny -> AgdaAny -> AgdaAny
d1042 v0
  = coe (MAlonzo.Code.Algebra.Structures.d708 (coe (d1008 (coe v0))))
name1044 = "Algebra.Bundles.Lattice._.∨-cong"
d1044 ::
  T984 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1044 v0
  = coe (MAlonzo.Code.Algebra.Structures.d712 (coe (d1008 (coe v0))))
name1046 = "Algebra.Bundles.Lattice._.∨-congʳ"
d1046 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1046 v0 v1 v2 = du1046 v2
du1046 ::
  T984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1046 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du750 (coe (d1008 (coe v0))))
name1048 = "Algebra.Bundles.Lattice._.∨-congˡ"
d1048 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1048 v0 v1 v2 = du1048 v2
du1048 ::
  T984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1048 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du746 (coe (d1008 (coe v0))))
name1050 = "Algebra.Bundles.Lattice.setoid"
d1050 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T984 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1050 v0 v1 v2 = du1050 v2
du1050 :: T984 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1050 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C163 v3) erased
      erased
      (MAlonzo.Code.Algebra.Structures.d706 (coe (d1008 (coe v0))))
name1056 = "Algebra.Bundles.DistributiveLattice"
d1056 a0 a1 = ()
data T1056
  = C4191 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T758
name1072 = "Algebra.Bundles.DistributiveLattice.Carrier"
d1072 :: T1056 -> ()
d1072 = erased
name1074 = "Algebra.Bundles.DistributiveLattice._≈_"
d1074 :: T1056 -> AgdaAny -> AgdaAny -> ()
d1074 = erased
name1076 = "Algebra.Bundles.DistributiveLattice._∨_"
d1076 :: T1056 -> AgdaAny -> AgdaAny -> AgdaAny
d1076 v0
  = case coe v0 of
      C4191 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1078 = "Algebra.Bundles.DistributiveLattice._∧_"
d1078 :: T1056 -> AgdaAny -> AgdaAny -> AgdaAny
d1078 v0
  = case coe v0 of
      C4191 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1080
  = "Algebra.Bundles.DistributiveLattice.isDistributiveLattice"
d1080 :: T1056 -> MAlonzo.Code.Algebra.Structures.T758
d1080 v0
  = case coe v0 of
      C4191 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1084 = "Algebra.Bundles.DistributiveLattice._.absorptive"
d1084 :: T1056 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1084 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d720
         (coe
            (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))))
name1086 = "Algebra.Bundles.DistributiveLattice._.isEquivalence"
d1086 :: T1056 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1086 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d706
         (coe
            (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))))
name1088 = "Algebra.Bundles.DistributiveLattice._.isLattice"
d1088 :: T1056 -> MAlonzo.Code.Algebra.Structures.T684
d1088 v0
  = coe (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))
name1090
  = "Algebra.Bundles.DistributiveLattice._.isPartialEquivalence"
d1090 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1056 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1090 v0 v1 v2 = du1090 v2
du1090 :: T1056 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1090 v0
  = let v1 = d1080 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d768 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d706 (coe v2))))
name1092 = "Algebra.Bundles.DistributiveLattice._.refl"
d1092 :: T1056 -> AgdaAny -> AgdaAny
d1092 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d706
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))))))
name1094 = "Algebra.Bundles.DistributiveLattice._.reflexive"
d1094 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1056 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1094 v0 v1 v2 = du1094 v2
du1094 ::
  T1056 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1094 v0
  = let v1 = d1080 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d768 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d706 (coe v2))) v3)
name1096 = "Algebra.Bundles.DistributiveLattice._.sym"
d1096 :: T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1096 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d706
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))))))
name1098 = "Algebra.Bundles.DistributiveLattice._.trans"
d1098 ::
  T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1098 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d706
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))))))
name1100 = "Algebra.Bundles.DistributiveLattice._.∧-absorbs-∨"
d1100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1056 -> AgdaAny -> AgdaAny -> AgdaAny
d1100 v0 v1 v2 = du1100 v2
du1100 :: T1056 -> AgdaAny -> AgdaAny -> AgdaAny
du1100 v0
  = let v1 = d1080 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d768 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d720 (coe v2))))
name1102 = "Algebra.Bundles.DistributiveLattice._.∧-assoc"
d1102 :: T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1102 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d716
         (coe
            (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))))
name1104 = "Algebra.Bundles.DistributiveLattice._.∧-comm"
d1104 :: T1056 -> AgdaAny -> AgdaAny -> AgdaAny
d1104 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d714
         (coe
            (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))))
name1106 = "Algebra.Bundles.DistributiveLattice._.∧-cong"
d1106 ::
  T1056 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1106 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d718
         (coe
            (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))))
name1108 = "Algebra.Bundles.DistributiveLattice._.∧-congʳ"
d1108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1108 v0 v1 v2 = du1108 v2
du1108 ::
  T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1108 v0
  = let v1 = d1080 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du742
         (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v1))))
name1110 = "Algebra.Bundles.DistributiveLattice._.∧-congˡ"
d1110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1110 v0 v1 v2 = du1110 v2
du1110 ::
  T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1110 v0
  = let v1 = d1080 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du738
         (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v1))))
name1112 = "Algebra.Bundles.DistributiveLattice._.∨-absorbs-∧"
d1112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1056 -> AgdaAny -> AgdaAny -> AgdaAny
d1112 v0 v1 v2 = du1112 v2
du1112 :: T1056 -> AgdaAny -> AgdaAny -> AgdaAny
du1112 v0
  = let v1 = d1080 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d768 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d720 (coe v2))))
name1114 = "Algebra.Bundles.DistributiveLattice._.∨-assoc"
d1114 :: T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1114 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d710
         (coe
            (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))))
name1116 = "Algebra.Bundles.DistributiveLattice._.∨-comm"
d1116 :: T1056 -> AgdaAny -> AgdaAny -> AgdaAny
d1116 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d708
         (coe
            (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))))
name1118 = "Algebra.Bundles.DistributiveLattice._.∨-cong"
d1118 ::
  T1056 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1118 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d712
         (coe
            (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))))
name1120 = "Algebra.Bundles.DistributiveLattice._.∨-congʳ"
d1120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1120 v0 v1 v2 = du1120 v2
du1120 ::
  T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1120 v0
  = let v1 = d1080 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du750
         (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v1))))
name1122 = "Algebra.Bundles.DistributiveLattice._.∨-congˡ"
d1122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1122 v0 v1 v2 = du1122 v2
du1122 ::
  T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1122 v0
  = let v1 = d1080 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du746
         (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v1))))
name1124 = "Algebra.Bundles.DistributiveLattice._.∨-distribʳ-∧"
d1124 :: T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1124 v0
  = coe (MAlonzo.Code.Algebra.Structures.d770 (coe (d1080 (coe v0))))
name1126 = "Algebra.Bundles.DistributiveLattice._.∨-∧-distribʳ"
d1126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1126 v0 v1 v2 = du1126 v2
du1126 :: T1056 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1126 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du812 (coe (d1080 (coe v0))))
name1128 = "Algebra.Bundles.DistributiveLattice.lattice"
d1128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1056 -> T984
d1128 v0 v1 v2 = du1128 v2
du1128 :: T1056 -> T984
du1128 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C3887 v3 v4 v5) erased erased (d1076 (coe v0))
      (d1078 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d768 (coe (d1080 (coe v0))))
name1132 = "Algebra.Bundles.DistributiveLattice._.setoid"
d1132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1056 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1132 v0 v1 v2 = du1132 v2
du1132 :: T1056 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1132 v0 = coe (du1050 (coe (du1128 (coe v0))))
name1138 = "Algebra.Bundles.NearSemiring"
d1138 a0 a1 = ()
data T1138
  = C4529 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T820
name1156 = "Algebra.Bundles.NearSemiring.Carrier"
d1156 :: T1138 -> ()
d1156 = erased
name1158 = "Algebra.Bundles.NearSemiring._≈_"
d1158 :: T1138 -> AgdaAny -> AgdaAny -> ()
d1158 = erased
name1160 = "Algebra.Bundles.NearSemiring._+_"
d1160 :: T1138 -> AgdaAny -> AgdaAny -> AgdaAny
d1160 v0
  = case coe v0 of
      C4529 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1162 = "Algebra.Bundles.NearSemiring._*_"
d1162 :: T1138 -> AgdaAny -> AgdaAny -> AgdaAny
d1162 v0
  = case coe v0 of
      C4529 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1164 = "Algebra.Bundles.NearSemiring.0#"
d1164 :: T1138 -> AgdaAny
d1164 v0
  = case coe v0 of
      C4529 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1166 = "Algebra.Bundles.NearSemiring.isNearSemiring"
d1166 :: T1138 -> MAlonzo.Code.Algebra.Structures.T820
d1166 v0
  = case coe v0 of
      C4529 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1170 = "Algebra.Bundles.NearSemiring._.assoc"
d1170 :: T1138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1170 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d838 (coe (d1166 (coe v0))))))
name1172 = "Algebra.Bundles.NearSemiring._.∙-cong"
d1172 ::
  T1138 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1172 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d838 (coe (d1166 (coe v0))))))))
name1174 = "Algebra.Bundles.NearSemiring._.∙-congʳ"
d1174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1174 v0 v1 v2 = du1174 v2
du1174 ::
  T1138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1174 v0
  = let v1 = d1166 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v2))))
name1176 = "Algebra.Bundles.NearSemiring._.∙-congˡ"
d1176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1176 v0 v1 v2 = du1176 v2
du1176 ::
  T1138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1176 v0
  = let v1 = d1166 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d838 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v2))))
name1178 = "Algebra.Bundles.NearSemiring._.isMagma"
d1178 :: T1138 -> MAlonzo.Code.Algebra.Structures.T78
d1178 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d838 (coe (d1166 (coe v0))))))
name1180 = "Algebra.Bundles.NearSemiring._.*-isSemigroup"
d1180 :: T1138 -> MAlonzo.Code.Algebra.Structures.T114
d1180 v0
  = coe (MAlonzo.Code.Algebra.Structures.d838 (coe (d1166 (coe v0))))
name1182 = "Algebra.Bundles.NearSemiring._.assoc"
d1182 :: T1138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1182 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d836 (coe (d1166 (coe v0))))))))
name1184 = "Algebra.Bundles.NearSemiring._.∙-cong"
d1184 ::
  T1138 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1184 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d836 (coe (d1166 (coe v0))))))))))
name1186 = "Algebra.Bundles.NearSemiring._.∙-congʳ"
d1186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1186 v0 v1 v2 = du1186 v2
du1186 ::
  T1138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1186 v0
  = let v1 = d1166 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d836 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name1188 = "Algebra.Bundles.NearSemiring._.∙-congˡ"
d1188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1188 v0 v1 v2 = du1188 v2
du1188 ::
  T1138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1188 v0
  = let v1 = d1166 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d836 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name1190 = "Algebra.Bundles.NearSemiring._.identity"
d1190 :: T1138 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1190 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d836 (coe (d1166 (coe v0))))))
name1192 = "Algebra.Bundles.NearSemiring._.identityʳ"
d1192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1138 -> AgdaAny -> AgdaAny
d1192 v0 v1 v2 = du1192 v2
du1192 :: T1138 -> AgdaAny -> AgdaAny
du1192 v0
  = let v1 = d1166 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d836 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v2))))
name1194 = "Algebra.Bundles.NearSemiring._.identityˡ"
d1194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1138 -> AgdaAny -> AgdaAny
d1194 v0 v1 v2 = du1194 v2
du1194 :: T1138 -> AgdaAny -> AgdaAny
du1194 v0
  = let v1 = d1166 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d836 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v2))))
name1196 = "Algebra.Bundles.NearSemiring._.isMagma"
d1196 :: T1138 -> MAlonzo.Code.Algebra.Structures.T78
d1196 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d836 (coe (d1166 (coe v0))))))))
name1198 = "Algebra.Bundles.NearSemiring._.+-isMonoid"
d1198 :: T1138 -> MAlonzo.Code.Algebra.Structures.T312
d1198 v0
  = coe (MAlonzo.Code.Algebra.Structures.d836 (coe (d1166 (coe v0))))
name1200 = "Algebra.Bundles.NearSemiring._.isSemigroup"
d1200 :: T1138 -> MAlonzo.Code.Algebra.Structures.T114
d1200 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d836 (coe (d1166 (coe v0))))))
name1202 = "Algebra.Bundles.NearSemiring._.distribʳ"
d1202 :: T1138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1202 v0
  = coe (MAlonzo.Code.Algebra.Structures.d840 (coe (d1166 (coe v0))))
name1204 = "Algebra.Bundles.NearSemiring._.isEquivalence"
d1204 :: T1138 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1204 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d836 (coe (d1166 (coe v0))))))))))
name1206 = "Algebra.Bundles.NearSemiring._.isPartialEquivalence"
d1206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1138 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1206 v0 v1 v2 = du1206 v2
du1206 :: T1138 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1206 v0
  = let v1 = d1166 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d836 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d122 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v4))))
name1208 = "Algebra.Bundles.NearSemiring._.refl"
d1208 :: T1138 -> AgdaAny -> AgdaAny
d1208 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d836
                                 (coe (d1166 (coe v0))))))))))))
name1210 = "Algebra.Bundles.NearSemiring._.reflexive"
d1210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1138 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1210 v0 v1 v2 = du1210 v2
du1210 ::
  T1138 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1210 v0
  = let v1 = d1166 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d836 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d122 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v4))) v5)
name1212 = "Algebra.Bundles.NearSemiring._.setoid"
d1212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1138 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1212 v0 v1 v2 = du1212 v2
du1212 :: T1138 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1212 v0
  = let v1 = d1166 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d836 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name1214 = "Algebra.Bundles.NearSemiring._.sym"
d1214 :: T1138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1214 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d836
                                 (coe (d1166 (coe v0))))))))))))
name1216 = "Algebra.Bundles.NearSemiring._.trans"
d1216 ::
  T1138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1216 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d836
                                 (coe (d1166 (coe v0))))))))))))
name1218 = "Algebra.Bundles.NearSemiring._.zeroˡ"
d1218 :: T1138 -> AgdaAny -> AgdaAny
d1218 v0
  = coe (MAlonzo.Code.Algebra.Structures.d842 (coe (d1166 (coe v0))))
name1220 = "Algebra.Bundles.NearSemiring.+-monoid"
d1220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1138 -> T422
d1220 v0 v1 v2 = du1220 v2
du1220 :: T1138 -> T422
du1220 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1701 v3 v4 v5) erased erased (d1160 (coe v0))
      (d1164 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d836 (coe (d1166 (coe v0))))
name1224 = "Algebra.Bundles.NearSemiring._.magma"
d1224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1138 -> T30
d1224 v0 v1 v2 = du1224 v2
du1224 :: T1138 -> T30
du1224 v0
  = let v1 = du1220 (coe v0) in coe (du128 (coe (du482 (coe v1))))
name1226 = "Algebra.Bundles.NearSemiring._.rawMagma"
d1226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1138 -> T8
d1226 v0 v1 v2 = du1226 v2
du1226 :: T1138 -> T8
du1226 v0
  = let v1 = du1220 (coe v0) in
    let v2 = du482 (coe v1) in coe (du74 (coe (du128 (coe v2))))
name1228 = "Algebra.Bundles.NearSemiring._.rawMonoid"
d1228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1138 -> T394
d1228 v0 v1 v2 = du1228 v2
du1228 :: T1138 -> T394
du1228 v0 = coe (du484 (coe (du1220 (coe v0))))
name1230 = "Algebra.Bundles.NearSemiring._.semigroup"
d1230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1138 -> T80
d1230 v0 v1 v2 = du1230 v2
du1230 :: T1138 -> T80
du1230 v0 = coe (du482 (coe (du1220 (coe v0))))
name1232 = "Algebra.Bundles.NearSemiring.*-semigroup"
d1232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1138 -> T80
d1232 v0 v1 v2 = du1232 v2
du1232 :: T1138 -> T80
du1232 v0
  = coe
      (\ v1 v2 v3 v4 -> C291 v3 v4) erased erased (d1162 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d838 (coe (d1166 (coe v0))))
name1236 = "Algebra.Bundles.NearSemiring._.magma"
d1236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1138 -> T30
d1236 v0 v1 v2 = du1236 v2
du1236 :: T1138 -> T30
du1236 v0 = coe (du128 (coe (du1232 (coe v0))))
name1238 = "Algebra.Bundles.NearSemiring._.rawMagma"
d1238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1138 -> T8
d1238 v0 v1 v2 = du1238 v2
du1238 :: T1138 -> T8
du1238 v0
  = let v1 = du1232 (coe v0) in coe (du74 (coe (du128 (coe v1))))
name1244 = "Algebra.Bundles.SemiringWithoutOne"
d1244 a0 a1 = ()
data T1244
  = C4983 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T896
name1262 = "Algebra.Bundles.SemiringWithoutOne.Carrier"
d1262 :: T1244 -> ()
d1262 = erased
name1264 = "Algebra.Bundles.SemiringWithoutOne._≈_"
d1264 :: T1244 -> AgdaAny -> AgdaAny -> ()
d1264 = erased
name1266 = "Algebra.Bundles.SemiringWithoutOne._+_"
d1266 :: T1244 -> AgdaAny -> AgdaAny -> AgdaAny
d1266 v0
  = case coe v0 of
      C4983 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1268 = "Algebra.Bundles.SemiringWithoutOne._*_"
d1268 :: T1244 -> AgdaAny -> AgdaAny -> AgdaAny
d1268 v0
  = case coe v0 of
      C4983 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1270 = "Algebra.Bundles.SemiringWithoutOne.0#"
d1270 :: T1244 -> AgdaAny
d1270 v0
  = case coe v0 of
      C4983 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1272
  = "Algebra.Bundles.SemiringWithoutOne.isSemiringWithoutOne"
d1272 :: T1244 -> MAlonzo.Code.Algebra.Structures.T896
d1272 v0
  = case coe v0 of
      C4983 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1276 = "Algebra.Bundles.SemiringWithoutOne._.assoc"
d1276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1276 v0 v1 v2 = du1276 v2
du1276 :: T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1276 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe (MAlonzo.Code.Algebra.Structures.d914 (coe v1))))
name1278 = "Algebra.Bundles.SemiringWithoutOne._.∙-cong"
d1278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1278 v0 v1 v2 = du1278 v2
du1278 ::
  T1244 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1278 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe (MAlonzo.Code.Algebra.Structures.d914 (coe v1))))))
name1280 = "Algebra.Bundles.SemiringWithoutOne._.∙-congʳ"
d1280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1280 v0 v1 v2 = du1280 v2
du1280 ::
  T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1280 v0
  = let v1 = d1272 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du932 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name1282 = "Algebra.Bundles.SemiringWithoutOne._.∙-congˡ"
d1282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1282 v0 v1 v2 = du1282 v2
du1282 ::
  T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1282 v0
  = let v1 = d1272 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du932 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d838 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name1284 = "Algebra.Bundles.SemiringWithoutOne._.isMagma"
d1284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> MAlonzo.Code.Algebra.Structures.T78
d1284 v0 v1 v2 = du1284 v2
du1284 :: T1244 -> MAlonzo.Code.Algebra.Structures.T78
du1284 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe (MAlonzo.Code.Algebra.Structures.d914 (coe v1))))
name1286 = "Algebra.Bundles.SemiringWithoutOne._.*-isSemigroup"
d1286 :: T1244 -> MAlonzo.Code.Algebra.Structures.T114
d1286 v0
  = coe (MAlonzo.Code.Algebra.Structures.d914 (coe (d1272 (coe v0))))
name1288 = "Algebra.Bundles.SemiringWithoutOne._.*-isSemigroup"
d1288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> MAlonzo.Code.Algebra.Structures.T114
d1288 v0 v1 v2 = du1288 v2
du1288 :: T1244 -> MAlonzo.Code.Algebra.Structures.T114
du1288 v0
  = let v1 = d1272 (coe v0) in
    coe (MAlonzo.Code.Algebra.Structures.d914 (coe v1))
name1290 = "Algebra.Bundles.SemiringWithoutOne._.assoc"
d1290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1290 v0 v1 v2 = du1290 v2
du1290 :: T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1290 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v1))))))))
name1292 = "Algebra.Bundles.SemiringWithoutOne._.comm"
d1292 :: T1244 -> AgdaAny -> AgdaAny -> AgdaAny
d1292 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d372
         (coe
            (MAlonzo.Code.Algebra.Structures.d912 (coe (d1272 (coe v0))))))
name1294 = "Algebra.Bundles.SemiringWithoutOne._.∙-cong"
d1294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1294 v0 v1 v2 = du1294 v2
du1294 ::
  T1244 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1294 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v1))))))))))
name1296 = "Algebra.Bundles.SemiringWithoutOne._.∙-congʳ"
d1296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1296 v0 v1 v2 = du1296 v2
du1296 ::
  T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1296 v0
  = let v1 = d1272 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du932 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d836 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name1298 = "Algebra.Bundles.SemiringWithoutOne._.∙-congˡ"
d1298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1298 v0 v1 v2 = du1298 v2
du1298 ::
  T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1298 v0
  = let v1 = d1272 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du932 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d836 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name1300 = "Algebra.Bundles.SemiringWithoutOne._.identity"
d1300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1300 v0 v1 v2 = du1300 v2
du1300 :: T1244 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1300 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v1))))))
name1302 = "Algebra.Bundles.SemiringWithoutOne._.identityʳ"
d1302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> AgdaAny -> AgdaAny
d1302 v0 v1 v2 = du1302 v2
du1302 :: T1244 -> AgdaAny -> AgdaAny
du1302 v0
  = let v1 = d1272 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du932 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d836 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name1304 = "Algebra.Bundles.SemiringWithoutOne._.identityˡ"
d1304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> AgdaAny -> AgdaAny
d1304 v0 v1 v2 = du1304 v2
du1304 :: T1244 -> AgdaAny -> AgdaAny
du1304 v0
  = let v1 = d1272 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du932 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d836 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name1306
  = "Algebra.Bundles.SemiringWithoutOne._.+-isCommutativeMonoid"
d1306 :: T1244 -> MAlonzo.Code.Algebra.Structures.T360
d1306 v0
  = coe (MAlonzo.Code.Algebra.Structures.d912 (coe (d1272 (coe v0))))
name1308
  = "Algebra.Bundles.SemiringWithoutOne._.isCommutativeSemigroup"
d1308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> MAlonzo.Code.Algebra.Structures.T190
d1308 v0 v1 v2 = du1308 v2
du1308 :: T1244 -> MAlonzo.Code.Algebra.Structures.T190
du1308 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du408
         (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v1))))
name1310 = "Algebra.Bundles.SemiringWithoutOne._.isMagma"
d1310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> MAlonzo.Code.Algebra.Structures.T78
d1310 v0 v1 v2 = du1310 v2
du1310 :: T1244 -> MAlonzo.Code.Algebra.Structures.T78
du1310 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v1))))))))
name1312 = "Algebra.Bundles.SemiringWithoutOne._.isMonoid"
d1312 :: T1244 -> MAlonzo.Code.Algebra.Structures.T312
d1312 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d370
         (coe
            (MAlonzo.Code.Algebra.Structures.d912 (coe (d1272 (coe v0))))))
name1314 = "Algebra.Bundles.SemiringWithoutOne._.isSemigroup"
d1314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> MAlonzo.Code.Algebra.Structures.T114
d1314 v0 v1 v2 = du1314 v2
du1314 :: T1244 -> MAlonzo.Code.Algebra.Structures.T114
du1314 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v1))))))
name1316 = "Algebra.Bundles.SemiringWithoutOne._.distrib"
d1316 :: T1244 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1316 v0
  = coe (MAlonzo.Code.Algebra.Structures.d916 (coe (d1272 (coe v0))))
name1318 = "Algebra.Bundles.SemiringWithoutOne._.distribʳ"
d1318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1318 v0 v1 v2 = du1318 v2
du1318 :: T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1318 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d916 (coe v1))))
name1320 = "Algebra.Bundles.SemiringWithoutOne._.isEquivalence"
d1320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1320 v0 v1 v2 = du1320 v2
du1320 :: T1244 -> MAlonzo.Code.Relation.Binary.Structures.T26
du1320 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v1))))))))))
name1322 = "Algebra.Bundles.SemiringWithoutOne._.isNearSemiring"
d1322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> MAlonzo.Code.Algebra.Structures.T820
d1322 v0 v1 v2 = du1322 v2
du1322 :: T1244 -> MAlonzo.Code.Algebra.Structures.T820
du1322 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du932 (coe (d1272 (coe v0))))
name1324
  = "Algebra.Bundles.SemiringWithoutOne._.isPartialEquivalence"
d1324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1324 v0 v1 v2 = du1324 v2
du1324 :: T1244 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1324 v0
  = let v1 = d1272 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du932 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d836 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d122 (coe v4) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v5))))
name1326 = "Algebra.Bundles.SemiringWithoutOne._.refl"
d1326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> AgdaAny -> AgdaAny
d1326 v0 v1 v2 = du1326 v2
du1326 :: T1244 -> AgdaAny -> AgdaAny
du1326 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v1))))))))))))
name1328 = "Algebra.Bundles.SemiringWithoutOne._.reflexive"
d1328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1328 v0 v1 v2 = du1328 v2
du1328 ::
  T1244 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1328 v0
  = let v1 = d1272 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du932 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d836 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d122 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v5))) v6)
name1330 = "Algebra.Bundles.SemiringWithoutOne._.setoid"
d1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1330 v0 v1 v2 = du1330 v2
du1330 :: T1244 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1330 v0
  = let v1 = d1272 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du932 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d836 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name1332 = "Algebra.Bundles.SemiringWithoutOne._.sym"
d1332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1332 v0 v1 v2 = du1332 v2
du1332 :: T1244 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1332 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v1))))))))))))
name1334 = "Algebra.Bundles.SemiringWithoutOne._.trans"
d1334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1244 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1334 v0 v1 v2 = du1334 v2
du1334 ::
  T1244 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1334 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v1))))))))))))
name1336 = "Algebra.Bundles.SemiringWithoutOne._.zero"
d1336 :: T1244 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1336 v0
  = coe (MAlonzo.Code.Algebra.Structures.d918 (coe (d1272 (coe v0))))
name1338 = "Algebra.Bundles.SemiringWithoutOne._.zeroʳ"
d1338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> AgdaAny -> AgdaAny
d1338 v0 v1 v2 = du1338 v2
du1338 :: T1244 -> AgdaAny -> AgdaAny
du1338 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d918 (coe v1))))
name1340 = "Algebra.Bundles.SemiringWithoutOne._.zeroˡ"
d1340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> AgdaAny -> AgdaAny
d1340 v0 v1 v2 = du1340 v2
du1340 :: T1244 -> AgdaAny -> AgdaAny
du1340 v0
  = let v1 = d1272 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d918 (coe v1))))
name1342 = "Algebra.Bundles.SemiringWithoutOne.nearSemiring"
d1342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> T1138
d1342 v0 v1 v2 = du1342 v2
du1342 :: T1244 -> T1138
du1342 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C4529 v3 v4 v5 v6) erased erased
      (d1266 (coe v0)) (d1268 (coe v0)) (d1270 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du932 (coe (d1272 (coe v0))))
name1346 = "Algebra.Bundles.SemiringWithoutOne._.magma"
d1346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> T30
d1346 v0 v1 v2 = du1346 v2
du1346 :: T1244 -> T30
du1346 v0
  = let v1 = du1342 (coe v0) in coe (du128 (coe (du1232 (coe v1))))
name1348 = "Algebra.Bundles.SemiringWithoutOne._.rawMagma"
d1348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> T8
d1348 v0 v1 v2 = du1348 v2
du1348 :: T1244 -> T8
du1348 v0
  = let v1 = du1342 (coe v0) in
    let v2 = du1232 (coe v1) in coe (du74 (coe (du128 (coe v2))))
name1350 = "Algebra.Bundles.SemiringWithoutOne._.*-semigroup"
d1350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> T80
d1350 v0 v1 v2 = du1350 v2
du1350 :: T1244 -> T80
du1350 v0 = coe (du1232 (coe (du1342 (coe v0))))
name1352 = "Algebra.Bundles.SemiringWithoutOne._.magma"
d1352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> T30
d1352 v0 v1 v2 = du1352 v2
du1352 :: T1244 -> T30
du1352 v0
  = let v1 = du1342 (coe v0) in
    let v2 = du1220 (coe v1) in coe (du128 (coe (du482 (coe v2))))
name1354 = "Algebra.Bundles.SemiringWithoutOne._.+-monoid"
d1354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> T422
d1354 v0 v1 v2 = du1354 v2
du1354 :: T1244 -> T422
du1354 v0 = coe (du1220 (coe (du1342 (coe v0))))
name1356 = "Algebra.Bundles.SemiringWithoutOne._.rawMagma"
d1356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> T8
d1356 v0 v1 v2 = du1356 v2
du1356 :: T1244 -> T8
du1356 v0
  = let v1 = du1342 (coe v0) in
    let v2 = du1220 (coe v1) in
    let v3 = du482 (coe v2) in coe (du74 (coe (du128 (coe v3))))
name1358 = "Algebra.Bundles.SemiringWithoutOne._.rawMonoid"
d1358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> T394
d1358 v0 v1 v2 = du1358 v2
du1358 :: T1244 -> T394
du1358 v0
  = let v1 = du1342 (coe v0) in coe (du484 (coe (du1220 (coe v1))))
name1360 = "Algebra.Bundles.SemiringWithoutOne._.semigroup"
d1360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> T80
d1360 v0 v1 v2 = du1360 v2
du1360 :: T1244 -> T80
du1360 v0
  = let v1 = du1342 (coe v0) in coe (du482 (coe (du1220 (coe v1))))
name1362 = "Algebra.Bundles.SemiringWithoutOne.+-commutativeMonoid"
d1362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1244 -> T496
d1362 v0 v1 v2 = du1362 v2
du1362 :: T1244 -> T496
du1362 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C2037 v3 v4 v5) erased erased (d1266 (coe v0))
      (d1270 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d912 (coe (d1272 (coe v0))))
name1368 = "Algebra.Bundles.CommutativeSemiringWithoutOne"
d1368 a0 a1 = ()
data T1368
  = C5457 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T988
name1386 = "Algebra.Bundles.CommutativeSemiringWithoutOne.Carrier"
d1386 :: T1368 -> ()
d1386 = erased
name1388 = "Algebra.Bundles.CommutativeSemiringWithoutOne._≈_"
d1388 :: T1368 -> AgdaAny -> AgdaAny -> ()
d1388 = erased
name1390 = "Algebra.Bundles.CommutativeSemiringWithoutOne._+_"
d1390 :: T1368 -> AgdaAny -> AgdaAny -> AgdaAny
d1390 v0
  = case coe v0 of
      C5457 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1392 = "Algebra.Bundles.CommutativeSemiringWithoutOne._*_"
d1392 :: T1368 -> AgdaAny -> AgdaAny -> AgdaAny
d1392 v0
  = case coe v0 of
      C5457 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1394 = "Algebra.Bundles.CommutativeSemiringWithoutOne.0#"
d1394 :: T1368 -> AgdaAny
d1394 v0
  = case coe v0 of
      C5457 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1396
  = "Algebra.Bundles.CommutativeSemiringWithoutOne.isCommutativeSemiringWithoutOne"
d1396 :: T1368 -> MAlonzo.Code.Algebra.Structures.T988
d1396 v0
  = case coe v0 of
      C5457 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1400 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.assoc"
d1400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1400 v0 v1 v2 = du1400 v2
du1400 :: T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1400 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe (MAlonzo.Code.Algebra.Structures.d914 (coe v2))))
name1402 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.*-comm"
d1402 :: T1368 -> AgdaAny -> AgdaAny -> AgdaAny
d1402 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1002 (coe (d1396 (coe v0))))
name1404 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-cong"
d1404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1404 v0 v1 v2 = du1404 v2
du1404 ::
  T1368 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1404 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe (MAlonzo.Code.Algebra.Structures.d914 (coe v2))))))
name1406
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congʳ"
d1406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1406 v0 v1 v2 = du1406 v2
du1406 ::
  T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1406 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du932 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name1408
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congˡ"
d1408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1408 v0 v1 v2 = du1408 v2
du1408 ::
  T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1408 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du932 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d838 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name1410
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isMagma"
d1410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> MAlonzo.Code.Algebra.Structures.T78
d1410 v0 v1 v2 = du1410 v2
du1410 :: T1368 -> MAlonzo.Code.Algebra.Structures.T78
du1410 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe (MAlonzo.Code.Algebra.Structures.d914 (coe v2))))
name1412
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.*-isSemigroup"
d1412 :: T1368 -> MAlonzo.Code.Algebra.Structures.T114
d1412 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d914
         (coe
            (MAlonzo.Code.Algebra.Structures.d1000 (coe (d1396 (coe v0))))))
name1414
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.*-isSemigroup"
d1414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> MAlonzo.Code.Algebra.Structures.T114
d1414 v0 v1 v2 = du1414 v2
du1414 :: T1368 -> MAlonzo.Code.Algebra.Structures.T114
du1414 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe (MAlonzo.Code.Algebra.Structures.d914 (coe v2))
name1416 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.assoc"
d1416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1416 v0 v1 v2 = du1416 v2
du1416 :: T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1416 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v2))))))))
name1418 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.comm"
d1418 :: T1368 -> AgdaAny -> AgdaAny -> AgdaAny
d1418 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d372
         (coe
            (MAlonzo.Code.Algebra.Structures.d912
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1000 (coe (d1396 (coe v0))))))))
name1420 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-cong"
d1420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1420 v0 v1 v2 = du1420 v2
du1420 ::
  T1368 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1420 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v2))))))))))
name1422
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congʳ"
d1422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1422 v0 v1 v2 = du1422 v2
du1422 ::
  T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1422 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du932 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d836 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v5))))
name1424
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congˡ"
d1424 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1424 v0 v1 v2 = du1424 v2
du1424 ::
  T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1424 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du932 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d836 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v5))))
name1426
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.identity"
d1426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1426 v0 v1 v2 = du1426 v2
du1426 :: T1368 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1426 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v2))))))
name1428
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.identityʳ"
d1428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> AgdaAny -> AgdaAny
d1428 v0 v1 v2 = du1428 v2
du1428 :: T1368 -> AgdaAny -> AgdaAny
du1428 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du932 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d836 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v4))))
name1430
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.identityˡ"
d1430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> AgdaAny -> AgdaAny
d1430 v0 v1 v2 = du1430 v2
du1430 :: T1368 -> AgdaAny -> AgdaAny
du1430 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du932 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d836 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v4))))
name1432
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.+-isCommutativeMonoid"
d1432 :: T1368 -> MAlonzo.Code.Algebra.Structures.T360
d1432 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d912
         (coe
            (MAlonzo.Code.Algebra.Structures.d1000 (coe (d1396 (coe v0))))))
name1434
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isCommutativeSemigroup"
d1434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> MAlonzo.Code.Algebra.Structures.T190
d1434 v0 v1 v2 = du1434 v2
du1434 :: T1368 -> MAlonzo.Code.Algebra.Structures.T190
du1434 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du408
         (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v2))))
name1436
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isMagma"
d1436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> MAlonzo.Code.Algebra.Structures.T78
d1436 v0 v1 v2 = du1436 v2
du1436 :: T1368 -> MAlonzo.Code.Algebra.Structures.T78
du1436 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v2))))))))
name1438
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isMonoid"
d1438 :: T1368 -> MAlonzo.Code.Algebra.Structures.T312
d1438 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d370
         (coe
            (MAlonzo.Code.Algebra.Structures.d912
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1000 (coe (d1396 (coe v0))))))))
name1440
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isSemigroup"
d1440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> MAlonzo.Code.Algebra.Structures.T114
d1440 v0 v1 v2 = du1440 v2
du1440 :: T1368 -> MAlonzo.Code.Algebra.Structures.T114
du1440 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v2))))))
name1442
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.distrib"
d1442 :: T1368 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1442 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d916
         (coe
            (MAlonzo.Code.Algebra.Structures.d1000 (coe (d1396 (coe v0))))))
name1444
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.distribʳ"
d1444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1444 v0 v1 v2 = du1444 v2
du1444 :: T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1444 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d916 (coe v2))))
name1446
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isEquivalence"
d1446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1446 v0 v1 v2 = du1446 v2
du1446 :: T1368 -> MAlonzo.Code.Relation.Binary.Structures.T26
du1446 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v2))))))))))
name1448
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isNearSemiring"
d1448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> MAlonzo.Code.Algebra.Structures.T820
d1448 v0 v1 v2 = du1448 v2
du1448 :: T1368 -> MAlonzo.Code.Algebra.Structures.T820
du1448 v0
  = let v1 = d1396 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du932
         (coe (MAlonzo.Code.Algebra.Structures.d1000 (coe v1))))
name1450
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isPartialEquivalence"
d1450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1450 v0 v1 v2 = du1450 v2
du1450 :: T1368 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1450 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du932 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d836 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d122 (coe v5) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v6))))
name1452
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.isSemiringWithoutOne"
d1452 :: T1368 -> MAlonzo.Code.Algebra.Structures.T896
d1452 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1000 (coe (d1396 (coe v0))))
name1454 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.refl"
d1454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> AgdaAny -> AgdaAny
d1454 v0 v1 v2 = du1454 v2
du1454 :: T1368 -> AgdaAny -> AgdaAny
du1454 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v2))))))))))))
name1456
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.reflexive"
d1456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1456 v0 v1 v2 = du1456 v2
du1456 ::
  T1368 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1456 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du932 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d836 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d122 (coe v5) in
    coe
      (\ v7 v8 v9 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v6))) v7)
name1458 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.setoid"
d1458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1458 v0 v1 v2 = du1458 v2
du1458 :: T1368 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1458 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du932 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d836 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v5))))
name1460 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.sym"
d1460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1460 v0 v1 v2 = du1460 v2
du1460 :: T1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1460 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v2))))))))))))
name1462 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.trans"
d1462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1368 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1462 v0 v1 v2 = du1462 v2
du1462 ::
  T1368 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1462 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe (MAlonzo.Code.Algebra.Structures.d912 (coe v2))))))))))))
name1464 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.zero"
d1464 :: T1368 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1464 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d918
         (coe
            (MAlonzo.Code.Algebra.Structures.d1000 (coe (d1396 (coe v0))))))
name1466 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.zeroʳ"
d1466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> AgdaAny -> AgdaAny
d1466 v0 v1 v2 = du1466 v2
du1466 :: T1368 -> AgdaAny -> AgdaAny
du1466 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d918 (coe v2))))
name1468 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.zeroˡ"
d1468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> AgdaAny -> AgdaAny
d1468 v0 v1 v2 = du1468 v2
du1468 :: T1368 -> AgdaAny -> AgdaAny
du1468 v0
  = let v1 = d1396 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1000 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d918 (coe v2))))
name1470
  = "Algebra.Bundles.CommutativeSemiringWithoutOne.semiringWithoutOne"
d1470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> T1244
d1470 v0 v1 v2 = du1470 v2
du1470 :: T1368 -> T1244
du1470 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C4983 v3 v4 v5 v6) erased erased
      (d1390 (coe v0)) (d1392 (coe v0)) (d1394 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1000 (coe (d1396 (coe v0))))
name1474 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.magma"
d1474 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> T30
d1474 v0 v1 v2 = du1474 v2
du1474 :: T1368 -> T30
du1474 v0
  = let v1 = du1470 (coe v0) in
    let v2 = du1342 (coe v1) in coe (du128 (coe (du1232 (coe v2))))
name1476
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.rawMagma"
d1476 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> T8
d1476 v0 v1 v2 = du1476 v2
du1476 :: T1368 -> T8
du1476 v0
  = let v1 = du1470 (coe v0) in
    let v2 = du1342 (coe v1) in
    let v3 = du1232 (coe v2) in coe (du74 (coe (du128 (coe v3))))
name1478
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.*-semigroup"
d1478 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> T80
d1478 v0 v1 v2 = du1478 v2
du1478 :: T1368 -> T80
du1478 v0
  = let v1 = du1470 (coe v0) in coe (du1232 (coe (du1342 (coe v1))))
name1480
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.+-commutativeMonoid"
d1480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> T496
d1480 v0 v1 v2 = du1480 v2
du1480 :: T1368 -> T496
du1480 v0 = coe (du1362 (coe (du1470 (coe v0))))
name1482 = "Algebra.Bundles.CommutativeSemiringWithoutOne._.magma"
d1482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> T30
d1482 v0 v1 v2 = du1482 v2
du1482 :: T1368 -> T30
du1482 v0
  = let v1 = du1470 (coe v0) in
    let v2 = du1342 (coe v1) in
    let v3 = du1220 (coe v2) in coe (du128 (coe (du482 (coe v3))))
name1484
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.+-monoid"
d1484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> T422
d1484 v0 v1 v2 = du1484 v2
du1484 :: T1368 -> T422
du1484 v0
  = let v1 = du1470 (coe v0) in coe (du1220 (coe (du1342 (coe v1))))
name1486
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.rawMagma"
d1486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> T8
d1486 v0 v1 v2 = du1486 v2
du1486 :: T1368 -> T8
du1486 v0
  = let v1 = du1470 (coe v0) in
    let v2 = du1342 (coe v1) in
    let v3 = du1220 (coe v2) in
    let v4 = du482 (coe v3) in coe (du74 (coe (du128 (coe v4))))
name1488
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.rawMonoid"
d1488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> T394
d1488 v0 v1 v2 = du1488 v2
du1488 :: T1368 -> T394
du1488 v0
  = let v1 = du1470 (coe v0) in
    let v2 = du1342 (coe v1) in coe (du484 (coe (du1220 (coe v2))))
name1490
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.semigroup"
d1490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> T80
d1490 v0 v1 v2 = du1490 v2
du1490 :: T1368 -> T80
du1490 v0
  = let v1 = du1470 (coe v0) in
    let v2 = du1342 (coe v1) in coe (du482 (coe (du1220 (coe v2))))
name1492
  = "Algebra.Bundles.CommutativeSemiringWithoutOne._.nearSemiring"
d1492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1368 -> T1138
d1492 v0 v1 v2 = du1492 v2
du1492 :: T1368 -> T1138
du1492 v0 = coe (du1342 (coe (du1470 (coe v0))))
name1498 = "Algebra.Bundles.RawSemiring"
d1498 a0 a1 = ()
data T1498
  = C5909 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
name1516 = "Algebra.Bundles.RawSemiring.Carrier"
d1516 :: T1498 -> ()
d1516 = erased
name1518 = "Algebra.Bundles.RawSemiring._≈_"
d1518 :: T1498 -> AgdaAny -> AgdaAny -> ()
d1518 = erased
name1520 = "Algebra.Bundles.RawSemiring._+_"
d1520 :: T1498 -> AgdaAny -> AgdaAny -> AgdaAny
d1520 v0
  = case coe v0 of
      C5909 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1522 = "Algebra.Bundles.RawSemiring._*_"
d1522 :: T1498 -> AgdaAny -> AgdaAny -> AgdaAny
d1522 v0
  = case coe v0 of
      C5909 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1524 = "Algebra.Bundles.RawSemiring.0#"
d1524 :: T1498 -> AgdaAny
d1524 v0
  = case coe v0 of
      C5909 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1526 = "Algebra.Bundles.RawSemiring.1#"
d1526 :: T1498 -> AgdaAny
d1526 v0
  = case coe v0 of
      C5909 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1532 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero"
d1532 a0 a1 = ()
data T1532
  = C6031 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
          MAlonzo.Code.Algebra.Structures.T1080
name1552
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.Carrier"
d1552 :: T1532 -> ()
d1552 = erased
name1554 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._≈_"
d1554 :: T1532 -> AgdaAny -> AgdaAny -> ()
d1554 = erased
name1556 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._+_"
d1556 :: T1532 -> AgdaAny -> AgdaAny -> AgdaAny
d1556 v0
  = case coe v0 of
      C6031 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1558 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._*_"
d1558 :: T1532 -> AgdaAny -> AgdaAny -> AgdaAny
d1558 v0
  = case coe v0 of
      C6031 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1560 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.0#"
d1560 :: T1532 -> AgdaAny
d1560 v0
  = case coe v0 of
      C6031 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1562 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.1#"
d1562 :: T1532 -> AgdaAny
d1562 v0
  = case coe v0 of
      C6031 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1564
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.isSemiringWithoutAnnihilatingZero"
d1564 :: T1532 -> MAlonzo.Code.Algebra.Structures.T1080
d1564 v0
  = case coe v0 of
      C6031 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1568
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.assoc"
d1568 :: T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1568 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1098 (coe (d1564 (coe v0))))))))
name1570
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-cong"
d1570 ::
  T1532 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1570 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1098
                           (coe (d1564 (coe v0))))))))))
name1572
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congʳ"
d1572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1572 v0 v1 v2 = du1572 v2
du1572 ::
  T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1572 v0
  = let v1 = d1564 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1098 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name1574
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congˡ"
d1574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1574 v0 v1 v2 = du1574 v2
du1574 ::
  T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1574 v0
  = let v1 = d1564 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1098 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name1576
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identity"
d1576 :: T1532 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1576 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d1098 (coe (d1564 (coe v0))))))
name1578
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityʳ"
d1578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> AgdaAny -> AgdaAny
d1578 v0 v1 v2 = du1578 v2
du1578 :: T1532 -> AgdaAny -> AgdaAny
du1578 v0
  = let v1 = d1564 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1098 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v2))))
name1580
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityˡ"
d1580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> AgdaAny -> AgdaAny
d1580 v0 v1 v2 = du1580 v2
du1580 :: T1532 -> AgdaAny -> AgdaAny
du1580 v0
  = let v1 = d1564 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1098 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v2))))
name1582
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isMagma"
d1582 :: T1532 -> MAlonzo.Code.Algebra.Structures.T78
d1582 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1098 (coe (d1564 (coe v0))))))))
name1584
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.*-isMonoid"
d1584 :: T1532 -> MAlonzo.Code.Algebra.Structures.T312
d1584 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1098 (coe (d1564 (coe v0))))
name1586
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isSemigroup"
d1586 :: T1532 -> MAlonzo.Code.Algebra.Structures.T114
d1586 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d1098 (coe (d1564 (coe v0))))))
name1588
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.assoc"
d1588 :: T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1588 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1096
                           (coe (d1564 (coe v0))))))))))
name1590 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.comm"
d1590 :: T1532 -> AgdaAny -> AgdaAny -> AgdaAny
d1590 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d372
         (coe
            (MAlonzo.Code.Algebra.Structures.d1096 (coe (d1564 (coe v0))))))
name1592
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-cong"
d1592 ::
  T1532 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1592 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1096
                                 (coe (d1564 (coe v0))))))))))))
name1594
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congʳ"
d1594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1594 v0 v1 v2 = du1594 v2
du1594 ::
  T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1594 v0
  = let v1 = d1564 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1096 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name1596
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congˡ"
d1596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1596 v0 v1 v2 = du1596 v2
du1596 ::
  T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1596 v0
  = let v1 = d1564 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1096 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name1598
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identity"
d1598 :: T1532 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1598 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1096 (coe (d1564 (coe v0))))))))
name1600
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityʳ"
d1600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> AgdaAny -> AgdaAny
d1600 v0 v1 v2 = du1600 v2
du1600 :: T1532 -> AgdaAny -> AgdaAny
du1600 v0
  = let v1 = d1564 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1096 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name1602
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityˡ"
d1602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> AgdaAny -> AgdaAny
d1602 v0 v1 v2 = du1602 v2
du1602 :: T1532 -> AgdaAny -> AgdaAny
du1602 v0
  = let v1 = d1564 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1096 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name1604
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.+-isCommutativeMonoid"
d1604 :: T1532 -> MAlonzo.Code.Algebra.Structures.T360
d1604 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1096 (coe (d1564 (coe v0))))
name1606
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isCommutativeSemigroup"
d1606 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1532 -> MAlonzo.Code.Algebra.Structures.T190
d1606 v0 v1 v2 = du1606 v2
du1606 :: T1532 -> MAlonzo.Code.Algebra.Structures.T190
du1606 v0
  = let v1 = d1564 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du408
         (coe (MAlonzo.Code.Algebra.Structures.d1096 (coe v1))))
name1608
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isMagma"
d1608 :: T1532 -> MAlonzo.Code.Algebra.Structures.T78
d1608 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1096
                           (coe (d1564 (coe v0))))))))))
name1610
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isMonoid"
d1610 :: T1532 -> MAlonzo.Code.Algebra.Structures.T312
d1610 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d370
         (coe
            (MAlonzo.Code.Algebra.Structures.d1096 (coe (d1564 (coe v0))))))
name1612
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isSemigroup"
d1612 :: T1532 -> MAlonzo.Code.Algebra.Structures.T114
d1612 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1096 (coe (d1564 (coe v0))))))))
name1614
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.distrib"
d1614 :: T1532 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1614 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1100 (coe (d1564 (coe v0))))
name1616
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.distribʳ"
d1616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1616 v0 v1 v2 = du1616 v2
du1616 :: T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1616 v0
  = let v1 = d1564 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d1100 (coe v1))))
name1618
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.distribˡ"
d1618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1618 v0 v1 v2 = du1618 v2
du1618 :: T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1618 v0
  = let v1 = d1564 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d1100 (coe v1))))
name1620
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isEquivalence"
d1620 :: T1532 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1620 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1096
                                 (coe (d1564 (coe v0))))))))))))
name1622
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isPartialEquivalence"
d1622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1532 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1622 v0 v1 v2 = du1622 v2
du1622 :: T1532 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1622 v0
  = let v1 = d1564 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1096 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d122 (coe v4) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v5))))
name1624 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.refl"
d1624 :: T1532 -> AgdaAny -> AgdaAny
d1624 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1096
                                       (coe (d1564 (coe v0))))))))))))))
name1626
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.reflexive"
d1626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1532 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1626 v0 v1 v2 = du1626 v2
du1626 ::
  T1532 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1626 v0
  = let v1 = d1564 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1096 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d122 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v5))) v6)
name1628
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.setoid"
d1628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1532 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1628 v0 v1 v2 = du1628 v2
du1628 :: T1532 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1628 v0
  = let v1 = d1564 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1096 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d370 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name1630 = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.sym"
d1630 :: T1532 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1630 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1096
                                       (coe (d1564 (coe v0))))))))))))))
name1632
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.trans"
d1632 ::
  T1532 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1632 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1096
                                       (coe (d1564 (coe v0))))))))))))))
name1634
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.+-commutativeMonoid"
d1634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> T496
d1634 v0 v1 v2 = du1634 v2
du1634 :: T1532 -> T496
du1634 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C2037 v3 v4 v5) erased erased (d1556 (coe v0))
      (d1560 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1096 (coe (d1564 (coe v0))))
name1638
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.magma"
d1638 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> T30
d1638 v0 v1 v2 = du1638 v2
du1638 :: T1532 -> T30
du1638 v0
  = let v1 = du1634 (coe v0) in
    let v2 = du562 (coe v1) in coe (du128 (coe (du482 (coe v2))))
name1640
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.monoid"
d1640 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> T422
d1640 v0 v1 v2 = du1640 v2
du1640 :: T1532 -> T422
du1640 v0 = coe (du562 (coe (du1634 (coe v0))))
name1642
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMagma"
d1642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> T8
d1642 v0 v1 v2 = du1642 v2
du1642 :: T1532 -> T8
du1642 v0
  = let v1 = du1634 (coe v0) in
    let v2 = du562 (coe v1) in
    let v3 = du482 (coe v2) in coe (du74 (coe (du128 (coe v3))))
name1644
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMonoid"
d1644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> T394
d1644 v0 v1 v2 = du1644 v2
du1644 :: T1532 -> T394
du1644 v0
  = let v1 = du1634 (coe v0) in coe (du484 (coe (du562 (coe v1))))
name1646
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.semigroup"
d1646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> T80
d1646 v0 v1 v2 = du1646 v2
du1646 :: T1532 -> T80
du1646 v0
  = let v1 = du1634 (coe v0) in coe (du482 (coe (du562 (coe v1))))
name1648
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero.*-monoid"
d1648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> T422
d1648 v0 v1 v2 = du1648 v2
du1648 :: T1532 -> T422
du1648 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1701 v3 v4 v5) erased erased (d1558 (coe v0))
      (d1562 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1098 (coe (d1564 (coe v0))))
name1652
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.magma"
d1652 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> T30
d1652 v0 v1 v2 = du1652 v2
du1652 :: T1532 -> T30
du1652 v0
  = let v1 = du1648 (coe v0) in coe (du128 (coe (du482 (coe v1))))
name1654
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMagma"
d1654 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> T8
d1654 v0 v1 v2 = du1654 v2
du1654 :: T1532 -> T8
du1654 v0
  = let v1 = du1648 (coe v0) in
    let v2 = du482 (coe v1) in coe (du74 (coe (du128 (coe v2))))
name1656
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMonoid"
d1656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> T394
d1656 v0 v1 v2 = du1656 v2
du1656 :: T1532 -> T394
du1656 v0 = coe (du484 (coe (du1648 (coe v0))))
name1658
  = "Algebra.Bundles.SemiringWithoutAnnihilatingZero._.semigroup"
d1658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1532 -> T80
d1658 v0 v1 v2 = du1658 v2
du1658 :: T1532 -> T80
du1658 v0 = coe (du482 (coe (du1648 (coe v0))))
name1664 = "Algebra.Bundles.Semiring"
d1664 a0 a1 = ()
data T1664
  = C6579 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
          MAlonzo.Code.Algebra.Structures.T1174
name1684 = "Algebra.Bundles.Semiring.Carrier"
d1684 :: T1664 -> ()
d1684 = erased
name1686 = "Algebra.Bundles.Semiring._≈_"
d1686 :: T1664 -> AgdaAny -> AgdaAny -> ()
d1686 = erased
name1688 = "Algebra.Bundles.Semiring._+_"
d1688 :: T1664 -> AgdaAny -> AgdaAny -> AgdaAny
d1688 v0
  = case coe v0 of
      C6579 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1690 = "Algebra.Bundles.Semiring._*_"
d1690 :: T1664 -> AgdaAny -> AgdaAny -> AgdaAny
d1690 v0
  = case coe v0 of
      C6579 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1692 = "Algebra.Bundles.Semiring.0#"
d1692 :: T1664 -> AgdaAny
d1692 v0
  = case coe v0 of
      C6579 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1694 = "Algebra.Bundles.Semiring.1#"
d1694 :: T1664 -> AgdaAny
d1694 v0
  = case coe v0 of
      C6579 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1696 = "Algebra.Bundles.Semiring.isSemiring"
d1696 :: T1664 -> MAlonzo.Code.Algebra.Structures.T1174
d1696 v0
  = case coe v0 of
      C6579 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1700 = "Algebra.Bundles.Semiring._.assoc"
d1700 :: T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1700 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1098
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1188
                           (coe (d1696 (coe v0))))))))))
name1702 = "Algebra.Bundles.Semiring._.∙-cong"
d1702 ::
  T1664 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1702 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1098
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1188
                                 (coe (d1696 (coe v0))))))))))))
name1704 = "Algebra.Bundles.Semiring._.∙-congʳ"
d1704 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1704 v0 v1 v2 = du1704 v2
du1704 ::
  T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1704 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1098 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name1706 = "Algebra.Bundles.Semiring._.∙-congˡ"
d1706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1706 v0 v1 v2 = du1706 v2
du1706 ::
  T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1706 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1098 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name1708 = "Algebra.Bundles.Semiring._.identity"
d1708 :: T1664 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1708 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d1098
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1188 (coe (d1696 (coe v0))))))))
name1710 = "Algebra.Bundles.Semiring._.identityʳ"
d1710 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> AgdaAny -> AgdaAny
d1710 v0 v1 v2 = du1710 v2
du1710 :: T1664 -> AgdaAny -> AgdaAny
du1710 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1098 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name1712 = "Algebra.Bundles.Semiring._.identityˡ"
d1712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> AgdaAny -> AgdaAny
d1712 v0 v1 v2 = du1712 v2
du1712 :: T1664 -> AgdaAny -> AgdaAny
du1712 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1098 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name1714 = "Algebra.Bundles.Semiring._.isMagma"
d1714 :: T1664 -> MAlonzo.Code.Algebra.Structures.T78
d1714 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1098
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1188
                           (coe (d1696 (coe v0))))))))))
name1716 = "Algebra.Bundles.Semiring._.*-isMonoid"
d1716 :: T1664 -> MAlonzo.Code.Algebra.Structures.T312
d1716 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1098
         (coe
            (MAlonzo.Code.Algebra.Structures.d1188 (coe (d1696 (coe v0))))))
name1718 = "Algebra.Bundles.Semiring._.isSemigroup"
d1718 :: T1664 -> MAlonzo.Code.Algebra.Structures.T114
d1718 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d1098
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1188 (coe (d1696 (coe v0))))))))
name1720 = "Algebra.Bundles.Semiring._.assoc"
d1720 :: T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1720 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1096
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1188
                                 (coe (d1696 (coe v0))))))))))))
name1722 = "Algebra.Bundles.Semiring._.comm"
d1722 :: T1664 -> AgdaAny -> AgdaAny -> AgdaAny
d1722 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d372
         (coe
            (MAlonzo.Code.Algebra.Structures.d1096
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1188 (coe (d1696 (coe v0))))))))
name1724 = "Algebra.Bundles.Semiring._.∙-cong"
d1724 ::
  T1664 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1724 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1096
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1188
                                       (coe (d1696 (coe v0))))))))))))))
name1726 = "Algebra.Bundles.Semiring._.∙-congʳ"
d1726 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1726 v0 v1 v2 = du1726 v2
du1726 ::
  T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1726 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1096 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d370 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v5))))
name1728 = "Algebra.Bundles.Semiring._.∙-congˡ"
d1728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1728 v0 v1 v2 = du1728 v2
du1728 ::
  T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1728 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1096 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d370 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v5))))
name1730 = "Algebra.Bundles.Semiring._.identity"
d1730 :: T1664 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1730 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1096
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1188
                           (coe (d1696 (coe v0))))))))))
name1732 = "Algebra.Bundles.Semiring._.identityʳ"
d1732 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> AgdaAny -> AgdaAny
d1732 v0 v1 v2 = du1732 v2
du1732 :: T1664 -> AgdaAny -> AgdaAny
du1732 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1096 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d370 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v4))))
name1734 = "Algebra.Bundles.Semiring._.identityˡ"
d1734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> AgdaAny -> AgdaAny
d1734 v0 v1 v2 = du1734 v2
du1734 :: T1664 -> AgdaAny -> AgdaAny
du1734 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1096 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d370 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v4))))
name1736 = "Algebra.Bundles.Semiring._.+-isCommutativeMonoid"
d1736 :: T1664 -> MAlonzo.Code.Algebra.Structures.T360
d1736 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1096
         (coe
            (MAlonzo.Code.Algebra.Structures.d1188 (coe (d1696 (coe v0))))))
name1738 = "Algebra.Bundles.Semiring._.isCommutativeSemigroup"
d1738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1664 -> MAlonzo.Code.Algebra.Structures.T190
d1738 v0 v1 v2 = du1738 v2
du1738 :: T1664 -> MAlonzo.Code.Algebra.Structures.T190
du1738 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du408
         (coe (MAlonzo.Code.Algebra.Structures.d1096 (coe v2))))
name1740 = "Algebra.Bundles.Semiring._.isMagma"
d1740 :: T1664 -> MAlonzo.Code.Algebra.Structures.T78
d1740 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1096
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1188
                                 (coe (d1696 (coe v0))))))))))))
name1742 = "Algebra.Bundles.Semiring._.isMonoid"
d1742 :: T1664 -> MAlonzo.Code.Algebra.Structures.T312
d1742 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d370
         (coe
            (MAlonzo.Code.Algebra.Structures.d1096
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1188 (coe (d1696 (coe v0))))))))
name1744 = "Algebra.Bundles.Semiring._.isSemigroup"
d1744 :: T1664 -> MAlonzo.Code.Algebra.Structures.T114
d1744 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1096
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1188
                           (coe (d1696 (coe v0))))))))))
name1746 = "Algebra.Bundles.Semiring._.distrib"
d1746 :: T1664 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1746 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1100
         (coe
            (MAlonzo.Code.Algebra.Structures.d1188 (coe (d1696 (coe v0))))))
name1748 = "Algebra.Bundles.Semiring._.distribʳ"
d1748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1748 v0 v1 v2 = du1748 v2
du1748 :: T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1748 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d1100 (coe v2))))
name1750 = "Algebra.Bundles.Semiring._.distribˡ"
d1750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1750 v0 v1 v2 = du1750 v2
du1750 :: T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1750 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d1100 (coe v2))))
name1752 = "Algebra.Bundles.Semiring._.isEquivalence"
d1752 :: T1664 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1752 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1096
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1188
                                       (coe (d1696 (coe v0))))))))))))))
name1754 = "Algebra.Bundles.Semiring._.isNearSemiring"
d1754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1664 -> MAlonzo.Code.Algebra.Structures.T820
d1754 v0 v1 v2 = du1754 v2
du1754 :: T1664 -> MAlonzo.Code.Algebra.Structures.T820
du1754 v0
  = let v1 = d1696 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du932
         (coe (MAlonzo.Code.Algebra.Structures.du1260 (coe v1))))
name1756 = "Algebra.Bundles.Semiring._.isPartialEquivalence"
d1756 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1664 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1756 v0 v1 v2 = du1756 v2
du1756 :: T1664 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1756 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1096 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d370 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d122 (coe v5) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v6))))
name1758
  = "Algebra.Bundles.Semiring._.isSemiringWithoutAnnihilatingZero"
d1758 :: T1664 -> MAlonzo.Code.Algebra.Structures.T1080
d1758 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1188 (coe (d1696 (coe v0))))
name1760 = "Algebra.Bundles.Semiring._.isSemiringWithoutOne"
d1760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1664 -> MAlonzo.Code.Algebra.Structures.T896
d1760 v0 v1 v2 = du1760 v2
du1760 :: T1664 -> MAlonzo.Code.Algebra.Structures.T896
du1760 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1260 (coe (d1696 (coe v0))))
name1762 = "Algebra.Bundles.Semiring._.refl"
d1762 :: T1664 -> AgdaAny -> AgdaAny
d1762 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1096
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1188
                                             (coe (d1696 (coe v0))))))))))))))))
name1764 = "Algebra.Bundles.Semiring._.reflexive"
d1764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1664 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1764 v0 v1 v2 = du1764 v2
du1764 ::
  T1664 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1764 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1096 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d370 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d122 (coe v5) in
    coe
      (\ v7 v8 v9 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v6))) v7)
name1766 = "Algebra.Bundles.Semiring._.setoid"
d1766 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1664 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1766 v0 v1 v2 = du1766 v2
du1766 :: T1664 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1766 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1188 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1096 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d370 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v5))))
name1768 = "Algebra.Bundles.Semiring._.sym"
d1768 :: T1664 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1768 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1096
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1188
                                             (coe (d1696 (coe v0))))))))))))))))
name1770 = "Algebra.Bundles.Semiring._.trans"
d1770 ::
  T1664 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1770 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1096
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1188
                                             (coe (d1696 (coe v0))))))))))))))))
name1772 = "Algebra.Bundles.Semiring._.zero"
d1772 :: T1664 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1772 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1190 (coe (d1696 (coe v0))))
name1774 = "Algebra.Bundles.Semiring._.zeroʳ"
d1774 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> AgdaAny -> AgdaAny
d1774 v0 v1 v2 = du1774 v2
du1774 :: T1664 -> AgdaAny -> AgdaAny
du1774 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du1260 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d918 (coe v2))))
name1776 = "Algebra.Bundles.Semiring._.zeroˡ"
d1776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> AgdaAny -> AgdaAny
d1776 v0 v1 v2 = du1776 v2
du1776 :: T1664 -> AgdaAny -> AgdaAny
du1776 v0
  = let v1 = d1696 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du1260 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d918 (coe v2))))
name1778 = "Algebra.Bundles.Semiring.rawSemiring"
d1778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T1498
d1778 v0 v1 v2 = du1778 v2
du1778 :: T1664 -> T1498
du1778 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C5909 v3 v4 v5 v6) erased erased
      (d1688 (coe v0)) (d1690 (coe v0)) (d1692 (coe v0)) (d1694 (coe v0))
name1780
  = "Algebra.Bundles.Semiring.semiringWithoutAnnihilatingZero"
d1780 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T1532
d1780 v0 v1 v2 = du1780 v2
du1780 :: T1664 -> T1532
du1780 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C6031 v3 v4 v5 v6 v7) erased erased
      (d1688 (coe v0)) (d1690 (coe v0)) (d1692 (coe v0)) (d1694 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1188 (coe (d1696 (coe v0))))
name1784 = "Algebra.Bundles.Semiring._.magma"
d1784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T30
d1784 v0 v1 v2 = du1784 v2
du1784 :: T1664 -> T30
du1784 v0
  = let v1 = du1780 (coe v0) in
    let v2 = du1648 (coe v1) in coe (du128 (coe (du482 (coe v2))))
name1786 = "Algebra.Bundles.Semiring._.*-monoid"
d1786 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T422
d1786 v0 v1 v2 = du1786 v2
du1786 :: T1664 -> T422
du1786 v0 = coe (du1648 (coe (du1780 (coe v0))))
name1788 = "Algebra.Bundles.Semiring._.rawMagma"
d1788 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T8
d1788 v0 v1 v2 = du1788 v2
du1788 :: T1664 -> T8
du1788 v0
  = let v1 = du1780 (coe v0) in
    let v2 = du1648 (coe v1) in
    let v3 = du482 (coe v2) in coe (du74 (coe (du128 (coe v3))))
name1790 = "Algebra.Bundles.Semiring._.rawMonoid"
d1790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T394
d1790 v0 v1 v2 = du1790 v2
du1790 :: T1664 -> T394
du1790 v0
  = let v1 = du1780 (coe v0) in coe (du484 (coe (du1648 (coe v1))))
name1792 = "Algebra.Bundles.Semiring._.semigroup"
d1792 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T80
d1792 v0 v1 v2 = du1792 v2
du1792 :: T1664 -> T80
du1792 v0
  = let v1 = du1780 (coe v0) in coe (du482 (coe (du1648 (coe v1))))
name1794 = "Algebra.Bundles.Semiring._.+-commutativeMonoid"
d1794 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T496
d1794 v0 v1 v2 = du1794 v2
du1794 :: T1664 -> T496
du1794 v0 = coe (du1634 (coe (du1780 (coe v0))))
name1796 = "Algebra.Bundles.Semiring._.magma"
d1796 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T30
d1796 v0 v1 v2 = du1796 v2
du1796 :: T1664 -> T30
du1796 v0
  = let v1 = du1780 (coe v0) in
    let v2 = du1634 (coe v1) in
    let v3 = du562 (coe v2) in coe (du128 (coe (du482 (coe v3))))
name1798 = "Algebra.Bundles.Semiring._.monoid"
d1798 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T422
d1798 v0 v1 v2 = du1798 v2
du1798 :: T1664 -> T422
du1798 v0
  = let v1 = du1780 (coe v0) in coe (du562 (coe (du1634 (coe v1))))
name1800 = "Algebra.Bundles.Semiring._.rawMagma"
d1800 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T8
d1800 v0 v1 v2 = du1800 v2
du1800 :: T1664 -> T8
du1800 v0
  = let v1 = du1780 (coe v0) in
    let v2 = du1634 (coe v1) in
    let v3 = du562 (coe v2) in
    let v4 = du482 (coe v3) in coe (du74 (coe (du128 (coe v4))))
name1802 = "Algebra.Bundles.Semiring._.rawMonoid"
d1802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T394
d1802 v0 v1 v2 = du1802 v2
du1802 :: T1664 -> T394
du1802 v0
  = let v1 = du1780 (coe v0) in
    let v2 = du1634 (coe v1) in coe (du484 (coe (du562 (coe v2))))
name1804 = "Algebra.Bundles.Semiring._.semigroup"
d1804 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T80
d1804 v0 v1 v2 = du1804 v2
du1804 :: T1664 -> T80
du1804 v0
  = let v1 = du1780 (coe v0) in
    let v2 = du1634 (coe v1) in coe (du482 (coe (du562 (coe v2))))
name1806 = "Algebra.Bundles.Semiring.semiringWithoutOne"
d1806 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T1244
d1806 v0 v1 v2 = du1806 v2
du1806 :: T1664 -> T1244
du1806 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C4983 v3 v4 v5 v6) erased erased
      (d1688 (coe v0)) (d1690 (coe v0)) (d1692 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du1260 (coe (d1696 (coe v0))))
name1810 = "Algebra.Bundles.Semiring._.nearSemiring"
d1810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1664 -> T1138
d1810 v0 v1 v2 = du1810 v2
du1810 :: T1664 -> T1138
du1810 v0 = coe (du1342 (coe (du1806 (coe v0))))
name1816 = "Algebra.Bundles.CommutativeSemiring"
d1816 a0 a1 = ()
data T1816
  = C7235 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
          MAlonzo.Code.Algebra.Structures.T1278
name1836 = "Algebra.Bundles.CommutativeSemiring.Carrier"
d1836 :: T1816 -> ()
d1836 = erased
name1838 = "Algebra.Bundles.CommutativeSemiring._≈_"
d1838 :: T1816 -> AgdaAny -> AgdaAny -> ()
d1838 = erased
name1840 = "Algebra.Bundles.CommutativeSemiring._+_"
d1840 :: T1816 -> AgdaAny -> AgdaAny -> AgdaAny
d1840 v0
  = case coe v0 of
      C7235 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1842 = "Algebra.Bundles.CommutativeSemiring._*_"
d1842 :: T1816 -> AgdaAny -> AgdaAny -> AgdaAny
d1842 v0
  = case coe v0 of
      C7235 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1844 = "Algebra.Bundles.CommutativeSemiring.0#"
d1844 :: T1816 -> AgdaAny
d1844 v0
  = case coe v0 of
      C7235 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1846 = "Algebra.Bundles.CommutativeSemiring.1#"
d1846 :: T1816 -> AgdaAny
d1846 v0
  = case coe v0 of
      C7235 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1848
  = "Algebra.Bundles.CommutativeSemiring.isCommutativeSemiring"
d1848 :: T1816 -> MAlonzo.Code.Algebra.Structures.T1278
d1848 v0
  = case coe v0 of
      C7235 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1852 = "Algebra.Bundles.CommutativeSemiring._.assoc"
d1852 :: T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1852 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1098
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1188
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1292
                                 (coe (d1848 (coe v0))))))))))))
name1854 = "Algebra.Bundles.CommutativeSemiring._.*-comm"
d1854 :: T1816 -> AgdaAny -> AgdaAny -> AgdaAny
d1854 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1294 (coe (d1848 (coe v0))))
name1856 = "Algebra.Bundles.CommutativeSemiring._.∙-cong"
d1856 ::
  T1816 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1856 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1098
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1188
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1292
                                       (coe (d1848 (coe v0))))))))))))))
name1858 = "Algebra.Bundles.CommutativeSemiring._.∙-congʳ"
d1858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1858 v0 v1 v2 = du1858 v2
du1858 ::
  T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1858 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1098 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v5))))
name1860 = "Algebra.Bundles.CommutativeSemiring._.∙-congˡ"
d1860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1860 v0 v1 v2 = du1860 v2
du1860 ::
  T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1860 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1098 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v5))))
name1862 = "Algebra.Bundles.CommutativeSemiring._.identity"
d1862 :: T1816 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1862 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d1098
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1188
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1292
                           (coe (d1848 (coe v0))))))))))
name1864 = "Algebra.Bundles.CommutativeSemiring._.identityʳ"
d1864 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> AgdaAny -> AgdaAny
d1864 v0 v1 v2 = du1864 v2
du1864 :: T1816 -> AgdaAny -> AgdaAny
du1864 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1098 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v4))))
name1866 = "Algebra.Bundles.CommutativeSemiring._.identityˡ"
d1866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> AgdaAny -> AgdaAny
d1866 v0 v1 v2 = du1866 v2
du1866 :: T1816 -> AgdaAny -> AgdaAny
du1866 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1098 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v4))))
name1868
  = "Algebra.Bundles.CommutativeSemiring._.*-isCommutativeMonoid"
d1868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> MAlonzo.Code.Algebra.Structures.T360
d1868 v0 v1 v2 = du1868 v2
du1868 :: T1816 -> MAlonzo.Code.Algebra.Structures.T360
du1868 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1378 (coe (d1848 (coe v0))))
name1870 = "Algebra.Bundles.CommutativeSemiring._.isMagma"
d1870 :: T1816 -> MAlonzo.Code.Algebra.Structures.T78
d1870 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1098
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1188
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1292
                                 (coe (d1848 (coe v0))))))))))))
name1872 = "Algebra.Bundles.CommutativeSemiring._.*-isMonoid"
d1872 :: T1816 -> MAlonzo.Code.Algebra.Structures.T312
d1872 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1098
         (coe
            (MAlonzo.Code.Algebra.Structures.d1188
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1848 (coe v0))))))))
name1874 = "Algebra.Bundles.CommutativeSemiring._.isSemigroup"
d1874 :: T1816 -> MAlonzo.Code.Algebra.Structures.T114
d1874 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d1098
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1188
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1292
                           (coe (d1848 (coe v0))))))))))
name1876 = "Algebra.Bundles.CommutativeSemiring._.assoc"
d1876 :: T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1876 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1096
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1188
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1292
                                       (coe (d1848 (coe v0))))))))))))))
name1878 = "Algebra.Bundles.CommutativeSemiring._.comm"
d1878 :: T1816 -> AgdaAny -> AgdaAny -> AgdaAny
d1878 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d372
         (coe
            (MAlonzo.Code.Algebra.Structures.d1096
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1188
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1292
                           (coe (d1848 (coe v0))))))))))
name1880 = "Algebra.Bundles.CommutativeSemiring._.∙-cong"
d1880 ::
  T1816 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1880 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1096
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1188
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1292
                                             (coe (d1848 (coe v0))))))))))))))))
name1882 = "Algebra.Bundles.CommutativeSemiring._.∙-congʳ"
d1882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1882 v0 v1 v2 = du1882 v2
du1882 ::
  T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1882 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d370 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d322 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v6))))
name1884 = "Algebra.Bundles.CommutativeSemiring._.∙-congˡ"
d1884 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1884 v0 v1 v2 = du1884 v2
du1884 ::
  T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1884 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d370 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d322 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v6))))
name1886 = "Algebra.Bundles.CommutativeSemiring._.identity"
d1886 :: T1816 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1886 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1096
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1188
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1292
                                 (coe (d1848 (coe v0))))))))))))
name1888 = "Algebra.Bundles.CommutativeSemiring._.identityʳ"
d1888 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> AgdaAny -> AgdaAny
d1888 v0 v1 v2 = du1888 v2
du1888 :: T1816 -> AgdaAny -> AgdaAny
du1888 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d370 (coe v4) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v5))))
name1890 = "Algebra.Bundles.CommutativeSemiring._.identityˡ"
d1890 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> AgdaAny -> AgdaAny
d1890 v0 v1 v2 = du1890 v2
du1890 :: T1816 -> AgdaAny -> AgdaAny
du1890 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d370 (coe v4) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v5))))
name1892
  = "Algebra.Bundles.CommutativeSemiring._.+-isCommutativeMonoid"
d1892 :: T1816 -> MAlonzo.Code.Algebra.Structures.T360
d1892 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1096
         (coe
            (MAlonzo.Code.Algebra.Structures.d1188
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1848 (coe v0))))))))
name1894
  = "Algebra.Bundles.CommutativeSemiring._.isCommutativeSemigroup"
d1894 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> MAlonzo.Code.Algebra.Structures.T190
d1894 v0 v1 v2 = du1894 v2
du1894 :: T1816 -> MAlonzo.Code.Algebra.Structures.T190
du1894 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du408
         (coe (MAlonzo.Code.Algebra.Structures.d1096 (coe v3))))
name1896 = "Algebra.Bundles.CommutativeSemiring._.isMagma"
d1896 :: T1816 -> MAlonzo.Code.Algebra.Structures.T78
d1896 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d370
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1096
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1188
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1292
                                       (coe (d1848 (coe v0))))))))))))))
name1898 = "Algebra.Bundles.CommutativeSemiring._.isMonoid"
d1898 :: T1816 -> MAlonzo.Code.Algebra.Structures.T312
d1898 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d370
         (coe
            (MAlonzo.Code.Algebra.Structures.d1096
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1188
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1292
                           (coe (d1848 (coe v0))))))))))
name1900 = "Algebra.Bundles.CommutativeSemiring._.isSemigroup"
d1900 :: T1816 -> MAlonzo.Code.Algebra.Structures.T114
d1900 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d370
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1096
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1188
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1292
                                 (coe (d1848 (coe v0))))))))))))
name1902 = "Algebra.Bundles.CommutativeSemiring._.distrib"
d1902 :: T1816 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1902 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1100
         (coe
            (MAlonzo.Code.Algebra.Structures.d1188
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1848 (coe v0))))))))
name1904 = "Algebra.Bundles.CommutativeSemiring._.distribʳ"
d1904 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1904 v0 v1 v2 = du1904 v2
du1904 :: T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1904 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d1100 (coe v3))))
name1906 = "Algebra.Bundles.CommutativeSemiring._.distribˡ"
d1906 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1906 v0 v1 v2 = du1906 v2
du1906 :: T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1906 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d1100 (coe v3))))
name1908
  = "Algebra.Bundles.CommutativeSemiring._.isCommutativeSemiringWithoutOne"
d1908 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> MAlonzo.Code.Algebra.Structures.T988
d1908 v0 v1 v2 = du1908 v2
du1908 :: T1816 -> MAlonzo.Code.Algebra.Structures.T988
du1908 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1376 (coe (d1848 (coe v0))))
name1910 = "Algebra.Bundles.CommutativeSemiring._.isEquivalence"
d1910 :: T1816 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1910 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d370
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1096
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1188
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1292
                                             (coe (d1848 (coe v0))))))))))))))))
name1912 = "Algebra.Bundles.CommutativeSemiring._.isNearSemiring"
d1912 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> MAlonzo.Code.Algebra.Structures.T820
d1912 v0 v1 v2 = du1912 v2
du1912 :: T1816 -> MAlonzo.Code.Algebra.Structures.T820
du1912 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du932
         (coe (MAlonzo.Code.Algebra.Structures.du1260 (coe v2))))
name1914
  = "Algebra.Bundles.CommutativeSemiring._.isPartialEquivalence"
d1914 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1914 v0 v1 v2 = du1914 v2
du1914 :: T1816 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1914 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d370 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d322 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d122 (coe v6) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v7))))
name1916 = "Algebra.Bundles.CommutativeSemiring._.isSemiring"
d1916 :: T1816 -> MAlonzo.Code.Algebra.Structures.T1174
d1916 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1848 (coe v0))))
name1918
  = "Algebra.Bundles.CommutativeSemiring._.isSemiringWithoutAnnihilatingZero"
d1918 :: T1816 -> MAlonzo.Code.Algebra.Structures.T1080
d1918 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1188
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1848 (coe v0))))))
name1920
  = "Algebra.Bundles.CommutativeSemiring._.isSemiringWithoutOne"
d1920 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> MAlonzo.Code.Algebra.Structures.T896
d1920 v0 v1 v2 = du1920 v2
du1920 :: T1816 -> MAlonzo.Code.Algebra.Structures.T896
du1920 v0
  = let v1 = d1848 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1260
         (coe (MAlonzo.Code.Algebra.Structures.d1292 (coe v1))))
name1922 = "Algebra.Bundles.CommutativeSemiring._.refl"
d1922 :: T1816 -> AgdaAny -> AgdaAny
d1922 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1096
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1188
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1292
                                                   (coe (d1848 (coe v0))))))))))))))))))
name1924 = "Algebra.Bundles.CommutativeSemiring._.reflexive"
d1924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1924 v0 v1 v2 = du1924 v2
du1924 ::
  T1816 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1924 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d370 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d322 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d122 (coe v6) in
    coe
      (\ v8 v9 v10 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v7))) v8)
name1926 = "Algebra.Bundles.CommutativeSemiring._.setoid"
d1926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1816 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1926 v0 v1 v2 = du1926 v2
du1926 :: T1816 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1926 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d370 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d322 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v6))))
name1928 = "Algebra.Bundles.CommutativeSemiring._.sym"
d1928 :: T1816 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1928 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1096
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1188
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1292
                                                   (coe (d1848 (coe v0))))))))))))))))))
name1930 = "Algebra.Bundles.CommutativeSemiring._.trans"
d1930 ::
  T1816 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1930 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d370
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1096
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1188
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1292
                                                   (coe (d1848 (coe v0))))))))))))))))))
name1932 = "Algebra.Bundles.CommutativeSemiring._.zero"
d1932 :: T1816 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1932 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1190
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1848 (coe v0))))))
name1934 = "Algebra.Bundles.CommutativeSemiring._.zeroʳ"
d1934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> AgdaAny -> AgdaAny
d1934 v0 v1 v2 = du1934 v2
du1934 :: T1816 -> AgdaAny -> AgdaAny
du1934 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du1260 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d918 (coe v3))))
name1936 = "Algebra.Bundles.CommutativeSemiring._.zeroˡ"
d1936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> AgdaAny -> AgdaAny
d1936 v0 v1 v2 = du1936 v2
du1936 :: T1816 -> AgdaAny -> AgdaAny
du1936 v0
  = let v1 = d1848 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du1260 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d918 (coe v3))))
name1938 = "Algebra.Bundles.CommutativeSemiring.semiring"
d1938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T1664
d1938 v0 v1 v2 = du1938 v2
du1938 :: T1816 -> T1664
du1938 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C6579 v3 v4 v5 v6 v7) erased erased
      (d1840 (coe v0)) (d1842 (coe v0)) (d1844 (coe v0)) (d1846 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1848 (coe v0))))
name1942 = "Algebra.Bundles.CommutativeSemiring._.magma"
d1942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T30
d1942 v0 v1 v2 = du1942 v2
du1942 :: T1816 -> T30
du1942 v0
  = let v1 = du1938 (coe v0) in
    let v2 = du1780 (coe v1) in
    let v3 = du1648 (coe v2) in coe (du128 (coe (du482 (coe v3))))
name1944 = "Algebra.Bundles.CommutativeSemiring._.*-monoid"
d1944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T422
d1944 v0 v1 v2 = du1944 v2
du1944 :: T1816 -> T422
du1944 v0
  = let v1 = du1938 (coe v0) in coe (du1648 (coe (du1780 (coe v1))))
name1946 = "Algebra.Bundles.CommutativeSemiring._.rawMagma"
d1946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T8
d1946 v0 v1 v2 = du1946 v2
du1946 :: T1816 -> T8
du1946 v0
  = let v1 = du1938 (coe v0) in
    let v2 = du1780 (coe v1) in
    let v3 = du1648 (coe v2) in
    let v4 = du482 (coe v3) in coe (du74 (coe (du128 (coe v4))))
name1948 = "Algebra.Bundles.CommutativeSemiring._.rawMonoid"
d1948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T394
d1948 v0 v1 v2 = du1948 v2
du1948 :: T1816 -> T394
du1948 v0
  = let v1 = du1938 (coe v0) in
    let v2 = du1780 (coe v1) in coe (du484 (coe (du1648 (coe v2))))
name1950 = "Algebra.Bundles.CommutativeSemiring._.semigroup"
d1950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T80
d1950 v0 v1 v2 = du1950 v2
du1950 :: T1816 -> T80
du1950 v0
  = let v1 = du1938 (coe v0) in
    let v2 = du1780 (coe v1) in coe (du482 (coe (du1648 (coe v2))))
name1952
  = "Algebra.Bundles.CommutativeSemiring._.+-commutativeMonoid"
d1952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T496
d1952 v0 v1 v2 = du1952 v2
du1952 :: T1816 -> T496
du1952 v0
  = let v1 = du1938 (coe v0) in coe (du1634 (coe (du1780 (coe v1))))
name1954 = "Algebra.Bundles.CommutativeSemiring._.magma"
d1954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T30
d1954 v0 v1 v2 = du1954 v2
du1954 :: T1816 -> T30
du1954 v0
  = let v1 = du1938 (coe v0) in
    let v2 = du1780 (coe v1) in
    let v3 = du1634 (coe v2) in
    let v4 = du562 (coe v3) in coe (du128 (coe (du482 (coe v4))))
name1956 = "Algebra.Bundles.CommutativeSemiring._.monoid"
d1956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T422
d1956 v0 v1 v2 = du1956 v2
du1956 :: T1816 -> T422
du1956 v0
  = let v1 = du1938 (coe v0) in
    let v2 = du1780 (coe v1) in coe (du562 (coe (du1634 (coe v2))))
name1958 = "Algebra.Bundles.CommutativeSemiring._.rawMagma"
d1958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T8
d1958 v0 v1 v2 = du1958 v2
du1958 :: T1816 -> T8
du1958 v0
  = let v1 = du1938 (coe v0) in
    let v2 = du1780 (coe v1) in
    let v3 = du1634 (coe v2) in
    let v4 = du562 (coe v3) in
    let v5 = du482 (coe v4) in coe (du74 (coe (du128 (coe v5))))
name1960 = "Algebra.Bundles.CommutativeSemiring._.rawMonoid"
d1960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T394
d1960 v0 v1 v2 = du1960 v2
du1960 :: T1816 -> T394
du1960 v0
  = let v1 = du1938 (coe v0) in
    let v2 = du1780 (coe v1) in
    let v3 = du1634 (coe v2) in coe (du484 (coe (du562 (coe v3))))
name1962 = "Algebra.Bundles.CommutativeSemiring._.semigroup"
d1962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T80
d1962 v0 v1 v2 = du1962 v2
du1962 :: T1816 -> T80
du1962 v0
  = let v1 = du1938 (coe v0) in
    let v2 = du1780 (coe v1) in
    let v3 = du1634 (coe v2) in coe (du482 (coe (du562 (coe v3))))
name1964 = "Algebra.Bundles.CommutativeSemiring._.nearSemiring"
d1964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T1138
d1964 v0 v1 v2 = du1964 v2
du1964 :: T1816 -> T1138
du1964 v0
  = let v1 = du1938 (coe v0) in coe (du1342 (coe (du1806 (coe v1))))
name1966 = "Algebra.Bundles.CommutativeSemiring._.rawSemiring"
d1966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T1498
d1966 v0 v1 v2 = du1966 v2
du1966 :: T1816 -> T1498
du1966 v0 = coe (du1778 (coe (du1938 (coe v0))))
name1968
  = "Algebra.Bundles.CommutativeSemiring._.semiringWithoutAnnihilatingZero"
d1968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T1532
d1968 v0 v1 v2 = du1968 v2
du1968 :: T1816 -> T1532
du1968 v0 = coe (du1780 (coe (du1938 (coe v0))))
name1970
  = "Algebra.Bundles.CommutativeSemiring._.semiringWithoutOne"
d1970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T1244
d1970 v0 v1 v2 = du1970 v2
du1970 :: T1816 -> T1244
du1970 v0 = coe (du1806 (coe (du1938 (coe v0))))
name1972
  = "Algebra.Bundles.CommutativeSemiring.*-commutativeMonoid"
d1972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T496
d1972 v0 v1 v2 = du1972 v2
du1972 :: T1816 -> T496
du1972 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C2037 v3 v4 v5) erased erased (d1842 (coe v0))
      (d1846 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du1378 (coe (d1848 (coe v0))))
name1974
  = "Algebra.Bundles.CommutativeSemiring.commutativeSemiringWithoutOne"
d1974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1816 -> T1368
d1974 v0 v1 v2 = du1974 v2
du1974 :: T1816 -> T1368
du1974 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C5457 v3 v4 v5 v6) erased erased
      (d1840 (coe v0)) (d1842 (coe v0)) (d1844 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du1376 (coe (d1848 (coe v0))))
name1980 = "Algebra.Bundles.RawRing"
d1980 a0 a1 = ()
data T1980
  = C7923 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny
name2000 = "Algebra.Bundles.RawRing.Carrier"
d2000 :: T1980 -> ()
d2000 = erased
name2002 = "Algebra.Bundles.RawRing._≈_"
d2002 :: T1980 -> AgdaAny -> AgdaAny -> ()
d2002 = erased
name2004 = "Algebra.Bundles.RawRing._+_"
d2004 :: T1980 -> AgdaAny -> AgdaAny -> AgdaAny
d2004 v0
  = case coe v0 of
      C7923 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2006 = "Algebra.Bundles.RawRing._*_"
d2006 :: T1980 -> AgdaAny -> AgdaAny -> AgdaAny
d2006 v0
  = case coe v0 of
      C7923 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2008 = "Algebra.Bundles.RawRing.-_"
d2008 :: T1980 -> AgdaAny -> AgdaAny
d2008 v0
  = case coe v0 of
      C7923 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2010 = "Algebra.Bundles.RawRing.0#"
d2010 :: T1980 -> AgdaAny
d2010 v0
  = case coe v0 of
      C7923 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2012 = "Algebra.Bundles.RawRing.1#"
d2012 :: T1980 -> AgdaAny
d2012 v0
  = case coe v0 of
      C7923 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2018 = "Algebra.Bundles.Ring"
d2018 a0 a1 = ()
data T2018
  = C8061 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny MAlonzo.Code.Algebra.Structures.T1390
name2040 = "Algebra.Bundles.Ring.Carrier"
d2040 :: T2018 -> ()
d2040 = erased
name2042 = "Algebra.Bundles.Ring._≈_"
d2042 :: T2018 -> AgdaAny -> AgdaAny -> ()
d2042 = erased
name2044 = "Algebra.Bundles.Ring._+_"
d2044 :: T2018 -> AgdaAny -> AgdaAny -> AgdaAny
d2044 v0
  = case coe v0 of
      C8061 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2046 = "Algebra.Bundles.Ring._*_"
d2046 :: T2018 -> AgdaAny -> AgdaAny -> AgdaAny
d2046 v0
  = case coe v0 of
      C8061 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2048 = "Algebra.Bundles.Ring.-_"
d2048 :: T2018 -> AgdaAny -> AgdaAny
d2048 v0
  = case coe v0 of
      C8061 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2050 = "Algebra.Bundles.Ring.0#"
d2050 :: T2018 -> AgdaAny
d2050 v0
  = case coe v0 of
      C8061 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2052 = "Algebra.Bundles.Ring.1#"
d2052 :: T2018 -> AgdaAny
d2052 v0
  = case coe v0 of
      C8061 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2054 = "Algebra.Bundles.Ring.isRing"
d2054 :: T2018 -> MAlonzo.Code.Algebra.Structures.T1390
d2054 v0
  = case coe v0 of
      C8061 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name2058 = "Algebra.Bundles.Ring._._-_"
d2058 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny
d2058 v0 v1 v2 = du2058 v2
du2058 :: T2018 -> AgdaAny -> AgdaAny -> AgdaAny
du2058 v0
  = let v1 = d2044 (coe v0) in
    let v2 = d2048 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name2060 = "Algebra.Bundles.Ring._.assoc"
d2060 :: T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2060 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1412 (coe (d2054 (coe v0))))))))
name2062 = "Algebra.Bundles.Ring._.∙-cong"
d2062 ::
  T2018 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2062 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1412
                           (coe (d2054 (coe v0))))))))))
name2064 = "Algebra.Bundles.Ring._.∙-congʳ"
d2064 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2064 v0 v1 v2 = du2064 v2
du2064 ::
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2064 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1412 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name2066 = "Algebra.Bundles.Ring._.∙-congˡ"
d2066 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2066 v0 v1 v2 = du2066 v2
du2066 ::
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2066 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1412 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d322 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v3))))
name2068 = "Algebra.Bundles.Ring._.identity"
d2068 :: T2018 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2068 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d1412 (coe (d2054 (coe v0))))))
name2070 = "Algebra.Bundles.Ring._.identityʳ"
d2070 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> AgdaAny -> AgdaAny
d2070 v0 v1 v2 = du2070 v2
du2070 :: T2018 -> AgdaAny -> AgdaAny
du2070 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1412 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v2))))
name2072 = "Algebra.Bundles.Ring._.identityˡ"
d2072 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> AgdaAny -> AgdaAny
d2072 v0 v1 v2 = du2072 v2
du2072 :: T2018 -> AgdaAny -> AgdaAny
du2072 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1412 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v2))))
name2074 = "Algebra.Bundles.Ring._.isMagma"
d2074 :: T2018 -> MAlonzo.Code.Algebra.Structures.T78
d2074 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1412 (coe (d2054 (coe v0))))))))
name2076 = "Algebra.Bundles.Ring._.*-isMonoid"
d2076 :: T2018 -> MAlonzo.Code.Algebra.Structures.T312
d2076 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1412 (coe (d2054 (coe v0))))
name2078 = "Algebra.Bundles.Ring._.isSemigroup"
d2078 :: T2018 -> MAlonzo.Code.Algebra.Structures.T114
d2078 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d1412 (coe (d2054 (coe v0))))))
name2080 = "Algebra.Bundles.Ring._.assoc"
d2080 :: T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2080 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d540
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d620
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1410
                                 (coe (d2054 (coe v0))))))))))))
name2082 = "Algebra.Bundles.Ring._.comm"
d2082 :: T2018 -> AgdaAny -> AgdaAny -> AgdaAny
d2082 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d622
         (coe
            (MAlonzo.Code.Algebra.Structures.d1410 (coe (d2054 (coe v0))))))
name2084 = "Algebra.Bundles.Ring._.∙-cong"
d2084 ::
  T2018 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2084 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d540
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d620
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1410
                                       (coe (d2054 (coe v0))))))))))))))
name2086 = "Algebra.Bundles.Ring._.∙-congʳ"
d2086 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2086 v0 v1 v2 = du2086 v2
du2086 ::
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2086 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d620 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d540 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v5))))
name2088 = "Algebra.Bundles.Ring._.∙-congˡ"
d2088 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2088 v0 v1 v2 = du2088 v2
du2088 ::
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2088 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d620 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d540 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v5))))
name2090 = "Algebra.Bundles.Ring._.identity"
d2090 :: T2018 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2090 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d540
               (coe
                  (MAlonzo.Code.Algebra.Structures.d620
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1410
                           (coe (d2054 (coe v0))))))))))
name2092 = "Algebra.Bundles.Ring._.identityʳ"
d2092 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> AgdaAny -> AgdaAny
d2092 v0 v1 v2 = du2092 v2
du2092 :: T2018 -> AgdaAny -> AgdaAny
du2092 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d620 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d540 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v4))))
name2094 = "Algebra.Bundles.Ring._.identityˡ"
d2094 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> AgdaAny -> AgdaAny
d2094 v0 v1 v2 = du2094 v2
du2094 :: T2018 -> AgdaAny -> AgdaAny
du2094 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d620 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d540 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v4))))
name2096 = "Algebra.Bundles.Ring._.+-isAbelianGroup"
d2096 :: T2018 -> MAlonzo.Code.Algebra.Structures.T608
d2096 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1410 (coe (d2054 (coe v0))))
name2098 = "Algebra.Bundles.Ring._.isCommutativeMonoid"
d2098 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> MAlonzo.Code.Algebra.Structures.T360
d2098 v0 v1 v2 = du2098 v2
du2098 :: T2018 -> MAlonzo.Code.Algebra.Structures.T360
du2098 v0
  = let v1 = d2054 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du674
         (coe (MAlonzo.Code.Algebra.Structures.d1410 (coe v1))))
name2100 = "Algebra.Bundles.Ring._.isCommutativeSemigroup"
d2100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> MAlonzo.Code.Algebra.Structures.T190
d2100 v0 v1 v2 = du2100 v2
du2100 :: T2018 -> MAlonzo.Code.Algebra.Structures.T190
du2100 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du408
         (coe (MAlonzo.Code.Algebra.Structures.du674 (coe v2))))
name2102 = "Algebra.Bundles.Ring._.isGroup"
d2102 :: T2018 -> MAlonzo.Code.Algebra.Structures.T526
d2102 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d620
         (coe
            (MAlonzo.Code.Algebra.Structures.d1410 (coe (d2054 (coe v0))))))
name2104 = "Algebra.Bundles.Ring._.isMagma"
d2104 :: T2018 -> MAlonzo.Code.Algebra.Structures.T78
d2104 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d540
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d620
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1410
                                 (coe (d2054 (coe v0))))))))))))
name2106 = "Algebra.Bundles.Ring._.isMonoid"
d2106 :: T2018 -> MAlonzo.Code.Algebra.Structures.T312
d2106 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d540
         (coe
            (MAlonzo.Code.Algebra.Structures.d620
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1410 (coe (d2054 (coe v0))))))))
name2108 = "Algebra.Bundles.Ring._.isSemigroup"
d2108 :: T2018 -> MAlonzo.Code.Algebra.Structures.T114
d2108 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d540
               (coe
                  (MAlonzo.Code.Algebra.Structures.d620
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1410
                           (coe (d2054 (coe v0))))))))))
name2110 = "Algebra.Bundles.Ring._.⁻¹-cong"
d2110 :: T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2110 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d544
         (coe
            (MAlonzo.Code.Algebra.Structures.d620
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1410 (coe (d2054 (coe v0))))))))
name2112 = "Algebra.Bundles.Ring._.inverse"
d2112 :: T2018 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2112 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d542
         (coe
            (MAlonzo.Code.Algebra.Structures.d620
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1410 (coe (d2054 (coe v0))))))))
name2114 = "Algebra.Bundles.Ring._.inverseʳ"
d2114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> AgdaAny -> AgdaAny
d2114 v0 v1 v2 = du2114 v2
du2114 :: T2018 -> AgdaAny -> AgdaAny
du2114 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d620 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d542 (coe v3))))
name2116 = "Algebra.Bundles.Ring._.inverseˡ"
d2116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> AgdaAny -> AgdaAny
d2116 v0 v1 v2 = du2116 v2
du2116 :: T2018 -> AgdaAny -> AgdaAny
du2116 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d620 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d542 (coe v3))))
name2118 = "Algebra.Bundles.Ring._.distrib"
d2118 :: T2018 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2118 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1414 (coe (d2054 (coe v0))))
name2120 = "Algebra.Bundles.Ring._.distribʳ"
d2120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2120 v0 v1 v2 = du2120 v2
du2120 :: T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2120 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du1502 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d1100 (coe v3))))
name2122 = "Algebra.Bundles.Ring._.distribˡ"
d2122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2122 v0 v1 v2 = du2122 v2
du2122 :: T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2122 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du1502 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1188 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d1100 (coe v3))))
name2124 = "Algebra.Bundles.Ring._.isEquivalence"
d2124 :: T2018 -> MAlonzo.Code.Relation.Binary.Structures.T26
d2124 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d540
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d620
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1410
                                       (coe (d2054 (coe v0))))))))))))))
name2126 = "Algebra.Bundles.Ring._.isNearSemiring"
d2126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> MAlonzo.Code.Algebra.Structures.T820
d2126 v0 v1 v2 = du2126 v2
du2126 :: T2018 -> MAlonzo.Code.Algebra.Structures.T820
du2126 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du1502 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du932
         (coe (MAlonzo.Code.Algebra.Structures.du1260 (coe v2))))
name2128 = "Algebra.Bundles.Ring._.isPartialEquivalence"
d2128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> MAlonzo.Code.Relation.Binary.Structures.T16
d2128 v0 v1 v2 = du2128 v2
du2128 :: T2018 -> MAlonzo.Code.Relation.Binary.Structures.T16
du2128 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d620 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d540 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d122 (coe v5) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v6))))
name2130 = "Algebra.Bundles.Ring._.isSemiring"
d2130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> MAlonzo.Code.Algebra.Structures.T1174
d2130 v0 v1 v2 = du2130 v2
du2130 :: T2018 -> MAlonzo.Code.Algebra.Structures.T1174
du2130 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1502 (coe (d2054 (coe v0))))
name2132
  = "Algebra.Bundles.Ring._.isSemiringWithoutAnnihilatingZero"
d2132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> MAlonzo.Code.Algebra.Structures.T1080
d2132 v0 v1 v2 = du2132 v2
du2132 :: T2018 -> MAlonzo.Code.Algebra.Structures.T1080
du2132 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1500 (coe (d2054 (coe v0))))
name2134 = "Algebra.Bundles.Ring._.isSemiringWithoutOne"
d2134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> MAlonzo.Code.Algebra.Structures.T896
d2134 v0 v1 v2 = du2134 v2
du2134 :: T2018 -> MAlonzo.Code.Algebra.Structures.T896
du2134 v0
  = let v1 = d2054 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1260
         (coe (MAlonzo.Code.Algebra.Structures.du1502 (coe v1))))
name2136 = "Algebra.Bundles.Ring._.refl"
d2136 :: T2018 -> AgdaAny -> AgdaAny
d2136 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d540
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d620
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1410
                                             (coe (d2054 (coe v0))))))))))))))))
name2138 = "Algebra.Bundles.Ring._.reflexive"
d2138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2138 v0 v1 v2 = du2138 v2
du2138 ::
  T2018 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2138 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d620 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d540 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d122 (coe v5) in
    coe
      (\ v7 v8 v9 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v6))) v7)
name2140 = "Algebra.Bundles.Ring._.setoid"
d2140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d2140 v0 v1 v2 = du2140 v2
du2140 :: T2018 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du2140 v0
  = let v1 = d2054 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1410 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d620 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d540 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d322 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v5))))
name2142 = "Algebra.Bundles.Ring._.sym"
d2142 :: T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2142 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d540
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d620
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1410
                                             (coe (d2054 (coe v0))))))))))))))))
name2144 = "Algebra.Bundles.Ring._.trans"
d2144 ::
  T2018 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2144 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d540
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d620
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1410
                                             (coe (d2054 (coe v0))))))))))))))))
name2146 = "Algebra.Bundles.Ring._.uniqueʳ-⁻¹"
d2146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2146 v0 v1 v2 = du2146 v2
du2146 :: T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2146 v0
  = let v1 = d2044 (coe v0) in
    let v2 = d2048 (coe v0) in
    let v3 = d2050 (coe v0) in
    let v4 = d2054 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1410 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du600
         (coe v1) (coe v3) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d620 (coe v5))))
name2148 = "Algebra.Bundles.Ring._.uniqueˡ-⁻¹"
d2148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2148 v0 v1 v2 = du2148 v2
du2148 :: T2018 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2148 v0
  = let v1 = d2044 (coe v0) in
    let v2 = d2048 (coe v0) in
    let v3 = d2050 (coe v0) in
    let v4 = d2054 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1410 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du594
         (coe v1) (coe v3) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d620 (coe v5))))
name2150 = "Algebra.Bundles.Ring._.zero"
d2150 :: T2018 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2150 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1416 (coe (d2054 (coe v0))))
name2152 = "Algebra.Bundles.Ring._.zeroʳ"
d2152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> AgdaAny -> AgdaAny
d2152 v0 v1 v2 = du2152 v2
du2152 :: T2018 -> AgdaAny -> AgdaAny
du2152 v0
  = let v1 = d2054 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d1416 (coe v1))))
name2154 = "Algebra.Bundles.Ring._.zeroˡ"
d2154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> AgdaAny -> AgdaAny
d2154 v0 v1 v2 = du2154 v2
du2154 :: T2018 -> AgdaAny -> AgdaAny
du2154 v0
  = let v1 = d2054 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d1416 (coe v1))))
name2156 = "Algebra.Bundles.Ring.+-abelianGroup"
d2156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T874
d2156 v0 v1 v2 = du2156 v2
du2156 :: T2018 -> T874
du2156 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C3397 v3 v4 v5 v6) erased erased
      (d2044 (coe v0)) (d2050 (coe v0)) (d2048 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1410 (coe (d2054 (coe v0))))
name2158 = "Algebra.Bundles.Ring.semiring"
d2158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T1664
d2158 v0 v1 v2 = du2158 v2
du2158 :: T2018 -> T1664
du2158 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C6579 v3 v4 v5 v6 v7) erased erased
      (d2044 (coe v0)) (d2046 (coe v0)) (d2050 (coe v0)) (d2052 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du1502 (coe (d2054 (coe v0))))
name2162 = "Algebra.Bundles.Ring._.magma"
d2162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T30
d2162 v0 v1 v2 = du2162 v2
du2162 :: T2018 -> T30
du2162 v0
  = let v1 = du2158 (coe v0) in
    let v2 = du1780 (coe v1) in
    let v3 = du1648 (coe v2) in coe (du128 (coe (du482 (coe v3))))
name2164 = "Algebra.Bundles.Ring._.*-monoid"
d2164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T422
d2164 v0 v1 v2 = du2164 v2
du2164 :: T2018 -> T422
du2164 v0
  = let v1 = du2158 (coe v0) in coe (du1648 (coe (du1780 (coe v1))))
name2166 = "Algebra.Bundles.Ring._.rawMagma"
d2166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T8
d2166 v0 v1 v2 = du2166 v2
du2166 :: T2018 -> T8
du2166 v0
  = let v1 = du2158 (coe v0) in
    let v2 = du1780 (coe v1) in
    let v3 = du1648 (coe v2) in
    let v4 = du482 (coe v3) in coe (du74 (coe (du128 (coe v4))))
name2168 = "Algebra.Bundles.Ring._.rawMonoid"
d2168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T394
d2168 v0 v1 v2 = du2168 v2
du2168 :: T2018 -> T394
du2168 v0
  = let v1 = du2158 (coe v0) in
    let v2 = du1780 (coe v1) in coe (du484 (coe (du1648 (coe v2))))
name2170 = "Algebra.Bundles.Ring._.semigroup"
d2170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T80
d2170 v0 v1 v2 = du2170 v2
du2170 :: T2018 -> T80
du2170 v0
  = let v1 = du2158 (coe v0) in
    let v2 = du1780 (coe v1) in coe (du482 (coe (du1648 (coe v2))))
name2172 = "Algebra.Bundles.Ring._.+-commutativeMonoid"
d2172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T496
d2172 v0 v1 v2 = du2172 v2
du2172 :: T2018 -> T496
du2172 v0
  = let v1 = du2158 (coe v0) in coe (du1634 (coe (du1780 (coe v1))))
name2174 = "Algebra.Bundles.Ring._.magma"
d2174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T30
d2174 v0 v1 v2 = du2174 v2
du2174 :: T2018 -> T30
du2174 v0
  = let v1 = du2158 (coe v0) in
    let v2 = du1780 (coe v1) in
    let v3 = du1634 (coe v2) in
    let v4 = du562 (coe v3) in coe (du128 (coe (du482 (coe v4))))
name2176 = "Algebra.Bundles.Ring._.monoid"
d2176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T422
d2176 v0 v1 v2 = du2176 v2
du2176 :: T2018 -> T422
du2176 v0
  = let v1 = du2158 (coe v0) in
    let v2 = du1780 (coe v1) in coe (du562 (coe (du1634 (coe v2))))
name2178 = "Algebra.Bundles.Ring._.rawMagma"
d2178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T8
d2178 v0 v1 v2 = du2178 v2
du2178 :: T2018 -> T8
du2178 v0
  = let v1 = du2158 (coe v0) in
    let v2 = du1780 (coe v1) in
    let v3 = du1634 (coe v2) in
    let v4 = du562 (coe v3) in
    let v5 = du482 (coe v4) in coe (du74 (coe (du128 (coe v5))))
name2180 = "Algebra.Bundles.Ring._.rawMonoid"
d2180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T394
d2180 v0 v1 v2 = du2180 v2
du2180 :: T2018 -> T394
du2180 v0
  = let v1 = du2158 (coe v0) in
    let v2 = du1780 (coe v1) in
    let v3 = du1634 (coe v2) in coe (du484 (coe (du562 (coe v3))))
name2182 = "Algebra.Bundles.Ring._.semigroup"
d2182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T80
d2182 v0 v1 v2 = du2182 v2
du2182 :: T2018 -> T80
du2182 v0
  = let v1 = du2158 (coe v0) in
    let v2 = du1780 (coe v1) in
    let v3 = du1634 (coe v2) in coe (du482 (coe (du562 (coe v3))))
name2184 = "Algebra.Bundles.Ring._.nearSemiring"
d2184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T1138
d2184 v0 v1 v2 = du2184 v2
du2184 :: T2018 -> T1138
du2184 v0
  = let v1 = du2158 (coe v0) in coe (du1342 (coe (du1806 (coe v1))))
name2186 = "Algebra.Bundles.Ring._.semiringWithoutAnnihilatingZero"
d2186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T1532
d2186 v0 v1 v2 = du2186 v2
du2186 :: T2018 -> T1532
du2186 v0 = coe (du1780 (coe (du2158 (coe v0))))
name2188 = "Algebra.Bundles.Ring._.semiringWithoutOne"
d2188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T1244
d2188 v0 v1 v2 = du2188 v2
du2188 :: T2018 -> T1244
du2188 v0 = coe (du1806 (coe (du2158 (coe v0))))
name2192 = "Algebra.Bundles.Ring._.group"
d2192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T776
d2192 v0 v1 v2 = du2192 v2
du2192 :: T2018 -> T776
du2192 v0 = coe (du962 (coe (du2156 (coe v0))))
name2194 = "Algebra.Bundles.Ring.rawRing"
d2194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2018 -> T1980
d2194 v0 v1 v2 = du2194 v2
du2194 :: T2018 -> T1980
du2194 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C7923 v3 v4 v5 v6 v7) erased erased
      (d2044 (coe v0)) (d2046 (coe v0)) (d2048 (coe v0)) (d2050 (coe v0))
      (d2052 (coe v0))
name2200 = "Algebra.Bundles.CommutativeRing"
d2200 a0 a1 = ()
data T2200
  = C8847 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny MAlonzo.Code.Algebra.Structures.T1524
name2222 = "Algebra.Bundles.CommutativeRing.Carrier"
d2222 :: T2200 -> ()
d2222 = erased
name2224 = "Algebra.Bundles.CommutativeRing._≈_"
d2224 :: T2200 -> AgdaAny -> AgdaAny -> ()
d2224 = erased
name2226 = "Algebra.Bundles.CommutativeRing._+_"
d2226 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny
d2226 v0
  = case coe v0 of
      C8847 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2228 = "Algebra.Bundles.CommutativeRing._*_"
d2228 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny
d2228 v0
  = case coe v0 of
      C8847 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2230 = "Algebra.Bundles.CommutativeRing.-_"
d2230 :: T2200 -> AgdaAny -> AgdaAny
d2230 v0
  = case coe v0 of
      C8847 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2232 = "Algebra.Bundles.CommutativeRing.0#"
d2232 :: T2200 -> AgdaAny
d2232 v0
  = case coe v0 of
      C8847 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2234 = "Algebra.Bundles.CommutativeRing.1#"
d2234 :: T2200 -> AgdaAny
d2234 v0
  = case coe v0 of
      C8847 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2236 = "Algebra.Bundles.CommutativeRing.isCommutativeRing"
d2236 :: T2200 -> MAlonzo.Code.Algebra.Structures.T1524
d2236 v0
  = case coe v0 of
      C8847 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name2240 = "Algebra.Bundles.CommutativeRing._._-_"
d2240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny
d2240 v0 v1 v2 = du2240 v2
du2240 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny
du2240 v0
  = let v1 = d2226 (coe v0) in
    let v2 = d2230 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name2242 = "Algebra.Bundles.CommutativeRing._.assoc"
d2242 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2242 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1412
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1540
                           (coe (d2236 (coe v0))))))))))
name2244 = "Algebra.Bundles.CommutativeRing._.*-comm"
d2244 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny
d2244 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1542 (coe (d2236 (coe v0))))
name2246 = "Algebra.Bundles.CommutativeRing._.∙-cong"
d2246 ::
  T2200 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2246 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1412
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1540
                                 (coe (d2236 (coe v0))))))))))))
name2248 = "Algebra.Bundles.CommutativeRing._.∙-congʳ"
d2248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2248 v0 v1 v2 = du2248 v2
du2248 ::
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2248 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1412 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name2250 = "Algebra.Bundles.CommutativeRing._.∙-congˡ"
d2250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2250 v0 v1 v2 = du2250 v2
du2250 ::
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2250 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1412 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d322 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v4))))
name2252 = "Algebra.Bundles.CommutativeRing._.identity"
d2252 :: T2200 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2252 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d1412
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1540 (coe (d2236 (coe v0))))))))
name2254 = "Algebra.Bundles.CommutativeRing._.identityʳ"
d2254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> AgdaAny -> AgdaAny
d2254 v0 v1 v2 = du2254 v2
du2254 :: T2200 -> AgdaAny -> AgdaAny
du2254 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1412 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name2256 = "Algebra.Bundles.CommutativeRing._.identityˡ"
d2256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> AgdaAny -> AgdaAny
d2256 v0 v1 v2 = du2256 v2
du2256 :: T2200 -> AgdaAny -> AgdaAny
du2256 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1412 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v3))))
name2258
  = "Algebra.Bundles.CommutativeRing._.*-isCommutativeMonoid"
d2258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> MAlonzo.Code.Algebra.Structures.T360
d2258 v0 v1 v2 = du2258 v2
du2258 :: T2200 -> MAlonzo.Code.Algebra.Structures.T360
du2258 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1644 (coe (d2236 (coe v0))))
name2260 = "Algebra.Bundles.CommutativeRing._.isMagma"
d2260 :: T2200 -> MAlonzo.Code.Algebra.Structures.T78
d2260 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1412
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1540
                           (coe (d2236 (coe v0))))))))))
name2262 = "Algebra.Bundles.CommutativeRing._.*-isMonoid"
d2262 :: T2200 -> MAlonzo.Code.Algebra.Structures.T312
d2262 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1412
         (coe
            (MAlonzo.Code.Algebra.Structures.d1540 (coe (d2236 (coe v0))))))
name2264 = "Algebra.Bundles.CommutativeRing._.isSemigroup"
d2264 :: T2200 -> MAlonzo.Code.Algebra.Structures.T114
d2264 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d1412
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1540 (coe (d2236 (coe v0))))))))
name2266 = "Algebra.Bundles.CommutativeRing._.assoc"
d2266 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2266 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d124
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d540
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d620
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1410
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1540
                                       (coe (d2236 (coe v0))))))))))))))
name2268 = "Algebra.Bundles.CommutativeRing._.comm"
d2268 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny
d2268 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d622
         (coe
            (MAlonzo.Code.Algebra.Structures.d1410
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1540 (coe (d2236 (coe v0))))))))
name2270 = "Algebra.Bundles.CommutativeRing._.∙-cong"
d2270 ::
  T2200 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2270 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d540
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d620
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1410
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1540
                                             (coe (d2236 (coe v0))))))))))))))))
name2272 = "Algebra.Bundles.CommutativeRing._.∙-congʳ"
d2272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2272 v0 v1 v2 = du2272 v2
du2272 ::
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2272 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d620 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d540 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d322 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v6))))
name2274 = "Algebra.Bundles.CommutativeRing._.∙-congˡ"
d2274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2274 v0 v1 v2 = du2274 v2
du2274 ::
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2274 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d620 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d540 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d322 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du104
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v6))))
name2276 = "Algebra.Bundles.CommutativeRing._.identity"
d2276 :: T2200 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2276 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d324
         (coe
            (MAlonzo.Code.Algebra.Structures.d540
               (coe
                  (MAlonzo.Code.Algebra.Structures.d620
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1410
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1540
                                 (coe (d2236 (coe v0))))))))))))
name2278 = "Algebra.Bundles.CommutativeRing._.identityʳ"
d2278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> AgdaAny -> AgdaAny
d2278 v0 v1 v2 = du2278 v2
du2278 :: T2200 -> AgdaAny -> AgdaAny
du2278 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d620 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d540 (coe v4) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v5))))
name2280 = "Algebra.Bundles.CommutativeRing._.identityˡ"
d2280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> AgdaAny -> AgdaAny
d2280 v0 v1 v2 = du2280 v2
du2280 :: T2200 -> AgdaAny -> AgdaAny
du2280 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d620 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d540 (coe v4) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d324 (coe v5))))
name2282 = "Algebra.Bundles.CommutativeRing._.+-isAbelianGroup"
d2282 :: T2200 -> MAlonzo.Code.Algebra.Structures.T608
d2282 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1410
         (coe
            (MAlonzo.Code.Algebra.Structures.d1540 (coe (d2236 (coe v0))))))
name2284 = "Algebra.Bundles.CommutativeRing._.isCommutativeMonoid"
d2284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> MAlonzo.Code.Algebra.Structures.T360
d2284 v0 v1 v2 = du2284 v2
du2284 :: T2200 -> MAlonzo.Code.Algebra.Structures.T360
du2284 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du674
         (coe (MAlonzo.Code.Algebra.Structures.d1410 (coe v2))))
name2286
  = "Algebra.Bundles.CommutativeRing._.isCommutativeSemigroup"
d2286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> MAlonzo.Code.Algebra.Structures.T190
d2286 v0 v1 v2 = du2286 v2
du2286 :: T2200 -> MAlonzo.Code.Algebra.Structures.T190
du2286 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du408
         (coe (MAlonzo.Code.Algebra.Structures.du674 (coe v3))))
name2288 = "Algebra.Bundles.CommutativeRing._.isGroup"
d2288 :: T2200 -> MAlonzo.Code.Algebra.Structures.T526
d2288 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d620
         (coe
            (MAlonzo.Code.Algebra.Structures.d1410
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1540 (coe (d2236 (coe v0))))))))
name2290 = "Algebra.Bundles.CommutativeRing._.isMagma"
d2290 :: T2200 -> MAlonzo.Code.Algebra.Structures.T78
d2290 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d122
         (coe
            (MAlonzo.Code.Algebra.Structures.d322
               (coe
                  (MAlonzo.Code.Algebra.Structures.d540
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d620
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1410
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1540
                                       (coe (d2236 (coe v0))))))))))))))
name2292 = "Algebra.Bundles.CommutativeRing._.isMonoid"
d2292 :: T2200 -> MAlonzo.Code.Algebra.Structures.T312
d2292 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d540
         (coe
            (MAlonzo.Code.Algebra.Structures.d620
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1410
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1540
                           (coe (d2236 (coe v0))))))))))
name2294 = "Algebra.Bundles.CommutativeRing._.isSemigroup"
d2294 :: T2200 -> MAlonzo.Code.Algebra.Structures.T114
d2294 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d322
         (coe
            (MAlonzo.Code.Algebra.Structures.d540
               (coe
                  (MAlonzo.Code.Algebra.Structures.d620
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1410
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1540
                                 (coe (d2236 (coe v0))))))))))))
name2296 = "Algebra.Bundles.CommutativeRing._.⁻¹-cong"
d2296 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2296 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d544
         (coe
            (MAlonzo.Code.Algebra.Structures.d620
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1410
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1540
                           (coe (d2236 (coe v0))))))))))
name2298 = "Algebra.Bundles.CommutativeRing._.inverse"
d2298 :: T2200 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2298 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d542
         (coe
            (MAlonzo.Code.Algebra.Structures.d620
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1410
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1540
                           (coe (d2236 (coe v0))))))))))
name2300 = "Algebra.Bundles.CommutativeRing._.inverseʳ"
d2300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> AgdaAny -> AgdaAny
d2300 v0 v1 v2 = du2300 v2
du2300 :: T2200 -> AgdaAny -> AgdaAny
du2300 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d620 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d542 (coe v4))))
name2302 = "Algebra.Bundles.CommutativeRing._.inverseˡ"
d2302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> AgdaAny -> AgdaAny
d2302 v0 v1 v2 = du2302 v2
du2302 :: T2200 -> AgdaAny -> AgdaAny
du2302 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d620 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d542 (coe v4))))
name2304 = "Algebra.Bundles.CommutativeRing._.distrib"
d2304 :: T2200 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2304 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1414
         (coe
            (MAlonzo.Code.Algebra.Structures.d1540 (coe (d2236 (coe v0))))))
name2306 = "Algebra.Bundles.CommutativeRing._.distribʳ"
d2306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2306 v0 v1 v2 = du2306 v2
du2306 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2306 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du1502 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1188 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d1100 (coe v4))))
name2308 = "Algebra.Bundles.CommutativeRing._.distribˡ"
d2308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2308 v0 v1 v2 = du2308 v2
du2308 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2308 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du1502 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1188 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d1100 (coe v4))))
name2310
  = "Algebra.Bundles.CommutativeRing._.isCommutativeSemiring"
d2310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> MAlonzo.Code.Algebra.Structures.T1278
d2310 v0 v1 v2 = du2310 v2
du2310 :: T2200 -> MAlonzo.Code.Algebra.Structures.T1278
du2310 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1646 (coe (d2236 (coe v0))))
name2312
  = "Algebra.Bundles.CommutativeRing._.isCommutativeSemiringWithoutOne"
d2312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> MAlonzo.Code.Algebra.Structures.T988
d2312 v0 v1 v2 = du2312 v2
du2312 :: T2200 -> MAlonzo.Code.Algebra.Structures.T988
du2312 v0
  = let v1 = d2236 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1376
         (coe (MAlonzo.Code.Algebra.Structures.du1646 (coe v1))))
name2314 = "Algebra.Bundles.CommutativeRing._.isEquivalence"
d2314 :: T2200 -> MAlonzo.Code.Relation.Binary.Structures.T26
d2314 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d122
               (coe
                  (MAlonzo.Code.Algebra.Structures.d322
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d540
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d620
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1410
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1540
                                             (coe (d2236 (coe v0))))))))))))))))
name2316 = "Algebra.Bundles.CommutativeRing._.isNearSemiring"
d2316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> MAlonzo.Code.Algebra.Structures.T820
d2316 v0 v1 v2 = du2316 v2
du2316 :: T2200 -> MAlonzo.Code.Algebra.Structures.T820
du2316 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.du1502 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du932
         (coe (MAlonzo.Code.Algebra.Structures.du1260 (coe v3))))
name2318 = "Algebra.Bundles.CommutativeRing._.isPartialEquivalence"
d2318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> MAlonzo.Code.Relation.Binary.Structures.T16
d2318 v0 v1 v2 = du2318 v2
du2318 :: T2200 -> MAlonzo.Code.Relation.Binary.Structures.T16
du2318 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d620 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d540 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d322 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d122 (coe v6) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v7))))
name2320 = "Algebra.Bundles.CommutativeRing._.isRing"
d2320 :: T2200 -> MAlonzo.Code.Algebra.Structures.T1390
d2320 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1540 (coe (d2236 (coe v0))))
name2322 = "Algebra.Bundles.CommutativeRing._.isSemiring"
d2322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> MAlonzo.Code.Algebra.Structures.T1174
d2322 v0 v1 v2 = du2322 v2
du2322 :: T2200 -> MAlonzo.Code.Algebra.Structures.T1174
du2322 v0
  = let v1 = d2236 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1502
         (coe (MAlonzo.Code.Algebra.Structures.d1540 (coe v1))))
name2324
  = "Algebra.Bundles.CommutativeRing._.isSemiringWithoutAnnihilatingZero"
d2324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> MAlonzo.Code.Algebra.Structures.T1080
d2324 v0 v1 v2 = du2324 v2
du2324 :: T2200 -> MAlonzo.Code.Algebra.Structures.T1080
du2324 v0
  = let v1 = d2236 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1500
         (coe (MAlonzo.Code.Algebra.Structures.d1540 (coe v1))))
name2326 = "Algebra.Bundles.CommutativeRing._.isSemiringWithoutOne"
d2326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> MAlonzo.Code.Algebra.Structures.T896
d2326 v0 v1 v2 = du2326 v2
du2326 :: T2200 -> MAlonzo.Code.Algebra.Structures.T896
du2326 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1260
         (coe (MAlonzo.Code.Algebra.Structures.du1502 (coe v2))))
name2328 = "Algebra.Bundles.CommutativeRing._.refl"
d2328 :: T2200 -> AgdaAny -> AgdaAny
d2328 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d540
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d620
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1410
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1540
                                                   (coe (d2236 (coe v0))))))))))))))))))
name2330 = "Algebra.Bundles.CommutativeRing._.reflexive"
d2330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2330 v0 v1 v2 = du2330 v2
du2330 ::
  T2200 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2330 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d620 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d540 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d322 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d122 (coe v6) in
    coe
      (\ v8 v9 v10 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d86 (coe v7))) v8)
name2332 = "Algebra.Bundles.CommutativeRing._.setoid"
d2332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d2332 v0 v1 v2 = du2332 v2
du2332 :: T2200 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du2332 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1410 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d620 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d540 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d322 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du102
         (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v6))))
name2334 = "Algebra.Bundles.CommutativeRing._.sym"
d2334 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2334 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d540
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d620
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1410
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1540
                                                   (coe (d2236 (coe v0))))))))))))))))))
name2336 = "Algebra.Bundles.CommutativeRing._.trans"
d2336 ::
  T2200 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2336 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d86
               (coe
                  (MAlonzo.Code.Algebra.Structures.d122
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d322
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d540
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d620
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1410
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1540
                                                   (coe (d2236 (coe v0))))))))))))))))))
name2338 = "Algebra.Bundles.CommutativeRing._.uniqueʳ-⁻¹"
d2338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2338 v0 v1 v2 = du2338 v2
du2338 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2338 v0
  = let v1 = d2226 (coe v0) in
    let v2 = d2230 (coe v0) in
    let v3 = d2232 (coe v0) in
    let v4 = d2236 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1540 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1410 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du600
         (coe v1) (coe v3) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d620 (coe v6))))
name2340 = "Algebra.Bundles.CommutativeRing._.uniqueˡ-⁻¹"
d2340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2340 v0 v1 v2 = du2340 v2
du2340 :: T2200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2340 v0
  = let v1 = d2226 (coe v0) in
    let v2 = d2230 (coe v0) in
    let v3 = d2232 (coe v0) in
    let v4 = d2236 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1540 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1410 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du594
         (coe v1) (coe v3) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d620 (coe v6))))
name2342 = "Algebra.Bundles.CommutativeRing._.zero"
d2342 :: T2200 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2342 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1416
         (coe
            (MAlonzo.Code.Algebra.Structures.d1540 (coe (d2236 (coe v0))))))
name2344 = "Algebra.Bundles.CommutativeRing._.zeroʳ"
d2344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> AgdaAny -> AgdaAny
d2344 v0 v1 v2 = du2344 v2
du2344 :: T2200 -> AgdaAny -> AgdaAny
du2344 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d1416 (coe v2))))
name2346 = "Algebra.Bundles.CommutativeRing._.zeroˡ"
d2346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> AgdaAny -> AgdaAny
d2346 v0 v1 v2 = du2346 v2
du2346 :: T2200 -> AgdaAny -> AgdaAny
du2346 v0
  = let v1 = d2236 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1540 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d1416 (coe v2))))
name2348 = "Algebra.Bundles.CommutativeRing.ring"
d2348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T2018
d2348 v0 v1 v2 = du2348 v2
du2348 :: T2200 -> T2018
du2348 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 v8 -> C8061 v3 v4 v5 v6 v7 v8) erased
      erased (d2226 (coe v0)) (d2228 (coe v0)) (d2230 (coe v0))
      (d2232 (coe v0)) (d2234 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1540 (coe (d2236 (coe v0))))
name2350 = "Algebra.Bundles.CommutativeRing.commutativeSemiring"
d2350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T1816
d2350 v0 v1 v2 = du2350 v2
du2350 :: T2200 -> T1816
du2350 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C7235 v3 v4 v5 v6 v7) erased erased
      (d2226 (coe v0)) (d2228 (coe v0)) (d2232 (coe v0)) (d2234 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du1646 (coe (d2236 (coe v0))))
name2354 = "Algebra.Bundles.CommutativeRing._.+-abelianGroup"
d2354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T874
d2354 v0 v1 v2 = du2354 v2
du2354 :: T2200 -> T874
du2354 v0 = coe (du2156 (coe (du2348 (coe v0))))
name2356 = "Algebra.Bundles.CommutativeRing._.group"
d2356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T776
d2356 v0 v1 v2 = du2356 v2
du2356 :: T2200 -> T776
du2356 v0
  = let v1 = du2348 (coe v0) in coe (du962 (coe (du2156 (coe v1))))
name2358 = "Algebra.Bundles.CommutativeRing._.rawRing"
d2358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T1980
d2358 v0 v1 v2 = du2358 v2
du2358 :: T2200 -> T1980
du2358 v0 = coe (du2194 (coe (du2348 (coe v0))))
name2362 = "Algebra.Bundles.CommutativeRing._.*-commutativeMonoid"
d2362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T496
d2362 v0 v1 v2 = du2362 v2
du2362 :: T2200 -> T496
du2362 v0 = coe (du1972 (coe (du2350 (coe v0))))
name2364 = "Algebra.Bundles.CommutativeRing._.magma"
d2364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T30
d2364 v0 v1 v2 = du2364 v2
du2364 :: T2200 -> T30
du2364 v0
  = let v1 = du2350 (coe v0) in
    let v2 = du1938 (coe v1) in
    let v3 = du1780 (coe v2) in
    let v4 = du1648 (coe v3) in coe (du128 (coe (du482 (coe v4))))
name2366 = "Algebra.Bundles.CommutativeRing._.*-monoid"
d2366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T422
d2366 v0 v1 v2 = du2366 v2
du2366 :: T2200 -> T422
du2366 v0
  = let v1 = du2350 (coe v0) in
    let v2 = du1938 (coe v1) in coe (du1648 (coe (du1780 (coe v2))))
name2368 = "Algebra.Bundles.CommutativeRing._.rawMagma"
d2368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T8
d2368 v0 v1 v2 = du2368 v2
du2368 :: T2200 -> T8
du2368 v0
  = let v1 = du2350 (coe v0) in
    let v2 = du1938 (coe v1) in
    let v3 = du1780 (coe v2) in
    let v4 = du1648 (coe v3) in
    let v5 = du482 (coe v4) in coe (du74 (coe (du128 (coe v5))))
name2370 = "Algebra.Bundles.CommutativeRing._.rawMonoid"
d2370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T394
d2370 v0 v1 v2 = du2370 v2
du2370 :: T2200 -> T394
du2370 v0
  = let v1 = du2350 (coe v0) in
    let v2 = du1938 (coe v1) in
    let v3 = du1780 (coe v2) in coe (du484 (coe (du1648 (coe v3))))
name2372 = "Algebra.Bundles.CommutativeRing._.semigroup"
d2372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T80
d2372 v0 v1 v2 = du2372 v2
du2372 :: T2200 -> T80
du2372 v0
  = let v1 = du2350 (coe v0) in
    let v2 = du1938 (coe v1) in
    let v3 = du1780 (coe v2) in coe (du482 (coe (du1648 (coe v3))))
name2374 = "Algebra.Bundles.CommutativeRing._.+-commutativeMonoid"
d2374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T496
d2374 v0 v1 v2 = du2374 v2
du2374 :: T2200 -> T496
du2374 v0
  = let v1 = du2350 (coe v0) in
    let v2 = du1938 (coe v1) in coe (du1634 (coe (du1780 (coe v2))))
name2376 = "Algebra.Bundles.CommutativeRing._.magma"
d2376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T30
d2376 v0 v1 v2 = du2376 v2
du2376 :: T2200 -> T30
du2376 v0
  = let v1 = du2350 (coe v0) in
    let v2 = du1938 (coe v1) in
    let v3 = du1780 (coe v2) in
    let v4 = du1634 (coe v3) in
    let v5 = du562 (coe v4) in coe (du128 (coe (du482 (coe v5))))
name2378 = "Algebra.Bundles.CommutativeRing._.monoid"
d2378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T422
d2378 v0 v1 v2 = du2378 v2
du2378 :: T2200 -> T422
du2378 v0
  = let v1 = du2350 (coe v0) in
    let v2 = du1938 (coe v1) in
    let v3 = du1780 (coe v2) in coe (du562 (coe (du1634 (coe v3))))
name2380 = "Algebra.Bundles.CommutativeRing._.rawMagma"
d2380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T8
d2380 v0 v1 v2 = du2380 v2
du2380 :: T2200 -> T8
du2380 v0
  = let v1 = du2350 (coe v0) in
    let v2 = du1938 (coe v1) in
    let v3 = du1780 (coe v2) in
    let v4 = du1634 (coe v3) in
    let v5 = du562 (coe v4) in
    let v6 = du482 (coe v5) in coe (du74 (coe (du128 (coe v6))))
name2382 = "Algebra.Bundles.CommutativeRing._.rawMonoid"
d2382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T394
d2382 v0 v1 v2 = du2382 v2
du2382 :: T2200 -> T394
du2382 v0
  = let v1 = du2350 (coe v0) in
    let v2 = du1938 (coe v1) in
    let v3 = du1780 (coe v2) in
    let v4 = du1634 (coe v3) in coe (du484 (coe (du562 (coe v4))))
name2384 = "Algebra.Bundles.CommutativeRing._.semigroup"
d2384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T80
d2384 v0 v1 v2 = du2384 v2
du2384 :: T2200 -> T80
du2384 v0
  = let v1 = du2350 (coe v0) in
    let v2 = du1938 (coe v1) in
    let v3 = du1780 (coe v2) in
    let v4 = du1634 (coe v3) in coe (du482 (coe (du562 (coe v4))))
name2386
  = "Algebra.Bundles.CommutativeRing._.commutativeSemiringWithoutOne"
d2386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T1368
d2386 v0 v1 v2 = du2386 v2
du2386 :: T2200 -> T1368
du2386 v0 = coe (du1974 (coe (du2350 (coe v0))))
name2388 = "Algebra.Bundles.CommutativeRing._.nearSemiring"
d2388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T1138
d2388 v0 v1 v2 = du2388 v2
du2388 :: T2200 -> T1138
du2388 v0
  = let v1 = du2350 (coe v0) in
    let v2 = du1938 (coe v1) in coe (du1342 (coe (du1806 (coe v2))))
name2390 = "Algebra.Bundles.CommutativeRing._.semiring"
d2390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T1664
d2390 v0 v1 v2 = du2390 v2
du2390 :: T2200 -> T1664
du2390 v0 = coe (du1938 (coe (du2350 (coe v0))))
name2392
  = "Algebra.Bundles.CommutativeRing._.semiringWithoutAnnihilatingZero"
d2392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T1532
d2392 v0 v1 v2 = du2392 v2
du2392 :: T2200 -> T1532
du2392 v0
  = let v1 = du2350 (coe v0) in coe (du1780 (coe (du1938 (coe v1))))
name2394 = "Algebra.Bundles.CommutativeRing._.semiringWithoutOne"
d2394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2200 -> T1244
d2394 v0 v1 v2 = du2394 v2
du2394 :: T2200 -> T1244
du2394 v0
  = let v1 = du2350 (coe v0) in coe (du1806 (coe (du1938 (coe v1))))
name2400 = "Algebra.Bundles.BooleanAlgebra"
d2400 a0 a1 = ()
data T2400
  = C9655 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny MAlonzo.Code.Algebra.Structures.T1662
name2422 = "Algebra.Bundles.BooleanAlgebra.Carrier"
d2422 :: T2400 -> ()
d2422 = erased
name2424 = "Algebra.Bundles.BooleanAlgebra._≈_"
d2424 :: T2400 -> AgdaAny -> AgdaAny -> ()
d2424 = erased
name2426 = "Algebra.Bundles.BooleanAlgebra._∨_"
d2426 :: T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d2426 v0
  = case coe v0 of
      C9655 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2428 = "Algebra.Bundles.BooleanAlgebra._∧_"
d2428 :: T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d2428 v0
  = case coe v0 of
      C9655 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2430 = "Algebra.Bundles.BooleanAlgebra.¬_"
d2430 :: T2400 -> AgdaAny -> AgdaAny
d2430 v0
  = case coe v0 of
      C9655 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2432 = "Algebra.Bundles.BooleanAlgebra.⊤"
d2432 :: T2400 -> AgdaAny
d2432 v0
  = case coe v0 of
      C9655 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2434 = "Algebra.Bundles.BooleanAlgebra.⊥"
d2434 :: T2400 -> AgdaAny
d2434 v0
  = case coe v0 of
      C9655 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2436 = "Algebra.Bundles.BooleanAlgebra.isBooleanAlgebra"
d2436 :: T2400 -> MAlonzo.Code.Algebra.Structures.T1662
d2436 v0
  = case coe v0 of
      C9655 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name2440 = "Algebra.Bundles.BooleanAlgebra._.absorptive"
d2440 :: T2400 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2440 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d720
         (coe
            (MAlonzo.Code.Algebra.Structures.d768
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1682 (coe (d2436 (coe v0))))))))
name2442 = "Algebra.Bundles.BooleanAlgebra._.isDistributiveLattice"
d2442 :: T2400 -> MAlonzo.Code.Algebra.Structures.T758
d2442 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1682 (coe (d2436 (coe v0))))
name2444 = "Algebra.Bundles.BooleanAlgebra._.isEquivalence"
d2444 :: T2400 -> MAlonzo.Code.Relation.Binary.Structures.T26
d2444 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d706
         (coe
            (MAlonzo.Code.Algebra.Structures.d768
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1682 (coe (d2436 (coe v0))))))))
name2446 = "Algebra.Bundles.BooleanAlgebra._.isLattice"
d2446 :: T2400 -> MAlonzo.Code.Algebra.Structures.T684
d2446 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d768
         (coe
            (MAlonzo.Code.Algebra.Structures.d1682 (coe (d2436 (coe v0))))))
name2448 = "Algebra.Bundles.BooleanAlgebra._.isPartialEquivalence"
d2448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2400 -> MAlonzo.Code.Relation.Binary.Structures.T16
d2448 v0 v1 v2 = du2448 v2
du2448 :: T2400 -> MAlonzo.Code.Relation.Binary.Structures.T16
du2448 v0
  = let v1 = d2436 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d768 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Algebra.Structures.d706 (coe v3))))
name2450 = "Algebra.Bundles.BooleanAlgebra._.refl"
d2450 :: T2400 -> AgdaAny -> AgdaAny
d2450 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Algebra.Structures.d706
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (d2436 (coe v0))))))))))
name2452 = "Algebra.Bundles.BooleanAlgebra._.reflexive"
d2452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2400 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2452 v0 v1 v2 = du2452 v2
du2452 ::
  T2400 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2452 v0
  = let v1 = d2436 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d768 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Algebra.Structures.d706 (coe v3))) v4)
name2454 = "Algebra.Bundles.BooleanAlgebra._.sym"
d2454 :: T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2454 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Algebra.Structures.d706
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (d2436 (coe v0))))))))))
name2456 = "Algebra.Bundles.BooleanAlgebra._.trans"
d2456 ::
  T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2456 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Algebra.Structures.d706
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (d2436 (coe v0))))))))))
name2458 = "Algebra.Bundles.BooleanAlgebra._.¬-cong"
d2458 :: T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2458 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1688 (coe (d2436 (coe v0))))
name2460 = "Algebra.Bundles.BooleanAlgebra._.∧-absorbs-∨"
d2460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d2460 v0 v1 v2 = du2460 v2
du2460 :: T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du2460 v0
  = let v1 = d2436 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d768 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d720 (coe v3))))
name2462 = "Algebra.Bundles.BooleanAlgebra._.∧-assoc"
d2462 :: T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2462 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d716
         (coe
            (MAlonzo.Code.Algebra.Structures.d768
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1682 (coe (d2436 (coe v0))))))))
name2464 = "Algebra.Bundles.BooleanAlgebra._.∧-comm"
d2464 :: T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d2464 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d714
         (coe
            (MAlonzo.Code.Algebra.Structures.d768
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1682 (coe (d2436 (coe v0))))))))
name2466 = "Algebra.Bundles.BooleanAlgebra._.∧-complementʳ"
d2466 :: T2400 -> AgdaAny -> AgdaAny
d2466 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1686 (coe (d2436 (coe v0))))
name2468 = "Algebra.Bundles.BooleanAlgebra._.∧-cong"
d2468 ::
  T2400 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2468 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d718
         (coe
            (MAlonzo.Code.Algebra.Structures.d768
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1682 (coe (d2436 (coe v0))))))))
name2470 = "Algebra.Bundles.BooleanAlgebra._.∧-congʳ"
d2470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2470 v0 v1 v2 = du2470 v2
du2470 ::
  T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2470 v0
  = let v1 = d2436 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du742
         (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v2))))
name2472 = "Algebra.Bundles.BooleanAlgebra._.∧-congˡ"
d2472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2472 v0 v1 v2 = du2472 v2
du2472 ::
  T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2472 v0
  = let v1 = d2436 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du738
         (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v2))))
name2474 = "Algebra.Bundles.BooleanAlgebra._.∨-absorbs-∧"
d2474 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d2474 v0 v1 v2 = du2474 v2
du2474 :: T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du2474 v0
  = let v1 = d2436 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d768 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d720 (coe v3))))
name2476 = "Algebra.Bundles.BooleanAlgebra._.∨-assoc"
d2476 :: T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2476 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d710
         (coe
            (MAlonzo.Code.Algebra.Structures.d768
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1682 (coe (d2436 (coe v0))))))))
name2478 = "Algebra.Bundles.BooleanAlgebra._.∨-comm"
d2478 :: T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d2478 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d708
         (coe
            (MAlonzo.Code.Algebra.Structures.d768
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1682 (coe (d2436 (coe v0))))))))
name2480 = "Algebra.Bundles.BooleanAlgebra._.∨-complementʳ"
d2480 :: T2400 -> AgdaAny -> AgdaAny
d2480 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1684 (coe (d2436 (coe v0))))
name2482 = "Algebra.Bundles.BooleanAlgebra._.∨-cong"
d2482 ::
  T2400 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2482 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d712
         (coe
            (MAlonzo.Code.Algebra.Structures.d768
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1682 (coe (d2436 (coe v0))))))))
name2484 = "Algebra.Bundles.BooleanAlgebra._.∨-congʳ"
d2484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2484 v0 v1 v2 = du2484 v2
du2484 ::
  T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2484 v0
  = let v1 = d2436 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du750
         (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v2))))
name2486 = "Algebra.Bundles.BooleanAlgebra._.∨-congˡ"
d2486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2486 v0 v1 v2 = du2486 v2
du2486 ::
  T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2486 v0
  = let v1 = d2436 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1682 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du746
         (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v2))))
name2488 = "Algebra.Bundles.BooleanAlgebra._.∨-distribʳ-∧"
d2488 :: T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2488 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d770
         (coe
            (MAlonzo.Code.Algebra.Structures.d1682 (coe (d2436 (coe v0))))))
name2490 = "Algebra.Bundles.BooleanAlgebra._.∨-∧-distribʳ"
d2490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2490 v0 v1 v2 = du2490 v2
du2490 :: T2400 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2490 v0
  = let v1 = d2436 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du812
         (coe (MAlonzo.Code.Algebra.Structures.d1682 (coe v1))))
name2492 = "Algebra.Bundles.BooleanAlgebra.distributiveLattice"
d2492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2400 -> T1056
d2492 v0 v1 v2 = du2492 v2
du2492 :: T2400 -> T1056
du2492 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C4191 v3 v4 v5) erased erased (d2426 (coe v0))
      (d2428 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1682 (coe (d2436 (coe v0))))
name2496 = "Algebra.Bundles.BooleanAlgebra._.lattice"
d2496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2400 -> T984
d2496 v0 v1 v2 = du2496 v2
du2496 :: T2400 -> T984
du2496 v0 = coe (du1128 (coe (du2492 (coe v0))))
name2498 = "Algebra.Bundles.BooleanAlgebra._.setoid"
d2498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2400 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d2498 v0 v1 v2 = du2498 v2
du2498 :: T2400 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du2498 v0
  = let v1 = du2492 (coe v0) in coe (du1050 (coe (du1128 (coe v1))))
name2500 = "Algebra.Bundles.RawSemigroup"
d2500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d2500 = erased
