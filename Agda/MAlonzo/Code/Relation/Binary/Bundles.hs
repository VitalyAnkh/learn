{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Bundles where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name10 = "Relation.Binary.Bundles.PartialSetoid"
d10 a0 a1 = ()
newtype T10 = C9 MAlonzo.Code.Relation.Binary.Structures.T16
name22 = "Relation.Binary.Bundles.PartialSetoid.Carrier"
d22 :: T10 -> ()
d22 = erased
name24 = "Relation.Binary.Bundles.PartialSetoid._≈_"
d24 :: T10 -> AgdaAny -> AgdaAny -> ()
d24 = erased
name26
  = "Relation.Binary.Bundles.PartialSetoid.isPartialEquivalence"
d26 :: T10 -> MAlonzo.Code.Relation.Binary.Structures.T16
d26 v0
  = case coe v0 of
      C9 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name30 = "Relation.Binary.Bundles.PartialSetoid._.sym"
d30 :: T10 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d30 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d22 (coe (d26 (coe v0))))
name32 = "Relation.Binary.Bundles.PartialSetoid._.trans"
d32 ::
  T10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d32 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d24 (coe (d26 (coe v0))))
name34 = "Relation.Binary.Bundles.PartialSetoid._≉_"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T10 -> AgdaAny -> AgdaAny -> ()
d34 = erased
name44 = "Relation.Binary.Bundles.Setoid"
d44 a0 a1 = ()
newtype T44 = C163 MAlonzo.Code.Relation.Binary.Structures.T26
name56 = "Relation.Binary.Bundles.Setoid.Carrier"
d56 :: T44 -> ()
d56 = erased
name58 = "Relation.Binary.Bundles.Setoid._≈_"
d58 :: T44 -> AgdaAny -> AgdaAny -> ()
d58 = erased
name60 = "Relation.Binary.Bundles.Setoid.isEquivalence"
d60 :: T44 -> MAlonzo.Code.Relation.Binary.Structures.T26
d60 v0
  = case coe v0 of
      C163 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name64 = "Relation.Binary.Bundles.Setoid._.isPartialEquivalence"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T44 -> MAlonzo.Code.Relation.Binary.Structures.T16
d64 v0 v1 v2 = du64 v2
du64 :: T44 -> MAlonzo.Code.Relation.Binary.Structures.T16
du64 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d60 (coe v0))))
name66 = "Relation.Binary.Bundles.Setoid._.refl"
d66 :: T44 -> AgdaAny -> AgdaAny
d66 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34 (coe (d60 (coe v0))))
name68 = "Relation.Binary.Bundles.Setoid._.reflexive"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T44 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d68 v0 v1 v2 = du68 v2
du68 ::
  T44 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du68 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d60 (coe v0))) v1)
name70 = "Relation.Binary.Bundles.Setoid._.sym"
d70 :: T44 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d70 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36 (coe (d60 (coe v0))))
name72 = "Relation.Binary.Bundles.Setoid._.trans"
d72 ::
  T44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d72 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38 (coe (d60 (coe v0))))
name74 = "Relation.Binary.Bundles.Setoid._≉_"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T44 -> AgdaAny -> AgdaAny -> ()
d74 = erased
name80 = "Relation.Binary.Bundles.Setoid.partialSetoid"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T44 -> T10
d80 v0 v1 v2 = du80 v2
du80 :: T44 -> T10
du80 v0
  = coe
      (\ v1 v2 v3 -> C9 v3) erased erased
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d60 (coe v0))))
name86 = "Relation.Binary.Bundles.DecSetoid"
d86 a0 a1 = ()
newtype T86 = C381 MAlonzo.Code.Relation.Binary.Structures.T44
name98 = "Relation.Binary.Bundles.DecSetoid.Carrier"
d98 :: T86 -> ()
d98 = erased
name100 = "Relation.Binary.Bundles.DecSetoid._≈_"
d100 :: T86 -> AgdaAny -> AgdaAny -> ()
d100 = erased
name102 = "Relation.Binary.Bundles.DecSetoid.isDecEquivalence"
d102 :: T86 -> MAlonzo.Code.Relation.Binary.Structures.T44
d102 v0
  = case coe v0 of
      C381 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name106 = "Relation.Binary.Bundles.DecSetoid._._≟_"
d106 ::
  T86 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d106 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d52 (coe (d102 (coe v0))))
name108 = "Relation.Binary.Bundles.DecSetoid._.isEquivalence"
d108 :: T86 -> MAlonzo.Code.Relation.Binary.Structures.T26
d108 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d50 (coe (d102 (coe v0))))
name110
  = "Relation.Binary.Bundles.DecSetoid._.isPartialEquivalence"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T86 -> MAlonzo.Code.Relation.Binary.Structures.T16
d110 v0 v1 v2 = du110 v2
du110 :: T86 -> MAlonzo.Code.Relation.Binary.Structures.T16
du110 v0
  = let v1 = d102 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Relation.Binary.Structures.d50 (coe v1))))
name112 = "Relation.Binary.Bundles.DecSetoid._.refl"
d112 :: T86 -> AgdaAny -> AgdaAny
d112 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d50
               (coe (d102 (coe v0))))))
name114 = "Relation.Binary.Bundles.DecSetoid._.reflexive"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T86 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d114 v0 v1 v2 = du114 v2
du114 ::
  T86 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du114 v0
  = let v1 = d102 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Relation.Binary.Structures.d50 (coe v1))) v2)
name116 = "Relation.Binary.Bundles.DecSetoid._.sym"
d116 :: T86 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d116 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d50
               (coe (d102 (coe v0))))))
name118 = "Relation.Binary.Bundles.DecSetoid._.trans"
d118 ::
  T86 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d118 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d50
               (coe (d102 (coe v0))))))
name120 = "Relation.Binary.Bundles.DecSetoid.setoid"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T86 -> T44
d120 v0 v1 v2 = du120 v2
du120 :: T86 -> T44
du120 v0
  = coe
      (\ v1 v2 v3 -> C163 v3) erased erased
      (MAlonzo.Code.Relation.Binary.Structures.d50 (coe (d102 (coe v0))))
