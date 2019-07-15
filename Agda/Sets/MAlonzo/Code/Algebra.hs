{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra where

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
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name6 = "Algebra.RawMagma"
d6 a0 a1 = ()
newtype T6 = C3 (AgdaAny -> AgdaAny -> AgdaAny)
name18 = "Algebra.RawMagma.Carrier"
d18 :: T6 -> ()
d18 = erased
name20 = "Algebra.RawMagma._≈_"
d20 :: T6 -> AgdaAny -> AgdaAny -> ()
d20 = erased
name22 = "Algebra.RawMagma._∙_"
d22 :: T6 -> AgdaAny -> AgdaAny -> AgdaAny
d22 v0
  = case coe v0 of
      C3 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name28 = "Algebra.Magma"
d28 a0 a1 = ()
data T28
  = C77 (AgdaAny -> AgdaAny -> AgdaAny)
        MAlonzo.Code.Algebra.Structures.T84
name42 = "Algebra.Magma.Carrier"
d42 :: T28 -> ()
d42 = erased
name44 = "Algebra.Magma._≈_"
d44 :: T28 -> AgdaAny -> AgdaAny -> ()
d44 = erased
name46 = "Algebra.Magma._∙_"
d46 :: T28 -> AgdaAny -> AgdaAny -> AgdaAny
d46 v0
  = case coe v0 of
      C77 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name48 = "Algebra.Magma.isMagma"
d48 :: T28 -> MAlonzo.Code.Algebra.Structures.T84
d48 v0
  = case coe v0 of
      C77 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name52 = "Algebra.Magma._.isEquivalence"
d52 :: T28 -> MAlonzo.Code.Relation.Binary.Core.T402
d52 v0
  = coe (MAlonzo.Code.Algebra.Structures.d92 (coe (d48 (coe v0))))
name54 = "Algebra.Magma._.refl"
d54 :: T28 -> AgdaAny -> AgdaAny
d54 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (MAlonzo.Code.Algebra.Structures.d92 (coe (d48 (coe v0))))))
name56 = "Algebra.Magma._.reflexive"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d56 v0 v1 v2 = du56 v2
du56 ::
  T28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du56 v0
  = let v1 = d48 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v1))) v2)
name58 = "Algebra.Magma._.setoid"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T28 -> MAlonzo.Code.Relation.Binary.T128
d58 v0 v1 v2 = du58 v2
du58 :: T28 -> MAlonzo.Code.Relation.Binary.T128
du58 v0
  = coe (MAlonzo.Code.Algebra.Structures.du106 (coe (d48 (coe v0))))
name60 = "Algebra.Magma._.sym"
d60 :: T28 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d60 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (MAlonzo.Code.Algebra.Structures.d92 (coe (d48 (coe v0))))))
name62 = "Algebra.Magma._.trans"
d62 ::
  T28 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d62 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (MAlonzo.Code.Algebra.Structures.d92 (coe (d48 (coe v0))))))
name64 = "Algebra.Magma._.∙-cong"
d64 ::
  T28 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d64 v0
  = coe (MAlonzo.Code.Algebra.Structures.d94 (coe (d48 (coe v0))))
name66 = "Algebra.Magma._.∙-congʳ"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T28 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d66 v0 v1 v2 = du66 v2
du66 :: T28 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du66 v0
  = coe (MAlonzo.Code.Algebra.Structures.du112 (coe (d48 (coe v0))))
name68 = "Algebra.Magma._.∙-congˡ"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T28 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d68 v0 v1 v2 = du68 v2
du68 :: T28 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du68 v0
  = coe (MAlonzo.Code.Algebra.Structures.du108 (coe (d48 (coe v0))))
name70 = "Algebra.Magma.rawMagma"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T28 -> T6
d70 v0 v1 v2 = du70 v2
du70 :: T28 -> T6
du70 v0 = coe (\ v1 v2 v3 -> C3 v3) erased erased (d46 (coe v0))
name76 = "Algebra.Semigroup"
d76 a0 a1 = ()
data T76
  = C285 (AgdaAny -> AgdaAny -> AgdaAny)
         MAlonzo.Code.Algebra.Structures.T118
name90 = "Algebra.Semigroup.Carrier"
d90 :: T76 -> ()
d90 = erased
name92 = "Algebra.Semigroup._≈_"
d92 :: T76 -> AgdaAny -> AgdaAny -> ()
d92 = erased
name94 = "Algebra.Semigroup._∙_"
d94 :: T76 -> AgdaAny -> AgdaAny -> AgdaAny
d94 v0
  = case coe v0 of
      C285 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name96 = "Algebra.Semigroup.isSemigroup"
d96 :: T76 -> MAlonzo.Code.Algebra.Structures.T118
d96 v0
  = case coe v0 of
      C285 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name100 = "Algebra.Semigroup._.assoc"
d100 :: T76 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d100 v0
  = coe (MAlonzo.Code.Algebra.Structures.d128 (coe (d96 (coe v0))))
name102 = "Algebra.Semigroup._.isEquivalence"
d102 :: T76 -> MAlonzo.Code.Relation.Binary.Core.T402
d102 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe (d96 (coe v0))))))
name104 = "Algebra.Semigroup._.isMagma"
d104 :: T76 -> MAlonzo.Code.Algebra.Structures.T84
d104 v0
  = coe (MAlonzo.Code.Algebra.Structures.d126 (coe (d96 (coe v0))))
name106 = "Algebra.Semigroup._.refl"
d106 :: T76 -> AgdaAny -> AgdaAny
d106 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126 (coe (d96 (coe v0))))))))
name108 = "Algebra.Semigroup._.reflexive"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T76 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d108 v0 v1 v2 = du108 v2
du108 ::
  T76 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du108 v0
  = let v1 = d96 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d126 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v2))) v3)
name110 = "Algebra.Semigroup._.setoid"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T76 -> MAlonzo.Code.Relation.Binary.T128
d110 v0 v1 v2 = du110 v2
du110 :: T76 -> MAlonzo.Code.Relation.Binary.T128
du110 v0
  = let v1 = d96 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v1))))
name112 = "Algebra.Semigroup._.sym"
d112 :: T76 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d112 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126 (coe (d96 (coe v0))))))))
name114 = "Algebra.Semigroup._.trans"
d114 ::
  T76 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d114 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126 (coe (d96 (coe v0))))))))
name116 = "Algebra.Semigroup._.∙-cong"
d116 ::
  T76 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d116 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe (d96 (coe v0))))))
name118 = "Algebra.Semigroup._.∙-congʳ"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T76 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d118 v0 v1 v2 = du118 v2
du118 :: T76 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du118 v0
  = let v1 = d96 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v1))))
name120 = "Algebra.Semigroup._.∙-congˡ"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T76 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d120 v0 v1 v2 = du120 v2
du120 :: T76 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du120 v0
  = let v1 = d96 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v1))))
name122 = "Algebra.Semigroup.magma"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T76 -> T28
d122 v0 v1 v2 = du122 v2
du122 :: T76 -> T28
du122 v0
  = coe
      (\ v1 v2 v3 v4 -> C77 v3 v4) erased erased (d94 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d126 (coe (d96 (coe v0))))
name126 = "Algebra.Semigroup._.rawMagma"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T76 -> T6
d126 v0 v1 v2 = du126 v2
du126 :: T76 -> T6
du126 v0 = coe (du70 (coe (du122 (coe v0))))
name132 = "Algebra.Band"
d132 a0 a1 = ()
data T132
  = C515 (AgdaAny -> AgdaAny -> AgdaAny)
         MAlonzo.Code.Algebra.Structures.T152
name146 = "Algebra.Band.Carrier"
d146 :: T132 -> ()
d146 = erased
name148 = "Algebra.Band._≈_"
d148 :: T132 -> AgdaAny -> AgdaAny -> ()
d148 = erased
name150 = "Algebra.Band._∙_"
d150 :: T132 -> AgdaAny -> AgdaAny -> AgdaAny
d150 v0
  = case coe v0 of
      C515 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name152 = "Algebra.Band.isBand"
d152 :: T132 -> MAlonzo.Code.Algebra.Structures.T152
d152 v0
  = case coe v0 of
      C515 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name156 = "Algebra.Band._.assoc"
d156 :: T132 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d156 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe (MAlonzo.Code.Algebra.Structures.d160 (coe (d152 (coe v0))))))
name158 = "Algebra.Band._.idem"
d158 :: T132 -> AgdaAny -> AgdaAny
d158 v0
  = coe (MAlonzo.Code.Algebra.Structures.d162 (coe (d152 (coe v0))))
name160 = "Algebra.Band._.isEquivalence"
d160 :: T132 -> MAlonzo.Code.Relation.Binary.Core.T402
d160 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d160 (coe (d152 (coe v0))))))))
name162 = "Algebra.Band._.isMagma"
d162 :: T132 -> MAlonzo.Code.Algebra.Structures.T84
d162 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe (MAlonzo.Code.Algebra.Structures.d160 (coe (d152 (coe v0))))))
name164 = "Algebra.Band._.isSemigroup"
d164 :: T132 -> MAlonzo.Code.Algebra.Structures.T118
d164 v0
  = coe (MAlonzo.Code.Algebra.Structures.d160 (coe (d152 (coe v0))))
name166 = "Algebra.Band._.refl"
d166 :: T132 -> AgdaAny -> AgdaAny
d166 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d160 (coe (d152 (coe v0))))))))))
name168 = "Algebra.Band._.reflexive"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T132 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d168 v0 v1 v2 = du168 v2
du168 ::
  T132 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du168 v0
  = let v1 = d152 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d126 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v3))) v4)
name170 = "Algebra.Band._.setoid"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T132 -> MAlonzo.Code.Relation.Binary.T128
d170 v0 v1 v2 = du170 v2
du170 :: T132 -> MAlonzo.Code.Relation.Binary.T128
du170 v0
  = let v1 = d152 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v2))))
name172 = "Algebra.Band._.sym"
d172 :: T132 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d172 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d160 (coe (d152 (coe v0))))))))))
name174 = "Algebra.Band._.trans"
d174 ::
  T132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d174 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d160 (coe (d152 (coe v0))))))))))
name176 = "Algebra.Band._.∙-cong"
d176 ::
  T132 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d176 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d160 (coe (d152 (coe v0))))))))
name178 = "Algebra.Band._.∙-congʳ"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T132 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d178 v0 v1 v2 = du178 v2
du178 ::
  T132 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du178 v0
  = let v1 = d152 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v2))))
name180 = "Algebra.Band._.∙-congˡ"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T132 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d180 v0 v1 v2 = du180 v2
du180 ::
  T132 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du180 v0
  = let v1 = d152 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d160 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v2))))
name182 = "Algebra.Band.semigroup"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T132 -> T76
d182 v0 v1 v2 = du182 v2
du182 :: T132 -> T76
du182 v0
  = coe
      (\ v1 v2 v3 v4 -> C285 v3 v4) erased erased (d150 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d160 (coe (d152 (coe v0))))
name186 = "Algebra.Band._.magma"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T132 -> T28
d186 v0 v1 v2 = du186 v2
du186 :: T132 -> T28
du186 v0 = coe (du122 (coe (du182 (coe v0))))
name188 = "Algebra.Band._.rawMagma"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T132 -> T6
d188 v0 v1 v2 = du188 v2
du188 :: T132 -> T6
du188 v0
  = let v1 = du182 (coe v0) in coe (du70 (coe (du122 (coe v1))))
name194 = "Algebra.Semilattice"
d194 a0 a1 = ()
data T194
  = C771 (AgdaAny -> AgdaAny -> AgdaAny)
         MAlonzo.Code.Algebra.Structures.T190
name208 = "Algebra.Semilattice.Carrier"
d208 :: T194 -> ()
d208 = erased
name210 = "Algebra.Semilattice._≈_"
d210 :: T194 -> AgdaAny -> AgdaAny -> ()
d210 = erased
name212 = "Algebra.Semilattice._∧_"
d212 :: T194 -> AgdaAny -> AgdaAny -> AgdaAny
d212 v0
  = case coe v0 of
      C771 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name214 = "Algebra.Semilattice.isSemilattice"
d214 :: T194 -> MAlonzo.Code.Algebra.Structures.T190
d214 v0
  = case coe v0 of
      C771 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name218 = "Algebra.Semilattice._.assoc"
d218 :: T194 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d218 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d160
               (coe
                  (MAlonzo.Code.Algebra.Structures.d198 (coe (d214 (coe v0))))))))
name220 = "Algebra.Semilattice._.comm"
d220 :: T194 -> AgdaAny -> AgdaAny -> AgdaAny
d220 v0
  = coe (MAlonzo.Code.Algebra.Structures.d200 (coe (d214 (coe v0))))
name222 = "Algebra.Semilattice._.idem"
d222 :: T194 -> AgdaAny -> AgdaAny
d222 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d162
         (coe (MAlonzo.Code.Algebra.Structures.d198 (coe (d214 (coe v0))))))
name224 = "Algebra.Semilattice._.isBand"
d224 :: T194 -> MAlonzo.Code.Algebra.Structures.T152
d224 v0
  = coe (MAlonzo.Code.Algebra.Structures.d198 (coe (d214 (coe v0))))
name226 = "Algebra.Semilattice._.isEquivalence"
d226 :: T194 -> MAlonzo.Code.Relation.Binary.Core.T402
d226 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d160
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d198 (coe (d214 (coe v0))))))))))
name228 = "Algebra.Semilattice._.isMagma"
d228 :: T194 -> MAlonzo.Code.Algebra.Structures.T84
d228 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d160
               (coe
                  (MAlonzo.Code.Algebra.Structures.d198 (coe (d214 (coe v0))))))))
name230 = "Algebra.Semilattice._.isSemigroup"
d230 :: T194 -> MAlonzo.Code.Algebra.Structures.T118
d230 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d160
         (coe (MAlonzo.Code.Algebra.Structures.d198 (coe (d214 (coe v0))))))
name232 = "Algebra.Semilattice._.refl"
d232 :: T194 -> AgdaAny -> AgdaAny
d232 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d160
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d198
                                 (coe (d214 (coe v0))))))))))))
name234 = "Algebra.Semilattice._.reflexive"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T194 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d234 v0 v1 v2 = du234 v2
du234 ::
  T194 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du234 v0
  = let v1 = d214 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d126 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v4))) v5)
name236 = "Algebra.Semilattice._.setoid"
d236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T194 -> MAlonzo.Code.Relation.Binary.T128
d236 v0 v1 v2 = du236 v2
du236 :: T194 -> MAlonzo.Code.Relation.Binary.T128
du236 v0
  = let v1 = d214 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name238 = "Algebra.Semilattice._.sym"
d238 :: T194 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d238 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d160
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d198
                                 (coe (d214 (coe v0))))))))))))
name240 = "Algebra.Semilattice._.trans"
d240 ::
  T194 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d240 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d160
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d198
                                 (coe (d214 (coe v0))))))))))))
name242 = "Algebra.Semilattice._.∙-cong"
d242 ::
  T194 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d242 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d160
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d198 (coe (d214 (coe v0))))))))))
name244 = "Algebra.Semilattice._.∙-congʳ"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T194 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d244 v0 v1 v2 = du244 v2
du244 ::
  T194 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du244 v0
  = let v1 = d214 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name246 = "Algebra.Semilattice._.∙-congˡ"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T194 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d246 v0 v1 v2 = du246 v2
du246 ::
  T194 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du246 v0
  = let v1 = d214 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d160 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name248 = "Algebra.Semilattice.band"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T194 -> T132
d248 v0 v1 v2 = du248 v2
du248 :: T194 -> T132
du248 v0
  = coe
      (\ v1 v2 v3 v4 -> C515 v3 v4) erased erased (d212 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d198 (coe (d214 (coe v0))))
name252 = "Algebra.Semilattice._.magma"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T194 -> T28
d252 v0 v1 v2 = du252 v2
du252 :: T194 -> T28
du252 v0
  = let v1 = du248 (coe v0) in coe (du122 (coe (du182 (coe v1))))
name254 = "Algebra.Semilattice._.rawMagma"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T194 -> T6
d254 v0 v1 v2 = du254 v2
du254 :: T194 -> T6
du254 v0
  = let v1 = du248 (coe v0) in
    let v2 = du182 (coe v1) in coe (du70 (coe (du122 (coe v2))))
name256 = "Algebra.Semilattice._.semigroup"
d256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T194 -> T76
d256 v0 v1 v2 = du256 v2
du256 :: T194 -> T76
du256 v0 = coe (du182 (coe (du248 (coe v0))))
name262 = "Algebra.SelectiveMagma"
d262 a0 a1 = ()
data T262
  = C1053 (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T232
name276 = "Algebra.SelectiveMagma.Carrier"
d276 :: T262 -> ()
d276 = erased
name278 = "Algebra.SelectiveMagma._≈_"
d278 :: T262 -> AgdaAny -> AgdaAny -> ()
d278 = erased
name280 = "Algebra.SelectiveMagma._∙_"
d280 :: T262 -> AgdaAny -> AgdaAny -> AgdaAny
d280 v0
  = case coe v0 of
      C1053 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name282 = "Algebra.SelectiveMagma.isSelectiveMagma"
d282 :: T262 -> MAlonzo.Code.Algebra.Structures.T232
d282 v0
  = case coe v0 of
      C1053 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name286 = "Algebra.SelectiveMagma._.isEquivalence"
d286 :: T262 -> MAlonzo.Code.Relation.Binary.Core.T402
d286 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe (MAlonzo.Code.Algebra.Structures.d240 (coe (d282 (coe v0))))))
name288 = "Algebra.SelectiveMagma._.isMagma"
d288 :: T262 -> MAlonzo.Code.Algebra.Structures.T84
d288 v0
  = coe (MAlonzo.Code.Algebra.Structures.d240 (coe (d282 (coe v0))))
name290 = "Algebra.SelectiveMagma._.refl"
d290 :: T262 -> AgdaAny -> AgdaAny
d290 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d240 (coe (d282 (coe v0))))))))
name292 = "Algebra.SelectiveMagma._.reflexive"
d292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T262 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d292 v0 v1 v2 = du292 v2
du292 ::
  T262 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du292 v0
  = let v1 = d282 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v2))) v3)
name294 = "Algebra.SelectiveMagma._.sel"
d294 ::
  T262 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d294 v0
  = coe (MAlonzo.Code.Algebra.Structures.d242 (coe (d282 (coe v0))))
name296 = "Algebra.SelectiveMagma._.setoid"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T262 -> MAlonzo.Code.Relation.Binary.T128
d296 v0 v1 v2 = du296 v2
du296 :: T262 -> MAlonzo.Code.Relation.Binary.T128
du296 v0
  = let v1 = d282 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d240 (coe v1))))
name298 = "Algebra.SelectiveMagma._.sym"
d298 :: T262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d298 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d240 (coe (d282 (coe v0))))))))
name300 = "Algebra.SelectiveMagma._.trans"
d300 ::
  T262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d300 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d240 (coe (d282 (coe v0))))))))
name302 = "Algebra.SelectiveMagma._.∙-cong"
d302 ::
  T262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d302 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe (MAlonzo.Code.Algebra.Structures.d240 (coe (d282 (coe v0))))))
name304 = "Algebra.SelectiveMagma._.∙-congʳ"
d304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d304 v0 v1 v2 = du304 v2
du304 ::
  T262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du304 v0
  = let v1 = d282 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d240 (coe v1))))
name306 = "Algebra.SelectiveMagma._.∙-congˡ"
d306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d306 v0 v1 v2 = du306 v2
du306 ::
  T262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du306 v0
  = let v1 = d282 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d240 (coe v1))))
name308 = "Algebra.SelectiveMagma.magma"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T262 -> T28
d308 v0 v1 v2 = du308 v2
du308 :: T262 -> T28
du308 v0
  = coe
      (\ v1 v2 v3 v4 -> C77 v3 v4) erased erased (d280 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d240 (coe (d282 (coe v0))))
name312 = "Algebra.SelectiveMagma._.rawMagma"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T262 -> T6
d312 v0 v1 v2 = du312 v2
du312 :: T262 -> T6
du312 v0 = coe (du70 (coe (du308 (coe v0))))
name318 = "Algebra.RawMonoid"
d318 a0 a1 = ()
data T318 = C1275 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
name332 = "Algebra.RawMonoid.Carrier"
d332 :: T318 -> ()
d332 = erased
name334 = "Algebra.RawMonoid._≈_"
d334 :: T318 -> AgdaAny -> AgdaAny -> ()
d334 = erased
name336 = "Algebra.RawMonoid._∙_"
d336 :: T318 -> AgdaAny -> AgdaAny -> AgdaAny
d336 v0
  = case coe v0 of
      C1275 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name338 = "Algebra.RawMonoid.ε"
d338 :: T318 -> AgdaAny
d338 v0
  = case coe v0 of
      C1275 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name340 = "Algebra.RawMonoid.rawMagma"
d340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T318 -> T6
d340 v0 v1 v2 = du340 v2
du340 :: T318 -> T6
du340 v0 = coe (\ v1 v2 v3 -> C3 v3) erased erased (d336 (coe v0))
name346 = "Algebra.Monoid"
d346 a0 a1 = ()
data T346
  = C1409 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T268
name362 = "Algebra.Monoid.Carrier"
d362 :: T346 -> ()
d362 = erased
name364 = "Algebra.Monoid._≈_"
d364 :: T346 -> AgdaAny -> AgdaAny -> ()
d364 = erased
name366 = "Algebra.Monoid._∙_"
d366 :: T346 -> AgdaAny -> AgdaAny -> AgdaAny
d366 v0
  = case coe v0 of
      C1409 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name368 = "Algebra.Monoid.ε"
d368 :: T346 -> AgdaAny
d368 v0
  = case coe v0 of
      C1409 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name370 = "Algebra.Monoid.isMonoid"
d370 :: T346 -> MAlonzo.Code.Algebra.Structures.T268
d370 v0
  = case coe v0 of
      C1409 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name374 = "Algebra.Monoid._.assoc"
d374 :: T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d374 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe (MAlonzo.Code.Algebra.Structures.d278 (coe (d370 (coe v0))))))
name376 = "Algebra.Monoid._.identity"
d376 :: T346 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d376 v0
  = coe (MAlonzo.Code.Algebra.Structures.d280 (coe (d370 (coe v0))))
name378 = "Algebra.Monoid._.identityʳ"
d378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T346 -> AgdaAny -> AgdaAny
d378 v0 v1 v2 = du378 v2
du378 :: T346 -> AgdaAny -> AgdaAny
du378 v0
  = let v1 = d370 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v1))))
name380 = "Algebra.Monoid._.identityˡ"
d380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T346 -> AgdaAny -> AgdaAny
d380 v0 v1 v2 = du380 v2
du380 :: T346 -> AgdaAny -> AgdaAny
du380 v0
  = let v1 = d370 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v1))))
name382 = "Algebra.Monoid._.isEquivalence"
d382 :: T346 -> MAlonzo.Code.Relation.Binary.Core.T402
d382 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278 (coe (d370 (coe v0))))))))
name384 = "Algebra.Monoid._.isMagma"
d384 :: T346 -> MAlonzo.Code.Algebra.Structures.T84
d384 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe (MAlonzo.Code.Algebra.Structures.d278 (coe (d370 (coe v0))))))
name386 = "Algebra.Monoid._.isSemigroup"
d386 :: T346 -> MAlonzo.Code.Algebra.Structures.T118
d386 v0
  = coe (MAlonzo.Code.Algebra.Structures.d278 (coe (d370 (coe v0))))
name388 = "Algebra.Monoid._.refl"
d388 :: T346 -> AgdaAny -> AgdaAny
d388 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278 (coe (d370 (coe v0))))))))))
name390 = "Algebra.Monoid._.reflexive"
d390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T346 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d390 v0 v1 v2 = du390 v2
du390 ::
  T346 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du390 v0
  = let v1 = d370 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d278 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d126 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v3))) v4)
name392 = "Algebra.Monoid._.setoid"
d392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T346 -> MAlonzo.Code.Relation.Binary.T128
d392 v0 v1 v2 = du392 v2
du392 :: T346 -> MAlonzo.Code.Relation.Binary.T128
du392 v0
  = let v1 = d370 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d278 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v2))))
name394 = "Algebra.Monoid._.sym"
d394 :: T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d394 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278 (coe (d370 (coe v0))))))))))
name396 = "Algebra.Monoid._.trans"
d396 ::
  T346 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d396 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278 (coe (d370 (coe v0))))))))))
name398 = "Algebra.Monoid._.∙-cong"
d398 ::
  T346 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d398 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278 (coe (d370 (coe v0))))))))
name400 = "Algebra.Monoid._.∙-congʳ"
d400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d400 v0 v1 v2 = du400 v2
du400 ::
  T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du400 v0
  = let v1 = d370 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d278 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v2))))
name402 = "Algebra.Monoid._.∙-congˡ"
d402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d402 v0 v1 v2 = du402 v2
du402 ::
  T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du402 v0
  = let v1 = d370 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d278 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v2))))
name404 = "Algebra.Monoid.semigroup"
d404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T346 -> T76
d404 v0 v1 v2 = du404 v2
du404 :: T346 -> T76
du404 v0
  = coe
      (\ v1 v2 v3 v4 -> C285 v3 v4) erased erased (d366 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d278 (coe (d370 (coe v0))))
name406 = "Algebra.Monoid.rawMonoid"
d406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T346 -> T318
d406 v0 v1 v2 = du406 v2
du406 :: T346 -> T318
du406 v0
  = coe
      (\ v1 v2 v3 v4 -> C1275 v3 v4) erased erased (d366 (coe v0))
      (d368 (coe v0))
name410 = "Algebra.Monoid._.magma"
d410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T346 -> T28
d410 v0 v1 v2 = du410 v2
du410 :: T346 -> T28
du410 v0 = coe (du122 (coe (du404 (coe v0))))
name412 = "Algebra.Monoid._.rawMagma"
d412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T346 -> T6
d412 v0 v1 v2 = du412 v2
du412 :: T346 -> T6
du412 v0
  = let v1 = du404 (coe v0) in coe (du70 (coe (du122 (coe v1))))
name418 = "Algebra.CommutativeMonoid"
d418 a0 a1 = ()
data T418
  = C1739 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T314
name434 = "Algebra.CommutativeMonoid.Carrier"
d434 :: T418 -> ()
d434 = erased
name436 = "Algebra.CommutativeMonoid._≈_"
d436 :: T418 -> AgdaAny -> AgdaAny -> ()
d436 = erased
name438 = "Algebra.CommutativeMonoid._∙_"
d438 :: T418 -> AgdaAny -> AgdaAny -> AgdaAny
d438 v0
  = case coe v0 of
      C1739 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name440 = "Algebra.CommutativeMonoid.ε"
d440 :: T418 -> AgdaAny
d440 v0
  = case coe v0 of
      C1739 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name442 = "Algebra.CommutativeMonoid.isCommutativeMonoid"
d442 :: T418 -> MAlonzo.Code.Algebra.Structures.T314
d442 v0
  = case coe v0 of
      C1739 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name446 = "Algebra.CommutativeMonoid._.assoc"
d446 :: T418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d446 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe (MAlonzo.Code.Algebra.Structures.d326 (coe (d442 (coe v0))))))
name448 = "Algebra.CommutativeMonoid._.comm"
d448 :: T418 -> AgdaAny -> AgdaAny -> AgdaAny
d448 v0
  = coe (MAlonzo.Code.Algebra.Structures.d330 (coe (d442 (coe v0))))
