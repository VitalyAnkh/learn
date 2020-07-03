{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
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
newtype T10 = C83 MAlonzo.Code.Relation.Binary.Structures.T16
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
      C83 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name30 = "Relation.Binary.Bundles.PartialSetoid._.sym"
d30 :: T10 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d30 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d22 (coe d26 (coe v0))
name32 = "Relation.Binary.Bundles.PartialSetoid._.trans"
d32 ::
  T10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d32 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d24 (coe d26 (coe v0))
name34 = "Relation.Binary.Bundles.PartialSetoid._≉_"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T10 -> AgdaAny -> AgdaAny -> ()
d34 = erased
name44 = "Relation.Binary.Bundles.Setoid"
d44 a0 a1 = ()
newtype T44 = C501 MAlonzo.Code.Relation.Binary.Structures.T26
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
      C501 v3 -> coe v3
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
      MAlonzo.Code.Relation.Binary.Structures.du42 (coe d60 (coe v0))
name66 = "Relation.Binary.Bundles.Setoid._.refl"
d66 :: T44 -> AgdaAny -> AgdaAny
d66 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34 (coe d60 (coe v0))
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
du68 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du40 (coe d60 (coe v0)) v1
name70 = "Relation.Binary.Bundles.Setoid._.sym"
d70 :: T44 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d70 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36 (coe d60 (coe v0))
name72 = "Relation.Binary.Bundles.Setoid._.trans"
d72 ::
  T44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d72 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38 (coe d60 (coe v0))
name74 = "Relation.Binary.Bundles.Setoid.partialSetoid"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T44 -> T10
d74 v0 v1 v2 = du74 v2
du74 :: T44 -> T10
du74 v0
  = coe
      C83
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du42 (coe d60 (coe v0)))
name78 = "Relation.Binary.Bundles.Setoid._._≉_"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T44 -> AgdaAny -> AgdaAny -> ()
d78 = erased
name84 = "Relation.Binary.Bundles.DecSetoid"
d84 a0 a1 = ()
newtype T84 = C939 MAlonzo.Code.Relation.Binary.Structures.T44
name96 = "Relation.Binary.Bundles.DecSetoid.Carrier"
d96 :: T84 -> ()
d96 = erased
name98 = "Relation.Binary.Bundles.DecSetoid._≈_"
d98 :: T84 -> AgdaAny -> AgdaAny -> ()
d98 = erased
name100 = "Relation.Binary.Bundles.DecSetoid.isDecEquivalence"
d100 :: T84 -> MAlonzo.Code.Relation.Binary.Structures.T44
d100 v0
  = case coe v0 of
      C939 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name104 = "Relation.Binary.Bundles.DecSetoid._._≟_"
d104 ::
  T84 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d104 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d52 (coe d100 (coe v0))
name106 = "Relation.Binary.Bundles.DecSetoid._.isEquivalence"
d106 :: T84 -> MAlonzo.Code.Relation.Binary.Structures.T26
d106 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d50 (coe d100 (coe v0))
name108
  = "Relation.Binary.Bundles.DecSetoid._.isPartialEquivalence"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T84 -> MAlonzo.Code.Relation.Binary.Structures.T16
d108 v0 v1 v2 = du108 v2
du108 :: T84 -> MAlonzo.Code.Relation.Binary.Structures.T16
du108 v0
  = let v1 = d100 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v1))
name110 = "Relation.Binary.Bundles.DecSetoid._.refl"
d110 :: T84 -> AgdaAny -> AgdaAny
d110 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d50 (coe d100 (coe v0)))
name112 = "Relation.Binary.Bundles.DecSetoid._.reflexive"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T84 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d112 v0 v1 v2 = du112 v2
du112 ::
  T84 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du112 v0
  = let v1 = d100 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v1)) v2
name114 = "Relation.Binary.Bundles.DecSetoid._.sym"
d114 :: T84 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d114 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d50 (coe d100 (coe v0)))
name116 = "Relation.Binary.Bundles.DecSetoid._.trans"
d116 ::
  T84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d116 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d50 (coe d100 (coe v0)))
name118 = "Relation.Binary.Bundles.DecSetoid.setoid"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T84 -> T44
d118 v0 v1 v2 = du118 v2
du118 :: T84 -> T44
du118 v0
  = coe
      C501
      (MAlonzo.Code.Relation.Binary.Structures.d50 (coe d100 (coe v0)))
name122 = "Relation.Binary.Bundles.DecSetoid._._≉_"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T84 -> AgdaAny -> AgdaAny -> ()
d122 = erased
name124 = "Relation.Binary.Bundles.DecSetoid._.partialSetoid"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T84 -> T10
d124 v0 v1 v2 = du124 v2
du124 :: T84 -> T10
du124 v0 = coe du74 (coe du118 (coe v0))
name132 = "Relation.Binary.Bundles.Preorder"
d132 a0 a1 a2 = ()
newtype T132 = C1509 MAlonzo.Code.Relation.Binary.Structures.T70
name148 = "Relation.Binary.Bundles.Preorder.Carrier"
d148 :: T132 -> ()
d148 = erased
name150 = "Relation.Binary.Bundles.Preorder._≈_"
d150 :: T132 -> AgdaAny -> AgdaAny -> ()
d150 = erased
name152 = "Relation.Binary.Bundles.Preorder._∼_"
d152 :: T132 -> AgdaAny -> AgdaAny -> ()
d152 = erased
name154 = "Relation.Binary.Bundles.Preorder.isPreorder"
d154 :: T132 -> MAlonzo.Code.Relation.Binary.Structures.T70
d154 v0
  = case coe v0 of
      C1509 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name158 = "Relation.Binary.Bundles.Preorder._.isEquivalence"
d158 :: T132 -> MAlonzo.Code.Relation.Binary.Structures.T26
d158 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v0))
name160 = "Relation.Binary.Bundles.Preorder._.refl"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T132 -> AgdaAny -> AgdaAny
d160 v0 v1 v2 v3 = du160 v3
du160 :: T132 -> AgdaAny -> AgdaAny
du160 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du98 (coe d154 (coe v0))
name162 = "Relation.Binary.Bundles.Preorder._.reflexive"
d162 :: T132 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d162 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82 (coe d154 (coe v0))
name164 = "Relation.Binary.Bundles.Preorder._.trans"
d164 ::
  T132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84 (coe d154 (coe v0))
name166 = "Relation.Binary.Bundles.Preorder._.∼-resp-≈"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T132 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d166 v0 v1 v2 v3 = du166 v3
du166 :: T132 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du166 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du112 (coe d154 (coe v0))
name168 = "Relation.Binary.Bundles.Preorder._.∼-respʳ-≈"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d168 v0 v1 v2 v3 = du168 v3
du168 ::
  T132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du168 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du106 (coe d154 (coe v0))
name170 = "Relation.Binary.Bundles.Preorder._.∼-respˡ-≈"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d170 v0 v1 v2 v3 = du170 v3
du170 ::
  T132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du170 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du100 (coe d154 (coe v0))
name174 = "Relation.Binary.Bundles.Preorder.Eq.setoid"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T132 -> T44
d174 v0 v1 v2 v3 = du174 v3
du174 :: T132 -> T44
du174 v0
  = coe
      C501
      (MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v0)))