name128 = "Relation.Binary.Bundles.Preorder"
d128 a0 a1 a2 = ()
newtype T128 = C563 MAlonzo.Code.Relation.Binary.Structures.T70
name144 = "Relation.Binary.Bundles.Preorder.Carrier"
d144 :: T128 -> ()
d144 = erased
name146 = "Relation.Binary.Bundles.Preorder._≈_"
d146 :: T128 -> AgdaAny -> AgdaAny -> ()
d146 = erased
name148 = "Relation.Binary.Bundles.Preorder._∼_"
d148 :: T128 -> AgdaAny -> AgdaAny -> ()
d148 = erased
name150 = "Relation.Binary.Bundles.Preorder.isPreorder"
d150 :: T128 -> MAlonzo.Code.Relation.Binary.Structures.T70
d150 v0
  = case coe v0 of
      C563 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name154 = "Relation.Binary.Bundles.Preorder._.isEquivalence"
d154 :: T128 -> MAlonzo.Code.Relation.Binary.Structures.T26
d154 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d80 (coe (d150 (coe v0))))
name156 = "Relation.Binary.Bundles.Preorder._.refl"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T128 -> AgdaAny -> AgdaAny
d156 v0 v1 v2 v3 = du156 v3
du156 :: T128 -> AgdaAny -> AgdaAny
du156 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du98
         (coe (d150 (coe v0))))
name158 = "Relation.Binary.Bundles.Preorder._.reflexive"
d158 :: T128 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d158 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d82 (coe (d150 (coe v0))))
name160 = "Relation.Binary.Bundles.Preorder._.trans"
d160 ::
  T128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d160 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d84 (coe (d150 (coe v0))))
name162 = "Relation.Binary.Bundles.Preorder._.∼-resp-≈"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T128 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d162 v0 v1 v2 v3 = du162 v3
du162 :: T128 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du162 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du112
         (coe (d150 (coe v0))))
name164 = "Relation.Binary.Bundles.Preorder._.∼-respʳ-≈"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d164 v0 v1 v2 v3 = du164 v3
du164 ::
  T128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du164 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du106
         (coe (d150 (coe v0))))
name166 = "Relation.Binary.Bundles.Preorder._.∼-respˡ-≈"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d166 v0 v1 v2 v3 = du166 v3
du166 ::
  T128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du166 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du100
         (coe (d150 (coe v0))))
name170
  = "Relation.Binary.Bundles.Preorder._.Eq.isPartialEquivalence"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T128 -> MAlonzo.Code.Relation.Binary.Structures.T16
d170 v0 v1 v2 v3 = du170 v3
du170 :: T128 -> MAlonzo.Code.Relation.Binary.Structures.T16
du170 v0
  = let v1 = d150 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v1))))
name172 = "Relation.Binary.Bundles.Preorder._.Eq.refl"
d172 :: T128 -> AgdaAny -> AgdaAny
d172 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe (d150 (coe v0))))))
name174 = "Relation.Binary.Bundles.Preorder._.Eq.reflexive"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T128 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d174 v0 v1 v2 v3 = du174 v3
du174 ::
  T128 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du174 v0
  = let v1 = d150 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v1))) v2)
name176 = "Relation.Binary.Bundles.Preorder._.Eq.sym"
d176 :: T128 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d176 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe (d150 (coe v0))))))
name178 = "Relation.Binary.Bundles.Preorder._.Eq.trans"
d178 ::
  T128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d178 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe (d150 (coe v0))))))
name186 = "Relation.Binary.Bundles.Poset"
d186 a0 a1 a2 = ()
newtype T186 = C807 MAlonzo.Code.Relation.Binary.Structures.T118
name202 = "Relation.Binary.Bundles.Poset.Carrier"
d202 :: T186 -> ()
d202 = erased
name204 = "Relation.Binary.Bundles.Poset._≈_"
d204 :: T186 -> AgdaAny -> AgdaAny -> ()
d204 = erased
name206 = "Relation.Binary.Bundles.Poset._≤_"
d206 :: T186 -> AgdaAny -> AgdaAny -> ()
d206 = erased
name208 = "Relation.Binary.Bundles.Poset.isPartialOrder"
d208 :: T186 -> MAlonzo.Code.Relation.Binary.Structures.T118
d208 v0
  = case coe v0 of
      C807 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name212 = "Relation.Binary.Bundles.Poset._.antisym"
d212 :: T186 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d212 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d128
         (coe (d208 (coe v0))))
name214 = "Relation.Binary.Bundles.Poset._.isEquivalence"
d214 :: T186 -> MAlonzo.Code.Relation.Binary.Structures.T26
d214 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe (d208 (coe v0))))))
name216 = "Relation.Binary.Bundles.Poset._.isPreorder"
d216 :: T186 -> MAlonzo.Code.Relation.Binary.Structures.T70
d216 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d126
         (coe (d208 (coe v0))))
name218 = "Relation.Binary.Bundles.Poset._.refl"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T186 -> AgdaAny -> AgdaAny
d218 v0 v1 v2 v3 = du218 v3
du218 :: T186 -> AgdaAny -> AgdaAny
du218 v0
  = let v1 = d208 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du98
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))))
name220 = "Relation.Binary.Bundles.Poset._.reflexive"
d220 :: T186 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d220 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d82
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe (d208 (coe v0))))))
name222 = "Relation.Binary.Bundles.Poset._.trans"
d222 ::
  T186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d222 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d84
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe (d208 (coe v0))))))
name224 = "Relation.Binary.Bundles.Poset._.∼-resp-≈"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T186 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d224 v0 v1 v2 v3 = du224 v3
du224 :: T186 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du224 v0
  = let v1 = d208 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du112
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))))
name226 = "Relation.Binary.Bundles.Poset._.∼-respʳ-≈"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d226 v0 v1 v2 v3 = du226 v3
du226 ::
  T186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du226 v0
  = let v1 = d208 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du106
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))))
name228 = "Relation.Binary.Bundles.Poset._.∼-respˡ-≈"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d228 v0 v1 v2 v3 = du228 v3
du228 ::
  T186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du228 v0
  = let v1 = d208 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du100
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))))
name232 = "Relation.Binary.Bundles.Poset._.Eq.isPartialEquivalence"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T186 -> MAlonzo.Code.Relation.Binary.Structures.T16
d232 v0 v1 v2 v3 = du232 v3
du232 :: T186 -> MAlonzo.Code.Relation.Binary.Structures.T16
du232 v0
  = let v1 = d208 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v2))))
name234 = "Relation.Binary.Bundles.Poset._.Eq.refl"
d234 :: T186 -> AgdaAny -> AgdaAny
d234 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d126
                     (coe (d208 (coe v0))))))))
name236 = "Relation.Binary.Bundles.Poset._.Eq.reflexive"
d236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T186 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d236 v0 v1 v2 v3 = du236 v3
du236 ::
  T186 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du236 v0
  = let v1 = d208 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v2))) v3)