name450 = "Algebra.CommutativeMonoid._.identity"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d450 v0 v1 v2 = du450 v2
du450 :: T418 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du450 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe (d438 (coe v0))) (coe (d440 (coe v0))) (coe (d442 (coe v0))))
name452 = "Algebra.CommutativeMonoid._.identityʳ"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T418 -> AgdaAny -> AgdaAny
d452 v0 v1 v2 = du452 v2
du452 :: T418 -> AgdaAny -> AgdaAny
du452 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du356
         (coe (d438 (coe v0))) (coe (d440 (coe v0))) (coe (d442 (coe v0))))
name454 = "Algebra.CommutativeMonoid._.identityˡ"
d454 :: T418 -> AgdaAny -> AgdaAny
d454 v0
  = coe (MAlonzo.Code.Algebra.Structures.d328 (coe (d442 (coe v0))))
name456 = "Algebra.CommutativeMonoid._.isEquivalence"
d456 :: T418 -> MAlonzo.Code.Relation.Binary.Core.T402
d456 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326 (coe (d442 (coe v0))))))))
name458 = "Algebra.CommutativeMonoid._.isMagma"
d458 :: T418 -> MAlonzo.Code.Algebra.Structures.T84
d458 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe (MAlonzo.Code.Algebra.Structures.d326 (coe (d442 (coe v0))))))
name460 = "Algebra.CommutativeMonoid._.isMonoid"
d460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 -> MAlonzo.Code.Algebra.Structures.T268
d460 v0 v1 v2 = du460 v2
du460 :: T418 -> MAlonzo.Code.Algebra.Structures.T268
du460 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe (d438 (coe v0))) (coe (d440 (coe v0))) (coe (d442 (coe v0))))
name462 = "Algebra.CommutativeMonoid._.isSemigroup"
d462 :: T418 -> MAlonzo.Code.Algebra.Structures.T118
d462 v0
  = coe (MAlonzo.Code.Algebra.Structures.d326 (coe (d442 (coe v0))))
name464 = "Algebra.CommutativeMonoid._.refl"
d464 :: T418 -> AgdaAny -> AgdaAny
d464 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326 (coe (d442 (coe v0))))))))))
name466 = "Algebra.CommutativeMonoid._.reflexive"
d466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d466 v0 v1 v2 = du466 v2
du466 ::
  T418 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du466 v0
  = let v1 = d442 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d326 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d126 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v3))) v4)
name468 = "Algebra.CommutativeMonoid._.setoid"
d468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 -> MAlonzo.Code.Relation.Binary.T128
d468 v0 v1 v2 = du468 v2
du468 :: T418 -> MAlonzo.Code.Relation.Binary.T128
du468 v0
  = let v1 = d442 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d326 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v2))))
name470 = "Algebra.CommutativeMonoid._.sym"
d470 :: T418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d470 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326 (coe (d442 (coe v0))))))))))
name472 = "Algebra.CommutativeMonoid._.trans"
d472 ::
  T418 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d472 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326 (coe (d442 (coe v0))))))))))
name474 = "Algebra.CommutativeMonoid._.∙-cong"
d474 ::
  T418 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d474 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326 (coe (d442 (coe v0))))))))
name476 = "Algebra.CommutativeMonoid._.∙-congʳ"
d476 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d476 v0 v1 v2 = du476 v2
du476 ::
  T418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du476 v0
  = let v1 = d442 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d326 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v2))))
name478 = "Algebra.CommutativeMonoid._.∙-congˡ"
d478 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d478 v0 v1 v2 = du478 v2
du478 ::
  T418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du478 v0
  = let v1 = d442 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d326 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v2))))
name480 = "Algebra.CommutativeMonoid.monoid"
d480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T418 -> T346
d480 v0 v1 v2 = du480 v2
du480 :: T418 -> T346
du480 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1409 v3 v4 v5) erased erased (d438 (coe v0))
      (d440 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du360
         (coe (d438 (coe v0))) (coe (d440 (coe v0))) (coe (d442 (coe v0))))
name484 = "Algebra.CommutativeMonoid._.magma"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T418 -> T28
d484 v0 v1 v2 = du484 v2
du484 :: T418 -> T28
du484 v0
  = let v1 = du480 (coe v0) in coe (du122 (coe (du404 (coe v1))))
name486 = "Algebra.CommutativeMonoid._.rawMagma"
d486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T418 -> T6
d486 v0 v1 v2 = du486 v2
du486 :: T418 -> T6
du486 v0
  = let v1 = du480 (coe v0) in
    let v2 = du404 (coe v1) in coe (du70 (coe (du122 (coe v2))))
name488 = "Algebra.CommutativeMonoid._.rawMonoid"
d488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T418 -> T318
d488 v0 v1 v2 = du488 v2
du488 :: T418 -> T318
du488 v0 = coe (du406 (coe (du480 (coe v0))))
name490 = "Algebra.CommutativeMonoid._.semigroup"
d490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T418 -> T76
d490 v0 v1 v2 = du490 v2
du490 :: T418 -> T76
du490 v0 = coe (du404 (coe (du480 (coe v0))))
name496 = "Algebra.IdempotentCommutativeMonoid"
d496 a0 a1 = ()
data T496
  = C2051 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T366
name512 = "Algebra.IdempotentCommutativeMonoid.Carrier"
d512 :: T496 -> ()
d512 = erased
name514 = "Algebra.IdempotentCommutativeMonoid._≈_"
d514 :: T496 -> AgdaAny -> AgdaAny -> ()
d514 = erased
name516 = "Algebra.IdempotentCommutativeMonoid._∙_"
d516 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny
d516 v0
  = case coe v0 of
      C2051 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name518 = "Algebra.IdempotentCommutativeMonoid.ε"
d518 :: T496 -> AgdaAny
d518 v0
  = case coe v0 of
      C2051 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name520
  = "Algebra.IdempotentCommutativeMonoid.isIdempotentCommutativeMonoid"
d520 :: T496 -> MAlonzo.Code.Algebra.Structures.T366
d520 v0
  = case coe v0 of
      C2051 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name524 = "Algebra.IdempotentCommutativeMonoid._.assoc"
d524 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d524 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe
                  (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))))
name526 = "Algebra.IdempotentCommutativeMonoid._.comm"
d526 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny
d526 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))
name528 = "Algebra.IdempotentCommutativeMonoid._.idem"
d528 :: T496 -> AgdaAny -> AgdaAny
d528 v0
  = coe (MAlonzo.Code.Algebra.Structures.d378 (coe (d520 (coe v0))))
name530 = "Algebra.IdempotentCommutativeMonoid._.identity"
d530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d530 v0 v1 v2 = du530 v2
du530 :: T496 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du530 v0
  = let v1 = d516 (coe v0) in
    let v2 = d518 (coe v0) in
    let v3 = d520 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d376 (coe v3))))
name532 = "Algebra.IdempotentCommutativeMonoid._.identityʳ"
d532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> AgdaAny -> AgdaAny
d532 v0 v1 v2 = du532 v2
du532 :: T496 -> AgdaAny -> AgdaAny
du532 v0
  = let v1 = d516 (coe v0) in
    let v2 = d518 (coe v0) in
    let v3 = d520 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du356
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d376 (coe v3))))
name534 = "Algebra.IdempotentCommutativeMonoid._.identityˡ"
d534 :: T496 -> AgdaAny -> AgdaAny
d534 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d328
         (coe (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))
name536
  = "Algebra.IdempotentCommutativeMonoid._.isCommutativeMonoid"
d536 :: T496 -> MAlonzo.Code.Algebra.Structures.T314
d536 v0
  = coe (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))
name538 = "Algebra.IdempotentCommutativeMonoid._.isEquivalence"
d538 :: T496 -> MAlonzo.Code.Relation.Binary.Core.T402
d538 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))))))
name540 = "Algebra.IdempotentCommutativeMonoid._.isMagma"
d540 :: T496 -> MAlonzo.Code.Algebra.Structures.T84
d540 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe
                  (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))))
name542 = "Algebra.IdempotentCommutativeMonoid._.isMonoid"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Algebra.Structures.T268
d542 v0 v1 v2 = du542 v2
du542 :: T496 -> MAlonzo.Code.Algebra.Structures.T268
du542 v0
  = let v1 = d516 (coe v0) in
    let v2 = d518 (coe v0) in
    let v3 = d520 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d376 (coe v3))))
name544 = "Algebra.IdempotentCommutativeMonoid._.isSemigroup"
d544 :: T496 -> MAlonzo.Code.Algebra.Structures.T118
d544 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))
name546 = "Algebra.IdempotentCommutativeMonoid._.refl"
d546 :: T496 -> AgdaAny -> AgdaAny
d546 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d376
                                 (coe (d520 (coe v0))))))))))))
name548 = "Algebra.IdempotentCommutativeMonoid._.reflexive"
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
    let v2 = MAlonzo.Code.Algebra.Structures.d376 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d326 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d126 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v4))) v5)
name550 = "Algebra.IdempotentCommutativeMonoid._.setoid"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Relation.Binary.T128
d550 v0 v1 v2 = du550 v2
du550 :: T496 -> MAlonzo.Code.Relation.Binary.T128
du550 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d376 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d326 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name552 = "Algebra.IdempotentCommutativeMonoid._.sym"
d552 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d552 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d376
                                 (coe (d520 (coe v0))))))))))))
name554 = "Algebra.IdempotentCommutativeMonoid._.trans"
d554 ::
  T496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d554 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d376
                                 (coe (d520 (coe v0))))))))))))
name556 = "Algebra.IdempotentCommutativeMonoid._.∙-cong"
d556 ::
  T496 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d556 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))))))
name558 = "Algebra.IdempotentCommutativeMonoid._.∙-congʳ"
d558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d558 v0 v1 v2 = du558 v2
du558 ::
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du558 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d376 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d326 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name560 = "Algebra.IdempotentCommutativeMonoid._.∙-congˡ"
d560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d560 v0 v1 v2 = du560 v2
du560 ::
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du560 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d376 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d326 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name562 = "Algebra.IdempotentCommutativeMonoid.commutativeMonoid"
d562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T418
d562 v0 v1 v2 = du562 v2
du562 :: T496 -> T418
du562 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1739 v3 v4 v5) erased erased (d516 (coe v0))
      (d518 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))
name566 = "Algebra.IdempotentCommutativeMonoid._.magma"
d566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T28
d566 v0 v1 v2 = du566 v2
du566 :: T496 -> T28
du566 v0
  = let v1 = du562 (coe v0) in
    let v2 = du480 (coe v1) in coe (du122 (coe (du404 (coe v2))))
name568 = "Algebra.IdempotentCommutativeMonoid._.monoid"
d568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T346
d568 v0 v1 v2 = du568 v2
du568 :: T496 -> T346
du568 v0 = coe (du480 (coe (du562 (coe v0))))
name570 = "Algebra.IdempotentCommutativeMonoid._.rawMagma"
d570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T6
d570 v0 v1 v2 = du570 v2
du570 :: T496 -> T6
du570 v0
  = let v1 = du562 (coe v0) in
    let v2 = du480 (coe v1) in
    let v3 = du404 (coe v2) in coe (du70 (coe (du122 (coe v3))))
name572 = "Algebra.IdempotentCommutativeMonoid._.rawMonoid"
d572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T318
d572 v0 v1 v2 = du572 v2
du572 :: T496 -> T318
du572 v0
  = let v1 = du562 (coe v0) in coe (du406 (coe (du480 (coe v1))))
name574 = "Algebra.IdempotentCommutativeMonoid._.semigroup"
d574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T76
d574 v0 v1 v2 = du574 v2
du574 :: T496 -> T76
du574 v0
  = let v1 = du562 (coe v0) in coe (du404 (coe (du480 (coe v1))))
name576 = "Algebra.BoundedLattice"
d576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d576 = erased
name586 = "Algebra.BoundedLattice._∙_"
d586 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny
d586 v0 = coe (d516 (coe v0))
name588 = "Algebra.BoundedLattice._≈_"
d588 :: T496 -> AgdaAny -> AgdaAny -> ()
d588 = erased
name590 = "Algebra.BoundedLattice.Carrier"
d590 :: T496 -> ()
d590 = erased
name592 = "Algebra.BoundedLattice.assoc"
d592 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d592 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe
                  (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))))
name594 = "Algebra.BoundedLattice.comm"
d594 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny
d594 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))
name596 = "Algebra.BoundedLattice.commutativeMonoid"
d596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T418
d596 v0 v1 v2 = du596 v2
du596 :: T496 -> T418
du596 v0 = coe (du562 (coe v0))
name598 = "Algebra.BoundedLattice.idem"
d598 :: T496 -> AgdaAny -> AgdaAny
d598 v0
  = coe (MAlonzo.Code.Algebra.Structures.d378 (coe (d520 (coe v0))))
name600 = "Algebra.BoundedLattice.identity"
d600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d600 v0 v1 v2 = du600 v2
du600 :: T496 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du600 v0
  = let v1 = d516 (coe v0) in
    let v2 = d518 (coe v0) in
    let v3 = d520 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d376 (coe v3))))
name602 = "Algebra.BoundedLattice.identityʳ"
d602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> AgdaAny -> AgdaAny
d602 v0 v1 v2 = du602 v2
du602 :: T496 -> AgdaAny -> AgdaAny
du602 v0
  = let v1 = d516 (coe v0) in
    let v2 = d518 (coe v0) in
    let v3 = d520 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du356
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d376 (coe v3))))
name604 = "Algebra.BoundedLattice.identityˡ"
d604 :: T496 -> AgdaAny -> AgdaAny
d604 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d328
         (coe (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))
name606 = "Algebra.BoundedLattice.isCommutativeMonoid"
d606 :: T496 -> MAlonzo.Code.Algebra.Structures.T314
d606 v0
  = coe (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))
name608 = "Algebra.BoundedLattice.isEquivalence"
d608 :: T496 -> MAlonzo.Code.Relation.Binary.Core.T402
d608 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))))))
name610 = "Algebra.BoundedLattice.isIdempotentCommutativeMonoid"
d610 :: T496 -> MAlonzo.Code.Algebra.Structures.T366
d610 v0 = coe (d520 (coe v0))
name612 = "Algebra.BoundedLattice.isMagma"
d612 :: T496 -> MAlonzo.Code.Algebra.Structures.T84
d612 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe
                  (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))))
name614 = "Algebra.BoundedLattice.isMonoid"
d614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Algebra.Structures.T268
d614 v0 v1 v2 = du614 v2
du614 :: T496 -> MAlonzo.Code.Algebra.Structures.T268
du614 v0
  = let v1 = d516 (coe v0) in
    let v2 = d518 (coe v0) in
    let v3 = d520 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d376 (coe v3))))
name616 = "Algebra.BoundedLattice.isSemigroup"
d616 :: T496 -> MAlonzo.Code.Algebra.Structures.T118
d616 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))
name618 = "Algebra.BoundedLattice.magma"
d618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T28
d618 v0 v1 v2 = du618 v2
du618 :: T496 -> T28
du618 v0
  = let v1 = du562 (coe v0) in
    let v2 = du480 (coe v1) in coe (du122 (coe (du404 (coe v2))))
name620 = "Algebra.BoundedLattice.monoid"
d620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T346
d620 v0 v1 v2 = du620 v2
du620 :: T496 -> T346
du620 v0 = coe (du480 (coe (du562 (coe v0))))
name622 = "Algebra.BoundedLattice.rawMagma"
d622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T6
d622 v0 v1 v2 = du622 v2
du622 :: T496 -> T6
du622 v0
  = let v1 = du562 (coe v0) in
    let v2 = du480 (coe v1) in
    let v3 = du404 (coe v2) in coe (du70 (coe (du122 (coe v3))))
name624 = "Algebra.BoundedLattice.rawMonoid"
d624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T318
d624 v0 v1 v2 = du624 v2
du624 :: T496 -> T318
du624 v0
  = let v1 = du562 (coe v0) in coe (du406 (coe (du480 (coe v1))))
name626 = "Algebra.BoundedLattice.refl"
d626 :: T496 -> AgdaAny -> AgdaAny
d626 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d376
                                 (coe (d520 (coe v0))))))))))))
name628 = "Algebra.BoundedLattice.reflexive"
d628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d628 v0 v1 v2 = du628 v2
du628 ::
  T496 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du628 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d376 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d326 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d126 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v4))) v5)
name630 = "Algebra.BoundedLattice.semigroup"
d630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T496 -> T76
d630 v0 v1 v2 = du630 v2
du630 :: T496 -> T76
du630 v0
  = let v1 = du562 (coe v0) in coe (du404 (coe (du480 (coe v1))))
name632 = "Algebra.BoundedLattice.setoid"
d632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> MAlonzo.Code.Relation.Binary.T128
d632 v0 v1 v2 = du632 v2
du632 :: T496 -> MAlonzo.Code.Relation.Binary.T128
du632 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d376 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d326 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name634 = "Algebra.BoundedLattice.sym"
d634 :: T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d634 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d376
                                 (coe (d520 (coe v0))))))))))))
name636 = "Algebra.BoundedLattice.trans"
d636 ::
  T496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d636 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d376
                                 (coe (d520 (coe v0))))))))))))
name638 = "Algebra.BoundedLattice.ε"
d638 :: T496 -> AgdaAny
d638 v0 = coe (d518 (coe v0))
name640 = "Algebra.BoundedLattice.∙-cong"
d640 ::
  T496 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d640 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d376 (coe (d520 (coe v0))))))))))
name642 = "Algebra.BoundedLattice.∙-congʳ"
d642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d642 v0 v1 v2 = du642 v2
du642 ::
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du642 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d376 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d326 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name644 = "Algebra.BoundedLattice.∙-congˡ"
d644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d644 v0 v1 v2 = du644 v2
du644 ::
  T496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du644 v0
  = let v1 = d520 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d376 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d326 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name650 = "Algebra.RawGroup"
d650 a0 a1 = ()
data T650
  = C2455 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny)
name666 = "Algebra.RawGroup.Carrier"
d666 :: T650 -> ()
d666 = erased
name668 = "Algebra.RawGroup._≈_"
d668 :: T650 -> AgdaAny -> AgdaAny -> ()
d668 = erased
name670 = "Algebra.RawGroup._∙_"
d670 :: T650 -> AgdaAny -> AgdaAny -> AgdaAny
d670 v0
  = case coe v0 of
      C2455 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name672 = "Algebra.RawGroup.ε"
d672 :: T650 -> AgdaAny
d672 v0
  = case coe v0 of
      C2455 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name674 = "Algebra.RawGroup._⁻¹"
d674 :: T650 -> AgdaAny -> AgdaAny
d674 v0
  = case coe v0 of
      C2455 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name676 = "Algebra.RawGroup.rawMonoid"
d676 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T650 -> T318
d676 v0 v1 v2 = du676 v2
du676 :: T650 -> T318
du676 v0
  = coe
      (\ v1 v2 v3 v4 -> C1275 v3 v4) erased erased (d670 (coe v0))
      (d672 (coe v0))
name680 = "Algebra.RawGroup._.rawMagma"
d680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T650 -> T6
d680 v0 v1 v2 = du680 v2
du680 :: T650 -> T6
du680 v0 = coe (du340 (coe (du676 (coe v0))))
name686 = "Algebra.Group"
d686 a0 a1 = ()
data T686
  = C2611 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny) MAlonzo.Code.Algebra.Structures.T470
name704 = "Algebra.Group.Carrier"
d704 :: T686 -> ()
d704 = erased
name706 = "Algebra.Group._≈_"
d706 :: T686 -> AgdaAny -> AgdaAny -> ()
d706 = erased
name708 = "Algebra.Group._∙_"
d708 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny
d708 v0
  = case coe v0 of
      C2611 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name710 = "Algebra.Group.ε"
d710 :: T686 -> AgdaAny
d710 v0
  = case coe v0 of
      C2611 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name712 = "Algebra.Group._⁻¹"
d712 :: T686 -> AgdaAny -> AgdaAny
d712 v0
  = case coe v0 of
      C2611 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name714 = "Algebra.Group.isGroup"
d714 :: T686 -> MAlonzo.Code.Algebra.Structures.T470
d714 v0
  = case coe v0 of
      C2611 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name718 = "Algebra.Group._._-_"
d718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T686 -> AgdaAny -> AgdaAny -> AgdaAny
d718 v0 v1 v2 = du718 v2
du718 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny
du718 v0
  = let v1 = d708 (coe v0) in
    let v2 = d712 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name720 = "Algebra.Group._.assoc"
d720 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d720 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d484 (coe (d714 (coe v0))))))))
name722 = "Algebra.Group._.identity"
d722 :: T686 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d722 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d280
         (coe (MAlonzo.Code.Algebra.Structures.d484 (coe (d714 (coe v0))))))
name724 = "Algebra.Group._.identityʳ"
d724 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T686 -> AgdaAny -> AgdaAny
d724 v0 v1 v2 = du724 v2
du724 :: T686 -> AgdaAny -> AgdaAny
du724 v0
  = let v1 = d714 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d484 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v2))))
name726 = "Algebra.Group._.identityˡ"
d726 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T686 -> AgdaAny -> AgdaAny
d726 v0 v1 v2 = du726 v2
du726 :: T686 -> AgdaAny -> AgdaAny
du726 v0
  = let v1 = d714 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d484 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v2))))
name728 = "Algebra.Group._.inverse"
d728 :: T686 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d728 v0
  = coe (MAlonzo.Code.Algebra.Structures.d486 (coe (d714 (coe v0))))
name730 = "Algebra.Group._.inverseʳ"
d730 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T686 -> AgdaAny -> AgdaAny
d730 v0 v1 v2 = du730 v2
du730 :: T686 -> AgdaAny -> AgdaAny
du730 v0
  = let v1 = d714 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d486 (coe v1))))
name732 = "Algebra.Group._.inverseˡ"
d732 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T686 -> AgdaAny -> AgdaAny
d732 v0 v1 v2 = du732 v2
du732 :: T686 -> AgdaAny -> AgdaAny
du732 v0
  = let v1 = d714 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d486 (coe v1))))
name734 = "Algebra.Group._.isEquivalence"
d734 :: T686 -> MAlonzo.Code.Relation.Binary.Core.T402
d734 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d484 (coe (d714 (coe v0))))))))))
name736 = "Algebra.Group._.isMagma"
d736 :: T686 -> MAlonzo.Code.Algebra.Structures.T84
d736 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d484 (coe (d714 (coe v0))))))))
name738 = "Algebra.Group._.isMonoid"
d738 :: T686 -> MAlonzo.Code.Algebra.Structures.T268
d738 v0
  = coe (MAlonzo.Code.Algebra.Structures.d484 (coe (d714 (coe v0))))
name740 = "Algebra.Group._.isSemigroup"
d740 :: T686 -> MAlonzo.Code.Algebra.Structures.T118
d740 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d278
         (coe (MAlonzo.Code.Algebra.Structures.d484 (coe (d714 (coe v0))))))
name742 = "Algebra.Group._.refl"
d742 :: T686 -> AgdaAny -> AgdaAny
d742 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe (d714 (coe v0))))))))))))
name744 = "Algebra.Group._.reflexive"
d744 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T686 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d744 v0 v1 v2 = du744 v2
du744 ::
  T686 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du744 v0
  = let v1 = d714 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d484 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d278 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d126 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v4))) v5)
name746 = "Algebra.Group._.setoid"
d746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T686 -> MAlonzo.Code.Relation.Binary.T128
d746 v0 v1 v2 = du746 v2
du746 :: T686 -> MAlonzo.Code.Relation.Binary.T128
du746 v0
  = let v1 = d714 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d484 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d278 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name748 = "Algebra.Group._.sym"
d748 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d748 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe (d714 (coe v0))))))))))))
name750 = "Algebra.Group._.trans"
d750 ::
  T686 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d750 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe (d714 (coe v0))))))))))))
name752 = "Algebra.Group._.uniqueʳ-⁻¹"
d752 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d752 v0 v1 v2 = du752 v2
du752 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du752 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du542
         (coe (d708 (coe v0))) (coe (d710 (coe v0))) (coe (d712 (coe v0)))
         (coe (d714 (coe v0))))
name754 = "Algebra.Group._.uniqueˡ-⁻¹"
d754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d754 v0 v1 v2 = du754 v2
du754 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du754 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du536
         (coe (d708 (coe v0))) (coe (d710 (coe v0))) (coe (d712 (coe v0)))
         (coe (d714 (coe v0))))
name756 = "Algebra.Group._.⁻¹-cong"
d756 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d756 v0
  = coe (MAlonzo.Code.Algebra.Structures.d488 (coe (d714 (coe v0))))
name758 = "Algebra.Group._.∙-cong"
d758 ::
  T686 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d758 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d484 (coe (d714 (coe v0))))))))))
name760 = "Algebra.Group._.∙-congʳ"
d760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d760 v0 v1 v2 = du760 v2
du760 ::
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du760 v0
  = let v1 = d714 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d484 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d278 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name762 = "Algebra.Group._.∙-congˡ"
d762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d762 v0 v1 v2 = du762 v2
du762 ::
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du762 v0
  = let v1 = d714 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d484 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d278 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name764 = "Algebra.Group.rawGroup"
d764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T686 -> T650
d764 v0 v1 v2 = du764 v2
du764 :: T686 -> T650
du764 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C2455 v3 v4 v5) erased erased (d708 (coe v0))
      (d710 (coe v0)) (d712 (coe v0))
name766 = "Algebra.Group.monoid"
d766 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T686 -> T346
d766 v0 v1 v2 = du766 v2
du766 :: T686 -> T346
du766 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1409 v3 v4 v5) erased erased (d708 (coe v0))
      (d710 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d484 (coe (d714 (coe v0))))
name770 = "Algebra.Group._.magma"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T686 -> T28
d770 v0 v1 v2 = du770 v2
du770 :: T686 -> T28
du770 v0
  = let v1 = du766 (coe v0) in coe (du122 (coe (du404 (coe v1))))
name772 = "Algebra.Group._.rawMagma"
d772 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T686 -> T6
d772 v0 v1 v2 = du772 v2
du772 :: T686 -> T6
du772 v0
  = let v1 = du766 (coe v0) in
    let v2 = du404 (coe v1) in coe (du70 (coe (du122 (coe v2))))
name774 = "Algebra.Group._.rawMonoid"
d774 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T686 -> T318
d774 v0 v1 v2 = du774 v2
du774 :: T686 -> T318
du774 v0 = coe (du406 (coe (du766 (coe v0))))
name776 = "Algebra.Group._.semigroup"
d776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T686 -> T76
d776 v0 v1 v2 = du776 v2
du776 :: T686 -> T76
du776 v0 = coe (du404 (coe (du766 (coe v0))))
name782 = "Algebra.AbelianGroup"
d782 a0 a1 = ()
data T782
  = C3057 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny) MAlonzo.Code.Algebra.Structures.T550
name800 = "Algebra.AbelianGroup.Carrier"
d800 :: T782 -> ()
d800 = erased
name802 = "Algebra.AbelianGroup._≈_"
d802 :: T782 -> AgdaAny -> AgdaAny -> ()
d802 = erased
name804 = "Algebra.AbelianGroup._∙_"
d804 :: T782 -> AgdaAny -> AgdaAny -> AgdaAny
d804 v0
  = case coe v0 of
      C3057 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name806 = "Algebra.AbelianGroup.ε"