name178 = "Relation.Binary.Bundles.Preorder.Eq._._≈_"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T132 -> AgdaAny -> AgdaAny -> ()
d178 = erased
name180 = "Relation.Binary.Bundles.Preorder.Eq._._≉_"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T132 -> AgdaAny -> AgdaAny -> ()
d180 = erased
name182 = "Relation.Binary.Bundles.Preorder.Eq._.Carrier"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T132 -> ()
d182 = erased
name184 = "Relation.Binary.Bundles.Preorder.Eq._.isEquivalence"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T132 -> MAlonzo.Code.Relation.Binary.Structures.T26
d184 v0 v1 v2 v3 = du184 v3
du184 :: T132 -> MAlonzo.Code.Relation.Binary.Structures.T26
du184 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v0))
name186
  = "Relation.Binary.Bundles.Preorder.Eq._.isPartialEquivalence"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T132 -> MAlonzo.Code.Relation.Binary.Structures.T16
d186 v0 v1 v2 v3 = du186 v3
du186 :: T132 -> MAlonzo.Code.Relation.Binary.Structures.T16
du186 v0
  = let v1 = coe du174 (coe v0) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d60 (coe v1))
name188 = "Relation.Binary.Bundles.Preorder.Eq._.partialSetoid"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T132 -> T10
d188 v0 v1 v2 v3 = du188 v3
du188 :: T132 -> T10
du188 v0 = coe du74 (coe du174 (coe v0))
name190 = "Relation.Binary.Bundles.Preorder.Eq._.refl"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T132 -> AgdaAny -> AgdaAny
d190 v0 v1 v2 v3 = du190 v3
du190 :: T132 -> AgdaAny -> AgdaAny
du190 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v0)))
name192 = "Relation.Binary.Bundles.Preorder.Eq._.reflexive"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T132 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d192 v0 v1 v2 v3 = du192 v3
du192 ::
  T132 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du192 v0
  = let v1 = coe du174 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d60 (coe v1)) v2
name194 = "Relation.Binary.Bundles.Preorder.Eq._.sym"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T132 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d194 v0 v1 v2 v3 = du194 v3
du194 :: T132 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du194 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v0)))
name196 = "Relation.Binary.Bundles.Preorder.Eq._.trans"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d196 v0 v1 v2 v3 = du196 v3
du196 ::
  T132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du196 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v0)))
name204 = "Relation.Binary.Bundles.Poset"
d204 a0 a1 a2 = ()
newtype T204 = C2365 MAlonzo.Code.Relation.Binary.Structures.T118
name220 = "Relation.Binary.Bundles.Poset.Carrier"
d220 :: T204 -> ()
d220 = erased
name222 = "Relation.Binary.Bundles.Poset._≈_"
d222 :: T204 -> AgdaAny -> AgdaAny -> ()
d222 = erased
name224 = "Relation.Binary.Bundles.Poset._≤_"
d224 :: T204 -> AgdaAny -> AgdaAny -> ()
d224 = erased
name226 = "Relation.Binary.Bundles.Poset.isPartialOrder"
d226 :: T204 -> MAlonzo.Code.Relation.Binary.Structures.T118
d226 v0
  = case coe v0 of
      C2365 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name230 = "Relation.Binary.Bundles.Poset._.antisym"
d230 :: T204 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d230 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128 (coe d226 (coe v0))
name232 = "Relation.Binary.Bundles.Poset._.isEquivalence"
d232 :: T204 -> MAlonzo.Code.Relation.Binary.Structures.T26
d232 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126 (coe d226 (coe v0)))
name234 = "Relation.Binary.Bundles.Poset._.isPreorder"
d234 :: T204 -> MAlonzo.Code.Relation.Binary.Structures.T70
d234 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126 (coe d226 (coe v0))
name236 = "Relation.Binary.Bundles.Poset._.refl"
d236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T204 -> AgdaAny -> AgdaAny
d236 v0 v1 v2 v3 = du236 v3
du236 :: T204 -> AgdaAny -> AgdaAny
du236 v0
  = let v1 = d226 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name238 = "Relation.Binary.Bundles.Poset._.reflexive"
d238 :: T204 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d238 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126 (coe d226 (coe v0)))
name240 = "Relation.Binary.Bundles.Poset._.trans"
d240 ::
  T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d240 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126 (coe d226 (coe v0)))
name242 = "Relation.Binary.Bundles.Poset._.∼-resp-≈"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T204 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d242 v0 v1 v2 v3 = du242 v3
du242 :: T204 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du242 v0
  = let v1 = d226 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name244 = "Relation.Binary.Bundles.Poset._.∼-respʳ-≈"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d244 v0 v1 v2 v3 = du244 v3
du244 ::
  T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du244 v0
  = let v1 = d226 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name246 = "Relation.Binary.Bundles.Poset._.∼-respˡ-≈"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d246 v0 v1 v2 v3 = du246 v3
du246 ::
  T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du246 v0
  = let v1 = d226 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name248 = "Relation.Binary.Bundles.Poset.preorder"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T204 -> T132
d248 v0 v1 v2 v3 = du248 v3
du248 :: T204 -> T132
du248 v0
  = coe
      C1509
      (MAlonzo.Code.Relation.Binary.Structures.d126 (coe d226 (coe v0)))
name254 = "Relation.Binary.Bundles.Poset._.Eq._≈_"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T204 -> AgdaAny -> AgdaAny -> ()
d254 = erased
name256 = "Relation.Binary.Bundles.Poset._.Eq._≉_"
d256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T204 -> AgdaAny -> AgdaAny -> ()
d256 = erased
name258 = "Relation.Binary.Bundles.Poset._.Eq.Carrier"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T204 -> ()
d258 = erased
name260 = "Relation.Binary.Bundles.Poset._.Eq.isEquivalence"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T204 -> MAlonzo.Code.Relation.Binary.Structures.T26
d260 v0 v1 v2 v3 = du260 v3
du260 :: T204 -> MAlonzo.Code.Relation.Binary.Structures.T26
du260 v0
  = let v1 = coe du248 (coe v0) in
    coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v1))
name262 = "Relation.Binary.Bundles.Poset._.Eq.isPartialEquivalence"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T204 -> MAlonzo.Code.Relation.Binary.Structures.T16
d262 v0 v1 v2 v3 = du262 v3
du262 :: T204 -> MAlonzo.Code.Relation.Binary.Structures.T16
du262 v0
  = let v1 = coe du248 (coe v0) in
    let v2 = coe du174 (coe v1) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d60 (coe v2))
name264 = "Relation.Binary.Bundles.Poset._.Eq.partialSetoid"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T204 -> T10
d264 v0 v1 v2 v3 = du264 v3
du264 :: T204 -> T10
du264 v0
  = let v1 = coe du248 (coe v0) in coe du74 (coe du174 (coe v1))
name266 = "Relation.Binary.Bundles.Poset._.Eq.refl"
d266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T204 -> AgdaAny -> AgdaAny
d266 v0 v1 v2 v3 = du266 v3
du266 :: T204 -> AgdaAny -> AgdaAny
du266 v0
  = let v1 = coe du248 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v1)))
name268 = "Relation.Binary.Bundles.Poset._.Eq.reflexive"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T204 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d268 v0 v1 v2 v3 = du268 v3
du268 ::
  T204 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du268 v0
  = let v1 = coe du248 (coe v0) in
    let v2 = coe du174 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d60 (coe v2)) v3
name270 = "Relation.Binary.Bundles.Poset._.Eq.setoid"
d270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T204 -> T44
d270 v0 v1 v2 v3 = du270 v3
du270 :: T204 -> T44
du270 v0 = coe du174 (coe du248 (coe v0))
name272 = "Relation.Binary.Bundles.Poset._.Eq.sym"
d272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T204 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d272 v0 v1 v2 v3 = du272 v3
du272 :: T204 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du272 v0
  = let v1 = coe du248 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v1)))