name238 = "Relation.Binary.Bundles.Poset._.Eq.sym"
d238 :: T186 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d238 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d126
                     (coe (d208 (coe v0))))))))
name240 = "Relation.Binary.Bundles.Poset._.Eq.trans"
d240 ::
  T186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d240 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d126
                     (coe (d208 (coe v0))))))))
name242 = "Relation.Binary.Bundles.Poset.preorder"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T186 -> T128
d242 v0 v1 v2 v3 = du242 v3
du242 :: T186 -> T128
du242 v0
  = coe
      (\ v1 v2 v3 v4 -> C563 v4) erased erased erased
      (MAlonzo.Code.Relation.Binary.Structures.d126
         (coe (d208 (coe v0))))
name250 = "Relation.Binary.Bundles.DecPoset"
d250 a0 a1 a2 = ()
newtype T250 = C1135 MAlonzo.Code.Relation.Binary.Structures.T162
name266 = "Relation.Binary.Bundles.DecPoset.Carrier"
d266 :: T250 -> ()
d266 = erased
name268 = "Relation.Binary.Bundles.DecPoset._≈_"
d268 :: T250 -> AgdaAny -> AgdaAny -> ()
d268 = erased
name270 = "Relation.Binary.Bundles.DecPoset._≤_"
d270 :: T250 -> AgdaAny -> AgdaAny -> ()
d270 = erased
name272 = "Relation.Binary.Bundles.DecPoset.isDecPartialOrder"
d272 :: T250 -> MAlonzo.Code.Relation.Binary.Structures.T162
d272 v0
  = case coe v0 of
      C1135 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name276 = "Relation.Binary.Bundles.DecPoset.DPO._≟_"
d276 ::
  T250 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d276 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d174
         (coe (d272 (coe v0))))
name278 = "Relation.Binary.Bundles.DecPoset.DPO._≤?_"
d278 ::
  T250 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d278 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d176
         (coe (d272 (coe v0))))
name280 = "Relation.Binary.Bundles.DecPoset.DPO.antisym"
d280 :: T250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d280 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d128
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d172
               (coe (d272 (coe v0))))))
name282 = "Relation.Binary.Bundles.DecPoset.DPO.isEquivalence"
d282 :: T250 -> MAlonzo.Code.Relation.Binary.Structures.T26
d282 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d172
                     (coe (d272 (coe v0))))))))
name284 = "Relation.Binary.Bundles.DecPoset.DPO.isPartialOrder"
d284 :: T250 -> MAlonzo.Code.Relation.Binary.Structures.T118
d284 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d172
         (coe (d272 (coe v0))))
name286 = "Relation.Binary.Bundles.DecPoset.DPO.isPreorder"
d286 :: T250 -> MAlonzo.Code.Relation.Binary.Structures.T70
d286 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d172
               (coe (d272 (coe v0))))))
name288 = "Relation.Binary.Bundles.DecPoset.DPO.refl"
d288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T250 -> AgdaAny -> AgdaAny
d288 v0 v1 v2 v3 = du288 v3
du288 :: T250 -> AgdaAny -> AgdaAny
du288 v0
  = let v1 = d272 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d172 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du98
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))))
name290 = "Relation.Binary.Bundles.DecPoset.DPO.reflexive"
d290 :: T250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d290 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d82
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d172
                     (coe (d272 (coe v0))))))))
name292 = "Relation.Binary.Bundles.DecPoset.DPO.trans"
d292 ::
  T250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d292 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d84
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d172
                     (coe (d272 (coe v0))))))))
name294 = "Relation.Binary.Bundles.DecPoset.DPO.∼-resp-≈"
d294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T250 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d294 v0 v1 v2 v3 = du294 v3
du294 :: T250 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du294 v0
  = let v1 = d272 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d172 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du112
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))))
name296 = "Relation.Binary.Bundles.DecPoset.DPO.∼-respʳ-≈"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d296 v0 v1 v2 v3 = du296 v3
du296 ::
  T250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du296 v0
  = let v1 = d272 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d172 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du106
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))))
name298 = "Relation.Binary.Bundles.DecPoset.DPO.∼-respˡ-≈"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d298 v0 v1 v2 v3 = du298 v3
du298 ::
  T250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du298 v0
  = let v1 = d272 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d172 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du100
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))))
name318 = "Relation.Binary.Bundles.DecPoset.poset"
d318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T250 -> T186
d318 v0 v1 v2 v3 = du318 v3
du318 :: T250 -> T186
du318 v0
  = coe
      (\ v1 v2 v3 v4 -> C807 v4) erased erased erased
      (MAlonzo.Code.Relation.Binary.Structures.d172
         (coe (d272 (coe v0))))
name322 = "Relation.Binary.Bundles.DecPoset._.preorder"
d322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T250 -> T128
d322 v0 v1 v2 v3 = du322 v3
du322 :: T250 -> T128
du322 v0 = coe (du242 (coe (du318 (coe v0))))
name326 = "Relation.Binary.Bundles.DecPoset.Eq.decSetoid"
d326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T250 -> T86
d326 v0 v1 v2 v3 = du326 v3
du326 :: T250 -> T86
du326 v0
  = coe
      (\ v1 v2 v3 -> C381 v3) erased erased
      (MAlonzo.Code.Relation.Binary.Structures.du200
         (coe (d272 (coe v0))))
name330 = "Relation.Binary.Bundles.DecPoset.Eq._._≈_"
d330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T250 -> AgdaAny -> AgdaAny -> ()
d330 = erased
name332 = "Relation.Binary.Bundles.DecPoset.Eq._._≟_"
d332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T250 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d332 v0 v1 v2 v3 = du332 v3
du332 ::
  T250 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du332 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d174
         (coe (d272 (coe v0))))
name334 = "Relation.Binary.Bundles.DecPoset.Eq._.Carrier"
d334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T250 -> ()
d334 = erased
name336 = "Relation.Binary.Bundles.DecPoset.Eq._.isDecEquivalence"
d336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T250 -> MAlonzo.Code.Relation.Binary.Structures.T44
d336 v0 v1 v2 v3 = du336 v3
du336 :: T250 -> MAlonzo.Code.Relation.Binary.Structures.T44
du336 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du200
         (coe (d272 (coe v0))))