d806 :: T782 -> AgdaAny
d806 v0
  = case coe v0 of
      C3057 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name808 = "Algebra.AbelianGroup._⁻¹"
d808 :: T782 -> AgdaAny -> AgdaAny
d808 v0
  = case coe v0 of
      C3057 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name810 = "Algebra.AbelianGroup.isAbelianGroup"
d810 :: T782 -> MAlonzo.Code.Algebra.Structures.T550
d810 v0
  = case coe v0 of
      C3057 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name814 = "Algebra.AbelianGroup._._-_"
d814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T782 -> AgdaAny -> AgdaAny -> AgdaAny
d814 v0 v1 v2 = du814 v2
du814 :: T782 -> AgdaAny -> AgdaAny -> AgdaAny
du814 v0
  = let v1 = d804 (coe v0) in
    let v2 = d808 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name816 = "Algebra.AbelianGroup._.assoc"
d816 :: T782 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d816 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d484
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d562 (coe (d810 (coe v0))))))))))
name818 = "Algebra.AbelianGroup._.comm"
d818 :: T782 -> AgdaAny -> AgdaAny -> AgdaAny
d818 v0
  = coe (MAlonzo.Code.Algebra.Structures.d564 (coe (d810 (coe v0))))
name820 = "Algebra.AbelianGroup._.identity"
d820 :: T782 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d820 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d280
         (coe
            (MAlonzo.Code.Algebra.Structures.d484
               (coe
                  (MAlonzo.Code.Algebra.Structures.d562 (coe (d810 (coe v0))))))))
name822 = "Algebra.AbelianGroup._.identityʳ"
d822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T782 -> AgdaAny -> AgdaAny
d822 v0 v1 v2 = du822 v2
du822 :: T782 -> AgdaAny -> AgdaAny
du822 v0
  = let v1 = d810 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d562 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d484 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v3))))
name824 = "Algebra.AbelianGroup._.identityˡ"
d824 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T782 -> AgdaAny -> AgdaAny
d824 v0 v1 v2 = du824 v2
du824 :: T782 -> AgdaAny -> AgdaAny
du824 v0
  = let v1 = d810 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d562 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d484 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v3))))
name826 = "Algebra.AbelianGroup._.inverse"
d826 :: T782 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d826 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d486
         (coe (MAlonzo.Code.Algebra.Structures.d562 (coe (d810 (coe v0))))))
name828 = "Algebra.AbelianGroup._.inverseʳ"
d828 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T782 -> AgdaAny -> AgdaAny
d828 v0 v1 v2 = du828 v2
du828 :: T782 -> AgdaAny -> AgdaAny
du828 v0
  = let v1 = d810 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d562 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d486 (coe v2))))
name830 = "Algebra.AbelianGroup._.inverseˡ"
d830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T782 -> AgdaAny -> AgdaAny
d830 v0 v1 v2 = du830 v2
du830 :: T782 -> AgdaAny -> AgdaAny
du830 v0
  = let v1 = d810 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d562 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d486 (coe v2))))
name832 = "Algebra.AbelianGroup._.isCommutativeMonoid"
d832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T782 -> MAlonzo.Code.Algebra.Structures.T314
d832 v0 v1 v2 = du832 v2
du832 :: T782 -> MAlonzo.Code.Algebra.Structures.T314
du832 v0
  = coe (MAlonzo.Code.Algebra.Structures.du614 (coe (d810 (coe v0))))
name834 = "Algebra.AbelianGroup._.isEquivalence"
d834 :: T782 -> MAlonzo.Code.Relation.Binary.Core.T402
d834 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d484
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d562
                                 (coe (d810 (coe v0))))))))))))
name836 = "Algebra.AbelianGroup._.isGroup"
d836 :: T782 -> MAlonzo.Code.Algebra.Structures.T470
d836 v0
  = coe (MAlonzo.Code.Algebra.Structures.d562 (coe (d810 (coe v0))))
name838 = "Algebra.AbelianGroup._.isMagma"
d838 :: T782 -> MAlonzo.Code.Algebra.Structures.T84
d838 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d484
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d562 (coe (d810 (coe v0))))))))))
name840 = "Algebra.AbelianGroup._.isMonoid"
d840 :: T782 -> MAlonzo.Code.Algebra.Structures.T268
d840 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d484
         (coe (MAlonzo.Code.Algebra.Structures.d562 (coe (d810 (coe v0))))))
name842 = "Algebra.AbelianGroup._.isSemigroup"
d842 :: T782 -> MAlonzo.Code.Algebra.Structures.T118
d842 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d278
         (coe
            (MAlonzo.Code.Algebra.Structures.d484
               (coe
                  (MAlonzo.Code.Algebra.Structures.d562 (coe (d810 (coe v0))))))))
name844 = "Algebra.AbelianGroup._.refl"
d844 :: T782 -> AgdaAny -> AgdaAny
d844 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d562
                                       (coe (d810 (coe v0))))))))))))))
name846 = "Algebra.AbelianGroup._.reflexive"
d846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T782 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d846 v0 v1 v2 = du846 v2
du846 ::
  T782 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du846 v0
  = let v1 = d810 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d562 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d484 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d278 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d126 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v5))) v6)
name848 = "Algebra.AbelianGroup._.setoid"
d848 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T782 -> MAlonzo.Code.Relation.Binary.T128
d848 v0 v1 v2 = du848 v2
du848 :: T782 -> MAlonzo.Code.Relation.Binary.T128
du848 v0
  = let v1 = d810 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d562 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d484 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d278 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v4))))
name850 = "Algebra.AbelianGroup._.sym"
d850 :: T782 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d850 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d562
                                       (coe (d810 (coe v0))))))))))))))
name852 = "Algebra.AbelianGroup._.trans"
d852 ::
  T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d852 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d562
                                       (coe (d810 (coe v0))))))))))))))
name854 = "Algebra.AbelianGroup._.uniqueʳ-⁻¹"
d854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T782 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d854 v0 v1 v2 = du854 v2
du854 :: T782 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du854 v0
  = let v1 = d804 (coe v0) in
    let v2 = d806 (coe v0) in
    let v3 = d808 (coe v0) in
    let v4 = d810 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du542
         (coe v1) (coe v2) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d562 (coe v4))))
name856 = "Algebra.AbelianGroup._.uniqueˡ-⁻¹"
d856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T782 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d856 v0 v1 v2 = du856 v2
du856 :: T782 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du856 v0
  = let v1 = d804 (coe v0) in
    let v2 = d806 (coe v0) in
    let v3 = d808 (coe v0) in
    let v4 = d810 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du536
         (coe v1) (coe v2) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d562 (coe v4))))
name858 = "Algebra.AbelianGroup._.⁻¹-cong"
d858 :: T782 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d858 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d488
         (coe (MAlonzo.Code.Algebra.Structures.d562 (coe (d810 (coe v0))))))
name860 = "Algebra.AbelianGroup._.∙-cong"
d860 ::
  T782 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d860 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d484
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d562
                                 (coe (d810 (coe v0))))))))))))
name862 = "Algebra.AbelianGroup._.∙-congʳ"
d862 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T782 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d862 v0 v1 v2 = du862 v2
du862 ::
  T782 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du862 v0
  = let v1 = d810 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d562 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d484 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d278 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v4))))
name864 = "Algebra.AbelianGroup._.∙-congˡ"
d864 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T782 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d864 v0 v1 v2 = du864 v2
du864 ::
  T782 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du864 v0
  = let v1 = d810 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d562 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d484 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d278 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v4))))
name866 = "Algebra.AbelianGroup.group"
d866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T782 -> T686
d866 v0 v1 v2 = du866 v2
du866 :: T782 -> T686
du866 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C2611 v3 v4 v5 v6) erased erased
      (d804 (coe v0)) (d806 (coe v0)) (d808 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d562 (coe (d810 (coe v0))))
name870 = "Algebra.AbelianGroup._.magma"
d870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T782 -> T28
d870 v0 v1 v2 = du870 v2
du870 :: T782 -> T28
du870 v0
  = let v1 = du866 (coe v0) in
    let v2 = du766 (coe v1) in coe (du122 (coe (du404 (coe v2))))
name872 = "Algebra.AbelianGroup._.monoid"
d872 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T782 -> T346
d872 v0 v1 v2 = du872 v2
du872 :: T782 -> T346
du872 v0 = coe (du766 (coe (du866 (coe v0))))
name874 = "Algebra.AbelianGroup._.rawGroup"
d874 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T782 -> T650
d874 v0 v1 v2 = du874 v2
du874 :: T782 -> T650
du874 v0 = coe (du764 (coe (du866 (coe v0))))
name876 = "Algebra.AbelianGroup._.rawMagma"
d876 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T782 -> T6
d876 v0 v1 v2 = du876 v2
du876 :: T782 -> T6
du876 v0
  = let v1 = du866 (coe v0) in
    let v2 = du766 (coe v1) in
    let v3 = du404 (coe v2) in coe (du70 (coe (du122 (coe v3))))
name878 = "Algebra.AbelianGroup._.rawMonoid"
d878 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T782 -> T318
d878 v0 v1 v2 = du878 v2
du878 :: T782 -> T318
du878 v0
  = let v1 = du866 (coe v0) in coe (du406 (coe (du766 (coe v1))))
name880 = "Algebra.AbelianGroup._.semigroup"
d880 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T782 -> T76
d880 v0 v1 v2 = du880 v2
du880 :: T782 -> T76
du880 v0
  = let v1 = du866 (coe v0) in coe (du404 (coe (du766 (coe v1))))
name882 = "Algebra.AbelianGroup.commutativeMonoid"
d882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T782 -> T418
d882 v0 v1 v2 = du882 v2
du882 :: T782 -> T418
du882 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1739 v3 v4 v5) erased erased (d804 (coe v0))
      (d806 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du614 (coe (d810 (coe v0))))
name888 = "Algebra.Lattice"
d888 a0 a1 = ()
data T888
  = C3535 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T620
name904 = "Algebra.Lattice.Carrier"
d904 :: T888 -> ()
d904 = erased
name906 = "Algebra.Lattice._≈_"
d906 :: T888 -> AgdaAny -> AgdaAny -> ()
d906 = erased
name908 = "Algebra.Lattice._∨_"
d908 :: T888 -> AgdaAny -> AgdaAny -> AgdaAny
d908 v0
  = case coe v0 of
      C3535 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name910 = "Algebra.Lattice._∧_"
d910 :: T888 -> AgdaAny -> AgdaAny -> AgdaAny
d910 v0
  = case coe v0 of
      C3535 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name912 = "Algebra.Lattice.isLattice"
d912 :: T888 -> MAlonzo.Code.Algebra.Structures.T620
d912 v0
  = case coe v0 of
      C3535 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name916 = "Algebra.Lattice._.absorptive"
d916 :: T888 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d916 v0
  = coe (MAlonzo.Code.Algebra.Structures.d656 (coe (d912 (coe v0))))
name918 = "Algebra.Lattice._.isEquivalence"
d918 :: T888 -> MAlonzo.Code.Relation.Binary.Core.T402
d918 v0
  = coe (MAlonzo.Code.Algebra.Structures.d642 (coe (d912 (coe v0))))
name920 = "Algebra.Lattice._.refl"
d920 :: T888 -> AgdaAny -> AgdaAny
d920 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (MAlonzo.Code.Algebra.Structures.d642 (coe (d912 (coe v0))))))
name922 = "Algebra.Lattice._.reflexive"
d922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T888 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d922 v0 v1 v2 = du922 v2
du922 ::
  T888 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du922 v0
  = let v1 = d912 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d642 (coe v1))) v2)
name924 = "Algebra.Lattice._.sym"
d924 :: T888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d924 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (MAlonzo.Code.Algebra.Structures.d642 (coe (d912 (coe v0))))))
name926 = "Algebra.Lattice._.trans"
d926 ::
  T888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d926 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (MAlonzo.Code.Algebra.Structures.d642 (coe (d912 (coe v0))))))
name928 = "Algebra.Lattice._.∧-absorbs-∨"
d928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T888 -> AgdaAny -> AgdaAny -> AgdaAny
d928 v0 v1 v2 = du928 v2
du928 :: T888 -> AgdaAny -> AgdaAny -> AgdaAny
du928 v0
  = let v1 = d912 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d656 (coe v1))))
name930 = "Algebra.Lattice._.∧-assoc"
d930 :: T888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d930 v0
  = coe (MAlonzo.Code.Algebra.Structures.d652 (coe (d912 (coe v0))))
name932 = "Algebra.Lattice._.∧-comm"
d932 :: T888 -> AgdaAny -> AgdaAny -> AgdaAny
d932 v0
  = coe (MAlonzo.Code.Algebra.Structures.d650 (coe (d912 (coe v0))))
name934 = "Algebra.Lattice._.∧-cong"
d934 ::
  T888 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d934 v0
  = coe (MAlonzo.Code.Algebra.Structures.d654 (coe (d912 (coe v0))))
name936 = "Algebra.Lattice._.∧-congʳ"
d936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d936 v0 v1 v2 = du936 v2
du936 ::
  T888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du936 v0
  = coe (MAlonzo.Code.Algebra.Structures.du676 (coe (d912 (coe v0))))
name938 = "Algebra.Lattice._.∧-congˡ"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d938 v0 v1 v2 = du938 v2
du938 ::
  T888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du938 v0
  = coe (MAlonzo.Code.Algebra.Structures.du672 (coe (d912 (coe v0))))
name940 = "Algebra.Lattice._.∨-absorbs-∧"
d940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T888 -> AgdaAny -> AgdaAny -> AgdaAny
d940 v0 v1 v2 = du940 v2
du940 :: T888 -> AgdaAny -> AgdaAny -> AgdaAny
du940 v0
  = let v1 = d912 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d656 (coe v1))))
name942 = "Algebra.Lattice._.∨-assoc"
d942 :: T888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d942 v0
  = coe (MAlonzo.Code.Algebra.Structures.d646 (coe (d912 (coe v0))))
name944 = "Algebra.Lattice._.∨-comm"
d944 :: T888 -> AgdaAny -> AgdaAny -> AgdaAny
d944 v0
  = coe (MAlonzo.Code.Algebra.Structures.d644 (coe (d912 (coe v0))))
name946 = "Algebra.Lattice._.∨-cong"
d946 ::
  T888 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d946 v0
  = coe (MAlonzo.Code.Algebra.Structures.d648 (coe (d912 (coe v0))))
name948 = "Algebra.Lattice._.∨-congʳ"
d948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d948 v0 v1 v2 = du948 v2
du948 ::
  T888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du948 v0
  = coe (MAlonzo.Code.Algebra.Structures.du684 (coe (d912 (coe v0))))
name950 = "Algebra.Lattice._.∨-congˡ"
d950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d950 v0 v1 v2 = du950 v2
du950 ::
  T888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du950 v0
  = coe (MAlonzo.Code.Algebra.Structures.du680 (coe (d912 (coe v0))))
name952 = "Algebra.Lattice.setoid"
d952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T888 -> MAlonzo.Code.Relation.Binary.T128
d952 v0 v1 v2 = du952 v2
du952 :: T888 -> MAlonzo.Code.Relation.Binary.T128
du952 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1037 v3) erased erased
      (MAlonzo.Code.Algebra.Structures.d642 (coe (d912 (coe v0))))
name958 = "Algebra.DistributiveLattice"
d958 a0 a1 = ()
data T958
  = C3833 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T692
name974 = "Algebra.DistributiveLattice.Carrier"
d974 :: T958 -> ()
d974 = erased
name976 = "Algebra.DistributiveLattice._≈_"
d976 :: T958 -> AgdaAny -> AgdaAny -> ()
d976 = erased
name978 = "Algebra.DistributiveLattice._∨_"
d978 :: T958 -> AgdaAny -> AgdaAny -> AgdaAny
d978 v0
  = case coe v0 of
      C3833 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name980 = "Algebra.DistributiveLattice._∧_"
d980 :: T958 -> AgdaAny -> AgdaAny -> AgdaAny
d980 v0
  = case coe v0 of
      C3833 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name982 = "Algebra.DistributiveLattice.isDistributiveLattice"
d982 :: T958 -> MAlonzo.Code.Algebra.Structures.T692
d982 v0
  = case coe v0 of
      C3833 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name986 = "Algebra.DistributiveLattice._.absorptive"
d986 :: T958 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d986 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d656
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))))
name988 = "Algebra.DistributiveLattice._.isEquivalence"
d988 :: T958 -> MAlonzo.Code.Relation.Binary.Core.T402
d988 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d642
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))))
name990 = "Algebra.DistributiveLattice._.isLattice"
d990 :: T958 -> MAlonzo.Code.Algebra.Structures.T620
d990 v0
  = coe (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))
name992 = "Algebra.DistributiveLattice._.refl"
d992 :: T958 -> AgdaAny -> AgdaAny
d992 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d642
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))))))
name994 = "Algebra.DistributiveLattice._.reflexive"
d994 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T958 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d994 v0 v1 v2 = du994 v2
du994 ::
  T958 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du994 v0
  = let v1 = d982 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d702 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d642 (coe v2))) v3)
name996 = "Algebra.DistributiveLattice._.sym"
d996 :: T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d996 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d642
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))))))
name998 = "Algebra.DistributiveLattice._.trans"
d998 ::
  T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d998 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d642
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))))))
name1000 = "Algebra.DistributiveLattice._.∧-absorbs-∨"
d1000 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T958 -> AgdaAny -> AgdaAny -> AgdaAny
d1000 v0 v1 v2 = du1000 v2
du1000 :: T958 -> AgdaAny -> AgdaAny -> AgdaAny
du1000 v0
  = let v1 = d982 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d702 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d656 (coe v2))))
name1002 = "Algebra.DistributiveLattice._.∧-assoc"
d1002 :: T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1002 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d652
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))))
name1004 = "Algebra.DistributiveLattice._.∧-comm"
d1004 :: T958 -> AgdaAny -> AgdaAny -> AgdaAny
d1004 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d650
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))))
name1006 = "Algebra.DistributiveLattice._.∧-cong"
d1006 ::
  T958 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1006 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d654
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))))
name1008 = "Algebra.DistributiveLattice._.∧-congʳ"
d1008 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1008 v0 v1 v2 = du1008 v2
du1008 ::
  T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1008 v0
  = let v1 = d982 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du676
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v1))))
name1010 = "Algebra.DistributiveLattice._.∧-congˡ"
d1010 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1010 v0 v1 v2 = du1010 v2
du1010 ::
  T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1010 v0
  = let v1 = d982 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du672
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v1))))
name1012 = "Algebra.DistributiveLattice._.∨-absorbs-∧"
d1012 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T958 -> AgdaAny -> AgdaAny -> AgdaAny
d1012 v0 v1 v2 = du1012 v2
du1012 :: T958 -> AgdaAny -> AgdaAny -> AgdaAny
du1012 v0
  = let v1 = d982 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d702 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d656 (coe v2))))
name1014 = "Algebra.DistributiveLattice._.∨-assoc"
d1014 :: T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1014 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d646
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))))
name1016 = "Algebra.DistributiveLattice._.∨-comm"
d1016 :: T958 -> AgdaAny -> AgdaAny -> AgdaAny
d1016 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d644
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))))
name1018 = "Algebra.DistributiveLattice._.∨-cong"
d1018 ::
  T958 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1018 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d648
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))))
name1020 = "Algebra.DistributiveLattice._.∨-congʳ"
d1020 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1020 v0 v1 v2 = du1020 v2
du1020 ::
  T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1020 v0
  = let v1 = d982 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du684
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v1))))
name1022 = "Algebra.DistributiveLattice._.∨-congˡ"
d1022 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1022 v0 v1 v2 = du1022 v2
du1022 ::
  T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1022 v0
  = let v1 = d982 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du680
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v1))))
name1024 = "Algebra.DistributiveLattice._.∨-distribʳ-∧"
d1024 :: T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1024 v0
  = coe (MAlonzo.Code.Algebra.Structures.d704 (coe (d982 (coe v0))))
name1026 = "Algebra.DistributiveLattice._.∨-∧-distribʳ"
d1026 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1026 v0 v1 v2 = du1026 v2
du1026 :: T958 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1026 v0
  = coe (MAlonzo.Code.Algebra.Structures.du744 (coe (d982 (coe v0))))
name1028 = "Algebra.DistributiveLattice.lattice"
d1028 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T958 -> T888
d1028 v0 v1 v2 = du1028 v2
du1028 :: T958 -> T888
du1028 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C3535 v3 v4 v5) erased erased (d978 (coe v0))
      (d980 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d702 (coe (d982 (coe v0))))
name1032 = "Algebra.DistributiveLattice._.setoid"
d1032 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T958 -> MAlonzo.Code.Relation.Binary.T128
d1032 v0 v1 v2 = du1032 v2
du1032 :: T958 -> MAlonzo.Code.Relation.Binary.T128
du1032 v0 = coe (du952 (coe (du1028 (coe v0))))
name1038 = "Algebra.NearSemiring"
d1038 a0 a1 = ()
data T1038
  = C4165 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T752
name1056 = "Algebra.NearSemiring.Carrier"
d1056 :: T1038 -> ()
d1056 = erased
name1058 = "Algebra.NearSemiring._≈_"
d1058 :: T1038 -> AgdaAny -> AgdaAny -> ()
d1058 = erased
name1060 = "Algebra.NearSemiring._+_"
d1060 :: T1038 -> AgdaAny -> AgdaAny -> AgdaAny
d1060 v0
  = case coe v0 of
      C4165 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1062 = "Algebra.NearSemiring._*_"
d1062 :: T1038 -> AgdaAny -> AgdaAny -> AgdaAny
d1062 v0
  = case coe v0 of
      C4165 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1064 = "Algebra.NearSemiring.0#"
d1064 :: T1038 -> AgdaAny
d1064 v0
  = case coe v0 of
      C4165 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1066 = "Algebra.NearSemiring.isNearSemiring"
d1066 :: T1038 -> MAlonzo.Code.Algebra.Structures.T752
d1066 v0
  = case coe v0 of
      C4165 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1070 = "Algebra.NearSemiring._.assoc"
d1070 :: T1038 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1070 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d770 (coe (d1066 (coe v0))))))
name1072 = "Algebra.NearSemiring._.∙-cong"
d1072 ::
  T1038 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1072 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d770 (coe (d1066 (coe v0))))))))
name1074 = "Algebra.NearSemiring._.∙-congʳ"
d1074 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1038 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1074 v0 v1 v2 = du1074 v2
du1074 ::
  T1038 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1074 v0
  = let v1 = d1066 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d770 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v2))))
name1076 = "Algebra.NearSemiring._.∙-congˡ"
d1076 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1038 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1076 v0 v1 v2 = du1076 v2
du1076 ::
  T1038 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1076 v0
  = let v1 = d1066 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d770 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v2))))
name1078 = "Algebra.NearSemiring._.isMagma"
d1078 :: T1038 -> MAlonzo.Code.Algebra.Structures.T84
d1078 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d770 (coe (d1066 (coe v0))))))
name1080 = "Algebra.NearSemiring._.*-isSemigroup"
d1080 :: T1038 -> MAlonzo.Code.Algebra.Structures.T118
d1080 v0
  = coe (MAlonzo.Code.Algebra.Structures.d770 (coe (d1066 (coe v0))))
name1082 = "Algebra.NearSemiring._.assoc"
d1082 :: T1038 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1082 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768 (coe (d1066 (coe v0))))))))
name1084 = "Algebra.NearSemiring._.∙-cong"
d1084 ::
  T1038 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1084 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d768 (coe (d1066 (coe v0))))))))))
name1086 = "Algebra.NearSemiring._.∙-congʳ"
d1086 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1038 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1086 v0 v1 v2 = du1086 v2
du1086 ::
  T1038 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1086 v0
  = let v1 = d1066 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d768 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d278 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name1088 = "Algebra.NearSemiring._.∙-congˡ"
d1088 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1038 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1088 v0 v1 v2 = du1088 v2
du1088 ::
  T1038 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1088 v0
  = let v1 = d1066 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d768 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d278 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name1090 = "Algebra.NearSemiring._.identity"
d1090 :: T1038 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1090 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d280
         (coe
            (MAlonzo.Code.Algebra.Structures.d768 (coe (d1066 (coe v0))))))
name1092 = "Algebra.NearSemiring._.identityʳ"
d1092 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1038 -> AgdaAny -> AgdaAny
d1092 v0 v1 v2 = du1092 v2
du1092 :: T1038 -> AgdaAny -> AgdaAny
du1092 v0
  = let v1 = d1066 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d768 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v2))))
name1094 = "Algebra.NearSemiring._.identityˡ"
d1094 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1038 -> AgdaAny -> AgdaAny
d1094 v0 v1 v2 = du1094 v2
du1094 :: T1038 -> AgdaAny -> AgdaAny
du1094 v0
  = let v1 = d1066 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d768 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v2))))
name1096 = "Algebra.NearSemiring._.isMagma"
d1096 :: T1038 -> MAlonzo.Code.Algebra.Structures.T84
d1096 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768 (coe (d1066 (coe v0))))))))
name1098 = "Algebra.NearSemiring._.+-isMonoid"
d1098 :: T1038 -> MAlonzo.Code.Algebra.Structures.T268
d1098 v0
  = coe (MAlonzo.Code.Algebra.Structures.d768 (coe (d1066 (coe v0))))
name1100 = "Algebra.NearSemiring._.isSemigroup"
d1100 :: T1038 -> MAlonzo.Code.Algebra.Structures.T118
d1100 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d278
         (coe
            (MAlonzo.Code.Algebra.Structures.d768 (coe (d1066 (coe v0))))))
name1102 = "Algebra.NearSemiring._.distribʳ"
d1102 :: T1038 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1102 v0
  = coe (MAlonzo.Code.Algebra.Structures.d772 (coe (d1066 (coe v0))))
name1104 = "Algebra.NearSemiring._.isEquivalence"
d1104 :: T1038 -> MAlonzo.Code.Relation.Binary.Core.T402
d1104 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d768 (coe (d1066 (coe v0))))))))))
name1106 = "Algebra.NearSemiring._.refl"
d1106 :: T1038 -> AgdaAny -> AgdaAny
d1106 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe (d1066 (coe v0))))))))))))
name1108 = "Algebra.NearSemiring._.reflexive"
d1108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1038 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1108 v0 v1 v2 = du1108 v2
du1108 ::
  T1038 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1108 v0
  = let v1 = d1066 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d768 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d278 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d126 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v4))) v5)
name1110 = "Algebra.NearSemiring._.setoid"
d1110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1038 -> MAlonzo.Code.Relation.Binary.T128
d1110 v0 v1 v2 = du1110 v2
du1110 :: T1038 -> MAlonzo.Code.Relation.Binary.T128
du1110 v0
  = let v1 = d1066 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d768 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d278 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name1112 = "Algebra.NearSemiring._.sym"
d1112 :: T1038 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1112 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe (d1066 (coe v0))))))))))))
name1114 = "Algebra.NearSemiring._.trans"
d1114 ::
  T1038 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1114 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe (d1066 (coe v0))))))))))))
name1116 = "Algebra.NearSemiring._.zeroˡ"
d1116 :: T1038 -> AgdaAny -> AgdaAny
d1116 v0
  = coe (MAlonzo.Code.Algebra.Structures.d774 (coe (d1066 (coe v0))))