name274 = "Relation.Binary.Bundles.Poset._.Eq.trans"
d274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d274 v0 v1 v2 v3 = du274 v3
du274 ::
  T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du274 v0
  = let v1 = coe du248 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v1)))
name282 = "Relation.Binary.Bundles.DecPoset"
d282 a0 a1 a2 = ()
newtype T282 = C3319 MAlonzo.Code.Relation.Binary.Structures.T162
name298 = "Relation.Binary.Bundles.DecPoset.Carrier"
d298 :: T282 -> ()
d298 = erased
name300 = "Relation.Binary.Bundles.DecPoset._≈_"
d300 :: T282 -> AgdaAny -> AgdaAny -> ()
d300 = erased
name302 = "Relation.Binary.Bundles.DecPoset._≤_"
d302 :: T282 -> AgdaAny -> AgdaAny -> ()
d302 = erased
name304 = "Relation.Binary.Bundles.DecPoset.isDecPartialOrder"
d304 :: T282 -> MAlonzo.Code.Relation.Binary.Structures.T162
d304 v0
  = case coe v0 of
      C3319 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name308 = "Relation.Binary.Bundles.DecPoset.DPO._≟_"
d308 ::
  T282 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d308 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d174 (coe d304 (coe v0))
name310 = "Relation.Binary.Bundles.DecPoset.DPO._≤?_"
d310 ::
  T282 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d310 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d176 (coe d304 (coe v0))
name312 = "Relation.Binary.Bundles.DecPoset.DPO.antisym"
d312 :: T282 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d312 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v0)))
name314 = "Relation.Binary.Bundles.DecPoset.DPO.isEquivalence"
d314 :: T282 -> MAlonzo.Code.Relation.Binary.Structures.T26
d314 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v0))))
name316 = "Relation.Binary.Bundles.DecPoset.DPO.isPartialOrder"
d316 :: T282 -> MAlonzo.Code.Relation.Binary.Structures.T118
d316 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v0))
name318 = "Relation.Binary.Bundles.DecPoset.DPO.isPreorder"
d318 :: T282 -> MAlonzo.Code.Relation.Binary.Structures.T70
d318 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v0)))
name320 = "Relation.Binary.Bundles.DecPoset.DPO.refl"
d320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> AgdaAny -> AgdaAny
d320 v0 v1 v2 v3 = du320 v3
du320 :: T282 -> AgdaAny -> AgdaAny
du320 v0
  = let v1 = d304 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d172 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name322 = "Relation.Binary.Bundles.DecPoset.DPO.reflexive"
d322 :: T282 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v0))))
name324 = "Relation.Binary.Bundles.DecPoset.DPO.trans"
d324 ::
  T282 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d324 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v0))))
name326 = "Relation.Binary.Bundles.DecPoset.DPO.∼-resp-≈"
d326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d326 v0 v1 v2 v3 = du326 v3
du326 :: T282 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du326 v0
  = let v1 = d304 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d172 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name328 = "Relation.Binary.Bundles.DecPoset.DPO.∼-respʳ-≈"
d328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d328 v0 v1 v2 v3 = du328 v3
du328 ::
  T282 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du328 v0
  = let v1 = d304 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d172 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name330 = "Relation.Binary.Bundles.DecPoset.DPO.∼-respˡ-≈"
d330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d330 v0 v1 v2 v3 = du330 v3
du330 ::
  T282 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du330 v0
  = let v1 = d304 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d172 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name350 = "Relation.Binary.Bundles.DecPoset.poset"
d350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> T204
d350 v0 v1 v2 v3 = du350 v3
du350 :: T282 -> T204
du350 v0
  = coe
      C2365
      (MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v0)))
name354 = "Relation.Binary.Bundles.DecPoset._.preorder"
d354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> T132
d354 v0 v1 v2 v3 = du354 v3
du354 :: T282 -> T132
du354 v0 = coe du248 (coe du350 (coe v0))
name358 = "Relation.Binary.Bundles.DecPoset.Eq.decSetoid"
d358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> T84
d358 v0 v1 v2 v3 = du358 v3
du358 :: T282 -> T84
du358 v0
  = coe
      C939
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du200 (coe d304 (coe v0)))
name362 = "Relation.Binary.Bundles.DecPoset.Eq._._≈_"
d362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> AgdaAny -> AgdaAny -> ()
d362 = erased
name364 = "Relation.Binary.Bundles.DecPoset.Eq._._≉_"
d364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> AgdaAny -> AgdaAny -> ()
d364 = erased
name366 = "Relation.Binary.Bundles.DecPoset.Eq._._≟_"
d366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d366 v0 v1 v2 v3 = du366 v3
du366 ::
  T282 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du366 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d174 (coe d304 (coe v0))
name368 = "Relation.Binary.Bundles.DecPoset.Eq._.Carrier"
d368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> ()
d368 = erased
name370 = "Relation.Binary.Bundles.DecPoset.Eq._.isDecEquivalence"
d370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 -> MAlonzo.Code.Relation.Binary.Structures.T44
d370 v0 v1 v2 v3 = du370 v3
du370 :: T282 -> MAlonzo.Code.Relation.Binary.Structures.T44
du370 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du200 (coe d304 (coe v0))
name372 = "Relation.Binary.Bundles.DecPoset.Eq._.isEquivalence"
d372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 -> MAlonzo.Code.Relation.Binary.Structures.T26
d372 v0 v1 v2 v3 = du372 v3
du372 :: T282 -> MAlonzo.Code.Relation.Binary.Structures.T26
du372 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v0))))
name374
  = "Relation.Binary.Bundles.DecPoset.Eq._.isPartialEquivalence"
d374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 -> MAlonzo.Code.Relation.Binary.Structures.T16
d374 v0 v1 v2 v3 = du374 v3
du374 :: T282 -> MAlonzo.Code.Relation.Binary.Structures.T16
du374 v0
  = let v1 = coe du358 (coe v0) in
    let v2 = d100 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v2))
name376 = "Relation.Binary.Bundles.DecPoset.Eq._.partialSetoid"
d376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> T10
d376 v0 v1 v2 v3 = du376 v3
du376 :: T282 -> T10
du376 v0
  = let v1 = coe du358 (coe v0) in coe du74 (coe du118 (coe v1))
name378 = "Relation.Binary.Bundles.DecPoset.Eq._.refl"
d378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> AgdaAny -> AgdaAny
d378 v0 v1 v2 v3 = du378 v3
du378 :: T282 -> AgdaAny -> AgdaAny
du378 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v0)))))
name380 = "Relation.Binary.Bundles.DecPoset.Eq._.reflexive"
d380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d380 v0 v1 v2 v3 = du380 v3
du380 ::
  T282 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du380 v0
  = let v1 = coe du358 (coe v0) in
    let v2 = d100 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v2)) v3
name382 = "Relation.Binary.Bundles.DecPoset.Eq._.setoid"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> T44
d382 v0 v1 v2 v3 = du382 v3
du382 :: T282 -> T44
du382 v0 = coe du118 (coe du358 (coe v0))
name384 = "Relation.Binary.Bundles.DecPoset.Eq._.sym"
d384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d384 v0 v1 v2 v3 = du384 v3
du384 :: T282 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du384 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v0)))))
name386 = "Relation.Binary.Bundles.DecPoset.Eq._.trans"
d386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d386 v0 v1 v2 v3 = du386 v3
du386 ::
  T282 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du386 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v0)))))