name338 = "Relation.Binary.Bundles.DecPoset.Eq._.isEquivalence"
d338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T250 -> MAlonzo.Code.Relation.Binary.Structures.T26
d338 v0 v1 v2 v3 = du338 v3
du338 :: T250 -> MAlonzo.Code.Relation.Binary.Structures.T26
du338 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d172
                     (coe (d272 (coe v0))))))))
name340
  = "Relation.Binary.Bundles.DecPoset.Eq._.isPartialEquivalence"
d340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T250 -> MAlonzo.Code.Relation.Binary.Structures.T16
d340 v0 v1 v2 v3 = du340 v3
du340 :: T250 -> MAlonzo.Code.Relation.Binary.Structures.T16
du340 v0
  = let v1 = du326 (coe v0) in
    let v2 = d102 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Relation.Binary.Structures.d50 (coe v2))))
name342 = "Relation.Binary.Bundles.DecPoset.Eq._.refl"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T250 -> AgdaAny -> AgdaAny
d342 v0 v1 v2 v3 = du342 v3
du342 :: T250 -> AgdaAny -> AgdaAny
du342 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d126
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d172
                           (coe (d272 (coe v0))))))))))
name344 = "Relation.Binary.Bundles.DecPoset.Eq._.reflexive"
d344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T250 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d344 v0 v1 v2 v3 = du344 v3
du344 ::
  T250 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du344 v0
  = let v1 = du326 (coe v0) in
    let v2 = d102 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Relation.Binary.Structures.d50 (coe v2))) v3)
name346 = "Relation.Binary.Bundles.DecPoset.Eq._.setoid"
d346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T250 -> T44
d346 v0 v1 v2 v3 = du346 v3
du346 :: T250 -> T44
du346 v0 = coe (du120 (coe (du326 (coe v0))))
name348 = "Relation.Binary.Bundles.DecPoset.Eq._.sym"
d348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d348 v0 v1 v2 v3 = du348 v3
du348 :: T250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du348 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d126
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d172
                           (coe (d272 (coe v0))))))))))
name350 = "Relation.Binary.Bundles.DecPoset.Eq._.trans"
d350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d350 v0 v1 v2 v3 = du350 v3
du350 ::
  T250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du350 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d126
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d172
                           (coe (d272 (coe v0))))))))))
name358 = "Relation.Binary.Bundles.StrictPartialOrder"
d358 a0 a1 a2 = ()
newtype T358 = C1663 MAlonzo.Code.Relation.Binary.Structures.T222
name374 = "Relation.Binary.Bundles.StrictPartialOrder.Carrier"
d374 :: T358 -> ()
d374 = erased
name376 = "Relation.Binary.Bundles.StrictPartialOrder._≈_"
d376 :: T358 -> AgdaAny -> AgdaAny -> ()
d376 = erased
name378 = "Relation.Binary.Bundles.StrictPartialOrder._<_"
d378 :: T358 -> AgdaAny -> AgdaAny -> ()
d378 = erased
name380
  = "Relation.Binary.Bundles.StrictPartialOrder.isStrictPartialOrder"
d380 :: T358 -> MAlonzo.Code.Relation.Binary.Structures.T222
d380 v0
  = case coe v0 of
      C1663 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name384 = "Relation.Binary.Bundles.StrictPartialOrder._.<-resp-≈"
d384 :: T358 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d384 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d240
         (coe (d380 (coe v0))))
name386 = "Relation.Binary.Bundles.StrictPartialOrder._.<-respʳ-≈"
d386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d386 v0 v1 v2 v3 = du386 v3
du386 ::
  T358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du386 v0
  = let v1 = d380 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d28
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v1)) v2 v3 v4)
name388 = "Relation.Binary.Bundles.StrictPartialOrder._.<-respˡ-≈"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d388 v0 v1 v2 v3 = du388 v3
du388 ::
  T358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du388 v0
  = let v1 = d380 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v1)) v2 v3 v4)
name390 = "Relation.Binary.Bundles.StrictPartialOrder._.asym"
d390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T358 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d390 = erased
name392 = "Relation.Binary.Bundles.StrictPartialOrder._.asymmetric"
d392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T358 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d392 = erased
name394 = "Relation.Binary.Bundles.StrictPartialOrder._.irrefl"
d394 ::
  T358 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d394 = erased
name396
  = "Relation.Binary.Bundles.StrictPartialOrder._.isEquivalence"
d396 :: T358 -> MAlonzo.Code.Relation.Binary.Structures.T26
d396 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d234
         (coe (d380 (coe v0))))
name398 = "Relation.Binary.Bundles.StrictPartialOrder._.trans"
d398 ::
  T358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d398 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d238
         (coe (d380 (coe v0))))
name402
  = "Relation.Binary.Bundles.StrictPartialOrder._.Eq.isPartialEquivalence"
d402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T358 -> MAlonzo.Code.Relation.Binary.Structures.T16
d402 v0 v1 v2 v3 = du402 v3
du402 :: T358 -> MAlonzo.Code.Relation.Binary.Structures.T16
du402 v0
  = let v1 = d380 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Relation.Binary.Structures.d234 (coe v1))))
name404 = "Relation.Binary.Bundles.StrictPartialOrder._.Eq.refl"
d404 :: T358 -> AgdaAny -> AgdaAny
d404 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d234
               (coe (d380 (coe v0))))))
name406
  = "Relation.Binary.Bundles.StrictPartialOrder._.Eq.reflexive"
d406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T358 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d406 v0 v1 v2 v3 = du406 v3
du406 ::
  T358 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du406 v0
  = let v1 = d380 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Relation.Binary.Structures.d234 (coe v1))) v2)
name408 = "Relation.Binary.Bundles.StrictPartialOrder._.Eq.sym"
d408 :: T358 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d408 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d234
               (coe (d380 (coe v0))))))
name410 = "Relation.Binary.Bundles.StrictPartialOrder._.Eq.trans"
d410 ::
  T358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d410 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d234
               (coe (d380 (coe v0))))))
name418 = "Relation.Binary.Bundles.DecStrictPartialOrder"
d418 a0 a1 a2 = ()
newtype T418 = C1921 MAlonzo.Code.Relation.Binary.Structures.T270
name434 = "Relation.Binary.Bundles.DecStrictPartialOrder.Carrier"
d434 :: T418 -> ()
d434 = erased
name436 = "Relation.Binary.Bundles.DecStrictPartialOrder._≈_"
d436 :: T418 -> AgdaAny -> AgdaAny -> ()
d436 = erased
name438 = "Relation.Binary.Bundles.DecStrictPartialOrder._<_"
d438 :: T418 -> AgdaAny -> AgdaAny -> ()
d438 = erased
name440
  = "Relation.Binary.Bundles.DecStrictPartialOrder.isDecStrictPartialOrder"