name1118 = "Algebra.NearSemiring.+-monoid"
d1118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1038 -> T346
d1118 v0 v1 v2 = du1118 v2
du1118 :: T1038 -> T346
du1118 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1409 v3 v4 v5) erased erased (d1060 (coe v0))
      (d1064 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d768 (coe (d1066 (coe v0))))
name1122 = "Algebra.NearSemiring._.magma"
d1122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1038 -> T28
d1122 v0 v1 v2 = du1122 v2
du1122 :: T1038 -> T28
du1122 v0
  = let v1 = du1118 (coe v0) in coe (du122 (coe (du404 (coe v1))))
name1124 = "Algebra.NearSemiring._.rawMagma"
d1124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1038 -> T6
d1124 v0 v1 v2 = du1124 v2
du1124 :: T1038 -> T6
du1124 v0
  = let v1 = du1118 (coe v0) in
    let v2 = du404 (coe v1) in coe (du70 (coe (du122 (coe v2))))
name1126 = "Algebra.NearSemiring._.rawMonoid"
d1126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1038 -> T318
d1126 v0 v1 v2 = du1126 v2
du1126 :: T1038 -> T318
du1126 v0 = coe (du406 (coe (du1118 (coe v0))))
name1128 = "Algebra.NearSemiring._.semigroup"
d1128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1038 -> T76
d1128 v0 v1 v2 = du1128 v2
du1128 :: T1038 -> T76
du1128 v0 = coe (du404 (coe (du1118 (coe v0))))
name1130 = "Algebra.NearSemiring.*-semigroup"
d1130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1038 -> T76
d1130 v0 v1 v2 = du1130 v2
du1130 :: T1038 -> T76
du1130 v0
  = coe
      (\ v1 v2 v3 v4 -> C285 v3 v4) erased erased (d1062 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d770 (coe (d1066 (coe v0))))
name1134 = "Algebra.NearSemiring._.magma"
d1134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1038 -> T28
d1134 v0 v1 v2 = du1134 v2
du1134 :: T1038 -> T28
du1134 v0 = coe (du122 (coe (du1130 (coe v0))))
name1136 = "Algebra.NearSemiring._.rawMagma"
d1136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1038 -> T6
d1136 v0 v1 v2 = du1136 v2
du1136 :: T1038 -> T6
du1136 v0
  = let v1 = du1130 (coe v0) in coe (du70 (coe (du122 (coe v1))))
name1142 = "Algebra.SemiringWithoutOne"
d1142 a0 a1 = ()
data T1142
  = C4613 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T826
name1160 = "Algebra.SemiringWithoutOne.Carrier"
d1160 :: T1142 -> ()
d1160 = erased
name1162 = "Algebra.SemiringWithoutOne._≈_"
d1162 :: T1142 -> AgdaAny -> AgdaAny -> ()
d1162 = erased
name1164 = "Algebra.SemiringWithoutOne._+_"
d1164 :: T1142 -> AgdaAny -> AgdaAny -> AgdaAny
d1164 v0
  = case coe v0 of
      C4613 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1166 = "Algebra.SemiringWithoutOne._*_"
d1166 :: T1142 -> AgdaAny -> AgdaAny -> AgdaAny
d1166 v0
  = case coe v0 of
      C4613 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1168 = "Algebra.SemiringWithoutOne.0#"
d1168 :: T1142 -> AgdaAny
d1168 v0
  = case coe v0 of
      C4613 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1170 = "Algebra.SemiringWithoutOne.isSemiringWithoutOne"
d1170 :: T1142 -> MAlonzo.Code.Algebra.Structures.T826
d1170 v0
  = case coe v0 of
      C4613 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1174 = "Algebra.SemiringWithoutOne._.assoc"
d1174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1174 v0 v1 v2 = du1174 v2
du1174 :: T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1174 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe (MAlonzo.Code.Algebra.Structures.d844 (coe v1))))
name1176 = "Algebra.SemiringWithoutOne._.∙-cong"
d1176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1176 v0 v1 v2 = du1176 v2
du1176 ::
  T1142 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1176 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe (MAlonzo.Code.Algebra.Structures.d844 (coe v1))))))
name1178 = "Algebra.SemiringWithoutOne._.∙-congʳ"
d1178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1178 v0 v1 v2 = du1178 v2
du1178 ::
  T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1178 v0
  = let v1 = d1164 (coe v0) in
    let v2 = d1168 (coe v0) in
    let v3 = d1170 (coe v0) in
    let v4
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d770 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5))))
name1180 = "Algebra.SemiringWithoutOne._.∙-congˡ"
d1180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1180 v0 v1 v2 = du1180 v2
du1180 ::
  T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1180 v0
  = let v1 = d1164 (coe v0) in
    let v2 = d1168 (coe v0) in
    let v3 = d1170 (coe v0) in
    let v4
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d770 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5))))
name1182 = "Algebra.SemiringWithoutOne._.isMagma"
d1182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> MAlonzo.Code.Algebra.Structures.T84
d1182 v0 v1 v2 = du1182 v2
du1182 :: T1142 -> MAlonzo.Code.Algebra.Structures.T84
du1182 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe (MAlonzo.Code.Algebra.Structures.d844 (coe v1))))
name1184 = "Algebra.SemiringWithoutOne._.*-isSemigroup"
d1184 :: T1142 -> MAlonzo.Code.Algebra.Structures.T118
d1184 v0
  = coe (MAlonzo.Code.Algebra.Structures.d844 (coe (d1170 (coe v0))))
name1186 = "Algebra.SemiringWithoutOne._.*-isSemigroup"
d1186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> MAlonzo.Code.Algebra.Structures.T118
d1186 v0 v1 v2 = du1186 v2
du1186 :: T1142 -> MAlonzo.Code.Algebra.Structures.T118
du1186 v0
  = let v1 = d1170 (coe v0) in
    coe (MAlonzo.Code.Algebra.Structures.d844 (coe v1))
name1188 = "Algebra.SemiringWithoutOne._.assoc"
d1188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1188 v0 v1 v2 = du1188 v2
du1188 :: T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1188 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v1))))))
name1190 = "Algebra.SemiringWithoutOne._.comm"
d1190 :: T1142 -> AgdaAny -> AgdaAny -> AgdaAny
d1190 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe
            (MAlonzo.Code.Algebra.Structures.d842 (coe (d1170 (coe v0))))))
name1192 = "Algebra.SemiringWithoutOne._.∙-cong"
d1192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1192 v0 v1 v2 = du1192 v2
du1192 ::
  T1142 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1192 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v1))))))))
name1194 = "Algebra.SemiringWithoutOne._.∙-congʳ"
d1194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1194 v0 v1 v2 = du1194 v2
du1194 ::
  T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1194 v0
  = let v1 = d1164 (coe v0) in
    let v2 = d1168 (coe v0) in
    let v3 = d1170 (coe v0) in
    let v4
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d768 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6))))
name1196 = "Algebra.SemiringWithoutOne._.∙-congˡ"
d1196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1196 v0 v1 v2 = du1196 v2
du1196 ::
  T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1196 v0
  = let v1 = d1164 (coe v0) in
    let v2 = d1168 (coe v0) in
    let v3 = d1170 (coe v0) in
    let v4
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d768 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6))))
name1198 = "Algebra.SemiringWithoutOne._.identity"
d1198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1198 v0 v1 v2 = du1198 v2
du1198 :: T1142 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1198 v0
  = let v1 = d1164 (coe v0) in
    let v2 = d1168 (coe v0) in
    let v3 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v3))))
name1200 = "Algebra.SemiringWithoutOne._.identityʳ"
d1200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> AgdaAny -> AgdaAny
d1200 v0 v1 v2 = du1200 v2
du1200 :: T1142 -> AgdaAny -> AgdaAny
du1200 v0
  = let v1 = d1164 (coe v0) in
    let v2 = d1168 (coe v0) in
    let v3 = d1170 (coe v0) in
    let v4
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d768 (coe v4) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v5))))
name1202 = "Algebra.SemiringWithoutOne._.identityˡ"
d1202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> AgdaAny -> AgdaAny
d1202 v0 v1 v2 = du1202 v2
du1202 :: T1142 -> AgdaAny -> AgdaAny
du1202 v0
  = let v1 = d1164 (coe v0) in
    let v2 = d1168 (coe v0) in
    let v3 = d1170 (coe v0) in
    let v4
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d768 (coe v4) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v5))))
name1204 = "Algebra.SemiringWithoutOne._.+-isCommutativeMonoid"
d1204 :: T1142 -> MAlonzo.Code.Algebra.Structures.T314
d1204 v0
  = coe (MAlonzo.Code.Algebra.Structures.d842 (coe (d1170 (coe v0))))
name1206 = "Algebra.SemiringWithoutOne._.isMagma"
d1206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> MAlonzo.Code.Algebra.Structures.T84
d1206 v0 v1 v2 = du1206 v2
du1206 :: T1142 -> MAlonzo.Code.Algebra.Structures.T84
du1206 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v1))))))
name1208 = "Algebra.SemiringWithoutOne._.isMonoid"
d1208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> MAlonzo.Code.Algebra.Structures.T268
d1208 v0 v1 v2 = du1208 v2
du1208 :: T1142 -> MAlonzo.Code.Algebra.Structures.T268
du1208 v0
  = let v1 = d1164 (coe v0) in
    let v2 = d1168 (coe v0) in
    let v3 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v3))))
name1210 = "Algebra.SemiringWithoutOne._.isSemigroup"
d1210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> MAlonzo.Code.Algebra.Structures.T118
d1210 v0 v1 v2 = du1210 v2
du1210 :: T1142 -> MAlonzo.Code.Algebra.Structures.T118
du1210 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v1))))
name1212 = "Algebra.SemiringWithoutOne._.distrib"
d1212 :: T1142 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1212 v0
  = coe (MAlonzo.Code.Algebra.Structures.d846 (coe (d1170 (coe v0))))
name1214 = "Algebra.SemiringWithoutOne._.distribʳ"
d1214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1214 v0 v1 v2 = du1214 v2
du1214 :: T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1214 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d846 (coe v1))))
name1216 = "Algebra.SemiringWithoutOne._.isEquivalence"
d1216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> MAlonzo.Code.Relation.Binary.Core.T402
d1216 v0 v1 v2 = du1216 v2
du1216 :: T1142 -> MAlonzo.Code.Relation.Binary.Core.T402
du1216 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v1))))))))
name1218 = "Algebra.SemiringWithoutOne._.isNearSemiring"
d1218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> MAlonzo.Code.Algebra.Structures.T752
d1218 v0 v1 v2 = du1218 v2
du1218 :: T1142 -> MAlonzo.Code.Algebra.Structures.T752
du1218 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du860
         (coe (d1164 (coe v0))) (coe (d1168 (coe v0)))
         (coe (d1170 (coe v0))))
name1220 = "Algebra.SemiringWithoutOne._.refl"
d1220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> AgdaAny -> AgdaAny
d1220 v0 v1 v2 = du1220 v2
du1220 :: T1142 -> AgdaAny -> AgdaAny
du1220 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v1))))))))))
name1222 = "Algebra.SemiringWithoutOne._.reflexive"
d1222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1222 v0 v1 v2 = du1222 v2
du1222 ::
  T1142 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1222 v0
  = let v1 = d1164 (coe v0) in
    let v2 = d1168 (coe v0) in
    let v3 = d1170 (coe v0) in
    let v4
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d768 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d126 (coe v6) in
    coe
      (\ v8 v9 v10 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v7))) v8)
name1224 = "Algebra.SemiringWithoutOne._.setoid"
d1224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> MAlonzo.Code.Relation.Binary.T128
d1224 v0 v1 v2 = du1224 v2
du1224 :: T1142 -> MAlonzo.Code.Relation.Binary.T128
du1224 v0
  = let v1 = d1164 (coe v0) in
    let v2 = d1168 (coe v0) in
    let v3 = d1170 (coe v0) in
    let v4
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d768 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6))))
name1226 = "Algebra.SemiringWithoutOne._.sym"
d1226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1226 v0 v1 v2 = du1226 v2
du1226 :: T1142 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1226 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v1))))))))))
name1228 = "Algebra.SemiringWithoutOne._.trans"
d1228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1228 v0 v1 v2 = du1228 v2
du1228 ::
  T1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1228 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v1))))))))))
name1230 = "Algebra.SemiringWithoutOne._.zero"
d1230 :: T1142 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1230 v0
  = coe (MAlonzo.Code.Algebra.Structures.d848 (coe (d1170 (coe v0))))
name1232 = "Algebra.SemiringWithoutOne._.zeroʳ"
d1232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> AgdaAny -> AgdaAny
d1232 v0 v1 v2 = du1232 v2
du1232 :: T1142 -> AgdaAny -> AgdaAny
du1232 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d848 (coe v1))))
name1234 = "Algebra.SemiringWithoutOne._.zeroˡ"
d1234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> AgdaAny -> AgdaAny
d1234 v0 v1 v2 = du1234 v2
du1234 :: T1142 -> AgdaAny -> AgdaAny
du1234 v0
  = let v1 = d1170 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d848 (coe v1))))
name1236 = "Algebra.SemiringWithoutOne.nearSemiring"
d1236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> T1038
d1236 v0 v1 v2 = du1236 v2
du1236 :: T1142 -> T1038
du1236 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C4165 v3 v4 v5 v6) erased erased
      (d1164 (coe v0)) (d1166 (coe v0)) (d1168 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du860
         (coe (d1164 (coe v0))) (coe (d1168 (coe v0)))
         (coe (d1170 (coe v0))))
name1240 = "Algebra.SemiringWithoutOne._.magma"
d1240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> T28
d1240 v0 v1 v2 = du1240 v2
du1240 :: T1142 -> T28
du1240 v0
  = let v1 = du1236 (coe v0) in coe (du122 (coe (du1130 (coe v1))))
name1242 = "Algebra.SemiringWithoutOne._.rawMagma"
d1242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> T6
d1242 v0 v1 v2 = du1242 v2
du1242 :: T1142 -> T6
du1242 v0
  = let v1 = du1236 (coe v0) in
    let v2 = du1130 (coe v1) in coe (du70 (coe (du122 (coe v2))))
name1244 = "Algebra.SemiringWithoutOne._.*-semigroup"
d1244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> T76
d1244 v0 v1 v2 = du1244 v2
du1244 :: T1142 -> T76
du1244 v0 = coe (du1130 (coe (du1236 (coe v0))))
name1246 = "Algebra.SemiringWithoutOne._.magma"
d1246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> T28
d1246 v0 v1 v2 = du1246 v2
du1246 :: T1142 -> T28
du1246 v0
  = let v1 = du1236 (coe v0) in
    let v2 = du1118 (coe v1) in coe (du122 (coe (du404 (coe v2))))
name1248 = "Algebra.SemiringWithoutOne._.+-monoid"
d1248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> T346
d1248 v0 v1 v2 = du1248 v2
du1248 :: T1142 -> T346
du1248 v0 = coe (du1118 (coe (du1236 (coe v0))))
name1250 = "Algebra.SemiringWithoutOne._.rawMagma"
d1250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> T6
d1250 v0 v1 v2 = du1250 v2
du1250 :: T1142 -> T6
du1250 v0
  = let v1 = du1236 (coe v0) in
    let v2 = du1118 (coe v1) in
    let v3 = du404 (coe v2) in coe (du70 (coe (du122 (coe v3))))
name1252 = "Algebra.SemiringWithoutOne._.rawMonoid"
d1252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> T318
d1252 v0 v1 v2 = du1252 v2
du1252 :: T1142 -> T318
du1252 v0
  = let v1 = du1236 (coe v0) in coe (du406 (coe (du1118 (coe v1))))
name1254 = "Algebra.SemiringWithoutOne._.semigroup"
d1254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> T76
d1254 v0 v1 v2 = du1254 v2
du1254 :: T1142 -> T76
du1254 v0
  = let v1 = du1236 (coe v0) in coe (du404 (coe (du1118 (coe v1))))
name1256 = "Algebra.SemiringWithoutOne.+-commutativeMonoid"
d1256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1142 -> T418
d1256 v0 v1 v2 = du1256 v2
du1256 :: T1142 -> T418
du1256 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1739 v3 v4 v5) erased erased (d1164 (coe v0))
      (d1168 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d842 (coe (d1170 (coe v0))))
name1262 = "Algebra.CommutativeSemiringWithoutOne"
d1262 a0 a1 = ()
data T1262
  = C5071 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T914
name1280 = "Algebra.CommutativeSemiringWithoutOne.Carrier"
d1280 :: T1262 -> ()
d1280 = erased
name1282 = "Algebra.CommutativeSemiringWithoutOne._≈_"
d1282 :: T1262 -> AgdaAny -> AgdaAny -> ()
d1282 = erased
name1284 = "Algebra.CommutativeSemiringWithoutOne._+_"
d1284 :: T1262 -> AgdaAny -> AgdaAny -> AgdaAny
d1284 v0
  = case coe v0 of
      C5071 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1286 = "Algebra.CommutativeSemiringWithoutOne._*_"
d1286 :: T1262 -> AgdaAny -> AgdaAny -> AgdaAny
d1286 v0
  = case coe v0 of
      C5071 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1288 = "Algebra.CommutativeSemiringWithoutOne.0#"
d1288 :: T1262 -> AgdaAny
d1288 v0
  = case coe v0 of
      C5071 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1290
  = "Algebra.CommutativeSemiringWithoutOne.isCommutativeSemiringWithoutOne"
d1290 :: T1262 -> MAlonzo.Code.Algebra.Structures.T914
d1290 v0
  = case coe v0 of
      C5071 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1294 = "Algebra.CommutativeSemiringWithoutOne._.assoc"
d1294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1294 v0 v1 v2 = du1294 v2
du1294 :: T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1294 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe (MAlonzo.Code.Algebra.Structures.d844 (coe v2))))
name1296 = "Algebra.CommutativeSemiringWithoutOne._.*-comm"
d1296 :: T1262 -> AgdaAny -> AgdaAny -> AgdaAny
d1296 v0
  = coe (MAlonzo.Code.Algebra.Structures.d928 (coe (d1290 (coe v0))))
name1298 = "Algebra.CommutativeSemiringWithoutOne._.∙-cong"
d1298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1298 v0 v1 v2 = du1298 v2
du1298 ::
  T1262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1298 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe (MAlonzo.Code.Algebra.Structures.d844 (coe v2))))))
name1300 = "Algebra.CommutativeSemiringWithoutOne._.∙-congʳ"
d1300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1300 v0 v1 v2 = du1300 v2
du1300 ::
  T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1300 v0
  = let v1 = d1284 (coe v0) in
    let v2 = d1288 (coe v0) in
    let v3 = d1290 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d926 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d770 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6))))
name1302 = "Algebra.CommutativeSemiringWithoutOne._.∙-congˡ"
d1302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1302 v0 v1 v2 = du1302 v2
du1302 ::
  T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1302 v0
  = let v1 = d1284 (coe v0) in
    let v2 = d1288 (coe v0) in
    let v3 = d1290 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d926 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d770 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6))))
name1304 = "Algebra.CommutativeSemiringWithoutOne._.isMagma"
d1304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> MAlonzo.Code.Algebra.Structures.T84
d1304 v0 v1 v2 = du1304 v2
du1304 :: T1262 -> MAlonzo.Code.Algebra.Structures.T84
du1304 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe (MAlonzo.Code.Algebra.Structures.d844 (coe v2))))
name1306 = "Algebra.CommutativeSemiringWithoutOne._.*-isSemigroup"
d1306 :: T1262 -> MAlonzo.Code.Algebra.Structures.T118
d1306 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d844
         (coe
            (MAlonzo.Code.Algebra.Structures.d926 (coe (d1290 (coe v0))))))
name1308 = "Algebra.CommutativeSemiringWithoutOne._.*-isSemigroup"
d1308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> MAlonzo.Code.Algebra.Structures.T118
d1308 v0 v1 v2 = du1308 v2
du1308 :: T1262 -> MAlonzo.Code.Algebra.Structures.T118
du1308 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe (MAlonzo.Code.Algebra.Structures.d844 (coe v2))
name1310 = "Algebra.CommutativeSemiringWithoutOne._.assoc"
d1310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1310 v0 v1 v2 = du1310 v2
du1310 :: T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1310 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v2))))))
name1312 = "Algebra.CommutativeSemiringWithoutOne._.comm"
d1312 :: T1262 -> AgdaAny -> AgdaAny -> AgdaAny
d1312 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe
            (MAlonzo.Code.Algebra.Structures.d842
               (coe
                  (MAlonzo.Code.Algebra.Structures.d926 (coe (d1290 (coe v0))))))))
name1314 = "Algebra.CommutativeSemiringWithoutOne._.∙-cong"
d1314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1314 v0 v1 v2 = du1314 v2
du1314 ::
  T1262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1314 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v2))))))))
name1316 = "Algebra.CommutativeSemiringWithoutOne._.∙-congʳ"
d1316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1316 v0 v1 v2 = du1316 v2
du1316 ::
  T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1316 v0
  = let v1 = d1284 (coe v0) in
    let v2 = d1288 (coe v0) in
    let v3 = d1290 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d926 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d768 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d278 (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v7))))
name1318 = "Algebra.CommutativeSemiringWithoutOne._.∙-congˡ"
d1318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1318 v0 v1 v2 = du1318 v2
du1318 ::
  T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1318 v0
  = let v1 = d1284 (coe v0) in
    let v2 = d1288 (coe v0) in
    let v3 = d1290 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d926 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d768 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d278 (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v7))))
name1320 = "Algebra.CommutativeSemiringWithoutOne._.identity"
d1320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1320 v0 v1 v2 = du1320 v2
du1320 :: T1262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1320 v0
  = let v1 = d1284 (coe v0) in
    let v2 = d1288 (coe v0) in
    let v3 = d1290 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d926 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v4))))
name1322 = "Algebra.CommutativeSemiringWithoutOne._.identityʳ"
d1322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> AgdaAny -> AgdaAny
d1322 v0 v1 v2 = du1322 v2
du1322 :: T1262 -> AgdaAny -> AgdaAny
du1322 v0
  = let v1 = d1284 (coe v0) in
    let v2 = d1288 (coe v0) in
    let v3 = d1290 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d926 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d768 (coe v5) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v6))))
name1324 = "Algebra.CommutativeSemiringWithoutOne._.identityˡ"
d1324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> AgdaAny -> AgdaAny
d1324 v0 v1 v2 = du1324 v2
du1324 :: T1262 -> AgdaAny -> AgdaAny
du1324 v0
  = let v1 = d1284 (coe v0) in
    let v2 = d1288 (coe v0) in
    let v3 = d1290 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d926 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d768 (coe v5) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v6))))
name1326
  = "Algebra.CommutativeSemiringWithoutOne._.+-isCommutativeMonoid"
d1326 :: T1262 -> MAlonzo.Code.Algebra.Structures.T314
d1326 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d842
         (coe
            (MAlonzo.Code.Algebra.Structures.d926 (coe (d1290 (coe v0))))))
name1328 = "Algebra.CommutativeSemiringWithoutOne._.isMagma"
d1328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> MAlonzo.Code.Algebra.Structures.T84
d1328 v0 v1 v2 = du1328 v2
du1328 :: T1262 -> MAlonzo.Code.Algebra.Structures.T84
du1328 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v2))))))
name1330 = "Algebra.CommutativeSemiringWithoutOne._.isMonoid"
d1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> MAlonzo.Code.Algebra.Structures.T268
d1330 v0 v1 v2 = du1330 v2
du1330 :: T1262 -> MAlonzo.Code.Algebra.Structures.T268
du1330 v0
  = let v1 = d1284 (coe v0) in
    let v2 = d1288 (coe v0) in
    let v3 = d1290 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d926 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v4))))
name1332 = "Algebra.CommutativeSemiringWithoutOne._.isSemigroup"
d1332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> MAlonzo.Code.Algebra.Structures.T118
d1332 v0 v1 v2 = du1332 v2
du1332 :: T1262 -> MAlonzo.Code.Algebra.Structures.T118
du1332 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v2))))
name1334 = "Algebra.CommutativeSemiringWithoutOne._.distrib"
d1334 :: T1262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1334 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d846
         (coe
            (MAlonzo.Code.Algebra.Structures.d926 (coe (d1290 (coe v0))))))
name1336 = "Algebra.CommutativeSemiringWithoutOne._.distribʳ"
d1336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1336 v0 v1 v2 = du1336 v2
du1336 :: T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1336 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d846 (coe v2))))
name1338 = "Algebra.CommutativeSemiringWithoutOne._.isEquivalence"
d1338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> MAlonzo.Code.Relation.Binary.Core.T402
d1338 v0 v1 v2 = du1338 v2
du1338 :: T1262 -> MAlonzo.Code.Relation.Binary.Core.T402
du1338 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v2))))))))
name1340 = "Algebra.CommutativeSemiringWithoutOne._.isNearSemiring"
d1340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> MAlonzo.Code.Algebra.Structures.T752
d1340 v0 v1 v2 = du1340 v2
du1340 :: T1262 -> MAlonzo.Code.Algebra.Structures.T752
du1340 v0
  = let v1 = d1284 (coe v0) in
    let v2 = d1288 (coe v0) in
    let v3 = d1290 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du860
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d926 (coe v3))))
name1342
  = "Algebra.CommutativeSemiringWithoutOne._.isSemiringWithoutOne"
d1342 :: T1262 -> MAlonzo.Code.Algebra.Structures.T826
d1342 v0
  = coe (MAlonzo.Code.Algebra.Structures.d926 (coe (d1290 (coe v0))))
name1344 = "Algebra.CommutativeSemiringWithoutOne._.refl"
d1344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> AgdaAny -> AgdaAny
d1344 v0 v1 v2 = du1344 v2
du1344 :: T1262 -> AgdaAny -> AgdaAny
du1344 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v2))))))))))
name1346 = "Algebra.CommutativeSemiringWithoutOne._.reflexive"
d1346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1346 v0 v1 v2 = du1346 v2
du1346 ::
  T1262 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1346 v0
  = let v1 = d1284 (coe v0) in
    let v2 = d1288 (coe v0) in
    let v3 = d1290 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d926 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d768 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d278 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d126 (coe v7) in
    coe
      (\ v9 v10 v11 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v8))) v9)
name1348 = "Algebra.CommutativeSemiringWithoutOne._.setoid"
d1348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> MAlonzo.Code.Relation.Binary.T128
d1348 v0 v1 v2 = du1348 v2
du1348 :: T1262 -> MAlonzo.Code.Relation.Binary.T128
du1348 v0
  = let v1 = d1284 (coe v0) in
    let v2 = d1288 (coe v0) in
    let v3 = d1290 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d926 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.du860
              (coe v1) (coe v2) (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d768 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d278 (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v7))))
name1350 = "Algebra.CommutativeSemiringWithoutOne._.sym"
d1350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1350 v0 v1 v2 = du1350 v2
du1350 :: T1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1350 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v2))))))))))
name1352 = "Algebra.CommutativeSemiringWithoutOne._.trans"
d1352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1352 v0 v1 v2 = du1352 v2
du1352 ::
  T1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1352 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d842 (coe v2))))))))))
name1354 = "Algebra.CommutativeSemiringWithoutOne._.zero"
d1354 :: T1262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1354 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d848
         (coe
            (MAlonzo.Code.Algebra.Structures.d926 (coe (d1290 (coe v0))))))