name394 = "Relation.Binary.Bundles.StrictPartialOrder"
d394 a0 a1 a2 = ()
newtype T394 = C4625 MAlonzo.Code.Relation.Binary.Structures.T222
name410 = "Relation.Binary.Bundles.StrictPartialOrder.Carrier"
d410 :: T394 -> ()
d410 = erased
name412 = "Relation.Binary.Bundles.StrictPartialOrder._≈_"
d412 :: T394 -> AgdaAny -> AgdaAny -> ()
d412 = erased
name414 = "Relation.Binary.Bundles.StrictPartialOrder._<_"
d414 :: T394 -> AgdaAny -> AgdaAny -> ()
d414 = erased
name416
  = "Relation.Binary.Bundles.StrictPartialOrder.isStrictPartialOrder"
d416 :: T394 -> MAlonzo.Code.Relation.Binary.Structures.T222
d416 v0
  = case coe v0 of
      C4625 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name420 = "Relation.Binary.Bundles.StrictPartialOrder._.<-resp-≈"
d420 :: T394 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d420 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d240 (coe d416 (coe v0))
name422 = "Relation.Binary.Bundles.StrictPartialOrder._.<-respʳ-≈"
d422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T394 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d422 v0 v1 v2 v3 = du422 v3
du422 ::
  T394 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du422 v0
  = let v1 = d416 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d28
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v1)) v2 v3 v4)
name424 = "Relation.Binary.Bundles.StrictPartialOrder._.<-respˡ-≈"
d424 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T394 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d424 v0 v1 v2 v3 = du424 v3
du424 ::
  T394 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du424 v0
  = let v1 = d416 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v1)) v2 v3 v4)
name426 = "Relation.Binary.Bundles.StrictPartialOrder._.asym"
d426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T394 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d426 = erased
name428 = "Relation.Binary.Bundles.StrictPartialOrder._.asymmetric"
d428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T394 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d428 = erased
name430 = "Relation.Binary.Bundles.StrictPartialOrder._.irrefl"
d430 ::
  T394 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d430 = erased
name432
  = "Relation.Binary.Bundles.StrictPartialOrder._.isEquivalence"
d432 :: T394 -> MAlonzo.Code.Relation.Binary.Structures.T26
d432 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d234 (coe d416 (coe v0))
name434 = "Relation.Binary.Bundles.StrictPartialOrder._.trans"
d434 ::
  T394 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d434 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d238 (coe d416 (coe v0))
name438 = "Relation.Binary.Bundles.StrictPartialOrder.Eq.setoid"
d438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T394 -> T44
d438 v0 v1 v2 v3 = du438 v3
du438 :: T394 -> T44
du438 v0
  = coe
      C501
      (MAlonzo.Code.Relation.Binary.Structures.d234 (coe d416 (coe v0)))
name442 = "Relation.Binary.Bundles.StrictPartialOrder.Eq._._≈_"
d442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T394 -> AgdaAny -> AgdaAny -> ()
d442 = erased
name444 = "Relation.Binary.Bundles.StrictPartialOrder.Eq._._≉_"
d444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T394 -> AgdaAny -> AgdaAny -> ()
d444 = erased
name446 = "Relation.Binary.Bundles.StrictPartialOrder.Eq._.Carrier"
d446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T394 -> ()
d446 = erased
name448
  = "Relation.Binary.Bundles.StrictPartialOrder.Eq._.isEquivalence"
d448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T394 -> MAlonzo.Code.Relation.Binary.Structures.T26
d448 v0 v1 v2 v3 = du448 v3
du448 :: T394 -> MAlonzo.Code.Relation.Binary.Structures.T26
du448 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d234 (coe d416 (coe v0))
name450
  = "Relation.Binary.Bundles.StrictPartialOrder.Eq._.isPartialEquivalence"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T394 -> MAlonzo.Code.Relation.Binary.Structures.T16
d450 v0 v1 v2 v3 = du450 v3
du450 :: T394 -> MAlonzo.Code.Relation.Binary.Structures.T16
du450 v0
  = let v1 = coe du438 (coe v0) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d60 (coe v1))
name452
  = "Relation.Binary.Bundles.StrictPartialOrder.Eq._.partialSetoid"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T394 -> T10
d452 v0 v1 v2 v3 = du452 v3
du452 :: T394 -> T10
du452 v0 = coe du74 (coe du438 (coe v0))
name454 = "Relation.Binary.Bundles.StrictPartialOrder.Eq._.refl"
d454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T394 -> AgdaAny -> AgdaAny
d454 v0 v1 v2 v3 = du454 v3
du454 :: T394 -> AgdaAny -> AgdaAny
du454 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d234 (coe d416 (coe v0)))
name456
  = "Relation.Binary.Bundles.StrictPartialOrder.Eq._.reflexive"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T394 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d456 v0 v1 v2 v3 = du456 v3
du456 ::
  T394 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du456 v0
  = let v1 = coe du438 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d60 (coe v1)) v2
name458 = "Relation.Binary.Bundles.StrictPartialOrder.Eq._.sym"
d458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T394 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d458 v0 v1 v2 v3 = du458 v3
du458 :: T394 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du458 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d234 (coe d416 (coe v0)))
name460 = "Relation.Binary.Bundles.StrictPartialOrder.Eq._.trans"
d460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T394 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d460 v0 v1 v2 v3 = du460 v3
du460 ::
  T394 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du460 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d234 (coe d416 (coe v0)))
name468 = "Relation.Binary.Bundles.DecStrictPartialOrder"
d468 a0 a1 a2 = ()
newtype T468 = C5527 MAlonzo.Code.Relation.Binary.Structures.T270
name484 = "Relation.Binary.Bundles.DecStrictPartialOrder.Carrier"
d484 :: T468 -> ()
d484 = erased
name486 = "Relation.Binary.Bundles.DecStrictPartialOrder._≈_"
d486 :: T468 -> AgdaAny -> AgdaAny -> ()
d486 = erased
name488 = "Relation.Binary.Bundles.DecStrictPartialOrder._<_"
d488 :: T468 -> AgdaAny -> AgdaAny -> ()
d488 = erased
name490
  = "Relation.Binary.Bundles.DecStrictPartialOrder.isDecStrictPartialOrder"
d490 :: T468 -> MAlonzo.Code.Relation.Binary.Structures.T270
d490 v0
  = case coe v0 of
      C5527 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name494 = "Relation.Binary.Bundles.DecStrictPartialOrder.DSPO._<?_"
d494 ::
  T468 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d494 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d284 (coe d490 (coe v0))
name496 = "Relation.Binary.Bundles.DecStrictPartialOrder.DSPO._≟_"
d496 ::
  T468 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d496 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d282 (coe d490 (coe v0))
name498
  = "Relation.Binary.Bundles.DecStrictPartialOrder.DSPO.<-resp-≈"
d498 :: T468 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d498 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d240
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d280 (coe d490 (coe v0)))
name500
  = "Relation.Binary.Bundles.DecStrictPartialOrder.DSPO.<-respʳ-≈"
d500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d500 v0 v1 v2 v3 = du500 v3
du500 ::
  T468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du500 v0
  = let v1 = d490 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d280 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d28
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v2)) v3 v4 v5)
name502
  = "Relation.Binary.Bundles.DecStrictPartialOrder.DSPO.<-respˡ-≈"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d502 v0 v1 v2 v3 = du502 v3