d440 :: T418 -> MAlonzo.Code.Relation.Binary.Structures.T270
d440 v0
  = case coe v0 of
      C1921 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name484
  = "Relation.Binary.Bundles.DecStrictPartialOrder.strictPartialOrder"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T418 -> T358
d484 v0 v1 v2 v3 = du484 v3
du484 :: T418 -> T358
du484 v0
  = coe
      (\ v1 v2 v3 v4 -> C1663 v4) erased erased erased
      (MAlonzo.Code.Relation.Binary.Structures.d280
         (coe (d440 (coe v0))))
name488
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq.decSetoid"
d488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T418 -> T86
d488 v0 v1 v2 v3 = du488 v3
du488 :: T418 -> T86
du488 v0
  = coe
      (\ v1 v2 v3 -> C381 v3) erased erased
      (MAlonzo.Code.Relation.Binary.Structures.du318
         (coe (d440 (coe v0))))
name492 = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._._≈_"
d492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T418 -> AgdaAny -> AgdaAny -> ()
d492 = erased
name494 = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._._≟_"
d494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d494 v0 v1 v2 v3 = du494 v3
du494 ::
  T418 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du494 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d282
         (coe (d440 (coe v0))))
name496
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.Carrier"
d496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T418 -> ()
d496 = erased
name498
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.isDecEquivalence"
d498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 -> MAlonzo.Code.Relation.Binary.Structures.T44
d498 v0 v1 v2 v3 = du498 v3
du498 :: T418 -> MAlonzo.Code.Relation.Binary.Structures.T44
du498 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du318
         (coe (d440 (coe v0))))
name500
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.isEquivalence"
d500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 -> MAlonzo.Code.Relation.Binary.Structures.T26
d500 v0 v1 v2 v3 = du500 v3
du500 :: T418 -> MAlonzo.Code.Relation.Binary.Structures.T26
du500 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d234
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d280
               (coe (d440 (coe v0))))))
name502
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.isPartialEquivalence"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 -> MAlonzo.Code.Relation.Binary.Structures.T16
d502 v0 v1 v2 v3 = du502 v3
du502 :: T418 -> MAlonzo.Code.Relation.Binary.Structures.T16
du502 v0
  = let v1 = du488 (coe v0) in
    let v2 = d102 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Relation.Binary.Structures.d50 (coe v2))))
name504 = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.refl"
d504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T418 -> AgdaAny -> AgdaAny
d504 v0 v1 v2 v3 = du504 v3
du504 :: T418 -> AgdaAny -> AgdaAny
du504 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d234
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d280
                     (coe (d440 (coe v0))))))))
name506
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.reflexive"
d506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d506 v0 v1 v2 v3 = du506 v3
du506 ::
  T418 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du506 v0
  = let v1 = du488 (coe v0) in
    let v2 = d102 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Relation.Binary.Structures.d50 (coe v2))) v3)
name508
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.setoid"
d508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T418 -> T44
d508 v0 v1 v2 v3 = du508 v3
du508 :: T418 -> T44
du508 v0 = coe (du120 (coe (du488 (coe v0))))
name510 = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.sym"
d510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d510 v0 v1 v2 v3 = du510 v3
du510 :: T418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du510 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d234
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d280
                     (coe (d440 (coe v0))))))))
name512
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.trans"
d512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T418 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d512 v0 v1 v2 v3 = du512 v3
du512 ::
  T418 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du512 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d234
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d280
                     (coe (d440 (coe v0))))))))
name520 = "Relation.Binary.Bundles.TotalOrder"
d520 a0 a1 a2 = ()
newtype T520 = C2427 MAlonzo.Code.Relation.Binary.Structures.T340
name536 = "Relation.Binary.Bundles.TotalOrder.Carrier"
d536 :: T520 -> ()
d536 = erased
name538 = "Relation.Binary.Bundles.TotalOrder._≈_"
d538 :: T520 -> AgdaAny -> AgdaAny -> ()
d538 = erased
name540 = "Relation.Binary.Bundles.TotalOrder._≤_"
d540 :: T520 -> AgdaAny -> AgdaAny -> ()
d540 = erased
name542 = "Relation.Binary.Bundles.TotalOrder.isTotalOrder"
d542 :: T520 -> MAlonzo.Code.Relation.Binary.Structures.T340
d542 v0
  = case coe v0 of
      C2427 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name546 = "Relation.Binary.Bundles.TotalOrder._.antisym"
d546 :: T520 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d546 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d128
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d348
               (coe (d542 (coe v0))))))
name548 = "Relation.Binary.Bundles.TotalOrder._.isEquivalence"
d548 :: T520 -> MAlonzo.Code.Relation.Binary.Structures.T26
d548 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d348
                     (coe (d542 (coe v0))))))))
name550 = "Relation.Binary.Bundles.TotalOrder._.isPartialOrder"
d550 :: T520 -> MAlonzo.Code.Relation.Binary.Structures.T118
d550 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d348
         (coe (d542 (coe v0))))
name552 = "Relation.Binary.Bundles.TotalOrder._.isPreorder"
d552 :: T520 -> MAlonzo.Code.Relation.Binary.Structures.T70
d552 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d348
               (coe (d542 (coe v0))))))
name554 = "Relation.Binary.Bundles.TotalOrder._.refl"
d554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T520 -> AgdaAny -> AgdaAny
d554 v0 v1 v2 v3 = du554 v3
du554 :: T520 -> AgdaAny -> AgdaAny
du554 v0
  = let v1 = d542 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du98
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))))
name556 = "Relation.Binary.Bundles.TotalOrder._.reflexive"
d556 :: T520 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d556 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d82
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d348
                     (coe (d542 (coe v0))))))))
name558 = "Relation.Binary.Bundles.TotalOrder._.total"
d558 ::
  T520 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d558 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d350
         (coe (d542 (coe v0))))
name560 = "Relation.Binary.Bundles.TotalOrder._.trans"
d560 ::
  T520 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d560 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d84
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d348
                     (coe (d542 (coe v0))))))))