name1356 = "Algebra.CommutativeSemiringWithoutOne._.zeroʳ"
d1356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> AgdaAny -> AgdaAny
d1356 v0 v1 v2 = du1356 v2
du1356 :: T1262 -> AgdaAny -> AgdaAny
du1356 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d848 (coe v2))))
name1358 = "Algebra.CommutativeSemiringWithoutOne._.zeroˡ"
d1358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> AgdaAny -> AgdaAny
d1358 v0 v1 v2 = du1358 v2
du1358 :: T1262 -> AgdaAny -> AgdaAny
du1358 v0
  = let v1 = d1290 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d926 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d848 (coe v2))))
name1360
  = "Algebra.CommutativeSemiringWithoutOne.semiringWithoutOne"
d1360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> T1142
d1360 v0 v1 v2 = du1360 v2
du1360 :: T1262 -> T1142
du1360 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C4613 v3 v4 v5 v6) erased erased
      (d1284 (coe v0)) (d1286 (coe v0)) (d1288 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d926 (coe (d1290 (coe v0))))
name1364 = "Algebra.CommutativeSemiringWithoutOne._.magma"
d1364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> T28
d1364 v0 v1 v2 = du1364 v2
du1364 :: T1262 -> T28
du1364 v0
  = let v1 = du1360 (coe v0) in
    let v2 = du1236 (coe v1) in coe (du122 (coe (du1130 (coe v2))))
name1366 = "Algebra.CommutativeSemiringWithoutOne._.rawMagma"
d1366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> T6
d1366 v0 v1 v2 = du1366 v2
du1366 :: T1262 -> T6
du1366 v0
  = let v1 = du1360 (coe v0) in
    let v2 = du1236 (coe v1) in
    let v3 = du1130 (coe v2) in coe (du70 (coe (du122 (coe v3))))
name1368 = "Algebra.CommutativeSemiringWithoutOne._.*-semigroup"
d1368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> T76
d1368 v0 v1 v2 = du1368 v2
du1368 :: T1262 -> T76
du1368 v0
  = let v1 = du1360 (coe v0) in coe (du1130 (coe (du1236 (coe v1))))
name1370
  = "Algebra.CommutativeSemiringWithoutOne._.+-commutativeMonoid"
d1370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> T418
d1370 v0 v1 v2 = du1370 v2
du1370 :: T1262 -> T418
du1370 v0 = coe (du1256 (coe (du1360 (coe v0))))
name1372 = "Algebra.CommutativeSemiringWithoutOne._.magma"
d1372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> T28
d1372 v0 v1 v2 = du1372 v2
du1372 :: T1262 -> T28
du1372 v0
  = let v1 = du1360 (coe v0) in
    let v2 = du1236 (coe v1) in
    let v3 = du1118 (coe v2) in coe (du122 (coe (du404 (coe v3))))
name1374 = "Algebra.CommutativeSemiringWithoutOne._.+-monoid"
d1374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> T346
d1374 v0 v1 v2 = du1374 v2
du1374 :: T1262 -> T346
du1374 v0
  = let v1 = du1360 (coe v0) in coe (du1118 (coe (du1236 (coe v1))))
name1376 = "Algebra.CommutativeSemiringWithoutOne._.rawMagma"
d1376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> T6
d1376 v0 v1 v2 = du1376 v2
du1376 :: T1262 -> T6
du1376 v0
  = let v1 = du1360 (coe v0) in
    let v2 = du1236 (coe v1) in
    let v3 = du1118 (coe v2) in
    let v4 = du404 (coe v3) in coe (du70 (coe (du122 (coe v4))))
name1378 = "Algebra.CommutativeSemiringWithoutOne._.rawMonoid"
d1378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> T318
d1378 v0 v1 v2 = du1378 v2
du1378 :: T1262 -> T318
du1378 v0
  = let v1 = du1360 (coe v0) in
    let v2 = du1236 (coe v1) in coe (du406 (coe (du1118 (coe v2))))
name1380 = "Algebra.CommutativeSemiringWithoutOne._.semigroup"
d1380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> T76
d1380 v0 v1 v2 = du1380 v2
du1380 :: T1262 -> T76
du1380 v0
  = let v1 = du1360 (coe v0) in
    let v2 = du1236 (coe v1) in coe (du404 (coe (du1118 (coe v2))))
name1382 = "Algebra.CommutativeSemiringWithoutOne._.nearSemiring"
d1382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1262 -> T1038
d1382 v0 v1 v2 = du1382 v2
du1382 :: T1262 -> T1038
du1382 v0 = coe (du1236 (coe (du1360 (coe v0))))
name1388 = "Algebra.RawSemiring"
d1388 a0 a1 = ()
data T1388
  = C5507 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
name1406 = "Algebra.RawSemiring.Carrier"
d1406 :: T1388 -> ()
d1406 = erased
name1408 = "Algebra.RawSemiring._≈_"
d1408 :: T1388 -> AgdaAny -> AgdaAny -> ()
d1408 = erased
name1410 = "Algebra.RawSemiring._+_"
d1410 :: T1388 -> AgdaAny -> AgdaAny -> AgdaAny
d1410 v0
  = case coe v0 of
      C5507 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1412 = "Algebra.RawSemiring._*_"
d1412 :: T1388 -> AgdaAny -> AgdaAny -> AgdaAny
d1412 v0
  = case coe v0 of
      C5507 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1414 = "Algebra.RawSemiring.0#"
d1414 :: T1388 -> AgdaAny
d1414 v0
  = case coe v0 of
      C5507 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1416 = "Algebra.RawSemiring.1#"
d1416 :: T1388 -> AgdaAny
d1416 v0
  = case coe v0 of
      C5507 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1422 = "Algebra.SemiringWithoutAnnihilatingZero"
d1422 a0 a1 = ()
data T1422
  = C5629 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
          MAlonzo.Code.Algebra.Structures.T1002
name1442 = "Algebra.SemiringWithoutAnnihilatingZero.Carrier"
d1442 :: T1422 -> ()
d1442 = erased
name1444 = "Algebra.SemiringWithoutAnnihilatingZero._≈_"
d1444 :: T1422 -> AgdaAny -> AgdaAny -> ()
d1444 = erased
name1446 = "Algebra.SemiringWithoutAnnihilatingZero._+_"
d1446 :: T1422 -> AgdaAny -> AgdaAny -> AgdaAny
d1446 v0
  = case coe v0 of
      C5629 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1448 = "Algebra.SemiringWithoutAnnihilatingZero._*_"
d1448 :: T1422 -> AgdaAny -> AgdaAny -> AgdaAny
d1448 v0
  = case coe v0 of
      C5629 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1450 = "Algebra.SemiringWithoutAnnihilatingZero.0#"
d1450 :: T1422 -> AgdaAny
d1450 v0
  = case coe v0 of
      C5629 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1452 = "Algebra.SemiringWithoutAnnihilatingZero.1#"
d1452 :: T1422 -> AgdaAny
d1452 v0
  = case coe v0 of
      C5629 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1454
  = "Algebra.SemiringWithoutAnnihilatingZero.isSemiringWithoutAnnihilatingZero"
d1454 :: T1422 -> MAlonzo.Code.Algebra.Structures.T1002
d1454 v0
  = case coe v0 of
      C5629 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1458 = "Algebra.SemiringWithoutAnnihilatingZero._.assoc"
d1458 :: T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1458 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1020 (coe (d1454 (coe v0))))))))
name1460 = "Algebra.SemiringWithoutAnnihilatingZero._.∙-cong"
d1460 ::
  T1422 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1460 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1020
                           (coe (d1454 (coe v0))))))))))
name1462 = "Algebra.SemiringWithoutAnnihilatingZero._.∙-congʳ"
d1462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1462 v0 v1 v2 = du1462 v2
du1462 ::
  T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1462 v0
  = let v1 = d1454 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1020 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d278 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name1464 = "Algebra.SemiringWithoutAnnihilatingZero._.∙-congˡ"
d1464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1464 v0 v1 v2 = du1464 v2
du1464 ::
  T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1464 v0
  = let v1 = d1454 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1020 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d278 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name1466 = "Algebra.SemiringWithoutAnnihilatingZero._.identity"
d1466 :: T1422 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1466 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d280
         (coe
            (MAlonzo.Code.Algebra.Structures.d1020 (coe (d1454 (coe v0))))))
name1468 = "Algebra.SemiringWithoutAnnihilatingZero._.identityʳ"
d1468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> AgdaAny -> AgdaAny
d1468 v0 v1 v2 = du1468 v2
du1468 :: T1422 -> AgdaAny -> AgdaAny
du1468 v0
  = let v1 = d1454 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1020 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v2))))
name1470 = "Algebra.SemiringWithoutAnnihilatingZero._.identityˡ"
d1470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> AgdaAny -> AgdaAny
d1470 v0 v1 v2 = du1470 v2
du1470 :: T1422 -> AgdaAny -> AgdaAny
du1470 v0
  = let v1 = d1454 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1020 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v2))))
name1472 = "Algebra.SemiringWithoutAnnihilatingZero._.isMagma"
d1472 :: T1422 -> MAlonzo.Code.Algebra.Structures.T84
d1472 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1020 (coe (d1454 (coe v0))))))))
name1474 = "Algebra.SemiringWithoutAnnihilatingZero._.*-isMonoid"
d1474 :: T1422 -> MAlonzo.Code.Algebra.Structures.T268
d1474 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1020 (coe (d1454 (coe v0))))
name1476 = "Algebra.SemiringWithoutAnnihilatingZero._.isSemigroup"
d1476 :: T1422 -> MAlonzo.Code.Algebra.Structures.T118
d1476 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d278
         (coe
            (MAlonzo.Code.Algebra.Structures.d1020 (coe (d1454 (coe v0))))))
name1478 = "Algebra.SemiringWithoutAnnihilatingZero._.assoc"
d1478 :: T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1478 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1018 (coe (d1454 (coe v0))))))))
name1480 = "Algebra.SemiringWithoutAnnihilatingZero._.comm"
d1480 :: T1422 -> AgdaAny -> AgdaAny -> AgdaAny
d1480 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe
            (MAlonzo.Code.Algebra.Structures.d1018 (coe (d1454 (coe v0))))))
name1482 = "Algebra.SemiringWithoutAnnihilatingZero._.∙-cong"
d1482 ::
  T1422 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1482 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1018
                           (coe (d1454 (coe v0))))))))))
name1484 = "Algebra.SemiringWithoutAnnihilatingZero._.∙-congʳ"
d1484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1484 v0 v1 v2 = du1484 v2
du1484 ::
  T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1484 v0
  = let v1 = d1454 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1018 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d326 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name1486 = "Algebra.SemiringWithoutAnnihilatingZero._.∙-congˡ"
d1486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1486 v0 v1 v2 = du1486 v2
du1486 ::
  T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1486 v0
  = let v1 = d1454 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1018 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d326 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name1488 = "Algebra.SemiringWithoutAnnihilatingZero._.identity"
d1488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1422 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1488 v0 v1 v2 = du1488 v2
du1488 :: T1422 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1488 v0
  = let v1 = d1446 (coe v0) in
    let v2 = d1450 (coe v0) in
    let v3 = d1454 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v3))))
name1490 = "Algebra.SemiringWithoutAnnihilatingZero._.identityʳ"
d1490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> AgdaAny -> AgdaAny
d1490 v0 v1 v2 = du1490 v2
du1490 :: T1422 -> AgdaAny -> AgdaAny
du1490 v0
  = let v1 = d1446 (coe v0) in
    let v2 = d1450 (coe v0) in
    let v3 = d1454 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du356
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v3))))
name1492 = "Algebra.SemiringWithoutAnnihilatingZero._.identityˡ"
d1492 :: T1422 -> AgdaAny -> AgdaAny
d1492 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d328
         (coe
            (MAlonzo.Code.Algebra.Structures.d1018 (coe (d1454 (coe v0))))))
name1494
  = "Algebra.SemiringWithoutAnnihilatingZero._.+-isCommutativeMonoid"
d1494 :: T1422 -> MAlonzo.Code.Algebra.Structures.T314
d1494 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1018 (coe (d1454 (coe v0))))
name1496 = "Algebra.SemiringWithoutAnnihilatingZero._.isMagma"
d1496 :: T1422 -> MAlonzo.Code.Algebra.Structures.T84
d1496 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1018 (coe (d1454 (coe v0))))))))
name1498 = "Algebra.SemiringWithoutAnnihilatingZero._.isMonoid"
d1498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1422 -> MAlonzo.Code.Algebra.Structures.T268
d1498 v0 v1 v2 = du1498 v2
du1498 :: T1422 -> MAlonzo.Code.Algebra.Structures.T268
du1498 v0
  = let v1 = d1446 (coe v0) in
    let v2 = d1450 (coe v0) in
    let v3 = d1454 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v3))))
name1500 = "Algebra.SemiringWithoutAnnihilatingZero._.isSemigroup"
d1500 :: T1422 -> MAlonzo.Code.Algebra.Structures.T118
d1500 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe
            (MAlonzo.Code.Algebra.Structures.d1018 (coe (d1454 (coe v0))))))
name1502 = "Algebra.SemiringWithoutAnnihilatingZero._.distrib"
d1502 :: T1422 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1502 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1022 (coe (d1454 (coe v0))))
name1504 = "Algebra.SemiringWithoutAnnihilatingZero._.distribʳ"
d1504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1504 v0 v1 v2 = du1504 v2
du1504 :: T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1504 v0
  = let v1 = d1454 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d1022 (coe v1))))
name1506 = "Algebra.SemiringWithoutAnnihilatingZero._.distribˡ"
d1506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1506 v0 v1 v2 = du1506 v2
du1506 :: T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1506 v0
  = let v1 = d1454 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d1022 (coe v1))))
name1508
  = "Algebra.SemiringWithoutAnnihilatingZero._.isEquivalence"
d1508 :: T1422 -> MAlonzo.Code.Relation.Binary.Core.T402
d1508 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1018
                           (coe (d1454 (coe v0))))))))))
name1510 = "Algebra.SemiringWithoutAnnihilatingZero._.refl"
d1510 :: T1422 -> AgdaAny -> AgdaAny
d1510 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1018
                                 (coe (d1454 (coe v0))))))))))))
name1512 = "Algebra.SemiringWithoutAnnihilatingZero._.reflexive"
d1512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1422 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1512 v0 v1 v2 = du1512 v2
du1512 ::
  T1422 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1512 v0
  = let v1 = d1454 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1018 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d326 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d126 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v4))) v5)
name1514 = "Algebra.SemiringWithoutAnnihilatingZero._.setoid"
d1514 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1422 -> MAlonzo.Code.Relation.Binary.T128
d1514 v0 v1 v2 = du1514 v2
du1514 :: T1422 -> MAlonzo.Code.Relation.Binary.T128
du1514 v0
  = let v1 = d1454 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1018 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d326 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name1516 = "Algebra.SemiringWithoutAnnihilatingZero._.sym"
d1516 :: T1422 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1516 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1018
                                 (coe (d1454 (coe v0))))))))))))
name1518 = "Algebra.SemiringWithoutAnnihilatingZero._.trans"
d1518 ::
  T1422 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1518 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1018
                                 (coe (d1454 (coe v0))))))))))))
name1520
  = "Algebra.SemiringWithoutAnnihilatingZero.+-commutativeMonoid"
d1520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> T418
d1520 v0 v1 v2 = du1520 v2
du1520 :: T1422 -> T418
du1520 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1739 v3 v4 v5) erased erased (d1446 (coe v0))
      (d1450 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1018 (coe (d1454 (coe v0))))
name1524 = "Algebra.SemiringWithoutAnnihilatingZero._.magma"
d1524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> T28
d1524 v0 v1 v2 = du1524 v2
du1524 :: T1422 -> T28
du1524 v0
  = let v1 = du1520 (coe v0) in
    let v2 = du480 (coe v1) in coe (du122 (coe (du404 (coe v2))))
name1526 = "Algebra.SemiringWithoutAnnihilatingZero._.monoid"
d1526 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> T346
d1526 v0 v1 v2 = du1526 v2
du1526 :: T1422 -> T346
du1526 v0 = coe (du480 (coe (du1520 (coe v0))))
name1528 = "Algebra.SemiringWithoutAnnihilatingZero._.rawMagma"
d1528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> T6
d1528 v0 v1 v2 = du1528 v2
du1528 :: T1422 -> T6
du1528 v0
  = let v1 = du1520 (coe v0) in
    let v2 = du480 (coe v1) in
    let v3 = du404 (coe v2) in coe (du70 (coe (du122 (coe v3))))
name1530 = "Algebra.SemiringWithoutAnnihilatingZero._.rawMonoid"
d1530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> T318
d1530 v0 v1 v2 = du1530 v2
du1530 :: T1422 -> T318
du1530 v0
  = let v1 = du1520 (coe v0) in coe (du406 (coe (du480 (coe v1))))
name1532 = "Algebra.SemiringWithoutAnnihilatingZero._.semigroup"
d1532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> T76
d1532 v0 v1 v2 = du1532 v2
du1532 :: T1422 -> T76
du1532 v0
  = let v1 = du1520 (coe v0) in coe (du404 (coe (du480 (coe v1))))
name1534 = "Algebra.SemiringWithoutAnnihilatingZero.*-monoid"
d1534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> T346
d1534 v0 v1 v2 = du1534 v2
du1534 :: T1422 -> T346
du1534 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1409 v3 v4 v5) erased erased (d1448 (coe v0))
      (d1452 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1020 (coe (d1454 (coe v0))))
name1538 = "Algebra.SemiringWithoutAnnihilatingZero._.magma"
d1538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> T28
d1538 v0 v1 v2 = du1538 v2
du1538 :: T1422 -> T28
du1538 v0
  = let v1 = du1534 (coe v0) in coe (du122 (coe (du404 (coe v1))))
name1540 = "Algebra.SemiringWithoutAnnihilatingZero._.rawMagma"
d1540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> T6
d1540 v0 v1 v2 = du1540 v2
du1540 :: T1422 -> T6
du1540 v0
  = let v1 = du1534 (coe v0) in
    let v2 = du404 (coe v1) in coe (du70 (coe (du122 (coe v2))))
name1542 = "Algebra.SemiringWithoutAnnihilatingZero._.rawMonoid"
d1542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> T318
d1542 v0 v1 v2 = du1542 v2
du1542 :: T1422 -> T318
du1542 v0 = coe (du406 (coe (du1534 (coe v0))))
name1544 = "Algebra.SemiringWithoutAnnihilatingZero._.semigroup"
d1544 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1422 -> T76
d1544 v0 v1 v2 = du1544 v2
du1544 :: T1422 -> T76
du1544 v0 = coe (du404 (coe (du1534 (coe v0))))
name1550 = "Algebra.Semiring"
d1550 a0 a1 = ()
data T1550
  = C6161 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
          MAlonzo.Code.Algebra.Structures.T1092
name1570 = "Algebra.Semiring.Carrier"
d1570 :: T1550 -> ()
d1570 = erased
name1572 = "Algebra.Semiring._≈_"
d1572 :: T1550 -> AgdaAny -> AgdaAny -> ()
d1572 = erased
name1574 = "Algebra.Semiring._+_"
d1574 :: T1550 -> AgdaAny -> AgdaAny -> AgdaAny
d1574 v0
  = case coe v0 of
      C6161 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1576 = "Algebra.Semiring._*_"
d1576 :: T1550 -> AgdaAny -> AgdaAny -> AgdaAny
d1576 v0
  = case coe v0 of
      C6161 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1578 = "Algebra.Semiring.0#"
d1578 :: T1550 -> AgdaAny
d1578 v0
  = case coe v0 of
      C6161 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1580 = "Algebra.Semiring.1#"
d1580 :: T1550 -> AgdaAny
d1580 v0
  = case coe v0 of
      C6161 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1582 = "Algebra.Semiring.isSemiring"
d1582 :: T1550 -> MAlonzo.Code.Algebra.Structures.T1092
d1582 v0
  = case coe v0 of
      C6161 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1586 = "Algebra.Semiring._.assoc"
d1586 :: T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1586 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1020
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1106
                           (coe (d1582 (coe v0))))))))))
name1588 = "Algebra.Semiring._.∙-cong"
d1588 ::
  T1550 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1588 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1020
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1106
                                 (coe (d1582 (coe v0))))))))))))
name1590 = "Algebra.Semiring._.∙-congʳ"
d1590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1590 v0 v1 v2 = du1590 v2
du1590 ::
  T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1590 v0
  = let v1 = d1582 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1106 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1020 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d278 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v4))))
name1592 = "Algebra.Semiring._.∙-congˡ"
d1592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1592 v0 v1 v2 = du1592 v2
du1592 ::
  T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1592 v0
  = let v1 = d1582 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1106 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1020 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d278 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v4))))
name1594 = "Algebra.Semiring._.identity"
d1594 :: T1550 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1594 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d280
         (coe
            (MAlonzo.Code.Algebra.Structures.d1020
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1106 (coe (d1582 (coe v0))))))))
name1596 = "Algebra.Semiring._.identityʳ"
d1596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> AgdaAny -> AgdaAny
d1596 v0 v1 v2 = du1596 v2
du1596 :: T1550 -> AgdaAny -> AgdaAny
du1596 v0
  = let v1 = d1582 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1106 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1020 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v3))))
name1598 = "Algebra.Semiring._.identityˡ"
d1598 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> AgdaAny -> AgdaAny
d1598 v0 v1 v2 = du1598 v2
du1598 :: T1550 -> AgdaAny -> AgdaAny
du1598 v0
  = let v1 = d1582 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1106 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1020 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v3))))
name1600 = "Algebra.Semiring._.isMagma"
d1600 :: T1550 -> MAlonzo.Code.Algebra.Structures.T84
d1600 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1020
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1106
                           (coe (d1582 (coe v0))))))))))
name1602 = "Algebra.Semiring._.*-isMonoid"
d1602 :: T1550 -> MAlonzo.Code.Algebra.Structures.T268
d1602 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1020
         (coe
            (MAlonzo.Code.Algebra.Structures.d1106 (coe (d1582 (coe v0))))))
name1604 = "Algebra.Semiring._.isSemigroup"
d1604 :: T1550 -> MAlonzo.Code.Algebra.Structures.T118
d1604 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d278
         (coe
            (MAlonzo.Code.Algebra.Structures.d1020
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1106 (coe (d1582 (coe v0))))))))
name1606 = "Algebra.Semiring._.assoc"
d1606 :: T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1606 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1018
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1106
                           (coe (d1582 (coe v0))))))))))
name1608 = "Algebra.Semiring._.comm"
d1608 :: T1550 -> AgdaAny -> AgdaAny -> AgdaAny
d1608 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe
            (MAlonzo.Code.Algebra.Structures.d1018
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1106 (coe (d1582 (coe v0))))))))
name1610 = "Algebra.Semiring._.∙-cong"
d1610 ::
  T1550 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1610 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1018
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1106
                                 (coe (d1582 (coe v0))))))))))))
name1612 = "Algebra.Semiring._.∙-congʳ"
d1612 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1612 v0 v1 v2 = du1612 v2
du1612 ::
  T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1612 v0
  = let v1 = d1582 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1106 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1018 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d326 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v4))))
name1614 = "Algebra.Semiring._.∙-congˡ"
d1614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1614 v0 v1 v2 = du1614 v2
du1614 ::
  T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1614 v0
  = let v1 = d1582 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1106 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1018 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d326 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v4))))
name1616 = "Algebra.Semiring._.identity"
d1616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1550 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1616 v0 v1 v2 = du1616 v2
du1616 :: T1550 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1616 v0
  = let v1 = d1574 (coe v0) in
    let v2 = d1578 (coe v0) in
    let v3 = d1582 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1106 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v4))))
name1618 = "Algebra.Semiring._.identityʳ"
d1618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> AgdaAny -> AgdaAny
d1618 v0 v1 v2 = du1618 v2
du1618 :: T1550 -> AgdaAny -> AgdaAny
du1618 v0
  = let v1 = d1574 (coe v0) in
    let v2 = d1578 (coe v0) in
    let v3 = d1582 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1106 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du356
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v4))))
name1620 = "Algebra.Semiring._.identityˡ"
d1620 :: T1550 -> AgdaAny -> AgdaAny
d1620 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d328
         (coe
            (MAlonzo.Code.Algebra.Structures.d1018
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1106 (coe (d1582 (coe v0))))))))
name1622 = "Algebra.Semiring._.+-isCommutativeMonoid"
d1622 :: T1550 -> MAlonzo.Code.Algebra.Structures.T314
d1622 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1018
         (coe
            (MAlonzo.Code.Algebra.Structures.d1106 (coe (d1582 (coe v0))))))
name1624 = "Algebra.Semiring._.isMagma"
d1624 :: T1550 -> MAlonzo.Code.Algebra.Structures.T84
d1624 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1018
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1106
                           (coe (d1582 (coe v0))))))))))
name1626 = "Algebra.Semiring._.isMonoid"
d1626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1550 -> MAlonzo.Code.Algebra.Structures.T268
d1626 v0 v1 v2 = du1626 v2
du1626 :: T1550 -> MAlonzo.Code.Algebra.Structures.T268
du1626 v0
  = let v1 = d1574 (coe v0) in
    let v2 = d1578 (coe v0) in
    let v3 = d1582 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1106 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v4))))
name1628 = "Algebra.Semiring._.isSemigroup"
d1628 :: T1550 -> MAlonzo.Code.Algebra.Structures.T118
d1628 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe
            (MAlonzo.Code.Algebra.Structures.d1018
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1106 (coe (d1582 (coe v0))))))))
name1630 = "Algebra.Semiring._.distrib"
d1630 :: T1550 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1630 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1022
         (coe
            (MAlonzo.Code.Algebra.Structures.d1106 (coe (d1582 (coe v0))))))
name1632 = "Algebra.Semiring._.distribʳ"
d1632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1632 v0 v1 v2 = du1632 v2
du1632 :: T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1632 v0
  = let v1 = d1582 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1106 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d1022 (coe v2))))
name1634 = "Algebra.Semiring._.distribˡ"
d1634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1634 v0 v1 v2 = du1634 v2
du1634 :: T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1634 v0
  = let v1 = d1582 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1106 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d1022 (coe v2))))
name1636 = "Algebra.Semiring._.isEquivalence"
d1636 :: T1550 -> MAlonzo.Code.Relation.Binary.Core.T402
d1636 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1018
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1106
                                 (coe (d1582 (coe v0))))))))))))
name1638 = "Algebra.Semiring._.isNearSemiring"
d1638 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1550 -> MAlonzo.Code.Algebra.Structures.T752
d1638 v0 v1 v2 = du1638 v2
du1638 :: T1550 -> MAlonzo.Code.Algebra.Structures.T752
du1638 v0
  = let v1 = d1574 (coe v0) in
    let v2 = d1578 (coe v0) in
    let v3 = d1582 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du860
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.du1174 (coe v3))))
name1640 = "Algebra.Semiring._.isSemiringWithoutAnnihilatingZero"
d1640 :: T1550 -> MAlonzo.Code.Algebra.Structures.T1002
d1640 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1106 (coe (d1582 (coe v0))))
name1642 = "Algebra.Semiring._.isSemiringWithoutOne"
d1642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1550 -> MAlonzo.Code.Algebra.Structures.T826
d1642 v0 v1 v2 = du1642 v2
du1642 :: T1550 -> MAlonzo.Code.Algebra.Structures.T826
du1642 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1174 (coe (d1582 (coe v0))))
name1644 = "Algebra.Semiring._.refl"
d1644 :: T1550 -> AgdaAny -> AgdaAny
d1644 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1018
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1106
                                       (coe (d1582 (coe v0))))))))))))))