du502 ::
  T468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du502 v0
  = let v1 = d490 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d280 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v2)) v3 v4 v5)
name504 = "Relation.Binary.Bundles.DecStrictPartialOrder.DSPO.asym"
d504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T468 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d504 = erased
name506
  = "Relation.Binary.Bundles.DecStrictPartialOrder.DSPO.asymmetric"
d506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T468 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d506 = erased
name508
  = "Relation.Binary.Bundles.DecStrictPartialOrder.DSPO.irrefl"
d508 ::
  T468 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d508 = erased
name510
  = "Relation.Binary.Bundles.DecStrictPartialOrder.DSPO.isEquivalence"
d510 :: T468 -> MAlonzo.Code.Relation.Binary.Structures.T26
d510 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d234
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d280 (coe d490 (coe v0)))
name512
  = "Relation.Binary.Bundles.DecStrictPartialOrder.DSPO.isStrictPartialOrder"
d512 :: T468 -> MAlonzo.Code.Relation.Binary.Structures.T222
d512 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d280 (coe d490 (coe v0))
name514
  = "Relation.Binary.Bundles.DecStrictPartialOrder.DSPO.trans"
d514 ::
  T468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d514 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d238
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d280 (coe d490 (coe v0)))
name534
  = "Relation.Binary.Bundles.DecStrictPartialOrder.strictPartialOrder"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T468 -> T394
d534 v0 v1 v2 v3 = du534 v3
du534 :: T468 -> T394
du534 v0
  = coe
      C4625
      (MAlonzo.Code.Relation.Binary.Structures.d280 (coe d490 (coe v0)))
name538
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq.decSetoid"
d538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T468 -> T84
d538 v0 v1 v2 v3 = du538 v3
du538 :: T468 -> T84
du538 v0
  = coe
      C939
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du318 (coe d490 (coe v0)))
name542 = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._._≈_"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T468 -> AgdaAny -> AgdaAny -> ()
d542 = erased
name544 = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._._≉_"
d544 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T468 -> AgdaAny -> AgdaAny -> ()
d544 = erased
name546 = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._._≟_"
d546 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T468 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d546 v0 v1 v2 v3 = du546 v3
du546 ::
  T468 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du546 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d282 (coe d490 (coe v0))
name548
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.Carrier"
d548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T468 -> ()
d548 = erased
name550
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.isDecEquivalence"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T468 -> MAlonzo.Code.Relation.Binary.Structures.T44
d550 v0 v1 v2 v3 = du550 v3
du550 :: T468 -> MAlonzo.Code.Relation.Binary.Structures.T44
du550 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du318 (coe d490 (coe v0))
name552
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.isEquivalence"
d552 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T468 -> MAlonzo.Code.Relation.Binary.Structures.T26
d552 v0 v1 v2 v3 = du552 v3
du552 :: T468 -> MAlonzo.Code.Relation.Binary.Structures.T26
du552 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d234
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d280 (coe d490 (coe v0)))
name554
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.isPartialEquivalence"
d554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T468 -> MAlonzo.Code.Relation.Binary.Structures.T16
d554 v0 v1 v2 v3 = du554 v3
du554 :: T468 -> MAlonzo.Code.Relation.Binary.Structures.T16
du554 v0
  = let v1 = coe du538 (coe v0) in
    let v2 = d100 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v2))
name556
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.partialSetoid"
d556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T468 -> T10
d556 v0 v1 v2 v3 = du556 v3
du556 :: T468 -> T10
du556 v0
  = let v1 = coe du538 (coe v0) in coe du74 (coe du118 (coe v1))
name558 = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.refl"
d558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T468 -> AgdaAny -> AgdaAny
d558 v0 v1 v2 v3 = du558 v3
du558 :: T468 -> AgdaAny -> AgdaAny
du558 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d234
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d280 (coe d490 (coe v0))))
name560
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.reflexive"
d560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T468 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d560 v0 v1 v2 v3 = du560 v3
du560 ::
  T468 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du560 v0
  = let v1 = coe du538 (coe v0) in
    let v2 = d100 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v2)) v3
name562
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.setoid"
d562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T468 -> T44
d562 v0 v1 v2 v3 = du562 v3
du562 :: T468 -> T44
du562 v0 = coe du118 (coe du538 (coe v0))
name564 = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.sym"
d564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d564 v0 v1 v2 v3 = du564 v3
du564 :: T468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du564 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d234
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d280 (coe d490 (coe v0))))
name566
  = "Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.trans"
d566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d566 v0 v1 v2 v3 = du566 v3
du566 ::
  T468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du566 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d234
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d280 (coe d490 (coe v0))))
name574 = "Relation.Binary.Bundles.TotalOrder"
d574 a0 a1 a2 = ()
newtype T574 = C6779 MAlonzo.Code.Relation.Binary.Structures.T340
name590 = "Relation.Binary.Bundles.TotalOrder.Carrier"
d590 :: T574 -> ()
d590 = erased
name592 = "Relation.Binary.Bundles.TotalOrder._≈_"
d592 :: T574 -> AgdaAny -> AgdaAny -> ()
d592 = erased
name594 = "Relation.Binary.Bundles.TotalOrder._≤_"
d594 :: T574 -> AgdaAny -> AgdaAny -> ()
d594 = erased
name596 = "Relation.Binary.Bundles.TotalOrder.isTotalOrder"
d596 :: T574 -> MAlonzo.Code.Relation.Binary.Structures.T340
d596 v0
  = case coe v0 of
      C6779 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name600 = "Relation.Binary.Bundles.TotalOrder._.antisym"
d600 :: T574 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d600 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d348 (coe d596 (coe v0)))
name602 = "Relation.Binary.Bundles.TotalOrder._.isEquivalence"
d602 :: T574 -> MAlonzo.Code.Relation.Binary.Structures.T26
d602 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d348 (coe d596 (coe v0))))
name604 = "Relation.Binary.Bundles.TotalOrder._.isPartialOrder"
d604 :: T574 -> MAlonzo.Code.Relation.Binary.Structures.T118
d604 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d348 (coe d596 (coe v0))
name606 = "Relation.Binary.Bundles.TotalOrder._.isPreorder"
d606 :: T574 -> MAlonzo.Code.Relation.Binary.Structures.T70
d606 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d348 (coe d596 (coe v0)))
name608 = "Relation.Binary.Bundles.TotalOrder._.refl"
d608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T574 -> AgdaAny -> AgdaAny
d608 v0 v1 v2 v3 = du608 v3
du608 :: T574 -> AgdaAny -> AgdaAny
du608 v0
  = let v1 = d596 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name610 = "Relation.Binary.Bundles.TotalOrder._.reflexive"
d610 :: T574 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d610 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d348 (coe d596 (coe v0))))
name612 = "Relation.Binary.Bundles.TotalOrder._.total"
d612 ::
  T574 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d612 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d350 (coe d596 (coe v0))
name614 = "Relation.Binary.Bundles.TotalOrder._.trans"
d614 ::
  T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d614 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d348 (coe d596 (coe v0))))
name616 = "Relation.Binary.Bundles.TotalOrder._.∼-resp-≈"
d616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T574 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d616 v0 v1 v2 v3 = du616 v3
du616 :: T574 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du616 v0
  = let v1 = d596 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name618 = "Relation.Binary.Bundles.TotalOrder._.∼-respʳ-≈"
d618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d618 v0 v1 v2 v3 = du618 v3
du618 ::
  T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du618 v0
  = let v1 = d596 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name620 = "Relation.Binary.Bundles.TotalOrder._.∼-respˡ-≈"