name562 = "Relation.Binary.Bundles.TotalOrder._.∼-resp-≈"
d562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T520 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d562 v0 v1 v2 v3 = du562 v3
du562 :: T520 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du562 v0
  = let v1 = d542 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du112
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))))
name564 = "Relation.Binary.Bundles.TotalOrder._.∼-respʳ-≈"
d564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T520 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d564 v0 v1 v2 v3 = du564 v3
du564 ::
  T520 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du564 v0
  = let v1 = d542 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du106
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))))
name566 = "Relation.Binary.Bundles.TotalOrder._.∼-respˡ-≈"
d566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T520 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d566 v0 v1 v2 v3 = du566 v3
du566 ::
  T520 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du566 v0
  = let v1 = d542 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du100
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))))
name570
  = "Relation.Binary.Bundles.TotalOrder._.Eq.isPartialEquivalence"
d570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T520 -> MAlonzo.Code.Relation.Binary.Structures.T16
d570 v0 v1 v2 v3 = du570 v3
du570 :: T520 -> MAlonzo.Code.Relation.Binary.Structures.T16
du570 v0
  = let v1 = d542 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3))))
name572 = "Relation.Binary.Bundles.TotalOrder._.Eq.refl"
d572 :: T520 -> AgdaAny -> AgdaAny
d572 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d126
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d348
                           (coe (d542 (coe v0))))))))))
name574 = "Relation.Binary.Bundles.TotalOrder._.Eq.reflexive"
d574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T520 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d574 v0 v1 v2 v3 = du574 v3
du574 ::
  T520 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du574 v0
  = let v1 = d542 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3))) v4)
name576 = "Relation.Binary.Bundles.TotalOrder._.Eq.sym"
d576 :: T520 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d576 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d126
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d348
                           (coe (d542 (coe v0))))))))))
name578 = "Relation.Binary.Bundles.TotalOrder._.Eq.trans"
d578 ::
  T520 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d578 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d126
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d348
                           (coe (d542 (coe v0))))))))))
name580 = "Relation.Binary.Bundles.TotalOrder.poset"
d580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T520 -> T186
d580 v0 v1 v2 v3 = du580 v3
du580 :: T520 -> T186
du580 v0
  = coe
      (\ v1 v2 v3 v4 -> C807 v4) erased erased erased
      (MAlonzo.Code.Relation.Binary.Structures.d348
         (coe (d542 (coe v0))))
name584 = "Relation.Binary.Bundles.TotalOrder._.preorder"
d584 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T520 -> T128
d584 v0 v1 v2 v3 = du584 v3
du584 :: T520 -> T128
du584 v0 = coe (du242 (coe (du580 (coe v0))))
name592 = "Relation.Binary.Bundles.DecTotalOrder"
d592 a0 a1 a2 = ()
newtype T592 = C2791 MAlonzo.Code.Relation.Binary.Structures.T388
name608 = "Relation.Binary.Bundles.DecTotalOrder.Carrier"
d608 :: T592 -> ()
d608 = erased
name610 = "Relation.Binary.Bundles.DecTotalOrder._≈_"
d610 :: T592 -> AgdaAny -> AgdaAny -> ()
d610 = erased
name612 = "Relation.Binary.Bundles.DecTotalOrder._≤_"
d612 :: T592 -> AgdaAny -> AgdaAny -> ()
d612 = erased
name614 = "Relation.Binary.Bundles.DecTotalOrder.isDecTotalOrder"
d614 :: T592 -> MAlonzo.Code.Relation.Binary.Structures.T388
d614 v0
  = case coe v0 of
      C2791 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name618 = "Relation.Binary.Bundles.DecTotalOrder.DTO._≟_"
d618 ::
  T592 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d618 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d400
         (coe (d614 (coe v0))))
name620 = "Relation.Binary.Bundles.DecTotalOrder.DTO._≤?_"
d620 ::
  T592 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d620 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d402
         (coe (d614 (coe v0))))
name622 = "Relation.Binary.Bundles.DecTotalOrder.DTO.antisym"
d622 :: T592 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d622 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d128
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d348
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d398
                     (coe (d614 (coe v0))))))))
name624 = "Relation.Binary.Bundles.DecTotalOrder.DTO.isEquivalence"
d624 :: T592 -> MAlonzo.Code.Relation.Binary.Structures.T26
d624 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d348
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d398
                           (coe (d614 (coe v0))))))))))
name626
  = "Relation.Binary.Bundles.DecTotalOrder.DTO.isPartialOrder"
d626 :: T592 -> MAlonzo.Code.Relation.Binary.Structures.T118
d626 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d348
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d398
               (coe (d614 (coe v0))))))
name628 = "Relation.Binary.Bundles.DecTotalOrder.DTO.isPreorder"
d628 :: T592 -> MAlonzo.Code.Relation.Binary.Structures.T70
d628 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d348
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d398
                     (coe (d614 (coe v0))))))))
name630 = "Relation.Binary.Bundles.DecTotalOrder.DTO.isTotalOrder"
d630 :: T592 -> MAlonzo.Code.Relation.Binary.Structures.T340
d630 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d398
         (coe (d614 (coe v0))))
name632 = "Relation.Binary.Bundles.DecTotalOrder.DTO.refl"
d632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T592 -> AgdaAny -> AgdaAny
d632 v0 v1 v2 v3 = du632 v3
du632 :: T592 -> AgdaAny -> AgdaAny
du632 v0
  = let v1 = d614 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d398 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du98
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))))
name634 = "Relation.Binary.Bundles.DecTotalOrder.DTO.reflexive"
d634 :: T592 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d634 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d82
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d348
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d398
                           (coe (d614 (coe v0))))))))))
name636 = "Relation.Binary.Bundles.DecTotalOrder.DTO.total"
d636 ::
  T592 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d636 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d350
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d398
               (coe (d614 (coe v0))))))
name638 = "Relation.Binary.Bundles.DecTotalOrder.DTO.trans"
d638 ::
  T592 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d638 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d84
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d348
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d398
                           (coe (d614 (coe v0))))))))))
name640 = "Relation.Binary.Bundles.DecTotalOrder.DTO.∼-resp-≈"
d640 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T592 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d640 v0 v1 v2 v3 = du640 v3
du640 :: T592 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du640 v0
  = let v1 = d614 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d398 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du112
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))))
name642 = "Relation.Binary.Bundles.DecTotalOrder.DTO.∼-respʳ-≈"
d642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T592 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d642 v0 v1 v2 v3 = du642 v3
du642 ::
  T592 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du642 v0
  = let v1 = d614 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d398 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du106
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))))
name644 = "Relation.Binary.Bundles.DecTotalOrder.DTO.∼-respˡ-≈"
d644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T592 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d644 v0 v1 v2 v3 = du644 v3
du644 ::
  T592 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du644 v0
  = let v1 = d614 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d398 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du100
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))))
name664 = "Relation.Binary.Bundles.DecTotalOrder.totalOrder"
d664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T592 -> T520
d664 v0 v1 v2 v3 = du664 v3
du664 :: T592 -> T520
du664 v0
  = coe
      (\ v1 v2 v3 v4 -> C2427 v4) erased erased erased
      (MAlonzo.Code.Relation.Binary.Structures.d398
         (coe (d614 (coe v0))))