name1646 = "Algebra.Semiring._.reflexive"
d1646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1550 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1646 v0 v1 v2 = du1646 v2
du1646 ::
  T1550 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1646 v0
  = let v1 = d1582 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1106 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1018 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d326 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d126 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v5))) v6)
name1648 = "Algebra.Semiring._.setoid"
d1648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1550 -> MAlonzo.Code.Relation.Binary.T128
d1648 v0 v1 v2 = du1648 v2
du1648 :: T1550 -> MAlonzo.Code.Relation.Binary.T128
du1648 v0
  = let v1 = d1582 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1106 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1018 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d326 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v4))))
name1650 = "Algebra.Semiring._.sym"
d1650 :: T1550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1650 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1018
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1106
                                       (coe (d1582 (coe v0))))))))))))))
name1652 = "Algebra.Semiring._.trans"
d1652 ::
  T1550 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1652 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1018
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1106
                                       (coe (d1582 (coe v0))))))))))))))
name1654 = "Algebra.Semiring._.zero"
d1654 :: T1550 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1654 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1108 (coe (d1582 (coe v0))))
name1656 = "Algebra.Semiring._.zeroʳ"
d1656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> AgdaAny -> AgdaAny
d1656 v0 v1 v2 = du1656 v2
du1656 :: T1550 -> AgdaAny -> AgdaAny
du1656 v0
  = let v1 = d1582 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du1174 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d848 (coe v2))))
name1658 = "Algebra.Semiring._.zeroˡ"
d1658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> AgdaAny -> AgdaAny
d1658 v0 v1 v2 = du1658 v2
du1658 :: T1550 -> AgdaAny -> AgdaAny
du1658 v0
  = let v1 = d1582 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du1174 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d848 (coe v2))))
name1660 = "Algebra.Semiring.rawSemiring"
d1660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T1388
d1660 v0 v1 v2 = du1660 v2
du1660 :: T1550 -> T1388
du1660 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C5507 v3 v4 v5 v6) erased erased
      (d1574 (coe v0)) (d1576 (coe v0)) (d1578 (coe v0)) (d1580 (coe v0))
name1662 = "Algebra.Semiring.semiringWithoutAnnihilatingZero"
d1662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T1422
d1662 v0 v1 v2 = du1662 v2
du1662 :: T1550 -> T1422
du1662 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C5629 v3 v4 v5 v6 v7) erased erased
      (d1574 (coe v0)) (d1576 (coe v0)) (d1578 (coe v0)) (d1580 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1106 (coe (d1582 (coe v0))))
name1666 = "Algebra.Semiring._.magma"
d1666 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T28
d1666 v0 v1 v2 = du1666 v2
du1666 :: T1550 -> T28
du1666 v0
  = let v1 = du1662 (coe v0) in
    let v2 = du1534 (coe v1) in coe (du122 (coe (du404 (coe v2))))
name1668 = "Algebra.Semiring._.*-monoid"
d1668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T346
d1668 v0 v1 v2 = du1668 v2
du1668 :: T1550 -> T346
du1668 v0 = coe (du1534 (coe (du1662 (coe v0))))
name1670 = "Algebra.Semiring._.rawMagma"
d1670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T6
d1670 v0 v1 v2 = du1670 v2
du1670 :: T1550 -> T6
du1670 v0
  = let v1 = du1662 (coe v0) in
    let v2 = du1534 (coe v1) in
    let v3 = du404 (coe v2) in coe (du70 (coe (du122 (coe v3))))
name1672 = "Algebra.Semiring._.rawMonoid"
d1672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T318
d1672 v0 v1 v2 = du1672 v2
du1672 :: T1550 -> T318
du1672 v0
  = let v1 = du1662 (coe v0) in coe (du406 (coe (du1534 (coe v1))))
name1674 = "Algebra.Semiring._.semigroup"
d1674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T76
d1674 v0 v1 v2 = du1674 v2
du1674 :: T1550 -> T76
du1674 v0
  = let v1 = du1662 (coe v0) in coe (du404 (coe (du1534 (coe v1))))
name1676 = "Algebra.Semiring._.+-commutativeMonoid"
d1676 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T418
d1676 v0 v1 v2 = du1676 v2
du1676 :: T1550 -> T418
du1676 v0 = coe (du1520 (coe (du1662 (coe v0))))
name1678 = "Algebra.Semiring._.magma"
d1678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T28
d1678 v0 v1 v2 = du1678 v2
du1678 :: T1550 -> T28
du1678 v0
  = let v1 = du1662 (coe v0) in
    let v2 = du1520 (coe v1) in
    let v3 = du480 (coe v2) in coe (du122 (coe (du404 (coe v3))))
name1680 = "Algebra.Semiring._.monoid"
d1680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T346
d1680 v0 v1 v2 = du1680 v2
du1680 :: T1550 -> T346
du1680 v0
  = let v1 = du1662 (coe v0) in coe (du480 (coe (du1520 (coe v1))))
name1682 = "Algebra.Semiring._.rawMagma"
d1682 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T6
d1682 v0 v1 v2 = du1682 v2
du1682 :: T1550 -> T6
du1682 v0
  = let v1 = du1662 (coe v0) in
    let v2 = du1520 (coe v1) in
    let v3 = du480 (coe v2) in
    let v4 = du404 (coe v3) in coe (du70 (coe (du122 (coe v4))))
name1684 = "Algebra.Semiring._.rawMonoid"
d1684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T318
d1684 v0 v1 v2 = du1684 v2
du1684 :: T1550 -> T318
du1684 v0
  = let v1 = du1662 (coe v0) in
    let v2 = du1520 (coe v1) in coe (du406 (coe (du480 (coe v2))))
name1686 = "Algebra.Semiring._.semigroup"
d1686 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T76
d1686 v0 v1 v2 = du1686 v2
du1686 :: T1550 -> T76
du1686 v0
  = let v1 = du1662 (coe v0) in
    let v2 = du1520 (coe v1) in coe (du404 (coe (du480 (coe v2))))
name1688 = "Algebra.Semiring.semiringWithoutOne"
d1688 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T1142
d1688 v0 v1 v2 = du1688 v2
du1688 :: T1550 -> T1142
du1688 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C4613 v3 v4 v5 v6) erased erased
      (d1574 (coe v0)) (d1576 (coe v0)) (d1578 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du1174 (coe (d1582 (coe v0))))
name1692 = "Algebra.Semiring._.nearSemiring"
d1692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1550 -> T1038
d1692 v0 v1 v2 = du1692 v2
du1692 :: T1550 -> T1038
du1692 v0 = coe (du1236 (coe (du1688 (coe v0))))
name1698 = "Algebra.CommutativeSemiring"
d1698 a0 a1 = ()
data T1698
  = C6801 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
          MAlonzo.Code.Algebra.Structures.T1192
name1718 = "Algebra.CommutativeSemiring.Carrier"
d1718 :: T1698 -> ()
d1718 = erased
name1720 = "Algebra.CommutativeSemiring._≈_"
d1720 :: T1698 -> AgdaAny -> AgdaAny -> ()
d1720 = erased
name1722 = "Algebra.CommutativeSemiring._+_"
d1722 :: T1698 -> AgdaAny -> AgdaAny -> AgdaAny
d1722 v0
  = case coe v0 of
      C6801 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1724 = "Algebra.CommutativeSemiring._*_"
d1724 :: T1698 -> AgdaAny -> AgdaAny -> AgdaAny
d1724 v0
  = case coe v0 of
      C6801 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1726 = "Algebra.CommutativeSemiring.0#"
d1726 :: T1698 -> AgdaAny
d1726 v0
  = case coe v0 of
      C6801 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1728 = "Algebra.CommutativeSemiring.1#"
d1728 :: T1698 -> AgdaAny
d1728 v0
  = case coe v0 of
      C6801 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1730 = "Algebra.CommutativeSemiring.isCommutativeSemiring"
d1730 :: T1698 -> MAlonzo.Code.Algebra.Structures.T1192
d1730 v0
  = case coe v0 of
      C6801 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1734 = "Algebra.CommutativeSemiring._.assoc"
d1734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1734 v0 v1 v2 = du1734 v2
du1734 :: T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1734 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v1))))))
name1736 = "Algebra.CommutativeSemiring._.comm"
d1736 :: T1698 -> AgdaAny -> AgdaAny -> AgdaAny
d1736 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe
            (MAlonzo.Code.Algebra.Structures.d1212 (coe (d1730 (coe v0))))))
name1738 = "Algebra.CommutativeSemiring._.∙-cong"
d1738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1738 v0 v1 v2 = du1738 v2
du1738 ::
  T1698 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1738 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v1))))))))
name1740 = "Algebra.CommutativeSemiring._.∙-congʳ"
d1740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1740 v0 v1 v2 = du1740 v2
du1740 ::
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1740 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1020 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d278 (coe v8) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v9))))
name1742 = "Algebra.CommutativeSemiring._.∙-congˡ"
d1742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1742 v0 v1 v2 = du1742 v2
du1742 ::
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1742 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1020 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d278 (coe v8) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v9))))
name1744 = "Algebra.CommutativeSemiring._.identity"
d1744 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1744 v0 v1 v2 = du1744 v2
du1744 :: T1698 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1744 v0
  = let v1 = d1724 (coe v0) in
    let v2 = d1728 (coe v0) in
    let v3 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v3))))
name1746 = "Algebra.CommutativeSemiring._.identityʳ"
d1746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> AgdaAny -> AgdaAny
d1746 v0 v1 v2 = du1746 v2
du1746 :: T1698 -> AgdaAny -> AgdaAny
du1746 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1020 (coe v7) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v8))))
name1748 = "Algebra.CommutativeSemiring._.identityˡ"
d1748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> AgdaAny -> AgdaAny
d1748 v0 v1 v2 = du1748 v2
du1748 :: T1698 -> AgdaAny -> AgdaAny
du1748 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1020 (coe v7) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v8))))
name1750 = "Algebra.CommutativeSemiring._.*-isCommutativeMonoid"
d1750 :: T1698 -> MAlonzo.Code.Algebra.Structures.T314
d1750 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1212 (coe (d1730 (coe v0))))
name1752 = "Algebra.CommutativeSemiring._.isMagma"
d1752 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Algebra.Structures.T84
d1752 v0 v1 v2 = du1752 v2
du1752 :: T1698 -> MAlonzo.Code.Algebra.Structures.T84
du1752 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v1))))))
name1754 = "Algebra.CommutativeSemiring._.*-isMonoid"
d1754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Algebra.Structures.T268
d1754 v0 v1 v2 = du1754 v2
du1754 :: T1698 -> MAlonzo.Code.Algebra.Structures.T268
du1754 v0
  = let v1 = d1724 (coe v0) in
    let v2 = d1728 (coe v0) in
    let v3 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v3))))
name1756 = "Algebra.CommutativeSemiring._.isSemigroup"
d1756 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Algebra.Structures.T118
d1756 v0 v1 v2 = du1756 v2
du1756 :: T1698 -> MAlonzo.Code.Algebra.Structures.T118
du1756 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v1))))
name1758 = "Algebra.CommutativeSemiring._.assoc"
d1758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1758 v0 v1 v2 = du1758 v2
du1758 :: T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1758 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))
name1760 = "Algebra.CommutativeSemiring._.comm"
d1760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny
d1760 v0 v1 v2 = du1760 v2
du1760 :: T1698 -> AgdaAny -> AgdaAny -> AgdaAny
du1760 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))
name1762 = "Algebra.CommutativeSemiring._.∙-cong"
d1762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1762 v0 v1 v2 = du1762 v2
du1762 ::
  T1698 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1762 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))))
name1764 = "Algebra.CommutativeSemiring._.∙-congʳ"
d1764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1764 v0 v1 v2 = du1764 v2
du1764 ::
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1764 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1018 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d326 (coe v8) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v9))))
name1766 = "Algebra.CommutativeSemiring._.∙-congˡ"
d1766 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1766 v0 v1 v2 = du1766 v2
du1766 ::
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1766 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1018 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d326 (coe v8) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v9))))
name1768 = "Algebra.CommutativeSemiring._.identity"
d1768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1768 v0 v1 v2 = du1768 v2
du1768 :: T1698 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1768 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v7))))
name1770 = "Algebra.CommutativeSemiring._.identityʳ"
d1770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> AgdaAny -> AgdaAny
d1770 v0 v1 v2 = du1770 v2
du1770 :: T1698 -> AgdaAny -> AgdaAny
du1770 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du356
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v7))))
name1772 = "Algebra.CommutativeSemiring._.identityˡ"
d1772 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> AgdaAny -> AgdaAny
d1772 v0 v1 v2 = du1772 v2
du1772 :: T1698 -> AgdaAny -> AgdaAny
du1772 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d328
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))
name1774 = "Algebra.CommutativeSemiring._.+-isCommutativeMonoid"
d1774 :: T1698 -> MAlonzo.Code.Algebra.Structures.T314
d1774 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1210 (coe (d1730 (coe v0))))
name1776 = "Algebra.CommutativeSemiring._.isMagma"
d1776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Algebra.Structures.T84
d1776 v0 v1 v2 = du1776 v2
du1776 :: T1698 -> MAlonzo.Code.Algebra.Structures.T84
du1776 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))
name1778 = "Algebra.CommutativeSemiring._.isMonoid"
d1778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Algebra.Structures.T268
d1778 v0 v1 v2 = du1778 v2
du1778 :: T1698 -> MAlonzo.Code.Algebra.Structures.T268
du1778 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v7))))
name1780 = "Algebra.CommutativeSemiring._.isSemigroup"
d1780 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Algebra.Structures.T118
d1780 v0 v1 v2 = du1780 v2
du1780 :: T1698 -> MAlonzo.Code.Algebra.Structures.T118
du1780 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))
name1782 = "Algebra.CommutativeSemiring._.distrib"
d1782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1782 v0 v1 v2 = du1782 v2
du1782 :: T1698 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1782 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1292
         (coe (d1722 (coe v0))) (coe (d1724 (coe v0)))
         (coe (d1730 (coe v0))))
name1784 = "Algebra.CommutativeSemiring._.distribʳ"
d1784 :: T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1784 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1214 (coe (d1730 (coe v0))))
name1786 = "Algebra.CommutativeSemiring._.distribˡ"
d1786 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1786 v0 v1 v2 = du1786 v2
du1786 :: T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1786 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1290
         (coe (d1722 (coe v0))) (coe (d1724 (coe v0)))
         (coe (d1730 (coe v0))))
name1788
  = "Algebra.CommutativeSemiring._.isCommutativeSemiringWithoutOne"
d1788 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Algebra.Structures.T914
d1788 v0 v1 v2 = du1788 v2
du1788 :: T1698 -> MAlonzo.Code.Algebra.Structures.T914
du1788 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1362
         (coe (d1722 (coe v0))) (coe (d1724 (coe v0)))
         (coe (d1726 (coe v0))) (coe (d1728 (coe v0)))
         (coe (d1730 (coe v0))))
name1790 = "Algebra.CommutativeSemiring._.isEquivalence"
d1790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Relation.Binary.Core.T402
d1790 v0 v1 v2 = du1790 v2
du1790 :: T1698 -> MAlonzo.Code.Relation.Binary.Core.T402
du1790 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))))
name1792 = "Algebra.CommutativeSemiring._.isNearSemiring"
d1792 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Algebra.Structures.T752
d1792 v0 v1 v2 = du1792 v2
du1792 :: T1698 -> MAlonzo.Code.Algebra.Structures.T752
du1792 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du860
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.du1174 (coe v6))))
name1794 = "Algebra.CommutativeSemiring._.isSemiring"
d1794 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Algebra.Structures.T1092
d1794 v0 v1 v2 = du1794 v2
du1794 :: T1698 -> MAlonzo.Code.Algebra.Structures.T1092
du1794 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1298
         (coe (d1722 (coe v0))) (coe (d1724 (coe v0)))
         (coe (d1726 (coe v0))) (coe (d1728 (coe v0)))
         (coe (d1730 (coe v0))))
name1796
  = "Algebra.CommutativeSemiring._.isSemiringWithoutAnnihilatingZero"
d1796 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Algebra.Structures.T1002
d1796 v0 v1 v2 = du1796 v2
du1796 :: T1698 -> MAlonzo.Code.Algebra.Structures.T1002
du1796 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d1106
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
name1798 = "Algebra.CommutativeSemiring._.isSemiringWithoutOne"
d1798 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Algebra.Structures.T826
d1798 v0 v1 v2 = du1798 v2
du1798 :: T1698 -> MAlonzo.Code.Algebra.Structures.T826
du1798 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1174
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
name1800 = "Algebra.CommutativeSemiring._.refl"
d1800 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> AgdaAny -> AgdaAny
d1800 v0 v1 v2 = du1800 v2
du1800 :: T1698 -> AgdaAny -> AgdaAny
du1800 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))))))
name1802 = "Algebra.CommutativeSemiring._.reflexive"
d1802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1802 v0 v1 v2 = du1802 v2
du1802 ::
  T1698 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1802 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1018 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d326 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d126 (coe v9) in
    coe
      (\ v11 v12 v13 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v10))) v11)
name1804 = "Algebra.CommutativeSemiring._.setoid"
d1804 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Relation.Binary.T128
d1804 v0 v1 v2 = du1804 v2
du1804 :: T1698 -> MAlonzo.Code.Relation.Binary.T128
du1804 v0
  = let v1 = d1722 (coe v0) in
    let v2 = d1724 (coe v0) in
    let v3 = d1726 (coe v0) in
    let v4 = d1728 (coe v0) in
    let v5 = d1730 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1018 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d326 (coe v8) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v9))))
name1806 = "Algebra.CommutativeSemiring._.sym"
d1806 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1806 v0 v1 v2 = du1806 v2
du1806 :: T1698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1806 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))))))
name1808 = "Algebra.CommutativeSemiring._.trans"
d1808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1808 v0 v1 v2 = du1808 v2
du1808 ::
  T1698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1808 v0
  = let v1 = d1730 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))))))
name1810 = "Algebra.CommutativeSemiring._.zero"
d1810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1698 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1810 v0 v1 v2 = du1810 v2
du1810 :: T1698 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1810 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1296
         (coe (d1724 (coe v0))) (coe (d1726 (coe v0)))
         (coe (d1730 (coe v0))))
name1812 = "Algebra.CommutativeSemiring._.zeroʳ"
d1812 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> AgdaAny -> AgdaAny
d1812 v0 v1 v2 = du1812 v2
du1812 :: T1698 -> AgdaAny -> AgdaAny
du1812 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1294
         (coe (d1724 (coe v0))) (coe (d1726 (coe v0)))
         (coe (d1730 (coe v0))))
name1814 = "Algebra.CommutativeSemiring._.zeroˡ"
d1814 :: T1698 -> AgdaAny -> AgdaAny
d1814 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1216 (coe (d1730 (coe v0))))
name1816 = "Algebra.CommutativeSemiring.semiring"
d1816 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T1550
d1816 v0 v1 v2 = du1816 v2
du1816 :: T1698 -> T1550
du1816 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C6161 v3 v4 v5 v6 v7) erased erased
      (d1722 (coe v0)) (d1724 (coe v0)) (d1726 (coe v0)) (d1728 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du1298
         (coe (d1722 (coe v0))) (coe (d1724 (coe v0)))
         (coe (d1726 (coe v0))) (coe (d1728 (coe v0)))
         (coe (d1730 (coe v0))))
name1820 = "Algebra.CommutativeSemiring._.magma"
d1820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T28
d1820 v0 v1 v2 = du1820 v2
du1820 :: T1698 -> T28
du1820 v0
  = let v1 = du1816 (coe v0) in
    let v2 = du1662 (coe v1) in
    let v3 = du1534 (coe v2) in coe (du122 (coe (du404 (coe v3))))
name1822 = "Algebra.CommutativeSemiring._.*-monoid"
d1822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T346
d1822 v0 v1 v2 = du1822 v2
du1822 :: T1698 -> T346
du1822 v0
  = let v1 = du1816 (coe v0) in coe (du1534 (coe (du1662 (coe v1))))
name1824 = "Algebra.CommutativeSemiring._.rawMagma"
d1824 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T6
d1824 v0 v1 v2 = du1824 v2
du1824 :: T1698 -> T6
du1824 v0
  = let v1 = du1816 (coe v0) in
    let v2 = du1662 (coe v1) in
    let v3 = du1534 (coe v2) in
    let v4 = du404 (coe v3) in coe (du70 (coe (du122 (coe v4))))
name1826 = "Algebra.CommutativeSemiring._.rawMonoid"
d1826 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T318
d1826 v0 v1 v2 = du1826 v2
du1826 :: T1698 -> T318
du1826 v0
  = let v1 = du1816 (coe v0) in
    let v2 = du1662 (coe v1) in coe (du406 (coe (du1534 (coe v2))))
name1828 = "Algebra.CommutativeSemiring._.semigroup"
d1828 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T76
d1828 v0 v1 v2 = du1828 v2
du1828 :: T1698 -> T76
du1828 v0
  = let v1 = du1816 (coe v0) in
    let v2 = du1662 (coe v1) in coe (du404 (coe (du1534 (coe v2))))
name1830 = "Algebra.CommutativeSemiring._.+-commutativeMonoid"
d1830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T418
d1830 v0 v1 v2 = du1830 v2
du1830 :: T1698 -> T418
du1830 v0
  = let v1 = du1816 (coe v0) in coe (du1520 (coe (du1662 (coe v1))))
name1832 = "Algebra.CommutativeSemiring._.magma"
d1832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T28
d1832 v0 v1 v2 = du1832 v2
du1832 :: T1698 -> T28
du1832 v0
  = let v1 = du1816 (coe v0) in
    let v2 = du1662 (coe v1) in
    let v3 = du1520 (coe v2) in
    let v4 = du480 (coe v3) in coe (du122 (coe (du404 (coe v4))))
name1834 = "Algebra.CommutativeSemiring._.monoid"
d1834 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T346
d1834 v0 v1 v2 = du1834 v2
du1834 :: T1698 -> T346
du1834 v0
  = let v1 = du1816 (coe v0) in
    let v2 = du1662 (coe v1) in coe (du480 (coe (du1520 (coe v2))))
name1836 = "Algebra.CommutativeSemiring._.rawMagma"
d1836 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T6
d1836 v0 v1 v2 = du1836 v2
du1836 :: T1698 -> T6
du1836 v0
  = let v1 = du1816 (coe v0) in
    let v2 = du1662 (coe v1) in
    let v3 = du1520 (coe v2) in
    let v4 = du480 (coe v3) in
    let v5 = du404 (coe v4) in coe (du70 (coe (du122 (coe v5))))
name1838 = "Algebra.CommutativeSemiring._.rawMonoid"
d1838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T318
d1838 v0 v1 v2 = du1838 v2
du1838 :: T1698 -> T318
du1838 v0
  = let v1 = du1816 (coe v0) in
    let v2 = du1662 (coe v1) in
    let v3 = du1520 (coe v2) in coe (du406 (coe (du480 (coe v3))))
name1840 = "Algebra.CommutativeSemiring._.semigroup"
d1840 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T76
d1840 v0 v1 v2 = du1840 v2
du1840 :: T1698 -> T76
du1840 v0
  = let v1 = du1816 (coe v0) in
    let v2 = du1662 (coe v1) in
    let v3 = du1520 (coe v2) in coe (du404 (coe (du480 (coe v3))))
name1842 = "Algebra.CommutativeSemiring._.nearSemiring"
d1842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T1038
d1842 v0 v1 v2 = du1842 v2
du1842 :: T1698 -> T1038
du1842 v0
  = let v1 = du1816 (coe v0) in coe (du1236 (coe (du1688 (coe v1))))
name1844 = "Algebra.CommutativeSemiring._.rawSemiring"
d1844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T1388
d1844 v0 v1 v2 = du1844 v2
du1844 :: T1698 -> T1388
du1844 v0 = coe (du1660 (coe (du1816 (coe v0))))
name1846
  = "Algebra.CommutativeSemiring._.semiringWithoutAnnihilatingZero"
d1846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T1422
d1846 v0 v1 v2 = du1846 v2
du1846 :: T1698 -> T1422
du1846 v0 = coe (du1662 (coe (du1816 (coe v0))))
name1848 = "Algebra.CommutativeSemiring._.semiringWithoutOne"
d1848 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T1142
d1848 v0 v1 v2 = du1848 v2
du1848 :: T1698 -> T1142
du1848 v0 = coe (du1688 (coe (du1816 (coe v0))))
name1850 = "Algebra.CommutativeSemiring.*-commutativeMonoid"
d1850 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T418
d1850 v0 v1 v2 = du1850 v2
du1850 :: T1698 -> T418
du1850 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1739 v3 v4 v5) erased erased (d1724 (coe v0))
      (d1728 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1212 (coe (d1730 (coe v0))))
name1852
  = "Algebra.CommutativeSemiring.commutativeSemiringWithoutOne"
d1852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1698 -> T1262
d1852 v0 v1 v2 = du1852 v2
du1852 :: T1698 -> T1262
du1852 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C5071 v3 v4 v5 v6) erased erased
      (d1722 (coe v0)) (d1724 (coe v0)) (d1726 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du1362
         (coe (d1722 (coe v0))) (coe (d1724 (coe v0)))
         (coe (d1726 (coe v0))) (coe (d1728 (coe v0)))
         (coe (d1730 (coe v0))))
name1856 = "Algebra.RawRing"
d1856 a0 = ()
data T1856
  = C7405 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny
name1872 = "Algebra.RawRing.Carrier"
d1872 :: T1856 -> ()
d1872 = erased
name1874 = "Algebra.RawRing._+_"
d1874 :: T1856 -> AgdaAny -> AgdaAny -> AgdaAny
d1874 v0
  = case coe v0 of
      C7405 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1876 = "Algebra.RawRing._*_"
d1876 :: T1856 -> AgdaAny -> AgdaAny -> AgdaAny
d1876 v0
  = case coe v0 of
      C7405 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1878 = "Algebra.RawRing.-_"
d1878 :: T1856 -> AgdaAny -> AgdaAny
d1878 v0
  = case coe v0 of
      C7405 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1880 = "Algebra.RawRing.0#"
d1880 :: T1856 -> AgdaAny
d1880 v0
  = case coe v0 of
      C7405 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1882 = "Algebra.RawRing.1#"
d1882 :: T1856 -> AgdaAny
d1882 v0
  = case coe v0 of
      C7405 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1888 = "Algebra.Ring"
d1888 a0 a1 = ()
data T1888
  = C7501 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny MAlonzo.Code.Algebra.Structures.T1374
name1910 = "Algebra.Ring.Carrier"
d1910 :: T1888 -> ()
d1910 = erased
name1912 = "Algebra.Ring._≈_"
d1912 :: T1888 -> AgdaAny -> AgdaAny -> ()
d1912 = erased
name1914 = "Algebra.Ring._+_"
d1914 :: T1888 -> AgdaAny -> AgdaAny -> AgdaAny
d1914 v0
  = case coe v0 of
      C7501 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1916 = "Algebra.Ring._*_"
d1916 :: T1888 -> AgdaAny -> AgdaAny -> AgdaAny
d1916 v0
  = case coe v0 of
      C7501 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1918 = "Algebra.Ring.-_"
d1918 :: T1888 -> AgdaAny -> AgdaAny
d1918 v0
  = case coe v0 of
      C7501 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1920 = "Algebra.Ring.0#"