d620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d620 v0 v1 v2 v3 = du620 v3
du620 ::
  T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du620 v0
  = let v1 = d596 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name622 = "Relation.Binary.Bundles.TotalOrder.poset"
d622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T574 -> T204
d622 v0 v1 v2 v3 = du622 v3
du622 :: T574 -> T204
du622 v0
  = coe
      C2365
      (MAlonzo.Code.Relation.Binary.Structures.d348 (coe d596 (coe v0)))
name626 = "Relation.Binary.Bundles.TotalOrder._.preorder"
d626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T574 -> T132
d626 v0 v1 v2 v3 = du626 v3
du626 :: T574 -> T132
du626 v0 = coe du248 (coe du622 (coe v0))
name630 = "Relation.Binary.Bundles.TotalOrder._.Eq._≈_"
d630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T574 -> AgdaAny -> AgdaAny -> ()
d630 = erased
name632 = "Relation.Binary.Bundles.TotalOrder._.Eq._≉_"
d632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T574 -> AgdaAny -> AgdaAny -> ()
d632 = erased
name634 = "Relation.Binary.Bundles.TotalOrder._.Eq.Carrier"
d634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T574 -> ()
d634 = erased
name636 = "Relation.Binary.Bundles.TotalOrder._.Eq.isEquivalence"
d636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T574 -> MAlonzo.Code.Relation.Binary.Structures.T26
d636 v0 v1 v2 v3 = du636 v3
du636 :: T574 -> MAlonzo.Code.Relation.Binary.Structures.T26
du636 v0
  = let v1 = coe du622 (coe v0) in
    let v2 = coe du248 (coe v1) in
    coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v2))
name638
  = "Relation.Binary.Bundles.TotalOrder._.Eq.isPartialEquivalence"
d638 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T574 -> MAlonzo.Code.Relation.Binary.Structures.T16
d638 v0 v1 v2 v3 = du638 v3
du638 :: T574 -> MAlonzo.Code.Relation.Binary.Structures.T16
du638 v0
  = let v1 = coe du622 (coe v0) in
    let v2 = coe du248 (coe v1) in
    let v3 = coe du174 (coe v2) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d60 (coe v3))
name640 = "Relation.Binary.Bundles.TotalOrder._.Eq.partialSetoid"
d640 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T574 -> T10
d640 v0 v1 v2 v3 = du640 v3
du640 :: T574 -> T10
du640 v0
  = let v1 = coe du622 (coe v0) in
    let v2 = coe du248 (coe v1) in coe du74 (coe du174 (coe v2))
name642 = "Relation.Binary.Bundles.TotalOrder._.Eq.refl"
d642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T574 -> AgdaAny -> AgdaAny
d642 v0 v1 v2 v3 = du642 v3
du642 :: T574 -> AgdaAny -> AgdaAny
du642 v0
  = let v1 = coe du622 (coe v0) in
    let v2 = coe du248 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v2)))
name644 = "Relation.Binary.Bundles.TotalOrder._.Eq.reflexive"
d644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T574 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d644 v0 v1 v2 v3 = du644 v3
du644 ::
  T574 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du644 v0
  = let v1 = coe du622 (coe v0) in
    let v2 = coe du248 (coe v1) in
    let v3 = coe du174 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d60 (coe v3)) v4
name646 = "Relation.Binary.Bundles.TotalOrder._.Eq.setoid"
d646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T574 -> T44
d646 v0 v1 v2 v3 = du646 v3
du646 :: T574 -> T44
du646 v0
  = let v1 = coe du622 (coe v0) in coe du174 (coe du248 (coe v1))
name648 = "Relation.Binary.Bundles.TotalOrder._.Eq.sym"
d648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T574 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d648 v0 v1 v2 v3 = du648 v3
du648 :: T574 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du648 v0
  = let v1 = coe du622 (coe v0) in
    let v2 = coe du248 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v2)))
name650 = "Relation.Binary.Bundles.TotalOrder._.Eq.trans"
d650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d650 v0 v1 v2 v3 = du650 v3
du650 ::
  T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du650 v0
  = let v1 = coe du622 (coe v0) in
    let v2 = coe du248 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80 (coe d154 (coe v2)))
name658 = "Relation.Binary.Bundles.DecTotalOrder"
d658 a0 a1 a2 = ()
newtype T658 = C7777 MAlonzo.Code.Relation.Binary.Structures.T388
name674 = "Relation.Binary.Bundles.DecTotalOrder.Carrier"
d674 :: T658 -> ()
d674 = erased
name676 = "Relation.Binary.Bundles.DecTotalOrder._≈_"
d676 :: T658 -> AgdaAny -> AgdaAny -> ()
d676 = erased
name678 = "Relation.Binary.Bundles.DecTotalOrder._≤_"
d678 :: T658 -> AgdaAny -> AgdaAny -> ()
d678 = erased
name680 = "Relation.Binary.Bundles.DecTotalOrder.isDecTotalOrder"
d680 :: T658 -> MAlonzo.Code.Relation.Binary.Structures.T388
d680 v0
  = case coe v0 of
      C7777 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name684 = "Relation.Binary.Bundles.DecTotalOrder.DTO._≟_"
d684 ::
  T658 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d684 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d400 (coe d680 (coe v0))
name686 = "Relation.Binary.Bundles.DecTotalOrder.DTO._≤?_"
d686 ::
  T658 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d686 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d402 (coe d680 (coe v0))
name688 = "Relation.Binary.Bundles.DecTotalOrder.DTO.antisym"
d688 :: T658 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d688 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d348
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d398 (coe d680 (coe v0))))
name690
  = "Relation.Binary.Bundles.DecTotalOrder.DTO.isDecPartialOrder"
d690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T658 -> MAlonzo.Code.Relation.Binary.Structures.T162
d690 v0 v1 v2 v3 = du690 v3
du690 :: T658 -> MAlonzo.Code.Relation.Binary.Structures.T162
du690 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du428 (coe d680 (coe v0))
name692 = "Relation.Binary.Bundles.DecTotalOrder.DTO.isEquivalence"
d692 :: T658 -> MAlonzo.Code.Relation.Binary.Structures.T26
d692 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d348
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d398 (coe d680 (coe v0)))))
name694
  = "Relation.Binary.Bundles.DecTotalOrder.DTO.isPartialOrder"
d694 :: T658 -> MAlonzo.Code.Relation.Binary.Structures.T118
d694 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d348
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d398 (coe d680 (coe v0)))
name696 = "Relation.Binary.Bundles.DecTotalOrder.DTO.isPreorder"
d696 :: T658 -> MAlonzo.Code.Relation.Binary.Structures.T70
d696 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d348
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d398 (coe d680 (coe v0))))
name698 = "Relation.Binary.Bundles.DecTotalOrder.DTO.isTotalOrder"
d698 :: T658 -> MAlonzo.Code.Relation.Binary.Structures.T340
d698 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d398 (coe d680 (coe v0))
name700 = "Relation.Binary.Bundles.DecTotalOrder.DTO.refl"
d700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T658 -> AgdaAny -> AgdaAny
d700 v0 v1 v2 v3 = du700 v3
du700 :: T658 -> AgdaAny -> AgdaAny
du700 v0
  = let v1 = d680 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d398 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name702 = "Relation.Binary.Bundles.DecTotalOrder.DTO.reflexive"