name668 = "Relation.Binary.Bundles.DecTotalOrder._.poset"
d668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T592 -> T186
d668 v0 v1 v2 v3 = du668 v3
du668 :: T592 -> T186
du668 v0 = coe (du580 (coe (du664 (coe v0))))
name670 = "Relation.Binary.Bundles.DecTotalOrder._.preorder"
d670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T592 -> T128
d670 v0 v1 v2 v3 = du670 v3
du670 :: T592 -> T128
du670 v0
  = let v1 = du664 (coe v0) in coe (du242 (coe (du580 (coe v1))))
name674 = "Relation.Binary.Bundles.DecTotalOrder.Eq.decSetoid"
d674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T592 -> T86
d674 v0 v1 v2 v3 = du674 v3
du674 :: T592 -> T86
du674 v0
  = coe
      (\ v1 v2 v3 -> C381 v3) erased erased
      (MAlonzo.Code.Relation.Binary.Structures.du430
         (coe (d614 (coe v0))))
name678 = "Relation.Binary.Bundles.DecTotalOrder.Eq._._≈_"
d678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T592 -> AgdaAny -> AgdaAny -> ()
d678 = erased
name680 = "Relation.Binary.Bundles.DecTotalOrder.Eq._._≟_"
d680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T592 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d680 v0 v1 v2 v3 = du680 v3
du680 ::
  T592 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du680 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d400
         (coe (d614 (coe v0))))
name682 = "Relation.Binary.Bundles.DecTotalOrder.Eq._.Carrier"
d682 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T592 -> ()
d682 = erased
name684
  = "Relation.Binary.Bundles.DecTotalOrder.Eq._.isDecEquivalence"
d684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T592 -> MAlonzo.Code.Relation.Binary.Structures.T44
d684 v0 v1 v2 v3 = du684 v3
du684 :: T592 -> MAlonzo.Code.Relation.Binary.Structures.T44
du684 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du430
         (coe (d614 (coe v0))))
name686
  = "Relation.Binary.Bundles.DecTotalOrder.Eq._.isEquivalence"
d686 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T592 -> MAlonzo.Code.Relation.Binary.Structures.T26
d686 v0 v1 v2 v3 = du686 v3
du686 :: T592 -> MAlonzo.Code.Relation.Binary.Structures.T26
du686 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d126
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d348
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d398
                           (coe (d614 (coe v0))))))))))
name688
  = "Relation.Binary.Bundles.DecTotalOrder.Eq._.isPartialEquivalence"
d688 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T592 -> MAlonzo.Code.Relation.Binary.Structures.T16
d688 v0 v1 v2 v3 = du688 v3
du688 :: T592 -> MAlonzo.Code.Relation.Binary.Structures.T16
du688 v0
  = let v1 = du674 (coe v0) in
    let v2 = d102 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Relation.Binary.Structures.d50 (coe v2))))
name690 = "Relation.Binary.Bundles.DecTotalOrder.Eq._.refl"
d690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T592 -> AgdaAny -> AgdaAny
d690 v0 v1 v2 v3 = du690 v3
du690 :: T592 -> AgdaAny -> AgdaAny
du690 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d126
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d348
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d398
                                 (coe (d614 (coe v0))))))))))))
name692 = "Relation.Binary.Bundles.DecTotalOrder.Eq._.reflexive"
d692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T592 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d692 v0 v1 v2 v3 = du692 v3
du692 ::
  T592 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du692 v0
  = let v1 = du674 (coe v0) in
    let v2 = d102 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Relation.Binary.Structures.d50 (coe v2))) v3)
name694 = "Relation.Binary.Bundles.DecTotalOrder.Eq._.setoid"
d694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T592 -> T44
d694 v0 v1 v2 v3 = du694 v3
du694 :: T592 -> T44
du694 v0 = coe (du120 (coe (du674 (coe v0))))
name696 = "Relation.Binary.Bundles.DecTotalOrder.Eq._.sym"
d696 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T592 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d696 v0 v1 v2 v3 = du696 v3
du696 :: T592 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du696 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d126
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d348
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d398
                                 (coe (d614 (coe v0))))))))))))
name698 = "Relation.Binary.Bundles.DecTotalOrder.Eq._.trans"
d698 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T592 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d698 v0 v1 v2 v3 = du698 v3
du698 ::
  T592 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du698 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d126
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d348
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d398
                                 (coe (d614 (coe v0))))))))))))
name706 = "Relation.Binary.Bundles.StrictTotalOrder"
d706 a0 a1 a2 = ()
newtype T706 = C3355 MAlonzo.Code.Relation.Binary.Structures.T452
name722 = "Relation.Binary.Bundles.StrictTotalOrder.Carrier"
d722 :: T706 -> ()
d722 = erased
name724 = "Relation.Binary.Bundles.StrictTotalOrder._≈_"
d724 :: T706 -> AgdaAny -> AgdaAny -> ()
d724 = erased
name726 = "Relation.Binary.Bundles.StrictTotalOrder._<_"
d726 :: T706 -> AgdaAny -> AgdaAny -> ()
d726 = erased
name728
  = "Relation.Binary.Bundles.StrictTotalOrder.isStrictTotalOrder"
d728 :: T706 -> MAlonzo.Code.Relation.Binary.Structures.T452
d728 v0
  = case coe v0 of
      C3355 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name732 = "Relation.Binary.Bundles.StrictTotalOrder._._<?_"
d732 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d732 v0 v1 v2 v3 = du732 v3
du732 ::
  T706 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du732 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du470
         (coe (d728 (coe v0))))
name734 = "Relation.Binary.Bundles.StrictTotalOrder._._≟_"
d734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d734 v0 v1 v2 v3 = du734 v3
du734 ::
  T706 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du734 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du468
         (coe (d728 (coe v0))))
name736 = "Relation.Binary.Bundles.StrictTotalOrder._.<-resp-≈"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d736 v0 v1 v2 v3 = du736 v2 v3
du736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du736 v0 v1
  = let v2 = d728 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Consequences.du596
         (coe v0)
         (coe (MAlonzo.Code.Relation.Binary.Structures.d466 (coe v2))))