d1920 :: T1888 -> AgdaAny
d1920 v0
  = case coe v0 of
      C7501 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1922 = "Algebra.Ring.1#"
d1922 :: T1888 -> AgdaAny
d1922 v0
  = case coe v0 of
      C7501 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1924 = "Algebra.Ring.isRing"
d1924 :: T1888 -> MAlonzo.Code.Algebra.Structures.T1374
d1924 v0
  = case coe v0 of
      C7501 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name1928 = "Algebra.Ring._._-_"
d1928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny
d1928 v0 v1 v2 = du1928 v2
du1928 :: T1888 -> AgdaAny -> AgdaAny -> AgdaAny
du1928 v0
  = let v1 = d1914 (coe v0) in
    let v2 = d1918 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name1930 = "Algebra.Ring._.assoc"
d1930 :: T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1930 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1394 (coe (d1924 (coe v0))))))))
name1932 = "Algebra.Ring._.∙-cong"
d1932 ::
  T1888 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1932 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1394
                           (coe (d1924 (coe v0))))))))))
name1934 = "Algebra.Ring._.∙-congʳ"
d1934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1934 v0 v1 v2 = du1934 v2
du1934 ::
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1934 v0
  = let v1 = d1924 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1394 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d278 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name1936 = "Algebra.Ring._.∙-congˡ"
d1936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1936 v0 v1 v2 = du1936 v2
du1936 ::
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1936 v0
  = let v1 = d1924 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1394 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d278 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v3))))
name1938 = "Algebra.Ring._.identity"
d1938 :: T1888 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1938 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d280
         (coe
            (MAlonzo.Code.Algebra.Structures.d1394 (coe (d1924 (coe v0))))))
name1940 = "Algebra.Ring._.identityʳ"
d1940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> AgdaAny -> AgdaAny
d1940 v0 v1 v2 = du1940 v2
du1940 :: T1888 -> AgdaAny -> AgdaAny
du1940 v0
  = let v1 = d1924 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1394 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v2))))
name1942 = "Algebra.Ring._.identityˡ"
d1942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> AgdaAny -> AgdaAny
d1942 v0 v1 v2 = du1942 v2
du1942 :: T1888 -> AgdaAny -> AgdaAny
du1942 v0
  = let v1 = d1924 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1394 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v2))))
name1944 = "Algebra.Ring._.isMagma"
d1944 :: T1888 -> MAlonzo.Code.Algebra.Structures.T84
d1944 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1394 (coe (d1924 (coe v0))))))))
name1946 = "Algebra.Ring._.*-isMonoid"
d1946 :: T1888 -> MAlonzo.Code.Algebra.Structures.T268
d1946 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1394 (coe (d1924 (coe v0))))
name1948 = "Algebra.Ring._.isSemigroup"
d1948 :: T1888 -> MAlonzo.Code.Algebra.Structures.T118
d1948 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d278
         (coe
            (MAlonzo.Code.Algebra.Structures.d1394 (coe (d1924 (coe v0))))))
name1950 = "Algebra.Ring._.assoc"
d1950 :: T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1950 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d484
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d562
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1392
                                 (coe (d1924 (coe v0))))))))))))
name1952 = "Algebra.Ring._.comm"
d1952 :: T1888 -> AgdaAny -> AgdaAny -> AgdaAny
d1952 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d564
         (coe
            (MAlonzo.Code.Algebra.Structures.d1392 (coe (d1924 (coe v0))))))
name1954 = "Algebra.Ring._.∙-cong"
d1954 ::
  T1888 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1954 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d484
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d562
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1392
                                       (coe (d1924 (coe v0))))))))))))))
name1956 = "Algebra.Ring._.∙-congʳ"
d1956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1956 v0 v1 v2 = du1956 v2
du1956 ::
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1956 v0
  = let v1 = d1924 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1392 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d562 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d484 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d278 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5))))
name1958 = "Algebra.Ring._.∙-congˡ"
d1958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1958 v0 v1 v2 = du1958 v2
du1958 ::
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1958 v0
  = let v1 = d1924 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1392 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d562 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d484 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d278 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5))))
name1960 = "Algebra.Ring._.identity"
d1960 :: T1888 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1960 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d280
         (coe
            (MAlonzo.Code.Algebra.Structures.d484
               (coe
                  (MAlonzo.Code.Algebra.Structures.d562
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1392
                           (coe (d1924 (coe v0))))))))))
name1962 = "Algebra.Ring._.identityʳ"
d1962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> AgdaAny -> AgdaAny
d1962 v0 v1 v2 = du1962 v2
du1962 :: T1888 -> AgdaAny -> AgdaAny
du1962 v0
  = let v1 = d1924 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1392 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d562 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d484 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v4))))
name1964 = "Algebra.Ring._.identityˡ"
d1964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> AgdaAny -> AgdaAny
d1964 v0 v1 v2 = du1964 v2
du1964 :: T1888 -> AgdaAny -> AgdaAny
du1964 v0
  = let v1 = d1924 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1392 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d562 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d484 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v4))))
name1966 = "Algebra.Ring._.+-isAbelianGroup"
d1966 :: T1888 -> MAlonzo.Code.Algebra.Structures.T550
d1966 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1392 (coe (d1924 (coe v0))))
name1968 = "Algebra.Ring._.isCommutativeMonoid"
d1968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> MAlonzo.Code.Algebra.Structures.T314
d1968 v0 v1 v2 = du1968 v2
du1968 :: T1888 -> MAlonzo.Code.Algebra.Structures.T314
du1968 v0
  = let v1 = d1924 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du614
         (coe (MAlonzo.Code.Algebra.Structures.d1392 (coe v1))))
name1970 = "Algebra.Ring._.isGroup"
d1970 :: T1888 -> MAlonzo.Code.Algebra.Structures.T470
d1970 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d562
         (coe
            (MAlonzo.Code.Algebra.Structures.d1392 (coe (d1924 (coe v0))))))
name1972 = "Algebra.Ring._.isMagma"
d1972 :: T1888 -> MAlonzo.Code.Algebra.Structures.T84
d1972 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d484
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d562
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1392
                                 (coe (d1924 (coe v0))))))))))))
name1974 = "Algebra.Ring._.isMonoid"
d1974 :: T1888 -> MAlonzo.Code.Algebra.Structures.T268
d1974 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d484
         (coe
            (MAlonzo.Code.Algebra.Structures.d562
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1392 (coe (d1924 (coe v0))))))))
name1976 = "Algebra.Ring._.isSemigroup"
d1976 :: T1888 -> MAlonzo.Code.Algebra.Structures.T118
d1976 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d278
         (coe
            (MAlonzo.Code.Algebra.Structures.d484
               (coe
                  (MAlonzo.Code.Algebra.Structures.d562
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1392
                           (coe (d1924 (coe v0))))))))))
name1978 = "Algebra.Ring._.⁻¹-cong"
d1978 :: T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1978 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d488
         (coe
            (MAlonzo.Code.Algebra.Structures.d562
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1392 (coe (d1924 (coe v0))))))))
name1980 = "Algebra.Ring._.inverse"
d1980 :: T1888 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1980 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d486
         (coe
            (MAlonzo.Code.Algebra.Structures.d562
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1392 (coe (d1924 (coe v0))))))))
name1982 = "Algebra.Ring._.inverseʳ"
d1982 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> AgdaAny -> AgdaAny
d1982 v0 v1 v2 = du1982 v2
du1982 :: T1888 -> AgdaAny -> AgdaAny
du1982 v0
  = let v1 = d1924 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1392 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d562 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d486 (coe v3))))
name1984 = "Algebra.Ring._.inverseˡ"
d1984 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> AgdaAny -> AgdaAny
d1984 v0 v1 v2 = du1984 v2
du1984 :: T1888 -> AgdaAny -> AgdaAny
du1984 v0
  = let v1 = d1924 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1392 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d562 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d486 (coe v3))))
name1986 = "Algebra.Ring._.distrib"
d1986 :: T1888 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1986 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1396 (coe (d1924 (coe v0))))
name1988 = "Algebra.Ring._.distribʳ"
d1988 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1988 v0 v1 v2 = du1988 v2
du1988 :: T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1988 v0
  = let v1 = d1914 (coe v0) in
    let v2 = d1916 (coe v0) in
    let v3 = d1918 (coe v0) in
    let v4 = d1920 (coe v0) in
    let v5 = d1924 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1480
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d1022 (coe v7))))
name1990 = "Algebra.Ring._.distribˡ"
d1990 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1990 v0 v1 v2 = du1990 v2
du1990 :: T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1990 v0
  = let v1 = d1914 (coe v0) in
    let v2 = d1916 (coe v0) in
    let v3 = d1918 (coe v0) in
    let v4 = d1920 (coe v0) in
    let v5 = d1924 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1480
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d1022 (coe v7))))
name1992 = "Algebra.Ring._.isEquivalence"
d1992 :: T1888 -> MAlonzo.Code.Relation.Binary.Core.T402
d1992 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d484
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d562
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1392
                                       (coe (d1924 (coe v0))))))))))))))
name1994 = "Algebra.Ring._.isNearSemiring"
d1994 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> MAlonzo.Code.Algebra.Structures.T752
d1994 v0 v1 v2 = du1994 v2
du1994 :: T1888 -> MAlonzo.Code.Algebra.Structures.T752
du1994 v0
  = let v1 = d1914 (coe v0) in
    let v2 = d1916 (coe v0) in
    let v3 = d1918 (coe v0) in
    let v4 = d1920 (coe v0) in
    let v5 = d1924 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1480
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du860
         (coe v1) (coe v4)
         (coe (MAlonzo.Code.Algebra.Structures.du1174 (coe v6))))
name1996 = "Algebra.Ring._.isSemiring"
d1996 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> MAlonzo.Code.Algebra.Structures.T1092
d1996 v0 v1 v2 = du1996 v2
du1996 :: T1888 -> MAlonzo.Code.Algebra.Structures.T1092
du1996 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1480
         (coe (d1914 (coe v0))) (coe (d1916 (coe v0)))
         (coe (d1918 (coe v0))) (coe (d1920 (coe v0)))
         (coe (d1924 (coe v0))))
name1998 = "Algebra.Ring._.isSemiringWithoutAnnihilatingZero"
d1998 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> MAlonzo.Code.Algebra.Structures.T1002
d1998 v0 v1 v2 = du1998 v2
du1998 :: T1888 -> MAlonzo.Code.Algebra.Structures.T1002
du1998 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1478 (coe (d1924 (coe v0))))
name2000 = "Algebra.Ring._.isSemiringWithoutOne"
d2000 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> MAlonzo.Code.Algebra.Structures.T826
d2000 v0 v1 v2 = du2000 v2
du2000 :: T1888 -> MAlonzo.Code.Algebra.Structures.T826
du2000 v0
  = let v1 = d1914 (coe v0) in
    let v2 = d1916 (coe v0) in
    let v3 = d1918 (coe v0) in
    let v4 = d1920 (coe v0) in
    let v5 = d1924 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1174
         (coe
            (MAlonzo.Code.Algebra.Structures.du1480
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
name2002 = "Algebra.Ring._.refl"
d2002 :: T1888 -> AgdaAny -> AgdaAny
d2002 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d562
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1392
                                             (coe (d1924 (coe v0))))))))))))))))
name2004 = "Algebra.Ring._.reflexive"
d2004 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2004 v0 v1 v2 = du2004 v2
du2004 ::
  T1888 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2004 v0
  = let v1 = d1924 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1392 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d562 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d484 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d278 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d126 (coe v5) in
    coe
      (\ v7 v8 v9 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v6))) v7)
name2006 = "Algebra.Ring._.setoid"
d2006 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> MAlonzo.Code.Relation.Binary.T128
d2006 v0 v1 v2 = du2006 v2
du2006 :: T1888 -> MAlonzo.Code.Relation.Binary.T128
du2006 v0
  = let v1 = d1924 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1392 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d562 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d484 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d278 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5))))
name2008 = "Algebra.Ring._.sym"
d2008 :: T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2008 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d562
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1392
                                             (coe (d1924 (coe v0))))))))))))))))
name2010 = "Algebra.Ring._.trans"
d2010 ::
  T1888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2010 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d562
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1392
                                             (coe (d1924 (coe v0))))))))))))))))
name2012 = "Algebra.Ring._.uniqueʳ-⁻¹"
d2012 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2012 v0 v1 v2 = du2012 v2
du2012 :: T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2012 v0
  = let v1 = d1914 (coe v0) in
    let v2 = d1918 (coe v0) in
    let v3 = d1920 (coe v0) in
    let v4 = d1924 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1392 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du542
         (coe v1) (coe v3) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d562 (coe v5))))
name2014 = "Algebra.Ring._.uniqueˡ-⁻¹"
d2014 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2014 v0 v1 v2 = du2014 v2
du2014 :: T1888 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2014 v0
  = let v1 = d1914 (coe v0) in
    let v2 = d1918 (coe v0) in
    let v3 = d1920 (coe v0) in
    let v4 = d1924 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1392 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du536
         (coe v1) (coe v3) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d562 (coe v5))))
name2016 = "Algebra.Ring._.zero"
d2016 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1888 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2016 v0 v1 v2 = du2016 v2
du2016 :: T1888 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du2016 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1476
         (coe (d1914 (coe v0))) (coe (d1916 (coe v0)))
         (coe (d1918 (coe v0))) (coe (d1920 (coe v0)))
         (coe (d1924 (coe v0))))
name2018 = "Algebra.Ring._.zeroʳ"
d2018 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> AgdaAny -> AgdaAny
d2018 v0 v1 v2 = du2018 v2
du2018 :: T1888 -> AgdaAny -> AgdaAny
du2018 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1474
         (coe (d1914 (coe v0))) (coe (d1916 (coe v0)))
         (coe (d1918 (coe v0))) (coe (d1920 (coe v0)))
         (coe (d1924 (coe v0))))
name2020 = "Algebra.Ring._.zeroˡ"
d2020 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> AgdaAny -> AgdaAny
d2020 v0 v1 v2 = du2020 v2
du2020 :: T1888 -> AgdaAny -> AgdaAny
du2020 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1472
         (coe (d1914 (coe v0))) (coe (d1916 (coe v0)))
         (coe (d1918 (coe v0))) (coe (d1920 (coe v0)))
         (coe (d1924 (coe v0))))
name2022 = "Algebra.Ring.+-abelianGroup"
d2022 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T782
d2022 v0 v1 v2 = du2022 v2
du2022 :: T1888 -> T782
du2022 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C3057 v3 v4 v5 v6) erased erased
      (d1914 (coe v0)) (d1920 (coe v0)) (d1918 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1392 (coe (d1924 (coe v0))))
name2024 = "Algebra.Ring.semiring"
d2024 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T1550
d2024 v0 v1 v2 = du2024 v2
du2024 :: T1888 -> T1550
du2024 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C6161 v3 v4 v5 v6 v7) erased erased
      (d1914 (coe v0)) (d1916 (coe v0)) (d1920 (coe v0)) (d1922 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du1480
         (coe (d1914 (coe v0))) (coe (d1916 (coe v0)))
         (coe (d1918 (coe v0))) (coe (d1920 (coe v0)))
         (coe (d1924 (coe v0))))
name2028 = "Algebra.Ring._.magma"
d2028 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T28
d2028 v0 v1 v2 = du2028 v2
du2028 :: T1888 -> T28
du2028 v0
  = let v1 = du2024 (coe v0) in
    let v2 = du1662 (coe v1) in
    let v3 = du1534 (coe v2) in coe (du122 (coe (du404 (coe v3))))
name2030 = "Algebra.Ring._.*-monoid"
d2030 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T346
d2030 v0 v1 v2 = du2030 v2
du2030 :: T1888 -> T346
du2030 v0
  = let v1 = du2024 (coe v0) in coe (du1534 (coe (du1662 (coe v1))))
name2032 = "Algebra.Ring._.rawMagma"
d2032 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T6
d2032 v0 v1 v2 = du2032 v2
du2032 :: T1888 -> T6
du2032 v0
  = let v1 = du2024 (coe v0) in
    let v2 = du1662 (coe v1) in
    let v3 = du1534 (coe v2) in
    let v4 = du404 (coe v3) in coe (du70 (coe (du122 (coe v4))))
name2034 = "Algebra.Ring._.rawMonoid"
d2034 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T318
d2034 v0 v1 v2 = du2034 v2
du2034 :: T1888 -> T318
du2034 v0
  = let v1 = du2024 (coe v0) in
    let v2 = du1662 (coe v1) in coe (du406 (coe (du1534 (coe v2))))
name2036 = "Algebra.Ring._.semigroup"
d2036 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T76
d2036 v0 v1 v2 = du2036 v2
du2036 :: T1888 -> T76
du2036 v0
  = let v1 = du2024 (coe v0) in
    let v2 = du1662 (coe v1) in coe (du404 (coe (du1534 (coe v2))))
name2038 = "Algebra.Ring._.+-commutativeMonoid"
d2038 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T418
d2038 v0 v1 v2 = du2038 v2
du2038 :: T1888 -> T418
du2038 v0
  = let v1 = du2024 (coe v0) in coe (du1520 (coe (du1662 (coe v1))))
name2040 = "Algebra.Ring._.magma"
d2040 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T28
d2040 v0 v1 v2 = du2040 v2
du2040 :: T1888 -> T28
du2040 v0
  = let v1 = du2024 (coe v0) in
    let v2 = du1662 (coe v1) in
    let v3 = du1520 (coe v2) in
    let v4 = du480 (coe v3) in coe (du122 (coe (du404 (coe v4))))
name2042 = "Algebra.Ring._.monoid"
d2042 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T346
d2042 v0 v1 v2 = du2042 v2
du2042 :: T1888 -> T346
du2042 v0
  = let v1 = du2024 (coe v0) in
    let v2 = du1662 (coe v1) in coe (du480 (coe (du1520 (coe v2))))
name2044 = "Algebra.Ring._.rawMagma"
d2044 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T6
d2044 v0 v1 v2 = du2044 v2
du2044 :: T1888 -> T6
du2044 v0
  = let v1 = du2024 (coe v0) in
    let v2 = du1662 (coe v1) in
    let v3 = du1520 (coe v2) in
    let v4 = du480 (coe v3) in
    let v5 = du404 (coe v4) in coe (du70 (coe (du122 (coe v5))))
name2046 = "Algebra.Ring._.rawMonoid"
d2046 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T318
d2046 v0 v1 v2 = du2046 v2
du2046 :: T1888 -> T318
du2046 v0
  = let v1 = du2024 (coe v0) in
    let v2 = du1662 (coe v1) in
    let v3 = du1520 (coe v2) in coe (du406 (coe (du480 (coe v3))))
name2048 = "Algebra.Ring._.semigroup"
d2048 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T76
d2048 v0 v1 v2 = du2048 v2
du2048 :: T1888 -> T76
du2048 v0
  = let v1 = du2024 (coe v0) in
    let v2 = du1662 (coe v1) in
    let v3 = du1520 (coe v2) in coe (du404 (coe (du480 (coe v3))))
name2050 = "Algebra.Ring._.nearSemiring"
d2050 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T1038
d2050 v0 v1 v2 = du2050 v2
du2050 :: T1888 -> T1038
du2050 v0
  = let v1 = du2024 (coe v0) in coe (du1236 (coe (du1688 (coe v1))))
name2052 = "Algebra.Ring._.semiringWithoutAnnihilatingZero"
d2052 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T1422
d2052 v0 v1 v2 = du2052 v2
du2052 :: T1888 -> T1422
du2052 v0 = coe (du1662 (coe (du2024 (coe v0))))
name2054 = "Algebra.Ring._.semiringWithoutOne"
d2054 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T1142
d2054 v0 v1 v2 = du2054 v2
du2054 :: T1888 -> T1142
du2054 v0 = coe (du1688 (coe (du2024 (coe v0))))
name2058 = "Algebra.Ring._.group"
d2058 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T686
d2058 v0 v1 v2 = du2058 v2
du2058 :: T1888 -> T686
du2058 v0 = coe (du866 (coe (du2022 (coe v0))))
name2060 = "Algebra.Ring.rawRing"
d2060 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1888 -> T1856
d2060 v0 v1 v2 = du2060 v2
du2060 :: T1888 -> T1856
du2060 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C7405 v2 v3 v4 v5 v6) erased
      (d1914 (coe v0)) (d1916 (coe v0)) (d1918 (coe v0)) (d1920 (coe v0))
      (d1922 (coe v0))
name2066 = "Algebra.CommutativeRing"
d2066 a0 a1 = ()
data T2066
  = C8269 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny MAlonzo.Code.Algebra.Structures.T1502
name2088 = "Algebra.CommutativeRing.Carrier"
d2088 :: T2066 -> ()
d2088 = erased
name2090 = "Algebra.CommutativeRing._≈_"
d2090 :: T2066 -> AgdaAny -> AgdaAny -> ()
d2090 = erased
name2092 = "Algebra.CommutativeRing._+_"
d2092 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny
d2092 v0
  = case coe v0 of
      C8269 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2094 = "Algebra.CommutativeRing._*_"
d2094 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny
d2094 v0
  = case coe v0 of
      C8269 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2096 = "Algebra.CommutativeRing.-_"
d2096 :: T2066 -> AgdaAny -> AgdaAny
d2096 v0
  = case coe v0 of
      C8269 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2098 = "Algebra.CommutativeRing.0#"
d2098 :: T2066 -> AgdaAny
d2098 v0
  = case coe v0 of
      C8269 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2100 = "Algebra.CommutativeRing.1#"
d2100 :: T2066 -> AgdaAny
d2100 v0
  = case coe v0 of
      C8269 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2102 = "Algebra.CommutativeRing.isCommutativeRing"
d2102 :: T2066 -> MAlonzo.Code.Algebra.Structures.T1502
d2102 v0
  = case coe v0 of
      C8269 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name2106 = "Algebra.CommutativeRing._._-_"
d2106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny
d2106 v0 v1 v2 = du2106 v2
du2106 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny
du2106 v0
  = let v1 = d2092 (coe v0) in
    let v2 = d2096 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name2108 = "Algebra.CommutativeRing._.assoc"
d2108 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2108 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1394
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1518
                           (coe (d2102 (coe v0))))))))))
name2110 = "Algebra.CommutativeRing._.*-comm"
d2110 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny
d2110 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1520 (coe (d2102 (coe v0))))
name2112 = "Algebra.CommutativeRing._.∙-cong"
d2112 ::
  T2066 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2112 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1394
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1518
                                 (coe (d2102 (coe v0))))))))))))
name2114 = "Algebra.CommutativeRing._.∙-congʳ"
d2114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2114 v0 v1 v2 = du2114 v2
du2114 ::
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2114 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1394 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d278 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v4))))
name2116 = "Algebra.CommutativeRing._.∙-congˡ"
d2116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2116 v0 v1 v2 = du2116 v2
du2116 ::
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2116 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1394 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d278 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v4))))
name2118 = "Algebra.CommutativeRing._.identity"
d2118 :: T2066 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2118 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d280
         (coe
            (MAlonzo.Code.Algebra.Structures.d1394
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1518 (coe (d2102 (coe v0))))))))
name2120 = "Algebra.CommutativeRing._.identityʳ"
d2120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> AgdaAny -> AgdaAny
d2120 v0 v1 v2 = du2120 v2
du2120 :: T2066 -> AgdaAny -> AgdaAny
du2120 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1394 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v3))))
name2122 = "Algebra.CommutativeRing._.identityˡ"
d2122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> AgdaAny -> AgdaAny
d2122 v0 v1 v2 = du2122 v2
du2122 :: T2066 -> AgdaAny -> AgdaAny
du2122 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1394 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v3))))
name2124 = "Algebra.CommutativeRing._.*-isCommutativeMonoid"
d2124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> MAlonzo.Code.Algebra.Structures.T314
d2124 v0 v1 v2 = du2124 v2
du2124 :: T2066 -> MAlonzo.Code.Algebra.Structures.T314
du2124 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1618 (coe (d2102 (coe v0))))
name2126 = "Algebra.CommutativeRing._.isMagma"
d2126 :: T2066 -> MAlonzo.Code.Algebra.Structures.T84
d2126 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1394
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1518
                           (coe (d2102 (coe v0))))))))))
name2128 = "Algebra.CommutativeRing._.*-isMonoid"
d2128 :: T2066 -> MAlonzo.Code.Algebra.Structures.T268
d2128 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1394
         (coe
            (MAlonzo.Code.Algebra.Structures.d1518 (coe (d2102 (coe v0))))))
name2130 = "Algebra.CommutativeRing._.isSemigroup"
d2130 :: T2066 -> MAlonzo.Code.Algebra.Structures.T118
d2130 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d278
         (coe
            (MAlonzo.Code.Algebra.Structures.d1394
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1518 (coe (d2102 (coe v0))))))))
name2132 = "Algebra.CommutativeRing._.assoc"
d2132 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2132 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d484
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d562
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1392
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1518
                                       (coe (d2102 (coe v0))))))))))))))
name2134 = "Algebra.CommutativeRing._.comm"
d2134 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny
d2134 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d564
         (coe
            (MAlonzo.Code.Algebra.Structures.d1392
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1518 (coe (d2102 (coe v0))))))))
name2136 = "Algebra.CommutativeRing._.∙-cong"
d2136 ::
  T2066 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2136 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d484
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d562
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1392
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1518
                                             (coe (d2102 (coe v0))))))))))))))))
name2138 = "Algebra.CommutativeRing._.∙-congʳ"
d2138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2138 v0 v1 v2 = du2138 v2
du2138 ::
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2138 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1392 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6))))
name2140 = "Algebra.CommutativeRing._.∙-congˡ"
d2140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2140 v0 v1 v2 = du2140 v2
du2140 ::
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2140 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1392 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6))))
name2142 = "Algebra.CommutativeRing._.identity"
d2142 :: T2066 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2142 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d280
         (coe
            (MAlonzo.Code.Algebra.Structures.d484
               (coe
                  (MAlonzo.Code.Algebra.Structures.d562
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1392
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1518
                                 (coe (d2102 (coe v0))))))))))))
name2144 = "Algebra.CommutativeRing._.identityʳ"
d2144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> AgdaAny -> AgdaAny
d2144 v0 v1 v2 = du2144 v2
du2144 :: T2066 -> AgdaAny -> AgdaAny
du2144 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1392 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v5))))
name2146 = "Algebra.CommutativeRing._.identityˡ"
d2146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> AgdaAny -> AgdaAny
d2146 v0 v1 v2 = du2146 v2
du2146 :: T2066 -> AgdaAny -> AgdaAny
du2146 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1392 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v5))))
name2148 = "Algebra.CommutativeRing._.+-isAbelianGroup"
d2148 :: T2066 -> MAlonzo.Code.Algebra.Structures.T550
d2148 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1392
         (coe
            (MAlonzo.Code.Algebra.Structures.d1518 (coe (d2102 (coe v0))))))
name2150 = "Algebra.CommutativeRing._.isCommutativeMonoid"
d2150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> MAlonzo.Code.Algebra.Structures.T314
d2150 v0 v1 v2 = du2150 v2
du2150 :: T2066 -> MAlonzo.Code.Algebra.Structures.T314
du2150 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du614
         (coe (MAlonzo.Code.Algebra.Structures.d1392 (coe v2))))