d702 :: T658 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d702 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d348
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d398 (coe d680 (coe v0)))))
name704 = "Relation.Binary.Bundles.DecTotalOrder.DTO.total"
d704 ::
  T658 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d704 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d350
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d398 (coe d680 (coe v0)))
name706 = "Relation.Binary.Bundles.DecTotalOrder.DTO.trans"
d706 ::
  T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d706 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d348
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d398 (coe d680 (coe v0)))))
name708 = "Relation.Binary.Bundles.DecTotalOrder.DTO.∼-resp-≈"
d708 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T658 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d708 v0 v1 v2 v3 = du708 v3
du708 :: T658 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du708 v0
  = let v1 = d680 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d398 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name710 = "Relation.Binary.Bundles.DecTotalOrder.DTO.∼-respʳ-≈"
d710 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d710 v0 v1 v2 v3 = du710 v3
du710 ::
  T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du710 v0
  = let v1 = d680 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d398 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name712 = "Relation.Binary.Bundles.DecTotalOrder.DTO.∼-respˡ-≈"
d712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d712 v0 v1 v2 v3 = du712 v3
du712 ::
  T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du712 v0
  = let v1 = d680 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d398 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name732 = "Relation.Binary.Bundles.DecTotalOrder.totalOrder"
d732 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T658 -> T574
d732 v0 v1 v2 v3 = du732 v3
du732 :: T658 -> T574
du732 v0
  = coe
      C6779
      (MAlonzo.Code.Relation.Binary.Structures.d398 (coe d680 (coe v0)))
name736 = "Relation.Binary.Bundles.DecTotalOrder._.poset"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T658 -> T204
d736 v0 v1 v2 v3 = du736 v3
du736 :: T658 -> T204
du736 v0 = coe du622 (coe du732 (coe v0))
name738 = "Relation.Binary.Bundles.DecTotalOrder._.preorder"
d738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T658 -> T132
d738 v0 v1 v2 v3 = du738 v3
du738 :: T658 -> T132
du738 v0
  = let v1 = coe du732 (coe v0) in coe du248 (coe du622 (coe v1))
name740 = "Relation.Binary.Bundles.DecTotalOrder.decPoset"
d740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T658 -> T282
d740 v0 v1 v2 v3 = du740 v3
du740 :: T658 -> T282
du740 v0
  = coe
      C3319
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du428 (coe d680 (coe v0)))
name746 = "Relation.Binary.Bundles.DecTotalOrder._.Eq._≈_"
d746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T658 -> AgdaAny -> AgdaAny -> ()
d746 = erased
name748 = "Relation.Binary.Bundles.DecTotalOrder._.Eq._≉_"
d748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T658 -> AgdaAny -> AgdaAny -> ()
d748 = erased
name750 = "Relation.Binary.Bundles.DecTotalOrder._.Eq._≟_"
d750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T658 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d750 v0 v1 v2 v3 = du750 v3
du750 ::
  T658 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du750 v0
  = let v1 = coe du740 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d174 (coe d304 (coe v1))
name752 = "Relation.Binary.Bundles.DecTotalOrder._.Eq.Carrier"
d752 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T658 -> ()
d752 = erased
name754 = "Relation.Binary.Bundles.DecTotalOrder._.Eq.decSetoid"
d754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T658 -> T84
d754 v0 v1 v2 v3 = du754 v3
du754 :: T658 -> T84
du754 v0 = coe du358 (coe du740 (coe v0))
name756
  = "Relation.Binary.Bundles.DecTotalOrder._.Eq.isDecEquivalence"
d756 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T658 -> MAlonzo.Code.Relation.Binary.Structures.T44
d756 v0 v1 v2 v3 = du756 v3
du756 :: T658 -> MAlonzo.Code.Relation.Binary.Structures.T44
du756 v0
  = let v1 = coe du740 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du200 (coe d304 (coe v1))
name758
  = "Relation.Binary.Bundles.DecTotalOrder._.Eq.isEquivalence"
d758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T658 -> MAlonzo.Code.Relation.Binary.Structures.T26
d758 v0 v1 v2 v3 = du758 v3
du758 :: T658 -> MAlonzo.Code.Relation.Binary.Structures.T26
du758 v0
  = let v1 = coe du740 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v1))))
name760
  = "Relation.Binary.Bundles.DecTotalOrder._.Eq.isPartialEquivalence"
d760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T658 -> MAlonzo.Code.Relation.Binary.Structures.T16
d760 v0 v1 v2 v3 = du760 v3
du760 :: T658 -> MAlonzo.Code.Relation.Binary.Structures.T16
du760 v0
  = let v1 = coe du740 (coe v0) in
    let v2 = coe du358 (coe v1) in
    let v3 = d100 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v3))
name762
  = "Relation.Binary.Bundles.DecTotalOrder._.Eq.partialSetoid"
d762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T658 -> T10
d762 v0 v1 v2 v3 = du762 v3
du762 :: T658 -> T10
du762 v0
  = let v1 = coe du740 (coe v0) in
    let v2 = coe du358 (coe v1) in coe du74 (coe du118 (coe v2))
name764 = "Relation.Binary.Bundles.DecTotalOrder._.Eq.refl"
d764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T658 -> AgdaAny -> AgdaAny
d764 v0 v1 v2 v3 = du764 v3
du764 :: T658 -> AgdaAny -> AgdaAny
du764 v0
  = let v1 = coe du740 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v1)))))
name766 = "Relation.Binary.Bundles.DecTotalOrder._.Eq.reflexive"
d766 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T658 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d766 v0 v1 v2 v3 = du766 v3
du766 ::
  T658 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du766 v0
  = let v1 = coe du740 (coe v0) in
    let v2 = coe du358 (coe v1) in
    let v3 = d100 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v3)) v4
name768 = "Relation.Binary.Bundles.DecTotalOrder._.Eq.setoid"
d768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T658 -> T44
d768 v0 v1 v2 v3 = du768 v3
du768 :: T658 -> T44
du768 v0
  = let v1 = coe du740 (coe v0) in coe du118 (coe du358 (coe v1))
name770 = "Relation.Binary.Bundles.DecTotalOrder._.Eq.sym"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T658 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d770 v0 v1 v2 v3 = du770 v3
du770 :: T658 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du770 v0
  = let v1 = coe du740 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v1)))))
name772 = "Relation.Binary.Bundles.DecTotalOrder._.Eq.trans"
d772 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d772 v0 v1 v2 v3 = du772 v3
du772 ::
  T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du772 v0
  = let v1 = coe du740 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d172 (coe d304 (coe v1)))))
name780 = "Relation.Binary.Bundles.StrictTotalOrder"
d780 a0 a1 a2 = ()
newtype T780 = C9189 MAlonzo.Code.Relation.Binary.Structures.T454
name796 = "Relation.Binary.Bundles.StrictTotalOrder.Carrier"
d796 :: T780 -> ()
d796 = erased
name798 = "Relation.Binary.Bundles.StrictTotalOrder._≈_"
d798 :: T780 -> AgdaAny -> AgdaAny -> ()
d798 = erased
name800 = "Relation.Binary.Bundles.StrictTotalOrder._<_"
d800 :: T780 -> AgdaAny -> AgdaAny -> ()
d800 = erased
name802
  = "Relation.Binary.Bundles.StrictTotalOrder.isStrictTotalOrder"
d802 :: T780 -> MAlonzo.Code.Relation.Binary.Structures.T454
d802 v0
  = case coe v0 of
      C9189 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name806 = "Relation.Binary.Bundles.StrictTotalOrder._._<?_"