name738 = "Relation.Binary.Bundles.StrictTotalOrder._.<-respʳ-≈"
d738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d738 v0 v1 v2 v3 = du738 v2 v3
du738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du738 v0 v1
  = let v2 = d728 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.du490
              (coe v0) (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d28
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v3)) v4 v5 v6)
name740 = "Relation.Binary.Bundles.StrictTotalOrder._.<-respˡ-≈"
d740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d740 v0 v1 v2 v3 = du740 v2 v3
du740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du740 v0 v1
  = let v2 = d728 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.du490
              (coe v0) (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v3)) v4 v5 v6)
name742 = "Relation.Binary.Bundles.StrictTotalOrder._.asym"
d742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d742 = erased
name744 = "Relation.Binary.Bundles.StrictTotalOrder._.compare"
d744 ::
  T706 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
d744 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d466
         (coe (d728 (coe v0))))
name746 = "Relation.Binary.Bundles.StrictTotalOrder._.irrefl"
d746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d746 = erased
name748
  = "Relation.Binary.Bundles.StrictTotalOrder._.isDecEquivalence"
d748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Relation.Binary.Structures.T44
d748 v0 v1 v2 v3 = du748 v3
du748 :: T706 -> MAlonzo.Code.Relation.Binary.Structures.T44
du748 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du472
         (coe (d728 (coe v0))))
name750
  = "Relation.Binary.Bundles.StrictTotalOrder._.isDecStrictPartialOrder"
d750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Relation.Binary.Structures.T270
d750 v0 v1 v2 v3 = du750 v2 v3
du750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Relation.Binary.Structures.T270
du750 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du492
         (coe v0) (coe (d728 (coe v1))))
name752
  = "Relation.Binary.Bundles.StrictTotalOrder._.isEquivalence"
d752 :: T706 -> MAlonzo.Code.Relation.Binary.Structures.T26
d752 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d462
         (coe (d728 (coe v0))))
name754
  = "Relation.Binary.Bundles.StrictTotalOrder._.isStrictPartialOrder"
d754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Relation.Binary.Structures.T222
d754 v0 v1 v2 v3 = du754 v2 v3
du754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Relation.Binary.Structures.T222
du754 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du490
         (coe v0) (coe (d728 (coe v1))))
name756 = "Relation.Binary.Bundles.StrictTotalOrder._.trans"
d756 ::
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d756 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d464
         (coe (d728 (coe v0))))
name758
  = "Relation.Binary.Bundles.StrictTotalOrder.strictPartialOrder"
d758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T706 -> T358
d758 v0 v1 v2 v3 = du758 v2 v3
du758 :: MAlonzo.Code.Agda.Primitive.T4 -> T706 -> T358
du758 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> C1663 v5) erased erased erased
      (MAlonzo.Code.Relation.Binary.Structures.du490
         (coe v0) (coe (d728 (coe v1))))
name760 = "Relation.Binary.Bundles.StrictTotalOrder.decSetoid"
d760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T706 -> T86
d760 v0 v1 v2 v3 = du760 v3
du760 :: T706 -> T86
du760 v0
  = coe
      (\ v1 v2 v3 -> C381 v3) erased erased
      (MAlonzo.Code.Relation.Binary.Structures.du472
         (coe (d728 (coe v0))))
name764 = "Relation.Binary.Bundles.StrictTotalOrder.Eq._≈_"
d764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T706 -> AgdaAny -> AgdaAny -> ()
d764 = erased
name766 = "Relation.Binary.Bundles.StrictTotalOrder.Eq._≟_"
d766 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d766 v0 v1 v2 v3 = du766 v3
du766 ::
  T706 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du766 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du468
         (coe (d728 (coe v0))))
name768 = "Relation.Binary.Bundles.StrictTotalOrder.Eq.Carrier"
d768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T706 -> ()
d768 = erased
name770
  = "Relation.Binary.Bundles.StrictTotalOrder.Eq.isDecEquivalence"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Relation.Binary.Structures.T44
d770 v0 v1 v2 v3 = du770 v3
du770 :: T706 -> MAlonzo.Code.Relation.Binary.Structures.T44
du770 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du472
         (coe (d728 (coe v0))))
name772
  = "Relation.Binary.Bundles.StrictTotalOrder.Eq.isEquivalence"
d772 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Relation.Binary.Structures.T26
d772 v0 v1 v2 v3 = du772 v3
du772 :: T706 -> MAlonzo.Code.Relation.Binary.Structures.T26
du772 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d462
         (coe (d728 (coe v0))))
name774
  = "Relation.Binary.Bundles.StrictTotalOrder.Eq.isPartialEquivalence"
d774 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Relation.Binary.Structures.T16
d774 v0 v1 v2 v3 = du774 v3
du774 :: T706 -> MAlonzo.Code.Relation.Binary.Structures.T16
du774 v0
  = let v1 = du760 (coe v0) in
    let v2 = d102 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (MAlonzo.Code.Relation.Binary.Structures.d50 (coe v2))))
name776 = "Relation.Binary.Bundles.StrictTotalOrder.Eq.refl"
d776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T706 -> AgdaAny -> AgdaAny
d776 v0 v1 v2 v3 = du776 v3
du776 :: T706 -> AgdaAny -> AgdaAny
du776 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d462
               (coe (d728 (coe v0))))))
name778 = "Relation.Binary.Bundles.StrictTotalOrder.Eq.reflexive"
d778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d778 v0 v1 v2 v3 = du778 v3
du778 ::
  T706 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du778 v0
  = let v1 = du760 (coe v0) in
    let v2 = d102 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (MAlonzo.Code.Relation.Binary.Structures.d50 (coe v2))) v3)
name780 = "Relation.Binary.Bundles.StrictTotalOrder.Eq.setoid"
d780 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T706 -> T44
d780 v0 v1 v2 v3 = du780 v3
du780 :: T706 -> T44
du780 v0 = coe (du120 (coe (du760 (coe v0))))
name782 = "Relation.Binary.Bundles.StrictTotalOrder.Eq.sym"
d782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d782 v0 v1 v2 v3 = du782 v3
du782 :: T706 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du782 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d462
               (coe (d728 (coe v0))))))
name784 = "Relation.Binary.Bundles.StrictTotalOrder.Eq.trans"
d784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d784 v0 v1 v2 v3 = du784 v3
du784 ::
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du784 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d462
               (coe (d728 (coe v0))))))