name2152 = "Algebra.CommutativeRing._.isGroup"
d2152 :: T2066 -> MAlonzo.Code.Algebra.Structures.T470
d2152 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d562
         (coe
            (MAlonzo.Code.Algebra.Structures.d1392
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1518 (coe (d2102 (coe v0))))))))
name2154 = "Algebra.CommutativeRing._.isMagma"
d2154 :: T2066 -> MAlonzo.Code.Algebra.Structures.T84
d2154 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d278
               (coe
                  (MAlonzo.Code.Algebra.Structures.d484
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d562
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1392
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1518
                                       (coe (d2102 (coe v0))))))))))))))
name2156 = "Algebra.CommutativeRing._.isMonoid"
d2156 :: T2066 -> MAlonzo.Code.Algebra.Structures.T268
d2156 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d484
         (coe
            (MAlonzo.Code.Algebra.Structures.d562
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1392
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1518
                           (coe (d2102 (coe v0))))))))))
name2158 = "Algebra.CommutativeRing._.isSemigroup"
d2158 :: T2066 -> MAlonzo.Code.Algebra.Structures.T118
d2158 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d278
         (coe
            (MAlonzo.Code.Algebra.Structures.d484
               (coe
                  (MAlonzo.Code.Algebra.Structures.d562
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1392
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1518
                                 (coe (d2102 (coe v0))))))))))))
name2160 = "Algebra.CommutativeRing._.⁻¹-cong"
d2160 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2160 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d488
         (coe
            (MAlonzo.Code.Algebra.Structures.d562
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1392
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1518
                           (coe (d2102 (coe v0))))))))))
name2162 = "Algebra.CommutativeRing._.inverse"
d2162 :: T2066 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2162 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d486
         (coe
            (MAlonzo.Code.Algebra.Structures.d562
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1392
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1518
                           (coe (d2102 (coe v0))))))))))
name2164 = "Algebra.CommutativeRing._.inverseʳ"
d2164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> AgdaAny -> AgdaAny
d2164 v0 v1 v2 = du2164 v2
du2164 :: T2066 -> AgdaAny -> AgdaAny
du2164 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1392 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d486 (coe v4))))
name2166 = "Algebra.CommutativeRing._.inverseˡ"
d2166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> AgdaAny -> AgdaAny
d2166 v0 v1 v2 = du2166 v2
du2166 :: T2066 -> AgdaAny -> AgdaAny
du2166 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1392 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d486 (coe v4))))
name2168 = "Algebra.CommutativeRing._.distrib"
d2168 :: T2066 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2168 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1396
         (coe
            (MAlonzo.Code.Algebra.Structures.d1518 (coe (d2102 (coe v0))))))
name2170 = "Algebra.CommutativeRing._.distribʳ"
d2170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2170 v0 v1 v2 = du2170 v2
du2170 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2170 v0
  = let v1 = d2092 (coe v0) in
    let v2 = d2094 (coe v0) in
    let v3 = d2096 (coe v0) in
    let v4 = d2098 (coe v0) in
    let v5 = d2102 (coe v0) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1518 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1480
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d1022 (coe v8))))
name2172 = "Algebra.CommutativeRing._.distribˡ"
d2172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2172 v0 v1 v2 = du2172 v2
du2172 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2172 v0
  = let v1 = d2092 (coe v0) in
    let v2 = d2094 (coe v0) in
    let v3 = d2096 (coe v0) in
    let v4 = d2098 (coe v0) in
    let v5 = d2102 (coe v0) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1518 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1480
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d1022 (coe v8))))
name2174 = "Algebra.CommutativeRing._.isCommutativeSemiring"
d2174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> MAlonzo.Code.Algebra.Structures.T1192
d2174 v0 v1 v2 = du2174 v2
du2174 :: T2066 -> MAlonzo.Code.Algebra.Structures.T1192
du2174 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1620
         (coe (d2092 (coe v0))) (coe (d2094 (coe v0)))
         (coe (d2096 (coe v0))) (coe (d2098 (coe v0)))
         (coe (d2102 (coe v0))))
name2176
  = "Algebra.CommutativeRing._.isCommutativeSemiringWithoutOne"
d2176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> MAlonzo.Code.Algebra.Structures.T914
d2176 v0 v1 v2 = du2176 v2
du2176 :: T2066 -> MAlonzo.Code.Algebra.Structures.T914
du2176 v0
  = let v1 = d2092 (coe v0) in
    let v2 = d2094 (coe v0) in
    let v3 = d2096 (coe v0) in
    let v4 = d2098 (coe v0) in
    let v5 = d2100 (coe v0) in
    let v6 = d2102 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1362
         (coe v1) (coe v2) (coe v4) (coe v5)
         (coe
            (MAlonzo.Code.Algebra.Structures.du1620
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name2178 = "Algebra.CommutativeRing._.isEquivalence"
d2178 :: T2066 -> MAlonzo.Code.Relation.Binary.Core.T402
d2178 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d484
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d562
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1392
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1518
                                             (coe (d2102 (coe v0))))))))))))))))
name2180 = "Algebra.CommutativeRing._.isNearSemiring"
d2180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> MAlonzo.Code.Algebra.Structures.T752
d2180 v0 v1 v2 = du2180 v2
du2180 :: T2066 -> MAlonzo.Code.Algebra.Structures.T752
du2180 v0
  = let v1 = d2092 (coe v0) in
    let v2 = d2094 (coe v0) in
    let v3 = d2096 (coe v0) in
    let v4 = d2098 (coe v0) in
    let v5 = d2102 (coe v0) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1518 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1480
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du860
         (coe v1) (coe v4)
         (coe (MAlonzo.Code.Algebra.Structures.du1174 (coe v7))))
name2182 = "Algebra.CommutativeRing._.isRing"
d2182 :: T2066 -> MAlonzo.Code.Algebra.Structures.T1374
d2182 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1518 (coe (d2102 (coe v0))))
name2184 = "Algebra.CommutativeRing._.isSemiring"
d2184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> MAlonzo.Code.Algebra.Structures.T1092
d2184 v0 v1 v2 = du2184 v2
du2184 :: T2066 -> MAlonzo.Code.Algebra.Structures.T1092
du2184 v0
  = let v1 = d2092 (coe v0) in
    let v2 = d2094 (coe v0) in
    let v3 = d2096 (coe v0) in
    let v4 = d2098 (coe v0) in
    let v5 = d2102 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1480
         (coe v1) (coe v2) (coe v3) (coe v4)
         (coe (MAlonzo.Code.Algebra.Structures.d1518 (coe v5))))
name2186
  = "Algebra.CommutativeRing._.isSemiringWithoutAnnihilatingZero"
d2186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> MAlonzo.Code.Algebra.Structures.T1002
d2186 v0 v1 v2 = du2186 v2
du2186 :: T2066 -> MAlonzo.Code.Algebra.Structures.T1002
du2186 v0
  = let v1 = d2102 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1478
         (coe (MAlonzo.Code.Algebra.Structures.d1518 (coe v1))))
name2188 = "Algebra.CommutativeRing._.isSemiringWithoutOne"
d2188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> MAlonzo.Code.Algebra.Structures.T826
d2188 v0 v1 v2 = du2188 v2
du2188 :: T2066 -> MAlonzo.Code.Algebra.Structures.T826
du2188 v0
  = let v1 = d2092 (coe v0) in
    let v2 = d2094 (coe v0) in
    let v3 = d2096 (coe v0) in
    let v4 = d2098 (coe v0) in
    let v5 = d2102 (coe v0) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1518 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1174
         (coe
            (MAlonzo.Code.Algebra.Structures.du1480
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name2190 = "Algebra.CommutativeRing._.refl"
d2190 :: T2066 -> AgdaAny -> AgdaAny
d2190 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d562
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1392
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1518
                                                   (coe (d2102 (coe v0))))))))))))))))))
name2192 = "Algebra.CommutativeRing._.reflexive"
d2192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2192 v0 v1 v2 = du2192 v2
du2192 ::
  T2066 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2192 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1392 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d126 (coe v6) in
    coe
      (\ v8 v9 v10 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v7))) v8)
name2194 = "Algebra.CommutativeRing._.setoid"
d2194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> MAlonzo.Code.Relation.Binary.T128
d2194 v0 v1 v2 = du2194 v2
du2194 :: T2066 -> MAlonzo.Code.Relation.Binary.T128
du2194 v0
  = let v1 = d2102 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1518 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1392 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6))))
name2196 = "Algebra.CommutativeRing._.sym"
d2196 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2196 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d562
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1392
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1518
                                                   (coe (d2102 (coe v0))))))))))))))))))
name2198 = "Algebra.CommutativeRing._.trans"
d2198 ::
  T2066 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2198 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d562
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1392
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1518
                                                   (coe (d2102 (coe v0))))))))))))))))))
name2200 = "Algebra.CommutativeRing._.uniqueʳ-⁻¹"
d2200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2200 v0 v1 v2 = du2200 v2
du2200 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2200 v0
  = let v1 = d2092 (coe v0) in
    let v2 = d2096 (coe v0) in
    let v3 = d2098 (coe v0) in
    let v4 = d2102 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1518 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1392 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du542
         (coe v1) (coe v3) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d562 (coe v6))))
name2202 = "Algebra.CommutativeRing._.uniqueˡ-⁻¹"
d2202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2202 v0 v1 v2 = du2202 v2
du2202 :: T2066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2202 v0
  = let v1 = d2092 (coe v0) in
    let v2 = d2096 (coe v0) in
    let v3 = d2098 (coe v0) in
    let v4 = d2102 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1518 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1392 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du536
         (coe v1) (coe v3) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d562 (coe v6))))
name2204 = "Algebra.CommutativeRing._.zero"
d2204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2066 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2204 v0 v1 v2 = du2204 v2
du2204 :: T2066 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du2204 v0
  = let v1 = d2092 (coe v0) in
    let v2 = d2094 (coe v0) in
    let v3 = d2096 (coe v0) in
    let v4 = d2098 (coe v0) in
    let v5 = d2102 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1476
         (coe v1) (coe v2) (coe v3) (coe v4)
         (coe (MAlonzo.Code.Algebra.Structures.d1518 (coe v5))))
name2206 = "Algebra.CommutativeRing._.zeroʳ"
d2206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> AgdaAny -> AgdaAny
d2206 v0 v1 v2 = du2206 v2
du2206 :: T2066 -> AgdaAny -> AgdaAny
du2206 v0
  = let v1 = d2092 (coe v0) in
    let v2 = d2094 (coe v0) in
    let v3 = d2096 (coe v0) in
    let v4 = d2098 (coe v0) in
    let v5 = d2102 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1474
         (coe v1) (coe v2) (coe v3) (coe v4)
         (coe (MAlonzo.Code.Algebra.Structures.d1518 (coe v5))))
name2208 = "Algebra.CommutativeRing._.zeroˡ"
d2208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> AgdaAny -> AgdaAny
d2208 v0 v1 v2 = du2208 v2
du2208 :: T2066 -> AgdaAny -> AgdaAny
du2208 v0
  = let v1 = d2092 (coe v0) in
    let v2 = d2094 (coe v0) in
    let v3 = d2096 (coe v0) in
    let v4 = d2098 (coe v0) in
    let v5 = d2102 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1472
         (coe v1) (coe v2) (coe v3) (coe v4)
         (coe (MAlonzo.Code.Algebra.Structures.d1518 (coe v5))))
name2210 = "Algebra.CommutativeRing.ring"
d2210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T1888
d2210 v0 v1 v2 = du2210 v2
du2210 :: T2066 -> T1888
du2210 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 v8 -> C7501 v3 v4 v5 v6 v7 v8) erased
      erased (d2092 (coe v0)) (d2094 (coe v0)) (d2096 (coe v0))
      (d2098 (coe v0)) (d2100 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1518 (coe (d2102 (coe v0))))
name2212 = "Algebra.CommutativeRing.commutativeSemiring"
d2212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T1698
d2212 v0 v1 v2 = du2212 v2
du2212 :: T2066 -> T1698
du2212 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C6801 v3 v4 v5 v6 v7) erased erased
      (d2092 (coe v0)) (d2094 (coe v0)) (d2098 (coe v0)) (d2100 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du1620
         (coe (d2092 (coe v0))) (coe (d2094 (coe v0)))
         (coe (d2096 (coe v0))) (coe (d2098 (coe v0)))
         (coe (d2102 (coe v0))))
name2216 = "Algebra.CommutativeRing._.+-abelianGroup"
d2216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T782
d2216 v0 v1 v2 = du2216 v2
du2216 :: T2066 -> T782
du2216 v0 = coe (du2022 (coe (du2210 (coe v0))))
name2218 = "Algebra.CommutativeRing._.group"
d2218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T686
d2218 v0 v1 v2 = du2218 v2
du2218 :: T2066 -> T686
du2218 v0
  = let v1 = du2210 (coe v0) in coe (du866 (coe (du2022 (coe v1))))
name2220 = "Algebra.CommutativeRing._.rawRing"
d2220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T1856
d2220 v0 v1 v2 = du2220 v2
du2220 :: T2066 -> T1856
du2220 v0 = coe (du2060 (coe (du2210 (coe v0))))
name2224 = "Algebra.CommutativeRing._.*-commutativeMonoid"
d2224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T418
d2224 v0 v1 v2 = du2224 v2
du2224 :: T2066 -> T418
du2224 v0 = coe (du1850 (coe (du2212 (coe v0))))
name2226 = "Algebra.CommutativeRing._.magma"
d2226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T28
d2226 v0 v1 v2 = du2226 v2
du2226 :: T2066 -> T28
du2226 v0
  = let v1 = du2212 (coe v0) in
    let v2 = du1816 (coe v1) in
    let v3 = du1662 (coe v2) in
    let v4 = du1534 (coe v3) in coe (du122 (coe (du404 (coe v4))))
name2228 = "Algebra.CommutativeRing._.*-monoid"
d2228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T346
d2228 v0 v1 v2 = du2228 v2
du2228 :: T2066 -> T346
du2228 v0
  = let v1 = du2212 (coe v0) in
    let v2 = du1816 (coe v1) in coe (du1534 (coe (du1662 (coe v2))))
name2230 = "Algebra.CommutativeRing._.rawMagma"
d2230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T6
d2230 v0 v1 v2 = du2230 v2
du2230 :: T2066 -> T6
du2230 v0
  = let v1 = du2212 (coe v0) in
    let v2 = du1816 (coe v1) in
    let v3 = du1662 (coe v2) in
    let v4 = du1534 (coe v3) in
    let v5 = du404 (coe v4) in coe (du70 (coe (du122 (coe v5))))
name2232 = "Algebra.CommutativeRing._.rawMonoid"
d2232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T318
d2232 v0 v1 v2 = du2232 v2
du2232 :: T2066 -> T318
du2232 v0
  = let v1 = du2212 (coe v0) in
    let v2 = du1816 (coe v1) in
    let v3 = du1662 (coe v2) in coe (du406 (coe (du1534 (coe v3))))
name2234 = "Algebra.CommutativeRing._.semigroup"
d2234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T76
d2234 v0 v1 v2 = du2234 v2
du2234 :: T2066 -> T76
du2234 v0
  = let v1 = du2212 (coe v0) in
    let v2 = du1816 (coe v1) in
    let v3 = du1662 (coe v2) in coe (du404 (coe (du1534 (coe v3))))
name2236 = "Algebra.CommutativeRing._.+-commutativeMonoid"
d2236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T418
d2236 v0 v1 v2 = du2236 v2
du2236 :: T2066 -> T418
du2236 v0
  = let v1 = du2212 (coe v0) in
    let v2 = du1816 (coe v1) in coe (du1520 (coe (du1662 (coe v2))))
name2238 = "Algebra.CommutativeRing._.magma"
d2238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T28
d2238 v0 v1 v2 = du2238 v2
du2238 :: T2066 -> T28
du2238 v0
  = let v1 = du2212 (coe v0) in
    let v2 = du1816 (coe v1) in
    let v3 = du1662 (coe v2) in
    let v4 = du1520 (coe v3) in
    let v5 = du480 (coe v4) in coe (du122 (coe (du404 (coe v5))))
name2240 = "Algebra.CommutativeRing._.monoid"
d2240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T346
d2240 v0 v1 v2 = du2240 v2
du2240 :: T2066 -> T346
du2240 v0
  = let v1 = du2212 (coe v0) in
    let v2 = du1816 (coe v1) in
    let v3 = du1662 (coe v2) in coe (du480 (coe (du1520 (coe v3))))
name2242 = "Algebra.CommutativeRing._.rawMagma"
d2242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T6
d2242 v0 v1 v2 = du2242 v2
du2242 :: T2066 -> T6
du2242 v0
  = let v1 = du2212 (coe v0) in
    let v2 = du1816 (coe v1) in
    let v3 = du1662 (coe v2) in
    let v4 = du1520 (coe v3) in
    let v5 = du480 (coe v4) in
    let v6 = du404 (coe v5) in coe (du70 (coe (du122 (coe v6))))
name2244 = "Algebra.CommutativeRing._.rawMonoid"
d2244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T318
d2244 v0 v1 v2 = du2244 v2
du2244 :: T2066 -> T318
du2244 v0
  = let v1 = du2212 (coe v0) in
    let v2 = du1816 (coe v1) in
    let v3 = du1662 (coe v2) in
    let v4 = du1520 (coe v3) in coe (du406 (coe (du480 (coe v4))))
name2246 = "Algebra.CommutativeRing._.semigroup"
d2246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T76
d2246 v0 v1 v2 = du2246 v2
du2246 :: T2066 -> T76
du2246 v0
  = let v1 = du2212 (coe v0) in
    let v2 = du1816 (coe v1) in
    let v3 = du1662 (coe v2) in
    let v4 = du1520 (coe v3) in coe (du404 (coe (du480 (coe v4))))
name2248
  = "Algebra.CommutativeRing._.commutativeSemiringWithoutOne"
d2248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T1262
d2248 v0 v1 v2 = du2248 v2
du2248 :: T2066 -> T1262
du2248 v0 = coe (du1852 (coe (du2212 (coe v0))))
name2250 = "Algebra.CommutativeRing._.nearSemiring"
d2250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T1038
d2250 v0 v1 v2 = du2250 v2
du2250 :: T2066 -> T1038
du2250 v0
  = let v1 = du2212 (coe v0) in
    let v2 = du1816 (coe v1) in coe (du1236 (coe (du1688 (coe v2))))
name2252 = "Algebra.CommutativeRing._.semiring"
d2252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T1550
d2252 v0 v1 v2 = du2252 v2
du2252 :: T2066 -> T1550
du2252 v0 = coe (du1816 (coe (du2212 (coe v0))))
name2254
  = "Algebra.CommutativeRing._.semiringWithoutAnnihilatingZero"
d2254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T1422
d2254 v0 v1 v2 = du2254 v2
du2254 :: T2066 -> T1422
du2254 v0
  = let v1 = du2212 (coe v0) in coe (du1662 (coe (du1816 (coe v1))))
name2256 = "Algebra.CommutativeRing._.semiringWithoutOne"
d2256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2066 -> T1142
d2256 v0 v1 v2 = du2256 v2
du2256 :: T2066 -> T1142
du2256 v0
  = let v1 = du2212 (coe v0) in coe (du1688 (coe (du1816 (coe v1))))
name2262 = "Algebra.BooleanAlgebra"
d2262 a0 a1 = ()
data T2262
  = C9061 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny MAlonzo.Code.Algebra.Structures.T1636
name2284 = "Algebra.BooleanAlgebra.Carrier"
d2284 :: T2262 -> ()
d2284 = erased
name2286 = "Algebra.BooleanAlgebra._≈_"
d2286 :: T2262 -> AgdaAny -> AgdaAny -> ()
d2286 = erased
name2288 = "Algebra.BooleanAlgebra._∨_"
d2288 :: T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d2288 v0
  = case coe v0 of
      C9061 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2290 = "Algebra.BooleanAlgebra._∧_"
d2290 :: T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d2290 v0
  = case coe v0 of
      C9061 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name2292 = "Algebra.BooleanAlgebra.¬_"
d2292 :: T2262 -> AgdaAny -> AgdaAny
d2292 v0
  = case coe v0 of
      C9061 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2294 = "Algebra.BooleanAlgebra.⊤"
d2294 :: T2262 -> AgdaAny
d2294 v0
  = case coe v0 of
      C9061 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name2296 = "Algebra.BooleanAlgebra.⊥"
d2296 :: T2262 -> AgdaAny
d2296 v0
  = case coe v0 of
      C9061 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name2298 = "Algebra.BooleanAlgebra.isBooleanAlgebra"
d2298 :: T2262 -> MAlonzo.Code.Algebra.Structures.T1636
d2298 v0
  = case coe v0 of
      C9061 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name2302 = "Algebra.BooleanAlgebra._.absorptive"
d2302 :: T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2302 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d656
         (coe
            (MAlonzo.Code.Algebra.Structures.d702
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1656 (coe (d2298 (coe v0))))))))
name2304 = "Algebra.BooleanAlgebra._.isDistributiveLattice"
d2304 :: T2262 -> MAlonzo.Code.Algebra.Structures.T692
d2304 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1656 (coe (d2298 (coe v0))))
name2306 = "Algebra.BooleanAlgebra._.isEquivalence"
d2306 :: T2262 -> MAlonzo.Code.Relation.Binary.Core.T402
d2306 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d642
         (coe
            (MAlonzo.Code.Algebra.Structures.d702
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1656 (coe (d2298 (coe v0))))))))
name2308 = "Algebra.BooleanAlgebra._.isLattice"
d2308 :: T2262 -> MAlonzo.Code.Algebra.Structures.T620
d2308 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d702
         (coe
            (MAlonzo.Code.Algebra.Structures.d1656 (coe (d2298 (coe v0))))))
name2310 = "Algebra.BooleanAlgebra._.refl"
d2310 :: T2262 -> AgdaAny -> AgdaAny
d2310 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d642
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (d2298 (coe v0))))))))))
name2312 = "Algebra.BooleanAlgebra._.reflexive"
d2312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2262 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2312 v0 v1 v2 = du2312 v2
du2312 ::
  T2262 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2312 v0
  = let v1 = d2298 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1656 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d702 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d642 (coe v3))) v4)
name2314 = "Algebra.BooleanAlgebra._.sym"
d2314 :: T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2314 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d642
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (d2298 (coe v0))))))))))
name2316 = "Algebra.BooleanAlgebra._.trans"
d2316 ::
  T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2316 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d642
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (d2298 (coe v0))))))))))
name2318 = "Algebra.BooleanAlgebra._.¬-cong"
d2318 :: T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2318 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1662 (coe (d2298 (coe v0))))
name2320 = "Algebra.BooleanAlgebra._.∧-absorbs-∨"
d2320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d2320 v0 v1 v2 = du2320 v2
du2320 :: T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du2320 v0
  = let v1 = d2298 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1656 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d702 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d656 (coe v3))))
name2322 = "Algebra.BooleanAlgebra._.∧-assoc"
d2322 :: T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2322 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d652
         (coe
            (MAlonzo.Code.Algebra.Structures.d702
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1656 (coe (d2298 (coe v0))))))))
name2324 = "Algebra.BooleanAlgebra._.∧-comm"
d2324 :: T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d2324 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d650
         (coe
            (MAlonzo.Code.Algebra.Structures.d702
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1656 (coe (d2298 (coe v0))))))))
name2326 = "Algebra.BooleanAlgebra._.∧-complementʳ"
d2326 :: T2262 -> AgdaAny -> AgdaAny
d2326 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1660 (coe (d2298 (coe v0))))
name2328 = "Algebra.BooleanAlgebra._.∧-cong"
d2328 ::
  T2262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2328 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d654
         (coe
            (MAlonzo.Code.Algebra.Structures.d702
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1656 (coe (d2298 (coe v0))))))))
name2330 = "Algebra.BooleanAlgebra._.∧-congʳ"
d2330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2330 v0 v1 v2 = du2330 v2
du2330 ::
  T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2330 v0
  = let v1 = d2298 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1656 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du676
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v2))))
name2332 = "Algebra.BooleanAlgebra._.∧-congˡ"
d2332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2332 v0 v1 v2 = du2332 v2
du2332 ::
  T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2332 v0
  = let v1 = d2298 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1656 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du672
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v2))))
name2334 = "Algebra.BooleanAlgebra._.∨-absorbs-∧"
d2334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d2334 v0 v1 v2 = du2334 v2
du2334 :: T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du2334 v0
  = let v1 = d2298 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1656 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d702 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d656 (coe v3))))
name2336 = "Algebra.BooleanAlgebra._.∨-assoc"
d2336 :: T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2336 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d646
         (coe
            (MAlonzo.Code.Algebra.Structures.d702
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1656 (coe (d2298 (coe v0))))))))
name2338 = "Algebra.BooleanAlgebra._.∨-comm"
d2338 :: T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d2338 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d644
         (coe
            (MAlonzo.Code.Algebra.Structures.d702
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1656 (coe (d2298 (coe v0))))))))
name2340 = "Algebra.BooleanAlgebra._.∨-complementʳ"
d2340 :: T2262 -> AgdaAny -> AgdaAny
d2340 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1658 (coe (d2298 (coe v0))))
name2342 = "Algebra.BooleanAlgebra._.∨-cong"
d2342 ::
  T2262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2342 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d648
         (coe
            (MAlonzo.Code.Algebra.Structures.d702
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1656 (coe (d2298 (coe v0))))))))
name2344 = "Algebra.BooleanAlgebra._.∨-congʳ"
d2344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2344 v0 v1 v2 = du2344 v2
du2344 ::
  T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2344 v0
  = let v1 = d2298 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1656 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du684
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v2))))
name2346 = "Algebra.BooleanAlgebra._.∨-congˡ"
d2346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2346 v0 v1 v2 = du2346 v2
du2346 ::
  T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2346 v0
  = let v1 = d2298 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1656 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du680
         (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v2))))
name2348 = "Algebra.BooleanAlgebra._.∨-distribʳ-∧"
d2348 :: T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2348 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d704
         (coe
            (MAlonzo.Code.Algebra.Structures.d1656 (coe (d2298 (coe v0))))))
name2350 = "Algebra.BooleanAlgebra._.∨-∧-distribʳ"
d2350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2350 v0 v1 v2 = du2350 v2
du2350 :: T2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2350 v0
  = let v1 = d2298 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du744
         (coe (MAlonzo.Code.Algebra.Structures.d1656 (coe v1))))
name2352 = "Algebra.BooleanAlgebra.distributiveLattice"
d2352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2262 -> T958
d2352 v0 v1 v2 = du2352 v2
du2352 :: T2262 -> T958
du2352 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C3833 v3 v4 v5) erased erased (d2288 (coe v0))
      (d2290 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1656 (coe (d2298 (coe v0))))
name2356 = "Algebra.BooleanAlgebra._.lattice"
d2356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T2262 -> T888
d2356 v0 v1 v2 = du2356 v2
du2356 :: T2262 -> T888
du2356 v0 = coe (du1028 (coe (du2352 (coe v0))))
name2358 = "Algebra.BooleanAlgebra._.setoid"
d2358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T2262 -> MAlonzo.Code.Relation.Binary.T128
d2358 v0 v1 v2 = du2358 v2
du2358 :: T2262 -> MAlonzo.Code.Relation.Binary.T128
du2358 v0
  = let v1 = du2352 (coe v0) in coe (du952 (coe (du1028 (coe v1))))
name2360 = "Algebra.RawSemigroup"
d2360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d2360 = erased