d806 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d806 v0 v1 v2 v3 = du806 v3
du806 ::
  T780 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du806 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du472 (coe d802 (coe v0))
name808 = "Relation.Binary.Bundles.StrictTotalOrder._._≟_"
d808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d808 v0 v1 v2 v3 = du808 v3
du808 ::
  T780 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du808 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du470 (coe d802 (coe v0))
name810 = "Relation.Binary.Bundles.StrictTotalOrder._.<-resp-≈"
d810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d810 v0 v1 v2 v3 = du810 v2 v3
du810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du810 v0 v1
  = let v2 = d802 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Consequences.du596 (coe v0)
      (coe MAlonzo.Code.Relation.Binary.Structures.d468 (coe v2))
name812 = "Relation.Binary.Bundles.StrictTotalOrder._.<-respʳ-≈"
d812 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d812 v0 v1 v2 v3 = du812 v2 v3
du812 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du812 v0 v1
  = let v2 = d802 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Relation.Binary.Structures.du492 (coe v0) (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d28
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v3)) v4 v5 v6)
name814 = "Relation.Binary.Bundles.StrictTotalOrder._.<-respˡ-≈"
d814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d814 v0 v1 v2 v3 = du814 v2 v3
du814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du814 v0 v1
  = let v2 = d802 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Relation.Binary.Structures.du492 (coe v0) (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v3)) v4 v5 v6)
name816 = "Relation.Binary.Bundles.StrictTotalOrder._.asym"
d816 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d816 = erased
name818 = "Relation.Binary.Bundles.StrictTotalOrder._.compare"
d818 ::
  T780 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
d818 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d468 (coe d802 (coe v0))
name820 = "Relation.Binary.Bundles.StrictTotalOrder._.irrefl"
d820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d820 = erased
name822
  = "Relation.Binary.Bundles.StrictTotalOrder._.isDecEquivalence"
d822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> MAlonzo.Code.Relation.Binary.Structures.T44
d822 v0 v1 v2 v3 = du822 v3
du822 :: T780 -> MAlonzo.Code.Relation.Binary.Structures.T44
du822 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du474 (coe d802 (coe v0))
name824
  = "Relation.Binary.Bundles.StrictTotalOrder._.isDecStrictPartialOrder"
d824 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> MAlonzo.Code.Relation.Binary.Structures.T270
d824 v0 v1 v2 v3 = du824 v2 v3
du824 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> MAlonzo.Code.Relation.Binary.Structures.T270
du824 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du494 (coe v0)
      (coe d802 (coe v1))
name826
  = "Relation.Binary.Bundles.StrictTotalOrder._.isEquivalence"
d826 :: T780 -> MAlonzo.Code.Relation.Binary.Structures.T26
d826 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d464 (coe d802 (coe v0))
name828
  = "Relation.Binary.Bundles.StrictTotalOrder._.isStrictPartialOrder"
d828 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> MAlonzo.Code.Relation.Binary.Structures.T222
d828 v0 v1 v2 v3 = du828 v2 v3
du828 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> MAlonzo.Code.Relation.Binary.Structures.T222
du828 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du492 (coe v0)
      (coe d802 (coe v1))
name830 = "Relation.Binary.Bundles.StrictTotalOrder._.trans"
d830 ::
  T780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d830 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d466 (coe d802 (coe v0))
name832
  = "Relation.Binary.Bundles.StrictTotalOrder.strictPartialOrder"
d832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T780 -> T394
d832 v0 v1 v2 v3 = du832 v2 v3
du832 :: MAlonzo.Code.Agda.Primitive.T4 -> T780 -> T394
du832 v0 v1
  = coe
      C4625
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du492 (coe v0)
         (coe d802 (coe v1)))
name838 = "Relation.Binary.Bundles.StrictTotalOrder._.Eq._≈_"
d838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T780 -> AgdaAny -> AgdaAny -> ()
d838 = erased
name840 = "Relation.Binary.Bundles.StrictTotalOrder._.Eq._≉_"
d840 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T780 -> AgdaAny -> AgdaAny -> ()
d840 = erased
name842 = "Relation.Binary.Bundles.StrictTotalOrder._.Eq.Carrier"
d842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T780 -> ()
d842 = erased
name844
  = "Relation.Binary.Bundles.StrictTotalOrder._.Eq.isEquivalence"
d844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> MAlonzo.Code.Relation.Binary.Structures.T26
d844 v0 v1 v2 v3 = du844 v2 v3
du844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> MAlonzo.Code.Relation.Binary.Structures.T26
du844 v0 v1
  = let v2 = coe du832 (coe v0) (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d234 (coe d416 (coe v2))
name846
  = "Relation.Binary.Bundles.StrictTotalOrder._.Eq.isPartialEquivalence"
d846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> MAlonzo.Code.Relation.Binary.Structures.T16
d846 v0 v1 v2 v3 = du846 v2 v3
du846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> MAlonzo.Code.Relation.Binary.Structures.T16
du846 v0 v1
  = let v2 = coe du832 (coe v0) (coe v1) in
    let v3 = coe du438 (coe v2) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d60 (coe v3))
name848
  = "Relation.Binary.Bundles.StrictTotalOrder._.Eq.partialSetoid"
d848 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T780 -> T10
d848 v0 v1 v2 v3 = du848 v2 v3
du848 :: MAlonzo.Code.Agda.Primitive.T4 -> T780 -> T10
du848 v0 v1
  = let v2 = coe du832 (coe v0) (coe v1) in
    coe du74 (coe du438 (coe v2))
name850 = "Relation.Binary.Bundles.StrictTotalOrder._.Eq.refl"
d850 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T780 -> AgdaAny -> AgdaAny
d850 v0 v1 v2 v3 = du850 v2 v3
du850 ::
  MAlonzo.Code.Agda.Primitive.T4 -> T780 -> AgdaAny -> AgdaAny
du850 v0 v1
  = let v2 = coe du832 (coe v0) (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d234 (coe d416 (coe v2)))
name852 = "Relation.Binary.Bundles.StrictTotalOrder._.Eq.reflexive"
d852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d852 v0 v1 v2 v3 = du852 v2 v3
du852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du852 v0 v1
  = let v2 = coe du832 (coe v0) (coe v1) in
    let v3 = coe du438 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d60 (coe v3)) v4
name854 = "Relation.Binary.Bundles.StrictTotalOrder._.Eq.setoid"
d854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T780 -> T44
d854 v0 v1 v2 v3 = du854 v2 v3
du854 :: MAlonzo.Code.Agda.Primitive.T4 -> T780 -> T44
du854 v0 v1 = coe du438 (coe du832 (coe v0) (coe v1))
name856 = "Relation.Binary.Bundles.StrictTotalOrder._.Eq.sym"
d856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d856 v0 v1 v2 v3 = du856 v2 v3
du856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du856 v0 v1
  = let v2 = coe du832 (coe v0) (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d234 (coe d416 (coe v2)))
name858 = "Relation.Binary.Bundles.StrictTotalOrder._.Eq.trans"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d858 v0 v1 v2 v3 = du858 v2 v3
du858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du858 v0 v1
  = let v2 = coe du832 (coe v0) (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d234 (coe d416 (coe v2)))
name860 = "Relation.Binary.Bundles.StrictTotalOrder.decSetoid"
d860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T780 -> T84
d860 v0 v1 v2 v3 = du860 v3
du860 :: T780 -> T84
du860 v0
  = coe
      C939
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du474 (coe d802 (coe v0)))
