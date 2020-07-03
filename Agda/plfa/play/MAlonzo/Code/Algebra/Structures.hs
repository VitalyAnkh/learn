{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

name14 = "Algebra.Structures._._Absorbs_"
d14 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d14 = erased
name16 = "Algebra.Structures._._DistributesOver_"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d16 = erased
name18 = "Algebra.Structures._._DistributesOverʳ_"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d18 = erased
name20 = "Algebra.Structures._._DistributesOverˡ_"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d20 = erased
name24 = "Algebra.Structures._.Absorptive"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d24 = erased
name26 = "Algebra.Structures._.Associative"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d26 = erased
name30 = "Algebra.Structures._.Commutative"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d30 = erased
name32 = "Algebra.Structures._.Congruent₁"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> ()
d32 = erased
name34 = "Algebra.Structures._.Congruent₂"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d34 = erased
name38 = "Algebra.Structures._.Idempotent"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d38 = erased
name42 = "Algebra.Structures._.Identity"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d42 = erased
name46 = "Algebra.Structures._.Inverse"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d46 = erased
name52 = "Algebra.Structures._.LeftCongruent"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d52 = erased
name56 = "Algebra.Structures._.LeftIdentity"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d56 = erased
name58 = "Algebra.Structures._.LeftInverse"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d58 = erased
name60 = "Algebra.Structures._.LeftZero"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d60 = erased
name64 = "Algebra.Structures._.RightCongruent"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d64 = erased
name68 = "Algebra.Structures._.RightIdentity"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d68 = erased
name70 = "Algebra.Structures._.RightInverse"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d70 = erased
name72 = "Algebra.Structures._.RightZero"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d72 = erased
name74 = "Algebra.Structures._.Selective"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d74 = erased
name76 = "Algebra.Structures._.Zero"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d76 = erased
name80 = "Algebra.Structures.IsMagma"
d80 a0 a1 a2 a3 a4 = ()
data T80
  = C423 MAlonzo.Code.Relation.Binary.Structures.T26
         (AgdaAny ->
          AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name88 = "Algebra.Structures.IsMagma.isEquivalence"
d88 :: T80 -> MAlonzo.Code.Relation.Binary.Structures.T26
d88 v0
  = case coe v0 of
      C423 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Algebra.Structures.IsMagma.∙-cong"
d90 ::
  T80 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d90 v0
  = case coe v0 of
      C423 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name94 = "Algebra.Structures.IsMagma._.isPartialEquivalence"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T80 -> MAlonzo.Code.Relation.Binary.Structures.T16
d94 v0 v1 v2 v3 v4 v5 = du94 v5
du94 :: T80 -> MAlonzo.Code.Relation.Binary.Structures.T16
du94 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v0))
name96 = "Algebra.Structures.IsMagma._.refl"
d96 :: T80 -> AgdaAny -> AgdaAny
d96 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34 (coe d88 (coe v0))
name98 = "Algebra.Structures.IsMagma._.reflexive"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T80 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d98 v0 v1 v2 v3 v4 v5 = du98 v5
du98 ::
  T80 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du98 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v0)) v1
name100 = "Algebra.Structures.IsMagma._.sym"
d100 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d100 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36 (coe d88 (coe v0))
name102 = "Algebra.Structures.IsMagma._.trans"
d102 ::
  T80 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d102 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38 (coe d88 (coe v0))
name104 = "Algebra.Structures.IsMagma.setoid"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T80 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d104 v0 v1 v2 v3 v4 v5 = du104 v5
du104 :: T80 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du104 v0
  = coe MAlonzo.Code.Relation.Binary.Bundles.C501 (d88 (coe v0))
name106 = "Algebra.Structures.IsMagma.∙-congˡ"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d106 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du106 v5 v6 v7 v8 v9
du106 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du106 v0 v1 v2 v3 v4
  = coe
      d90 v0 v1 v1 v2 v3
      (coe MAlonzo.Code.Relation.Binary.Structures.d34 (d88 (coe v0)) v1)
      v4
name110 = "Algebra.Structures.IsMagma.∙-congʳ"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du110 v5 v6 v7 v8 v9
du110 :: T80 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du110 v0 v1 v2 v3 v4
  = coe
      d90 v0 v2 v3 v1 v1 v4
      (coe MAlonzo.Code.Relation.Binary.Structures.d34 (d88 (coe v0)) v1)
name116 = "Algebra.Structures.IsSemigroup"
d116 a0 a1 a2 a3 a4 = ()
data T116 = C1721 T80 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name124 = "Algebra.Structures.IsSemigroup.isMagma"
d124 :: T116 -> T80
d124 v0
  = case coe v0 of
      C1721 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name126 = "Algebra.Structures.IsSemigroup.assoc"
d126 :: T116 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d126 v0
  = case coe v0 of
      C1721 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name130 = "Algebra.Structures.IsSemigroup._.isEquivalence"
d130 :: T116 -> MAlonzo.Code.Relation.Binary.Structures.T26
d130 v0 = coe d88 (coe d124 (coe v0))
name132 = "Algebra.Structures.IsSemigroup._.isPartialEquivalence"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T116 -> MAlonzo.Code.Relation.Binary.Structures.T16
d132 v0 v1 v2 v3 v4 v5 = du132 v5
du132 :: T116 -> MAlonzo.Code.Relation.Binary.Structures.T16
du132 v0
  = let v1 = d124 (coe v0) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v1))
name134 = "Algebra.Structures.IsSemigroup._.refl"
d134 :: T116 -> AgdaAny -> AgdaAny
d134 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe v0)))
name136 = "Algebra.Structures.IsSemigroup._.reflexive"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T116 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d136 v0 v1 v2 v3 v4 v5 = du136 v5
du136 ::
  T116 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du136 v0
  = let v1 = d124 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v1)) v2
name138 = "Algebra.Structures.IsSemigroup._.setoid"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T116 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d138 v0 v1 v2 v3 v4 v5 = du138 v5
du138 :: T116 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du138 v0 = coe du104 (coe d124 (coe v0))
name140 = "Algebra.Structures.IsSemigroup._.sym"
d140 :: T116 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d140 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe v0)))
name142 = "Algebra.Structures.IsSemigroup._.trans"
d142 ::
  T116 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d142 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe v0)))
name144 = "Algebra.Structures.IsSemigroup._.∙-cong"
d144 ::
  T116 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d144 v0 = coe d90 (coe d124 (coe v0))
name146 = "Algebra.Structures.IsSemigroup._.∙-congʳ"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T116 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d146 v0 v1 v2 v3 v4 v5 = du146 v5
du146 ::
  T116 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du146 v0 = coe du110 (coe d124 (coe v0))
name148 = "Algebra.Structures.IsSemigroup._.∙-congˡ"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T116 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d148 v0 v1 v2 v3 v4 v5 = du148 v5
du148 ::
  T116 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du148 v0 = coe du106 (coe d124 (coe v0))
name152 = "Algebra.Structures.IsBand"
d152 a0 a1 a2 a3 a4 = ()
data T152 = C2175 T116 (AgdaAny -> AgdaAny)
name160 = "Algebra.Structures.IsBand.isSemigroup"
d160 :: T152 -> T116
d160 v0
  = case coe v0 of
      C2175 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name162 = "Algebra.Structures.IsBand.idem"
d162 :: T152 -> AgdaAny -> AgdaAny
d162 v0
  = case coe v0 of
      C2175 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name166 = "Algebra.Structures.IsBand._.assoc"
d166 :: T152 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d166 v0 = coe d126 (coe d160 (coe v0))
name168 = "Algebra.Structures.IsBand._.isEquivalence"
d168 :: T152 -> MAlonzo.Code.Relation.Binary.Structures.T26
d168 v0 = coe d88 (coe d124 (coe d160 (coe v0)))
name170 = "Algebra.Structures.IsBand._.isMagma"
d170 :: T152 -> T80
d170 v0 = coe d124 (coe d160 (coe v0))
name172 = "Algebra.Structures.IsBand._.isPartialEquivalence"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T152 -> MAlonzo.Code.Relation.Binary.Structures.T16
d172 v0 v1 v2 v3 v4 v5 = du172 v5
du172 :: T152 -> MAlonzo.Code.Relation.Binary.Structures.T16
du172 v0
  = let v1 = d160 (coe v0) in
    let v2 = d124 (coe v1) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v2))
name174 = "Algebra.Structures.IsBand._.refl"
d174 :: T152 -> AgdaAny -> AgdaAny
d174 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d160 (coe v0))))
name176 = "Algebra.Structures.IsBand._.reflexive"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T152 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d176 v0 v1 v2 v3 v4 v5 = du176 v5
du176 ::
  T152 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du176 v0
  = let v1 = d160 (coe v0) in
    let v2 = d124 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v2)) v3
name178 = "Algebra.Structures.IsBand._.setoid"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T152 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d178 v0 v1 v2 v3 v4 v5 = du178 v5
du178 :: T152 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du178 v0 = let v1 = d160 (coe v0) in coe du104 (coe d124 (coe v1))
name180 = "Algebra.Structures.IsBand._.sym"
d180 :: T152 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d180 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d160 (coe v0))))
name182 = "Algebra.Structures.IsBand._.trans"
d182 ::
  T152 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d160 (coe v0))))
name184 = "Algebra.Structures.IsBand._.∙-cong"
d184 ::
  T152 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d184 v0 = coe d90 (coe d124 (coe d160 (coe v0)))
name186 = "Algebra.Structures.IsBand._.∙-congʳ"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T152 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d186 v0 v1 v2 v3 v4 v5 = du186 v5
du186 ::
  T152 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du186 v0 = let v1 = d160 (coe v0) in coe du110 (coe d124 (coe v1))
name188 = "Algebra.Structures.IsBand._.∙-congˡ"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T152 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d188 v0 v1 v2 v3 v4 v5 = du188 v5
du188 ::
  T152 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du188 v0 = let v1 = d160 (coe v0) in coe du106 (coe d124 (coe v1))
name192 = "Algebra.Structures.IsCommutativeSemigroup"
d192 a0 a1 a2 a3 a4 = ()
data T192 = C2681 T116 (AgdaAny -> AgdaAny -> AgdaAny)
name200 = "Algebra.Structures.IsCommutativeSemigroup.isSemigroup"
d200 :: T192 -> T116
d200 v0
  = case coe v0 of
      C2681 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name202 = "Algebra.Structures.IsCommutativeSemigroup.comm"
d202 :: T192 -> AgdaAny -> AgdaAny -> AgdaAny
d202 v0
  = case coe v0 of
      C2681 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name206 = "Algebra.Structures.IsCommutativeSemigroup._.assoc"
d206 :: T192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d206 v0 = coe d126 (coe d200 (coe v0))
name208
  = "Algebra.Structures.IsCommutativeSemigroup._.isEquivalence"
d208 :: T192 -> MAlonzo.Code.Relation.Binary.Structures.T26
d208 v0 = coe d88 (coe d124 (coe d200 (coe v0)))
name210 = "Algebra.Structures.IsCommutativeSemigroup._.isMagma"
d210 :: T192 -> T80
d210 v0 = coe d124 (coe d200 (coe v0))
name212
  = "Algebra.Structures.IsCommutativeSemigroup._.isPartialEquivalence"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T192 -> MAlonzo.Code.Relation.Binary.Structures.T16
d212 v0 v1 v2 v3 v4 v5 = du212 v5
du212 :: T192 -> MAlonzo.Code.Relation.Binary.Structures.T16
du212 v0
  = let v1 = d200 (coe v0) in
    let v2 = d124 (coe v1) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v2))
name214 = "Algebra.Structures.IsCommutativeSemigroup._.refl"
d214 :: T192 -> AgdaAny -> AgdaAny
d214 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d200 (coe v0))))
name216 = "Algebra.Structures.IsCommutativeSemigroup._.reflexive"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T192 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d216 v0 v1 v2 v3 v4 v5 = du216 v5
du216 ::
  T192 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du216 v0
  = let v1 = d200 (coe v0) in
    let v2 = d124 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v2)) v3
name218 = "Algebra.Structures.IsCommutativeSemigroup._.setoid"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T192 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d218 v0 v1 v2 v3 v4 v5 = du218 v5
du218 :: T192 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du218 v0 = let v1 = d200 (coe v0) in coe du104 (coe d124 (coe v1))
name220 = "Algebra.Structures.IsCommutativeSemigroup._.sym"
d220 :: T192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d220 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d200 (coe v0))))
name222 = "Algebra.Structures.IsCommutativeSemigroup._.trans"
d222 ::
  T192 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d222 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d200 (coe v0))))
name224 = "Algebra.Structures.IsCommutativeSemigroup._.∙-cong"
d224 ::
  T192 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d224 v0 = coe d90 (coe d124 (coe d200 (coe v0)))
name226 = "Algebra.Structures.IsCommutativeSemigroup._.∙-congʳ"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d226 v0 v1 v2 v3 v4 v5 = du226 v5
du226 ::
  T192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du226 v0 = let v1 = d200 (coe v0) in coe du110 (coe d124 (coe v1))
name228 = "Algebra.Structures.IsCommutativeSemigroup._.∙-congˡ"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d228 v0 v1 v2 v3 v4 v5 = du228 v5
du228 ::
  T192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du228 v0 = let v1 = d200 (coe v0) in coe du106 (coe d124 (coe v1))
name232 = "Algebra.Structures.IsSemilattice"
d232 a0 a1 a2 a3 a4 = ()
data T232 = C3189 T152 (AgdaAny -> AgdaAny -> AgdaAny)
name240 = "Algebra.Structures.IsSemilattice.isBand"
d240 :: T232 -> T152
d240 v0
  = case coe v0 of
      C3189 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name242 = "Algebra.Structures.IsSemilattice.comm"
d242 :: T232 -> AgdaAny -> AgdaAny -> AgdaAny
d242 v0
  = case coe v0 of
      C3189 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name246 = "Algebra.Structures.IsSemilattice._.assoc"
d246 :: T232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d246 v0 = coe d126 (coe d160 (coe d240 (coe v0)))
name248 = "Algebra.Structures.IsSemilattice._.idem"
d248 :: T232 -> AgdaAny -> AgdaAny
d248 v0 = coe d162 (coe d240 (coe v0))
name250 = "Algebra.Structures.IsSemilattice._.isEquivalence"
d250 :: T232 -> MAlonzo.Code.Relation.Binary.Structures.T26
d250 v0 = coe d88 (coe d124 (coe d160 (coe d240 (coe v0))))
name252 = "Algebra.Structures.IsSemilattice._.isMagma"
d252 :: T232 -> T80
d252 v0 = coe d124 (coe d160 (coe d240 (coe v0)))
name254 = "Algebra.Structures.IsSemilattice._.isPartialEquivalence"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T232 -> MAlonzo.Code.Relation.Binary.Structures.T16
d254 v0 v1 v2 v3 v4 v5 = du254 v5
du254 :: T232 -> MAlonzo.Code.Relation.Binary.Structures.T16
du254 v0
  = let v1 = d240 (coe v0) in
    let v2 = d160 (coe v1) in
    let v3 = d124 (coe v2) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v3))
name256 = "Algebra.Structures.IsSemilattice._.isSemigroup"
d256 :: T232 -> T116
d256 v0 = coe d160 (coe d240 (coe v0))
name258 = "Algebra.Structures.IsSemilattice._.refl"
d258 :: T232 -> AgdaAny -> AgdaAny
d258 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d160 (coe d240 (coe v0)))))
name260 = "Algebra.Structures.IsSemilattice._.reflexive"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T232 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d260 v0 v1 v2 v3 v4 v5 = du260 v5
du260 ::
  T232 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du260 v0
  = let v1 = d240 (coe v0) in
    let v2 = d160 (coe v1) in
    let v3 = d124 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v3)) v4
name262 = "Algebra.Structures.IsSemilattice._.setoid"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T232 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d262 v0 v1 v2 v3 v4 v5 = du262 v5
du262 :: T232 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du262 v0
  = let v1 = d240 (coe v0) in
    let v2 = d160 (coe v1) in coe du104 (coe d124 (coe v2))
name264 = "Algebra.Structures.IsSemilattice._.sym"
d264 :: T232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d264 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d160 (coe d240 (coe v0)))))
name266 = "Algebra.Structures.IsSemilattice._.trans"
d266 ::
  T232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d266 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d160 (coe d240 (coe v0)))))
name268 = "Algebra.Structures.IsSemilattice._.∙-cong"
d268 ::
  T232 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d268 v0 = coe d90 (coe d124 (coe d160 (coe d240 (coe v0))))
name270 = "Algebra.Structures.IsSemilattice._.∙-congʳ"
d270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d270 v0 v1 v2 v3 v4 v5 = du270 v5
du270 ::
  T232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du270 v0
  = let v1 = d240 (coe v0) in
    let v2 = d160 (coe v1) in coe du110 (coe d124 (coe v2))
name272 = "Algebra.Structures.IsSemilattice._.∙-congˡ"
d272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d272 v0 v1 v2 v3 v4 v5 = du272 v5
du272 ::
  T232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du272 v0
  = let v1 = d240 (coe v0) in
    let v2 = d160 (coe v1) in coe du106 (coe d124 (coe v2))
name276 = "Algebra.Structures.IsSelectiveMagma"
d276 a0 a1 a2 a3 a4 = ()
data T276
  = C3745 T80 (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30)
name284 = "Algebra.Structures.IsSelectiveMagma.isMagma"
d284 :: T276 -> T80
d284 v0
  = case coe v0 of
      C3745 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name286 = "Algebra.Structures.IsSelectiveMagma.sel"
d286 ::
  T276 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d286 v0
  = case coe v0 of
      C3745 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name290 = "Algebra.Structures.IsSelectiveMagma._.isEquivalence"
d290 :: T276 -> MAlonzo.Code.Relation.Binary.Structures.T26
d290 v0 = coe d88 (coe d284 (coe v0))
name292
  = "Algebra.Structures.IsSelectiveMagma._.isPartialEquivalence"
d292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T276 -> MAlonzo.Code.Relation.Binary.Structures.T16
d292 v0 v1 v2 v3 v4 v5 = du292 v5
du292 :: T276 -> MAlonzo.Code.Relation.Binary.Structures.T16
du292 v0
  = let v1 = d284 (coe v0) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v1))
name294 = "Algebra.Structures.IsSelectiveMagma._.refl"
d294 :: T276 -> AgdaAny -> AgdaAny
d294 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d284 (coe v0)))
name296 = "Algebra.Structures.IsSelectiveMagma._.reflexive"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T276 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d296 v0 v1 v2 v3 v4 v5 = du296 v5
du296 ::
  T276 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du296 v0
  = let v1 = d284 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v1)) v2
name298 = "Algebra.Structures.IsSelectiveMagma._.setoid"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T276 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d298 v0 v1 v2 v3 v4 v5 = du298 v5
du298 :: T276 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du298 v0 = coe du104 (coe d284 (coe v0))
name300 = "Algebra.Structures.IsSelectiveMagma._.sym"
d300 :: T276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d300 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d284 (coe v0)))
name302 = "Algebra.Structures.IsSelectiveMagma._.trans"
d302 ::
  T276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d302 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d284 (coe v0)))
name304 = "Algebra.Structures.IsSelectiveMagma._.∙-cong"
d304 ::
  T276 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d304 v0 = coe d90 (coe d284 (coe v0))
name306 = "Algebra.Structures.IsSelectiveMagma._.∙-congʳ"
d306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d306 v0 v1 v2 v3 v4 v5 = du306 v5
du306 ::
  T276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du306 v0 = coe du110 (coe d284 (coe v0))
name308 = "Algebra.Structures.IsSelectiveMagma._.∙-congˡ"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d308 v0 v1 v2 v3 v4 v5 = du308 v5
du308 ::
  T276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du308 v0 = coe du106 (coe d284 (coe v0))
name314 = "Algebra.Structures.IsMonoid"
d314 a0 a1 a2 a3 a4 a5 = ()
data T314 = C4201 T116 MAlonzo.Code.Agda.Builtin.Sigma.T14
name324 = "Algebra.Structures.IsMonoid.isSemigroup"
d324 :: T314 -> T116
d324 v0
  = case coe v0 of
      C4201 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name326 = "Algebra.Structures.IsMonoid.identity"
d326 :: T314 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d326 v0
  = case coe v0 of
      C4201 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name330 = "Algebra.Structures.IsMonoid._.assoc"
d330 :: T314 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d330 v0 = coe d126 (coe d324 (coe v0))
name332 = "Algebra.Structures.IsMonoid._.isEquivalence"
d332 :: T314 -> MAlonzo.Code.Relation.Binary.Structures.T26
d332 v0 = coe d88 (coe d124 (coe d324 (coe v0)))
name334 = "Algebra.Structures.IsMonoid._.isMagma"
d334 :: T314 -> T80
d334 v0 = coe d124 (coe d324 (coe v0))
name336 = "Algebra.Structures.IsMonoid._.isPartialEquivalence"
d336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T314 -> MAlonzo.Code.Relation.Binary.Structures.T16
d336 v0 v1 v2 v3 v4 v5 v6 = du336 v6
du336 :: T314 -> MAlonzo.Code.Relation.Binary.Structures.T16
du336 v0
  = let v1 = d324 (coe v0) in
    let v2 = d124 (coe v1) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v2))
name338 = "Algebra.Structures.IsMonoid._.refl"
d338 :: T314 -> AgdaAny -> AgdaAny
d338 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d324 (coe v0))))
name340 = "Algebra.Structures.IsMonoid._.reflexive"
d340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T314 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d340 v0 v1 v2 v3 v4 v5 v6 = du340 v6
du340 ::
  T314 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du340 v0
  = let v1 = d324 (coe v0) in
    let v2 = d124 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v2)) v3
name342 = "Algebra.Structures.IsMonoid._.setoid"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T314 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d342 v0 v1 v2 v3 v4 v5 v6 = du342 v6
du342 :: T314 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du342 v0 = let v1 = d324 (coe v0) in coe du104 (coe d124 (coe v1))
name344 = "Algebra.Structures.IsMonoid._.sym"
d344 :: T314 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d344 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d324 (coe v0))))
name346 = "Algebra.Structures.IsMonoid._.trans"
d346 ::
  T314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d346 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d324 (coe v0))))
name348 = "Algebra.Structures.IsMonoid._.∙-cong"
d348 ::
  T314 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d348 v0 = coe d90 (coe d124 (coe d324 (coe v0)))
name350 = "Algebra.Structures.IsMonoid._.∙-congʳ"
d350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T314 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d350 v0 v1 v2 v3 v4 v5 v6 = du350 v6
du350 ::
  T314 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du350 v0 = let v1 = d324 (coe v0) in coe du110 (coe d124 (coe v1))
name352 = "Algebra.Structures.IsMonoid._.∙-congˡ"
d352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T314 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d352 v0 v1 v2 v3 v4 v5 v6 = du352 v6
du352 ::
  T314 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du352 v0 = let v1 = d324 (coe v0) in coe du106 (coe d124 (coe v1))
name354 = "Algebra.Structures.IsMonoid.identityˡ"
d354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T314 -> AgdaAny -> AgdaAny
d354 v0 v1 v2 v3 v4 v5 v6 = du354 v6
du354 :: T314 -> AgdaAny -> AgdaAny
du354 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v0))
name356 = "Algebra.Structures.IsMonoid.identityʳ"
d356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T314 -> AgdaAny -> AgdaAny
d356 v0 v1 v2 v3 v4 v5 v6 = du356 v6
du356 :: T314 -> AgdaAny -> AgdaAny
du356 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v0))
name362 = "Algebra.Structures.IsCommutativeMonoid"
d362 a0 a1 a2 a3 a4 a5 = ()
data T362 = C5263 T314 (AgdaAny -> AgdaAny -> AgdaAny)
name372 = "Algebra.Structures.IsCommutativeMonoid.isMonoid"
d372 :: T362 -> T314
d372 v0
  = case coe v0 of
      C5263 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name374 = "Algebra.Structures.IsCommutativeMonoid.comm"
d374 :: T362 -> AgdaAny -> AgdaAny -> AgdaAny
d374 v0
  = case coe v0 of
      C5263 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name378 = "Algebra.Structures.IsCommutativeMonoid._.assoc"
d378 :: T362 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d378 v0 = coe d126 (coe d324 (coe d372 (coe v0)))
name380 = "Algebra.Structures.IsCommutativeMonoid._.identity"
d380 :: T362 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d380 v0 = coe d326 (coe d372 (coe v0))
name382 = "Algebra.Structures.IsCommutativeMonoid._.identityʳ"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T362 -> AgdaAny -> AgdaAny
d382 v0 v1 v2 v3 v4 v5 v6 = du382 v6
du382 :: T362 -> AgdaAny -> AgdaAny
du382 v0
  = let v1 = d372 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v1))
name384 = "Algebra.Structures.IsCommutativeMonoid._.identityˡ"
d384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T362 -> AgdaAny -> AgdaAny
d384 v0 v1 v2 v3 v4 v5 v6 = du384 v6
du384 :: T362 -> AgdaAny -> AgdaAny
du384 v0
  = let v1 = d372 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v1))
name386 = "Algebra.Structures.IsCommutativeMonoid._.isEquivalence"
d386 :: T362 -> MAlonzo.Code.Relation.Binary.Structures.T26
d386 v0 = coe d88 (coe d124 (coe d324 (coe d372 (coe v0))))
name388 = "Algebra.Structures.IsCommutativeMonoid._.isMagma"
d388 :: T362 -> T80
d388 v0 = coe d124 (coe d324 (coe d372 (coe v0)))
name390
  = "Algebra.Structures.IsCommutativeMonoid._.isPartialEquivalence"
d390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T362 -> MAlonzo.Code.Relation.Binary.Structures.T16
d390 v0 v1 v2 v3 v4 v5 v6 = du390 v6
du390 :: T362 -> MAlonzo.Code.Relation.Binary.Structures.T16
du390 v0
  = let v1 = d372 (coe v0) in
    let v2 = d324 (coe v1) in
    let v3 = d124 (coe v2) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v3))
name392 = "Algebra.Structures.IsCommutativeMonoid._.isSemigroup"
d392 :: T362 -> T116
d392 v0 = coe d324 (coe d372 (coe v0))
name394 = "Algebra.Structures.IsCommutativeMonoid._.refl"
d394 :: T362 -> AgdaAny -> AgdaAny
d394 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d324 (coe d372 (coe v0)))))
name396 = "Algebra.Structures.IsCommutativeMonoid._.reflexive"
d396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d396 v0 v1 v2 v3 v4 v5 v6 = du396 v6
du396 ::
  T362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du396 v0
  = let v1 = d372 (coe v0) in
    let v2 = d324 (coe v1) in
    let v3 = d124 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v3)) v4
name398 = "Algebra.Structures.IsCommutativeMonoid._.setoid"
d398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T362 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d398 v0 v1 v2 v3 v4 v5 v6 = du398 v6
du398 :: T362 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du398 v0
  = let v1 = d372 (coe v0) in
    let v2 = d324 (coe v1) in coe du104 (coe d124 (coe v2))
name400 = "Algebra.Structures.IsCommutativeMonoid._.sym"
d400 :: T362 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d400 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d324 (coe d372 (coe v0)))))
name402 = "Algebra.Structures.IsCommutativeMonoid._.trans"
d402 ::
  T362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d402 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d324 (coe d372 (coe v0)))))
name404 = "Algebra.Structures.IsCommutativeMonoid._.∙-cong"
d404 ::
  T362 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d404 v0 = coe d90 (coe d124 (coe d324 (coe d372 (coe v0))))
name406 = "Algebra.Structures.IsCommutativeMonoid._.∙-congʳ"
d406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T362 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d406 v0 v1 v2 v3 v4 v5 v6 = du406 v6
du406 ::
  T362 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du406 v0
  = let v1 = d372 (coe v0) in
    let v2 = d324 (coe v1) in coe du110 (coe d124 (coe v2))
name408 = "Algebra.Structures.IsCommutativeMonoid._.∙-congˡ"
d408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T362 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d408 v0 v1 v2 v3 v4 v5 v6 = du408 v6
du408 ::
  T362 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du408 v0
  = let v1 = d372 (coe v0) in
    let v2 = d324 (coe v1) in coe du106 (coe d124 (coe v2))
name410
  = "Algebra.Structures.IsCommutativeMonoid.isCommutativeSemigroup"
d410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T362 -> T192
d410 v0 v1 v2 v3 v4 v5 v6 = du410 v6
du410 :: T362 -> T192
du410 v0
  = coe C2681 (coe d324 (coe d372 (coe v0))) (coe d374 (coe v0))
name416 = "Algebra.Structures.IsIdempotentCommutativeMonoid"
d416 a0 a1 a2 a3 a4 a5 = ()
data T416 = C6067 T362 (AgdaAny -> AgdaAny)
name426
  = "Algebra.Structures.IsIdempotentCommutativeMonoid.isCommutativeMonoid"
d426 :: T416 -> T362
d426 v0
  = case coe v0 of
      C6067 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name428 = "Algebra.Structures.IsIdempotentCommutativeMonoid.idem"
d428 :: T416 -> AgdaAny -> AgdaAny
d428 v0
  = case coe v0 of
      C6067 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name432
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.assoc"
d432 :: T416 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d432 v0 = coe d126 (coe d324 (coe d372 (coe d426 (coe v0))))
name434 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.comm"
d434 :: T416 -> AgdaAny -> AgdaAny -> AgdaAny
d434 v0 = coe d374 (coe d426 (coe v0))
name436
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identity"
d436 :: T416 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d436 v0 = coe d326 (coe d372 (coe d426 (coe v0)))
name438
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identityʳ"
d438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T416 -> AgdaAny -> AgdaAny
d438 v0 v1 v2 v3 v4 v5 v6 = du438 v6
du438 :: T416 -> AgdaAny -> AgdaAny
du438 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v2))
name440
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identityˡ"
d440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T416 -> AgdaAny -> AgdaAny
d440 v0 v1 v2 v3 v4 v5 v6 = du440 v6
du440 :: T416 -> AgdaAny -> AgdaAny
du440 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v2))
name442
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isCommutativeSemigroup"
d442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T416 -> T192
d442 v0 v1 v2 v3 v4 v5 v6 = du442 v6
du442 :: T416 -> T192
du442 v0 = coe du410 (coe d426 (coe v0))
name444
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isEquivalence"
d444 :: T416 -> MAlonzo.Code.Relation.Binary.Structures.T26
d444 v0
  = coe d88 (coe d124 (coe d324 (coe d372 (coe d426 (coe v0)))))
name446
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isMagma"
d446 :: T416 -> T80
d446 v0 = coe d124 (coe d324 (coe d372 (coe d426 (coe v0))))
name448
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isMonoid"
d448 :: T416 -> T314
d448 v0 = coe d372 (coe d426 (coe v0))
name450
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isPartialEquivalence"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T416 -> MAlonzo.Code.Relation.Binary.Structures.T16
d450 v0 v1 v2 v3 v4 v5 v6 = du450 v6
du450 :: T416 -> MAlonzo.Code.Relation.Binary.Structures.T16
du450 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in
    let v4 = d124 (coe v3) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v4))
name452
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isSemigroup"
d452 :: T416 -> T116
d452 v0 = coe d324 (coe d372 (coe d426 (coe v0)))
name454 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.refl"
d454 :: T416 -> AgdaAny -> AgdaAny
d454 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d426 (coe v0))))))
name456
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.reflexive"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d456 v0 v1 v2 v3 v4 v5 v6 = du456 v6
du456 ::
  T416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du456 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in
    let v4 = d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v4)) v5
name458
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.setoid"
d458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T416 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d458 v0 v1 v2 v3 v4 v5 v6 = du458 v6
du458 :: T416 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du458 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in coe du104 (coe d124 (coe v3))
name460 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.sym"
d460 :: T416 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d460 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d426 (coe v0))))))
name462
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.trans"
d462 ::
  T416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d462 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d426 (coe v0))))))
name464
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-cong"
d464 ::
  T416 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d464 v0
  = coe d90 (coe d124 (coe d324 (coe d372 (coe d426 (coe v0)))))
name466
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-congʳ"
d466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T416 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d466 v0 v1 v2 v3 v4 v5 v6 = du466 v6
du466 ::
  T416 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du466 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in coe du110 (coe d124 (coe v3))
name468
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-congˡ"
d468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T416 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d468 v0 v1 v2 v3 v4 v5 v6 = du468 v6
du468 ::
  T416 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du468 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in coe du106 (coe d124 (coe v3))
name470 = "Algebra.Structures.IsBoundedLattice"
d470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d470 = erased
name480 = "Algebra.Structures.IsBoundedLattice.assoc"
d480 :: T416 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d480 v0 = coe d126 (coe d324 (coe d372 (coe d426 (coe v0))))
name482 = "Algebra.Structures.IsBoundedLattice.comm"
d482 :: T416 -> AgdaAny -> AgdaAny -> AgdaAny
d482 v0 = coe d374 (coe d426 (coe v0))
name484 = "Algebra.Structures.IsBoundedLattice.idem"
d484 :: T416 -> AgdaAny -> AgdaAny
d484 v0 = coe d428 (coe v0)
name486 = "Algebra.Structures.IsBoundedLattice.identity"
d486 :: T416 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d486 v0 = coe d326 (coe d372 (coe d426 (coe v0)))
name488 = "Algebra.Structures.IsBoundedLattice.identityʳ"
d488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T416 -> AgdaAny -> AgdaAny
d488 v0 v1 v2 v3 v4 v5 v6 = du488 v6
du488 :: T416 -> AgdaAny -> AgdaAny
du488 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v2))
name490 = "Algebra.Structures.IsBoundedLattice.identityˡ"
d490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T416 -> AgdaAny -> AgdaAny
d490 v0 v1 v2 v3 v4 v5 v6 = du490 v6
du490 :: T416 -> AgdaAny -> AgdaAny
du490 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v2))
name492 = "Algebra.Structures.IsBoundedLattice.isCommutativeMonoid"
d492 :: T416 -> T362
d492 v0 = coe d426 (coe v0)
name494
  = "Algebra.Structures.IsBoundedLattice.isCommutativeSemigroup"
d494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T416 -> T192
d494 v0 v1 v2 v3 v4 v5 v6 = du494 v6
du494 :: T416 -> T192
du494 v0 = coe du410 (coe d426 (coe v0))
name496 = "Algebra.Structures.IsBoundedLattice.isEquivalence"
d496 :: T416 -> MAlonzo.Code.Relation.Binary.Structures.T26
d496 v0
  = coe d88 (coe d124 (coe d324 (coe d372 (coe d426 (coe v0)))))
name498 = "Algebra.Structures.IsBoundedLattice.isMagma"
d498 :: T416 -> T80
d498 v0 = coe d124 (coe d324 (coe d372 (coe d426 (coe v0))))
name500 = "Algebra.Structures.IsBoundedLattice.isMonoid"
d500 :: T416 -> T314
d500 v0 = coe d372 (coe d426 (coe v0))
name502
  = "Algebra.Structures.IsBoundedLattice.isPartialEquivalence"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T416 -> MAlonzo.Code.Relation.Binary.Structures.T16
d502 v0 v1 v2 v3 v4 v5 v6 = du502 v6
du502 :: T416 -> MAlonzo.Code.Relation.Binary.Structures.T16
du502 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in
    let v4 = d124 (coe v3) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v4))
name504 = "Algebra.Structures.IsBoundedLattice.isSemigroup"
d504 :: T416 -> T116
d504 v0 = coe d324 (coe d372 (coe d426 (coe v0)))
name506 = "Algebra.Structures.IsBoundedLattice.refl"
d506 :: T416 -> AgdaAny -> AgdaAny
d506 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d426 (coe v0))))))
name508 = "Algebra.Structures.IsBoundedLattice.reflexive"
d508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d508 v0 v1 v2 v3 v4 v5 v6 = du508 v6
du508 ::
  T416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du508 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in
    let v4 = d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v4)) v5
name510 = "Algebra.Structures.IsBoundedLattice.setoid"
d510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T416 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d510 v0 v1 v2 v3 v4 v5 v6 = du510 v6
du510 :: T416 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du510 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in coe du104 (coe d124 (coe v3))
name512 = "Algebra.Structures.IsBoundedLattice.sym"
d512 :: T416 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d512 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d426 (coe v0))))))
name514 = "Algebra.Structures.IsBoundedLattice.trans"
d514 ::
  T416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d514 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d426 (coe v0))))))
name516 = "Algebra.Structures.IsBoundedLattice.∙-cong"
d516 ::
  T416 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d516 v0
  = coe d90 (coe d124 (coe d324 (coe d372 (coe d426 (coe v0)))))
name518 = "Algebra.Structures.IsBoundedLattice.∙-congʳ"
d518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T416 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d518 v0 v1 v2 v3 v4 v5 v6 = du518 v6
du518 ::
  T416 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du518 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in coe du110 (coe d124 (coe v3))
name520 = "Algebra.Structures.IsBoundedLattice.∙-congˡ"
d520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T416 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d520 v0 v1 v2 v3 v4 v5 v6 = du520 v6
du520 ::
  T416 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du520 v0
  = let v1 = d426 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in coe du106 (coe d124 (coe v3))
name528 = "Algebra.Structures.IsGroup"
d528 a0 a1 a2 a3 a4 a5 a6 = ()
data T528
  = C7191 T314 MAlonzo.Code.Agda.Builtin.Sigma.T14
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name542 = "Algebra.Structures.IsGroup.isMonoid"
d542 :: T528 -> T314
d542 v0
  = case coe v0 of
      C7191 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name544 = "Algebra.Structures.IsGroup.inverse"
d544 :: T528 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d544 v0
  = case coe v0 of
      C7191 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name546 = "Algebra.Structures.IsGroup.⁻¹-cong"
d546 :: T528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d546 v0
  = case coe v0 of
      C7191 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name550 = "Algebra.Structures.IsGroup._.assoc"
d550 :: T528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d550 v0 = coe d126 (coe d324 (coe d542 (coe v0)))
name552 = "Algebra.Structures.IsGroup._.identity"
d552 :: T528 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d552 v0 = coe d326 (coe d542 (coe v0))
name554 = "Algebra.Structures.IsGroup._.identityʳ"
d554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T528 -> AgdaAny -> AgdaAny
d554 v0 v1 v2 v3 v4 v5 v6 v7 = du554 v7
du554 :: T528 -> AgdaAny -> AgdaAny
du554 v0
  = let v1 = d542 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v1))
name556 = "Algebra.Structures.IsGroup._.identityˡ"
d556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T528 -> AgdaAny -> AgdaAny
d556 v0 v1 v2 v3 v4 v5 v6 v7 = du556 v7
du556 :: T528 -> AgdaAny -> AgdaAny
du556 v0
  = let v1 = d542 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v1))
name558 = "Algebra.Structures.IsGroup._.isEquivalence"
d558 :: T528 -> MAlonzo.Code.Relation.Binary.Structures.T26
d558 v0 = coe d88 (coe d124 (coe d324 (coe d542 (coe v0))))
name560 = "Algebra.Structures.IsGroup._.isMagma"
d560 :: T528 -> T80
d560 v0 = coe d124 (coe d324 (coe d542 (coe v0)))
name562 = "Algebra.Structures.IsGroup._.isPartialEquivalence"
d562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T528 -> MAlonzo.Code.Relation.Binary.Structures.T16
d562 v0 v1 v2 v3 v4 v5 v6 v7 = du562 v7
du562 :: T528 -> MAlonzo.Code.Relation.Binary.Structures.T16
du562 v0
  = let v1 = d542 (coe v0) in
    let v2 = d324 (coe v1) in
    let v3 = d124 (coe v2) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v3))
name564 = "Algebra.Structures.IsGroup._.isSemigroup"
d564 :: T528 -> T116
d564 v0 = coe d324 (coe d542 (coe v0))
name566 = "Algebra.Structures.IsGroup._.refl"
d566 :: T528 -> AgdaAny -> AgdaAny
d566 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d324 (coe d542 (coe v0)))))
name568 = "Algebra.Structures.IsGroup._.reflexive"
d568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T528 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d568 v0 v1 v2 v3 v4 v5 v6 v7 = du568 v7
du568 ::
  T528 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du568 v0
  = let v1 = d542 (coe v0) in
    let v2 = d324 (coe v1) in
    let v3 = d124 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v3)) v4
name570 = "Algebra.Structures.IsGroup._.setoid"
d570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T528 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d570 v0 v1 v2 v3 v4 v5 v6 v7 = du570 v7
du570 :: T528 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du570 v0
  = let v1 = d542 (coe v0) in
    let v2 = d324 (coe v1) in coe du104 (coe d124 (coe v2))
name572 = "Algebra.Structures.IsGroup._.sym"
d572 :: T528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d572 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d324 (coe d542 (coe v0)))))
name574 = "Algebra.Structures.IsGroup._.trans"
d574 ::
  T528 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d574 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d324 (coe d542 (coe v0)))))
name576 = "Algebra.Structures.IsGroup._.∙-cong"
d576 ::
  T528 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d576 v0 = coe d90 (coe d124 (coe d324 (coe d542 (coe v0))))
name578 = "Algebra.Structures.IsGroup._.∙-congʳ"
d578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d578 v0 v1 v2 v3 v4 v5 v6 v7 = du578 v7
du578 ::
  T528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du578 v0
  = let v1 = d542 (coe v0) in
    let v2 = d324 (coe v1) in coe du110 (coe d124 (coe v2))
name580 = "Algebra.Structures.IsGroup._.∙-congˡ"
d580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d580 v0 v1 v2 v3 v4 v5 v6 v7 = du580 v7
du580 ::
  T528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du580 v0
  = let v1 = d542 (coe v0) in
    let v2 = d324 (coe v1) in coe du106 (coe d124 (coe v2))
name582 = "Algebra.Structures.IsGroup._-_"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T528 -> AgdaAny -> AgdaAny -> AgdaAny
d582 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du582 v4 v6 v8 v9
du582 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du582 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name588 = "Algebra.Structures.IsGroup.inverseˡ"
d588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T528 -> AgdaAny -> AgdaAny
d588 v0 v1 v2 v3 v4 v5 v6 v7 = du588 v7
du588 :: T528 -> AgdaAny -> AgdaAny
du588 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d544 (coe v0))
name590 = "Algebra.Structures.IsGroup.inverseʳ"
d590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T528 -> AgdaAny -> AgdaAny
d590 v0 v1 v2 v3 v4 v5 v6 v7 = du590 v7
du590 :: T528 -> AgdaAny -> AgdaAny
du590 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d544 (coe v0))
name596 = "Algebra.Structures.IsGroup.uniqueˡ-⁻¹"
d596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d596 v0 v1 v2 v3 v4 v5 v6 v7 = du596 v4 v5 v6 v7
du596 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du596 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du232
      (let v4 = d324 (coe d542 (coe v3)) in
       coe du104 (coe d124 (coe v4)))
      (coe v0) (coe v2) (coe v1)
      (coe d90 (coe d124 (coe d324 (coe d542 (coe v3)))))
      (coe d126 (coe d324 (coe d542 (coe v3))))
      (coe d326 (coe d542 (coe v3)))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d544 (coe v3)))
name602 = "Algebra.Structures.IsGroup.uniqueʳ-⁻¹"
d602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d602 v0 v1 v2 v3 v4 v5 v6 v7 = du602 v4 v5 v6 v7
du602 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du602 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du252
      (let v4 = d324 (coe d542 (coe v3)) in
       coe du104 (coe d124 (coe v4)))
      (coe v0) (coe v2) (coe v1)
      (coe d90 (coe d124 (coe d324 (coe d542 (coe v3)))))
      (coe d126 (coe d324 (coe d542 (coe v3))))
      (coe d326 (coe d542 (coe v3)))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d544 (coe v3)))
name610 = "Algebra.Structures.IsAbelianGroup"
d610 a0 a1 a2 a3 a4 a5 a6 = ()
data T610 = C10103 T528 (AgdaAny -> AgdaAny -> AgdaAny)
name622 = "Algebra.Structures.IsAbelianGroup.isGroup"
d622 :: T610 -> T528
d622 v0
  = case coe v0 of
      C10103 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name624 = "Algebra.Structures.IsAbelianGroup.comm"
d624 :: T610 -> AgdaAny -> AgdaAny -> AgdaAny
d624 v0
  = case coe v0 of
      C10103 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name628 = "Algebra.Structures.IsAbelianGroup._._-_"
d628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T610 -> AgdaAny -> AgdaAny -> AgdaAny
d628 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du628 v4 v6 v8 v9
du628 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du628 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name630 = "Algebra.Structures.IsAbelianGroup._.assoc"
d630 :: T610 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d630 v0 = coe d126 (coe d324 (coe d542 (coe d622 (coe v0))))
name632 = "Algebra.Structures.IsAbelianGroup._.identity"
d632 :: T610 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d632 v0 = coe d326 (coe d542 (coe d622 (coe v0)))
name634 = "Algebra.Structures.IsAbelianGroup._.identityʳ"
d634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T610 -> AgdaAny -> AgdaAny
d634 v0 v1 v2 v3 v4 v5 v6 v7 = du634 v7
du634 :: T610 -> AgdaAny -> AgdaAny
du634 v0
  = let v1 = d622 (coe v0) in
    let v2 = d542 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v2))
name636 = "Algebra.Structures.IsAbelianGroup._.identityˡ"
d636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T610 -> AgdaAny -> AgdaAny
d636 v0 v1 v2 v3 v4 v5 v6 v7 = du636 v7
du636 :: T610 -> AgdaAny -> AgdaAny
du636 v0
  = let v1 = d622 (coe v0) in
    let v2 = d542 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v2))
name638 = "Algebra.Structures.IsAbelianGroup._.inverse"
d638 :: T610 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d638 v0 = coe d544 (coe d622 (coe v0))
name640 = "Algebra.Structures.IsAbelianGroup._.inverseʳ"
d640 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T610 -> AgdaAny -> AgdaAny
d640 v0 v1 v2 v3 v4 v5 v6 v7 = du640 v7
du640 :: T610 -> AgdaAny -> AgdaAny
du640 v0
  = let v1 = d622 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d544 (coe v1))
name642 = "Algebra.Structures.IsAbelianGroup._.inverseˡ"
d642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T610 -> AgdaAny -> AgdaAny
d642 v0 v1 v2 v3 v4 v5 v6 v7 = du642 v7
du642 :: T610 -> AgdaAny -> AgdaAny
du642 v0
  = let v1 = d622 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d544 (coe v1))
name644 = "Algebra.Structures.IsAbelianGroup._.isEquivalence"
d644 :: T610 -> MAlonzo.Code.Relation.Binary.Structures.T26
d644 v0
  = coe d88 (coe d124 (coe d324 (coe d542 (coe d622 (coe v0)))))
name646 = "Algebra.Structures.IsAbelianGroup._.isMagma"
d646 :: T610 -> T80
d646 v0 = coe d124 (coe d324 (coe d542 (coe d622 (coe v0))))
name648 = "Algebra.Structures.IsAbelianGroup._.isMonoid"
d648 :: T610 -> T314
d648 v0 = coe d542 (coe d622 (coe v0))
name650
  = "Algebra.Structures.IsAbelianGroup._.isPartialEquivalence"
d650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T610 -> MAlonzo.Code.Relation.Binary.Structures.T16
d650 v0 v1 v2 v3 v4 v5 v6 v7 = du650 v7
du650 :: T610 -> MAlonzo.Code.Relation.Binary.Structures.T16
du650 v0
  = let v1 = d622 (coe v0) in
    let v2 = d542 (coe v1) in
    let v3 = d324 (coe v2) in
    let v4 = d124 (coe v3) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v4))
name652 = "Algebra.Structures.IsAbelianGroup._.isSemigroup"
d652 :: T610 -> T116
d652 v0 = coe d324 (coe d542 (coe d622 (coe v0)))
name654 = "Algebra.Structures.IsAbelianGroup._.refl"
d654 :: T610 -> AgdaAny -> AgdaAny
d654 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d324 (coe d542 (coe d622 (coe v0))))))
name656 = "Algebra.Structures.IsAbelianGroup._.reflexive"
d656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T610 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d656 v0 v1 v2 v3 v4 v5 v6 v7 = du656 v7
du656 ::
  T610 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du656 v0
  = let v1 = d622 (coe v0) in
    let v2 = d542 (coe v1) in
    let v3 = d324 (coe v2) in
    let v4 = d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v4)) v5
name658 = "Algebra.Structures.IsAbelianGroup._.setoid"
d658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T610 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d658 v0 v1 v2 v3 v4 v5 v6 v7 = du658 v7
du658 :: T610 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du658 v0
  = let v1 = d622 (coe v0) in
    let v2 = d542 (coe v1) in
    let v3 = d324 (coe v2) in coe du104 (coe d124 (coe v3))
name660 = "Algebra.Structures.IsAbelianGroup._.sym"
d660 :: T610 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d660 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d324 (coe d542 (coe d622 (coe v0))))))
name662 = "Algebra.Structures.IsAbelianGroup._.trans"
d662 ::
  T610 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d662 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d324 (coe d542 (coe d622 (coe v0))))))
name664 = "Algebra.Structures.IsAbelianGroup._.uniqueʳ-⁻¹"
d664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T610 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d664 v0 v1 v2 v3 v4 v5 v6 v7 = du664 v4 v5 v6 v7
du664 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T610 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du664 v0 v1 v2 v3
  = coe du602 (coe v0) (coe v1) (coe v2) (coe d622 (coe v3))
name666 = "Algebra.Structures.IsAbelianGroup._.uniqueˡ-⁻¹"
d666 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T610 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d666 v0 v1 v2 v3 v4 v5 v6 v7 = du666 v4 v5 v6 v7
du666 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T610 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du666 v0 v1 v2 v3
  = coe du596 (coe v0) (coe v1) (coe v2) (coe d622 (coe v3))
name668 = "Algebra.Structures.IsAbelianGroup._.⁻¹-cong"
d668 :: T610 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d668 v0 = coe d546 (coe d622 (coe v0))
name670 = "Algebra.Structures.IsAbelianGroup._.∙-cong"
d670 ::
  T610 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d670 v0
  = coe d90 (coe d124 (coe d324 (coe d542 (coe d622 (coe v0)))))
name672 = "Algebra.Structures.IsAbelianGroup._.∙-congʳ"
d672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T610 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d672 v0 v1 v2 v3 v4 v5 v6 v7 = du672 v7
du672 ::
  T610 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du672 v0
  = let v1 = d622 (coe v0) in
    let v2 = d542 (coe v1) in
    let v3 = d324 (coe v2) in coe du110 (coe d124 (coe v3))
name674 = "Algebra.Structures.IsAbelianGroup._.∙-congˡ"
d674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T610 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d674 v0 v1 v2 v3 v4 v5 v6 v7 = du674 v7
du674 ::
  T610 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du674 v0
  = let v1 = d622 (coe v0) in
    let v2 = d542 (coe v1) in
    let v3 = d324 (coe v2) in coe du106 (coe d124 (coe v3))
name676 = "Algebra.Structures.IsAbelianGroup.isCommutativeMonoid"
d676 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T610 -> T362
d676 v0 v1 v2 v3 v4 v5 v6 v7 = du676 v7
du676 :: T610 -> T362
du676 v0
  = coe C5263 (coe d542 (coe d622 (coe v0))) (coe d624 (coe v0))
name680
  = "Algebra.Structures.IsAbelianGroup._.isCommutativeSemigroup"
d680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T610 -> T192
d680 v0 v1 v2 v3 v4 v5 v6 v7 = du680 v7
du680 :: T610 -> T192
du680 v0 = coe du410 (coe du676 (coe v0))
name686 = "Algebra.Structures.IsLattice"
d686 a0 a1 a2 a3 a4 a5 = ()
data T686
  = C11495 MAlonzo.Code.Relation.Binary.Structures.T26
           (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny ->
            AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny ->
            AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
           MAlonzo.Code.Agda.Builtin.Sigma.T14
name708 = "Algebra.Structures.IsLattice.isEquivalence"
d708 :: T686 -> MAlonzo.Code.Relation.Binary.Structures.T26
d708 v0
  = case coe v0 of
      C11495 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name710 = "Algebra.Structures.IsLattice.∨-comm"
d710 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny
d710 v0
  = case coe v0 of
      C11495 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name712 = "Algebra.Structures.IsLattice.∨-assoc"
d712 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d712 v0
  = case coe v0 of
      C11495 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name714 = "Algebra.Structures.IsLattice.∨-cong"
d714 ::
  T686 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d714 v0
  = case coe v0 of
      C11495 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name716 = "Algebra.Structures.IsLattice.∧-comm"
d716 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny
d716 v0
  = case coe v0 of
      C11495 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name718 = "Algebra.Structures.IsLattice.∧-assoc"
d718 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d718 v0
  = case coe v0 of
      C11495 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name720 = "Algebra.Structures.IsLattice.∧-cong"
d720 ::
  T686 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d720 v0
  = case coe v0 of
      C11495 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name722 = "Algebra.Structures.IsLattice.absorptive"
d722 :: T686 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d722 v0
  = case coe v0 of
      C11495 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name726 = "Algebra.Structures.IsLattice._.isPartialEquivalence"
d726 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T686 -> MAlonzo.Code.Relation.Binary.Structures.T16
d726 v0 v1 v2 v3 v4 v5 v6 = du726 v6
du726 :: T686 -> MAlonzo.Code.Relation.Binary.Structures.T16
du726 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du42 (coe d708 (coe v0))
name728 = "Algebra.Structures.IsLattice._.refl"
d728 :: T686 -> AgdaAny -> AgdaAny
d728 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34 (coe d708 (coe v0))
name730 = "Algebra.Structures.IsLattice._.reflexive"
d730 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T686 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d730 v0 v1 v2 v3 v4 v5 v6 = du730 v6
du730 ::
  T686 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du730 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du40 (coe d708 (coe v0)) v1
name732 = "Algebra.Structures.IsLattice._.sym"
d732 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d732 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36 (coe d708 (coe v0))
name734 = "Algebra.Structures.IsLattice._.trans"
d734 ::
  T686 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d734 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38 (coe d708 (coe v0))
name736 = "Algebra.Structures.IsLattice.∨-absorbs-∧"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T686 -> AgdaAny -> AgdaAny -> AgdaAny
d736 v0 v1 v2 v3 v4 v5 v6 = du736 v6
du736 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny
du736 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d722 (coe v0))
name738 = "Algebra.Structures.IsLattice.∧-absorbs-∨"
d738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T686 -> AgdaAny -> AgdaAny -> AgdaAny
d738 v0 v1 v2 v3 v4 v5 v6 = du738 v6
du738 :: T686 -> AgdaAny -> AgdaAny -> AgdaAny
du738 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d722 (coe v0))
name740 = "Algebra.Structures.IsLattice.∧-congˡ"
d740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d740 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du740 v6 v7 v8 v9 v10
du740 ::
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du740 v0 v1 v2 v3 v4
  = coe
      d720 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d34 (d708 (coe v0)) v1)
      v4
name744 = "Algebra.Structures.IsLattice.∧-congʳ"
d744 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d744 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du744 v6 v7 v8 v9 v10
du744 ::
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du744 v0 v1 v2 v3 v4
  = coe
      d720 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d34 (d708 (coe v0)) v1)
name748 = "Algebra.Structures.IsLattice.∨-congˡ"
d748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d748 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du748 v6 v7 v8 v9 v10
du748 ::
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du748 v0 v1 v2 v3 v4
  = coe
      d714 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d34 (d708 (coe v0)) v1)
      v4
name752 = "Algebra.Structures.IsLattice.∨-congʳ"
d752 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d752 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du752 v6 v7 v8 v9 v10
du752 ::
  T686 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du752 v0 v1 v2 v3 v4
  = coe
      d714 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d34 (d708 (coe v0)) v1)
name760 = "Algebra.Structures.IsDistributiveLattice"
d760 a0 a1 a2 a3 a4 a5 = ()
data T760 = C14283 T686 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name770 = "Algebra.Structures.IsDistributiveLattice.isLattice"
d770 :: T760 -> T686
d770 v0
  = case coe v0 of
      C14283 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name772 = "Algebra.Structures.IsDistributiveLattice.∨-distribʳ-∧"
d772 :: T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d772 v0
  = case coe v0 of
      C14283 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name776 = "Algebra.Structures.IsDistributiveLattice._.absorptive"
d776 :: T760 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d776 v0 = coe d722 (coe d770 (coe v0))
name778
  = "Algebra.Structures.IsDistributiveLattice._.isEquivalence"
d778 :: T760 -> MAlonzo.Code.Relation.Binary.Structures.T26
d778 v0 = coe d708 (coe d770 (coe v0))
name780
  = "Algebra.Structures.IsDistributiveLattice._.isPartialEquivalence"
d780 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T760 -> MAlonzo.Code.Relation.Binary.Structures.T16
d780 v0 v1 v2 v3 v4 v5 v6 = du780 v6
du780 :: T760 -> MAlonzo.Code.Relation.Binary.Structures.T16
du780 v0
  = let v1 = d770 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42 (coe d708 (coe v1))
name782 = "Algebra.Structures.IsDistributiveLattice._.refl"
d782 :: T760 -> AgdaAny -> AgdaAny
d782 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d708 (coe d770 (coe v0)))
name784 = "Algebra.Structures.IsDistributiveLattice._.reflexive"
d784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T760 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d784 v0 v1 v2 v3 v4 v5 v6 = du784 v6
du784 ::
  T760 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du784 v0
  = let v1 = d770 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d708 (coe v1)) v2
name786 = "Algebra.Structures.IsDistributiveLattice._.sym"
d786 :: T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d786 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d708 (coe d770 (coe v0)))
name788 = "Algebra.Structures.IsDistributiveLattice._.trans"
d788 ::
  T760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d788 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d708 (coe d770 (coe v0)))
name790 = "Algebra.Structures.IsDistributiveLattice._.∧-absorbs-∨"
d790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T760 -> AgdaAny -> AgdaAny -> AgdaAny
d790 v0 v1 v2 v3 v4 v5 v6 = du790 v6
du790 :: T760 -> AgdaAny -> AgdaAny -> AgdaAny
du790 v0
  = let v1 = d770 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d722 (coe v1))
name792 = "Algebra.Structures.IsDistributiveLattice._.∧-assoc"
d792 :: T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d792 v0 = coe d718 (coe d770 (coe v0))
name794 = "Algebra.Structures.IsDistributiveLattice._.∧-comm"
d794 :: T760 -> AgdaAny -> AgdaAny -> AgdaAny
d794 v0 = coe d716 (coe d770 (coe v0))
name796 = "Algebra.Structures.IsDistributiveLattice._.∧-cong"
d796 ::
  T760 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d796 v0 = coe d720 (coe d770 (coe v0))
name798 = "Algebra.Structures.IsDistributiveLattice._.∧-congʳ"
d798 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d798 v0 v1 v2 v3 v4 v5 v6 = du798 v6
du798 ::
  T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du798 v0 = coe du744 (coe d770 (coe v0))
name800 = "Algebra.Structures.IsDistributiveLattice._.∧-congˡ"
d800 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d800 v0 v1 v2 v3 v4 v5 v6 = du800 v6
du800 ::
  T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du800 v0 = coe du740 (coe d770 (coe v0))
name802 = "Algebra.Structures.IsDistributiveLattice._.∨-absorbs-∧"
d802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T760 -> AgdaAny -> AgdaAny -> AgdaAny
d802 v0 v1 v2 v3 v4 v5 v6 = du802 v6
du802 :: T760 -> AgdaAny -> AgdaAny -> AgdaAny
du802 v0
  = let v1 = d770 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d722 (coe v1))
name804 = "Algebra.Structures.IsDistributiveLattice._.∨-assoc"
d804 :: T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d804 v0 = coe d712 (coe d770 (coe v0))
name806 = "Algebra.Structures.IsDistributiveLattice._.∨-comm"
d806 :: T760 -> AgdaAny -> AgdaAny -> AgdaAny
d806 v0 = coe d710 (coe d770 (coe v0))
name808 = "Algebra.Structures.IsDistributiveLattice._.∨-cong"
d808 ::
  T760 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d808 v0 = coe d714 (coe d770 (coe v0))
name810 = "Algebra.Structures.IsDistributiveLattice._.∨-congʳ"
d810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d810 v0 v1 v2 v3 v4 v5 v6 = du810 v6
du810 ::
  T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du810 v0 = coe du752 (coe d770 (coe v0))
name812 = "Algebra.Structures.IsDistributiveLattice._.∨-congˡ"
d812 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d812 v0 v1 v2 v3 v4 v5 v6 = du812 v6
du812 ::
  T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du812 v0 = coe du748 (coe d770 (coe v0))
name814 = "Algebra.Structures.IsDistributiveLattice.∨-∧-distribʳ"
d814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d814 v0 v1 v2 v3 v4 v5 v6 = du814 v6
du814 :: T760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du814 v0 = coe d772 (coe v0)
name822 = "Algebra.Structures.IsNearSemiring"
d822 a0 a1 a2 a3 a4 a5 a6 = ()
data T822
  = C15231 T314 T116 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny)
name838 = "Algebra.Structures.IsNearSemiring.+-isMonoid"
d838 :: T822 -> T314
d838 v0
  = case coe v0 of
      C15231 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name840 = "Algebra.Structures.IsNearSemiring.*-isSemigroup"
d840 :: T822 -> T116
d840 v0
  = case coe v0 of
      C15231 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name842 = "Algebra.Structures.IsNearSemiring.distribʳ"
d842 :: T822 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d842 v0
  = case coe v0 of
      C15231 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name844 = "Algebra.Structures.IsNearSemiring.zeroˡ"
d844 :: T822 -> AgdaAny -> AgdaAny
d844 v0
  = case coe v0 of
      C15231 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name848 = "Algebra.Structures.IsNearSemiring._.assoc"
d848 :: T822 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d848 v0 = coe d126 (coe d324 (coe d838 (coe v0)))
name850 = "Algebra.Structures.IsNearSemiring._.∙-cong"
d850 ::
  T822 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d850 v0 = coe d90 (coe d124 (coe d324 (coe d838 (coe v0))))
name852 = "Algebra.Structures.IsNearSemiring._.∙-congʳ"
d852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T822 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d852 v0 v1 v2 v3 v4 v5 v6 v7 = du852 v7
du852 ::
  T822 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du852 v0
  = let v1 = d838 (coe v0) in
    let v2 = d324 (coe v1) in coe du110 (coe d124 (coe v2))
name854 = "Algebra.Structures.IsNearSemiring._.∙-congˡ"
d854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T822 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d854 v0 v1 v2 v3 v4 v5 v6 v7 = du854 v7
du854 ::
  T822 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du854 v0
  = let v1 = d838 (coe v0) in
    let v2 = d324 (coe v1) in coe du106 (coe d124 (coe v2))
name856 = "Algebra.Structures.IsNearSemiring._.identity"
d856 :: T822 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d856 v0 = coe d326 (coe d838 (coe v0))
name858 = "Algebra.Structures.IsNearSemiring._.identityʳ"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T822 -> AgdaAny -> AgdaAny
d858 v0 v1 v2 v3 v4 v5 v6 v7 = du858 v7
du858 :: T822 -> AgdaAny -> AgdaAny
du858 v0
  = let v1 = d838 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v1))
name860 = "Algebra.Structures.IsNearSemiring._.identityˡ"
d860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T822 -> AgdaAny -> AgdaAny
d860 v0 v1 v2 v3 v4 v5 v6 v7 = du860 v7
du860 :: T822 -> AgdaAny -> AgdaAny
du860 v0
  = let v1 = d838 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v1))
name862 = "Algebra.Structures.IsNearSemiring._.isMagma"
d862 :: T822 -> T80
d862 v0 = coe d124 (coe d324 (coe d838 (coe v0)))
name864 = "Algebra.Structures.IsNearSemiring._.isSemigroup"
d864 :: T822 -> T116
d864 v0 = coe d324 (coe d838 (coe v0))
name866 = "Algebra.Structures.IsNearSemiring._.isEquivalence"
d866 :: T822 -> MAlonzo.Code.Relation.Binary.Structures.T26
d866 v0 = coe d88 (coe d124 (coe d324 (coe d838 (coe v0))))
name868
  = "Algebra.Structures.IsNearSemiring._.isPartialEquivalence"
d868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T822 -> MAlonzo.Code.Relation.Binary.Structures.T16
d868 v0 v1 v2 v3 v4 v5 v6 v7 = du868 v7
du868 :: T822 -> MAlonzo.Code.Relation.Binary.Structures.T16
du868 v0
  = let v1 = d838 (coe v0) in
    let v2 = d324 (coe v1) in
    let v3 = d124 (coe v2) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v3))
name870 = "Algebra.Structures.IsNearSemiring._.refl"
d870 :: T822 -> AgdaAny -> AgdaAny
d870 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d324 (coe d838 (coe v0)))))
name872 = "Algebra.Structures.IsNearSemiring._.reflexive"
d872 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T822 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d872 v0 v1 v2 v3 v4 v5 v6 v7 = du872 v7
du872 ::
  T822 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du872 v0
  = let v1 = d838 (coe v0) in
    let v2 = d324 (coe v1) in
    let v3 = d124 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v3)) v4
name874 = "Algebra.Structures.IsNearSemiring._.setoid"
d874 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T822 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d874 v0 v1 v2 v3 v4 v5 v6 v7 = du874 v7
du874 :: T822 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du874 v0
  = let v1 = d838 (coe v0) in
    let v2 = d324 (coe v1) in coe du104 (coe d124 (coe v2))
name876 = "Algebra.Structures.IsNearSemiring._.sym"
d876 :: T822 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d876 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d324 (coe d838 (coe v0)))))
name878 = "Algebra.Structures.IsNearSemiring._.trans"
d878 ::
  T822 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d878 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d324 (coe d838 (coe v0)))))
name882 = "Algebra.Structures.IsNearSemiring._.assoc"
d882 :: T822 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d882 v0 = coe d126 (coe d840 (coe v0))
name884 = "Algebra.Structures.IsNearSemiring._.∙-cong"
d884 ::
  T822 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d884 v0 = coe d90 (coe d124 (coe d840 (coe v0)))
name886 = "Algebra.Structures.IsNearSemiring._.∙-congʳ"
d886 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T822 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d886 v0 v1 v2 v3 v4 v5 v6 v7 = du886 v7
du886 ::
  T822 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du886 v0 = let v1 = d840 (coe v0) in coe du110 (coe d124 (coe v1))
name888 = "Algebra.Structures.IsNearSemiring._.∙-congˡ"
d888 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T822 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d888 v0 v1 v2 v3 v4 v5 v6 v7 = du888 v7
du888 ::
  T822 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du888 v0 = let v1 = d840 (coe v0) in coe du106 (coe d124 (coe v1))
name890 = "Algebra.Structures.IsNearSemiring._.isMagma"
d890 :: T822 -> T80
d890 v0 = coe d124 (coe d840 (coe v0))
name898 = "Algebra.Structures.IsSemiringWithoutOne"
d898 a0 a1 a2 a3 a4 a5 a6 = ()
data T898
  = C16303 T362 T116 MAlonzo.Code.Agda.Builtin.Sigma.T14
           MAlonzo.Code.Agda.Builtin.Sigma.T14
name914
  = "Algebra.Structures.IsSemiringWithoutOne.+-isCommutativeMonoid"
d914 :: T898 -> T362
d914 v0
  = case coe v0 of
      C16303 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name916 = "Algebra.Structures.IsSemiringWithoutOne.*-isSemigroup"
d916 :: T898 -> T116
d916 v0
  = case coe v0 of
      C16303 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name918 = "Algebra.Structures.IsSemiringWithoutOne.distrib"
d918 :: T898 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d918 v0
  = case coe v0 of
      C16303 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name920 = "Algebra.Structures.IsSemiringWithoutOne.zero"
d920 :: T898 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d920 v0
  = case coe v0 of
      C16303 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name924 = "Algebra.Structures.IsSemiringWithoutOne._.comm"
d924 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny
d924 v0 = coe d374 (coe d914 (coe v0))
name926
  = "Algebra.Structures.IsSemiringWithoutOne._.isCommutativeSemigroup"
d926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T898 -> T192
d926 v0 v1 v2 v3 v4 v5 v6 v7 = du926 v7
du926 :: T898 -> T192
du926 v0 = coe du410 (coe d914 (coe v0))
name928 = "Algebra.Structures.IsSemiringWithoutOne._.isMonoid"
d928 :: T898 -> T314
d928 v0 = coe d372 (coe d914 (coe v0))
name930 = "Algebra.Structures.IsSemiringWithoutOne.zeroˡ"
d930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> AgdaAny -> AgdaAny
d930 v0 v1 v2 v3 v4 v5 v6 v7 = du930 v7
du930 :: T898 -> AgdaAny -> AgdaAny
du930 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d920 (coe v0))
name932 = "Algebra.Structures.IsSemiringWithoutOne.zeroʳ"
d932 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> AgdaAny -> AgdaAny
d932 v0 v1 v2 v3 v4 v5 v6 v7 = du932 v7
du932 :: T898 -> AgdaAny -> AgdaAny
du932 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d920 (coe v0))
name934 = "Algebra.Structures.IsSemiringWithoutOne.isNearSemiring"
d934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T898 -> T822
d934 v0 v1 v2 v3 v4 v5 v6 v7 = du934 v7
du934 :: T898 -> T822
du934 v0
  = coe
      C15231 (coe d372 (coe d914 (coe v0))) (coe d916 (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d918 (coe v0)))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d920 (coe v0)))
name938 = "Algebra.Structures.IsSemiringWithoutOne._.assoc"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d938 v0 v1 v2 v3 v4 v5 v6 v7 = du938 v7
du938 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du938 v0 = coe d126 (coe d916 (coe v0))
name940 = "Algebra.Structures.IsSemiringWithoutOne._.∙-cong"
d940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T898 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d940 v0 v1 v2 v3 v4 v5 v6 v7 = du940 v7
du940 ::
  T898 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du940 v0 = coe d90 (coe d124 (coe d916 (coe v0)))
name942 = "Algebra.Structures.IsSemiringWithoutOne._.∙-congʳ"
d942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d942 v0 v1 v2 v3 v4 v5 v6 v7 = du942 v7
du942 ::
  T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du942 v0
  = let v1 = coe du934 (coe v0) in
    let v2 = d840 (coe v1) in coe du110 (coe d124 (coe v2))
name944 = "Algebra.Structures.IsSemiringWithoutOne._.∙-congˡ"
d944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d944 v0 v1 v2 v3 v4 v5 v6 v7 = du944 v7
du944 ::
  T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du944 v0
  = let v1 = coe du934 (coe v0) in
    let v2 = d840 (coe v1) in coe du106 (coe d124 (coe v2))
name946 = "Algebra.Structures.IsSemiringWithoutOne._.isMagma"
d946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T898 -> T80
d946 v0 v1 v2 v3 v4 v5 v6 v7 = du946 v7
du946 :: T898 -> T80
du946 v0 = coe d124 (coe d916 (coe v0))
name948 = "Algebra.Structures.IsSemiringWithoutOne._.assoc"
d948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d948 v0 v1 v2 v3 v4 v5 v6 v7 = du948 v7
du948 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du948 v0 = coe d126 (coe d324 (coe d372 (coe d914 (coe v0))))
name950 = "Algebra.Structures.IsSemiringWithoutOne._.∙-cong"
d950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T898 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d950 v0 v1 v2 v3 v4 v5 v6 v7 = du950 v7
du950 ::
  T898 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du950 v0
  = coe d90 (coe d124 (coe d324 (coe d372 (coe d914 (coe v0)))))
name952 = "Algebra.Structures.IsSemiringWithoutOne._.∙-congʳ"
d952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d952 v0 v1 v2 v3 v4 v5 v6 v7 = du952 v7
du952 ::
  T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du952 v0
  = let v1 = coe du934 (coe v0) in
    let v2 = d838 (coe v1) in
    let v3 = d324 (coe v2) in coe du110 (coe d124 (coe v3))
name954 = "Algebra.Structures.IsSemiringWithoutOne._.∙-congˡ"
d954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d954 v0 v1 v2 v3 v4 v5 v6 v7 = du954 v7
du954 ::
  T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du954 v0
  = let v1 = coe du934 (coe v0) in
    let v2 = d838 (coe v1) in
    let v3 = d324 (coe v2) in coe du106 (coe d124 (coe v3))
name956 = "Algebra.Structures.IsSemiringWithoutOne._.identity"
d956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d956 v0 v1 v2 v3 v4 v5 v6 v7 = du956 v7
du956 :: T898 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du956 v0 = coe d326 (coe d372 (coe d914 (coe v0)))
name958 = "Algebra.Structures.IsSemiringWithoutOne._.identityʳ"
d958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> AgdaAny -> AgdaAny
d958 v0 v1 v2 v3 v4 v5 v6 v7 = du958 v7
du958 :: T898 -> AgdaAny -> AgdaAny
du958 v0
  = let v1 = coe du934 (coe v0) in
    let v2 = d838 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v2))
name960 = "Algebra.Structures.IsSemiringWithoutOne._.identityˡ"
d960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> AgdaAny -> AgdaAny
d960 v0 v1 v2 v3 v4 v5 v6 v7 = du960 v7
du960 :: T898 -> AgdaAny -> AgdaAny
du960 v0
  = let v1 = coe du934 (coe v0) in
    let v2 = d838 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v2))
name962 = "Algebra.Structures.IsSemiringWithoutOne._.isMagma"
d962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T898 -> T80
d962 v0 v1 v2 v3 v4 v5 v6 v7 = du962 v7
du962 :: T898 -> T80
du962 v0 = coe d124 (coe d324 (coe d372 (coe d914 (coe v0))))
name964 = "Algebra.Structures.IsSemiringWithoutOne._.isSemigroup"
d964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T898 -> T116
d964 v0 v1 v2 v3 v4 v5 v6 v7 = du964 v7
du964 :: T898 -> T116
du964 v0 = coe d324 (coe d372 (coe d914 (coe v0)))
name966 = "Algebra.Structures.IsSemiringWithoutOne._.distribʳ"
d966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d966 v0 v1 v2 v3 v4 v5 v6 v7 = du966 v7
du966 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du966 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d918 (coe v0))
name968 = "Algebra.Structures.IsSemiringWithoutOne._.isEquivalence"
d968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> MAlonzo.Code.Relation.Binary.Structures.T26
d968 v0 v1 v2 v3 v4 v5 v6 v7 = du968 v7
du968 :: T898 -> MAlonzo.Code.Relation.Binary.Structures.T26
du968 v0
  = coe d88 (coe d124 (coe d324 (coe d372 (coe d914 (coe v0)))))
name970
  = "Algebra.Structures.IsSemiringWithoutOne._.isPartialEquivalence"
d970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> MAlonzo.Code.Relation.Binary.Structures.T16
d970 v0 v1 v2 v3 v4 v5 v6 v7 = du970 v7
du970 :: T898 -> MAlonzo.Code.Relation.Binary.Structures.T16
du970 v0
  = let v1 = coe du934 (coe v0) in
    let v2 = d838 (coe v1) in
    let v3 = d324 (coe v2) in
    let v4 = d124 (coe v3) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v4))
name972 = "Algebra.Structures.IsSemiringWithoutOne._.refl"
d972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> AgdaAny -> AgdaAny
d972 v0 v1 v2 v3 v4 v5 v6 v7 = du972 v7
du972 :: T898 -> AgdaAny -> AgdaAny
du972 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d914 (coe v0))))))
name974 = "Algebra.Structures.IsSemiringWithoutOne._.reflexive"
d974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T898 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d974 v0 v1 v2 v3 v4 v5 v6 v7 = du974 v7
du974 ::
  T898 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du974 v0
  = let v1 = coe du934 (coe v0) in
    let v2 = d838 (coe v1) in
    let v3 = d324 (coe v2) in
    let v4 = d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v4)) v5
name976 = "Algebra.Structures.IsSemiringWithoutOne._.setoid"
d976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d976 v0 v1 v2 v3 v4 v5 v6 v7 = du976 v7
du976 :: T898 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du976 v0
  = let v1 = coe du934 (coe v0) in
    let v2 = d838 (coe v1) in
    let v3 = d324 (coe v2) in coe du104 (coe d124 (coe v3))
name978 = "Algebra.Structures.IsSemiringWithoutOne._.sym"
d978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d978 v0 v1 v2 v3 v4 v5 v6 v7 = du978 v7
du978 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du978 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d914 (coe v0))))))
name980 = "Algebra.Structures.IsSemiringWithoutOne._.trans"
d980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d980 v0 v1 v2 v3 v4 v5 v6 v7 = du980 v7
du980 ::
  T898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du980 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d914 (coe v0))))))
name988 = "Algebra.Structures.IsCommutativeSemiringWithoutOne"
d988 a0 a1 a2 a3 a4 a5 a6 = ()
data T988 = C18217 T898 (AgdaAny -> AgdaAny -> AgdaAny)
name1000
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne"
d1000 :: T988 -> T898
d1000 v0
  = case coe v0 of
      C18217 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1002
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne.*-comm"
d1002 :: T988 -> AgdaAny -> AgdaAny -> AgdaAny
d1002 v0
  = case coe v0 of
      C18217 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1006
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc"
d1006 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1006 v0 v1 v2 v3 v4 v5 v6 v7 = du1006 v7
du1006 :: T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1006 v0 = let v1 = d1000 (coe v0) in coe d126 (coe d916 (coe v1))
name1008
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-cong"
d1008 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T988 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1008 v0 v1 v2 v3 v4 v5 v6 v7 = du1008 v7
du1008 ::
  T988 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1008 v0
  = let v1 = d1000 (coe v0) in coe d90 (coe d124 (coe d916 (coe v1)))
name1010
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congʳ"
d1010 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1010 v0 v1 v2 v3 v4 v5 v6 v7 = du1010 v7
du1010 ::
  T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1010 v0
  = let v1 = d1000 (coe v0) in
    let v2 = coe du934 (coe v1) in
    let v3 = d840 (coe v2) in coe du110 (coe d124 (coe v3))
name1012
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congˡ"
d1012 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1012 v0 v1 v2 v3 v4 v5 v6 v7 = du1012 v7
du1012 ::
  T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1012 v0
  = let v1 = d1000 (coe v0) in
    let v2 = coe du934 (coe v1) in
    let v3 = d840 (coe v2) in coe du106 (coe d124 (coe v3))
name1014
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMagma"
d1014 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T988 -> T80
d1014 v0 v1 v2 v3 v4 v5 v6 v7 = du1014 v7
du1014 :: T988 -> T80
du1014 v0 = let v1 = d1000 (coe v0) in coe d124 (coe d916 (coe v1))
name1016
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isSemigroup"
d1016 :: T988 -> T116
d1016 v0 = coe d916 (coe d1000 (coe v0))
name1018
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc"
d1018 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1018 v0 v1 v2 v3 v4 v5 v6 v7 = du1018 v7
du1018 :: T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1018 v0
  = let v1 = d1000 (coe v0) in
    coe d126 (coe d324 (coe d372 (coe d914 (coe v1))))
name1020
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.comm"
d1020 :: T988 -> AgdaAny -> AgdaAny -> AgdaAny
d1020 v0 = coe d374 (coe d914 (coe d1000 (coe v0)))
name1022
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-cong"
d1022 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T988 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1022 v0 v1 v2 v3 v4 v5 v6 v7 = du1022 v7
du1022 ::
  T988 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1022 v0
  = let v1 = d1000 (coe v0) in
    coe d90 (coe d124 (coe d324 (coe d372 (coe d914 (coe v1)))))
name1024
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congʳ"
d1024 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1024 v0 v1 v2 v3 v4 v5 v6 v7 = du1024 v7
du1024 ::
  T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1024 v0
  = let v1 = d1000 (coe v0) in
    let v2 = coe du934 (coe v1) in
    let v3 = d838 (coe v2) in
    let v4 = d324 (coe v3) in coe du110 (coe d124 (coe v4))
name1026
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congˡ"
d1026 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1026 v0 v1 v2 v3 v4 v5 v6 v7 = du1026 v7
du1026 ::
  T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1026 v0
  = let v1 = d1000 (coe v0) in
    let v2 = coe du934 (coe v1) in
    let v3 = d838 (coe v2) in
    let v4 = d324 (coe v3) in coe du106 (coe d124 (coe v4))
name1028
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identity"
d1028 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1028 v0 v1 v2 v3 v4 v5 v6 v7 = du1028 v7
du1028 :: T988 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1028 v0
  = let v1 = d1000 (coe v0) in
    coe d326 (coe d372 (coe d914 (coe v1)))
name1030
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identityʳ"
d1030 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny
d1030 v0 v1 v2 v3 v4 v5 v6 v7 = du1030 v7
du1030 :: T988 -> AgdaAny -> AgdaAny
du1030 v0
  = let v1 = d1000 (coe v0) in
    let v2 = coe du934 (coe v1) in
    let v3 = d838 (coe v2) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v3))
name1032
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identityˡ"
d1032 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny
d1032 v0 v1 v2 v3 v4 v5 v6 v7 = du1032 v7
du1032 :: T988 -> AgdaAny -> AgdaAny
du1032 v0
  = let v1 = d1000 (coe v0) in
    let v2 = coe du934 (coe v1) in
    let v3 = d838 (coe v2) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v3))
name1034
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.+-isCommutativeMonoid"
d1034 :: T988 -> T362
d1034 v0 = coe d914 (coe d1000 (coe v0))
name1036
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isCommutativeSemigroup"
d1036 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T988 -> T192
d1036 v0 v1 v2 v3 v4 v5 v6 v7 = du1036 v7
du1036 :: T988 -> T192
du1036 v0
  = let v1 = d1000 (coe v0) in coe du410 (coe d914 (coe v1))
name1038
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMagma"
d1038 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T988 -> T80
d1038 v0 v1 v2 v3 v4 v5 v6 v7 = du1038 v7
du1038 :: T988 -> T80
du1038 v0
  = let v1 = d1000 (coe v0) in
    coe d124 (coe d324 (coe d372 (coe d914 (coe v1))))
name1040
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMonoid"
d1040 :: T988 -> T314
d1040 v0 = coe d372 (coe d914 (coe d1000 (coe v0)))
name1042
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isSemigroup"
d1042 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T988 -> T116
d1042 v0 v1 v2 v3 v4 v5 v6 v7 = du1042 v7
du1042 :: T988 -> T116
du1042 v0
  = let v1 = d1000 (coe v0) in
    coe d324 (coe d372 (coe d914 (coe v1)))
name1044
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.distrib"
d1044 :: T988 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1044 v0 = coe d918 (coe d1000 (coe v0))
name1046
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.distribʳ"
d1046 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1046 v0 v1 v2 v3 v4 v5 v6 v7 = du1046 v7
du1046 :: T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1046 v0
  = let v1 = d1000 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d918 (coe v1))
name1048
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isEquivalence"
d1048 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1048 v0 v1 v2 v3 v4 v5 v6 v7 = du1048 v7
du1048 :: T988 -> MAlonzo.Code.Relation.Binary.Structures.T26
du1048 v0
  = let v1 = d1000 (coe v0) in
    coe d88 (coe d124 (coe d324 (coe d372 (coe d914 (coe v1)))))
name1050
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isNearSemiring"
d1050 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T988 -> T822
d1050 v0 v1 v2 v3 v4 v5 v6 v7 = du1050 v7
du1050 :: T988 -> T822
du1050 v0 = coe du934 (coe d1000 (coe v0))
name1052
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isPartialEquivalence"
d1052 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1052 v0 v1 v2 v3 v4 v5 v6 v7 = du1052 v7
du1052 :: T988 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1052 v0
  = let v1 = d1000 (coe v0) in
    let v2 = coe du934 (coe v1) in
    let v3 = d838 (coe v2) in
    let v4 = d324 (coe v3) in
    let v5 = d124 (coe v4) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v5))
name1054
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.refl"
d1054 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny
d1054 v0 v1 v2 v3 v4 v5 v6 v7 = du1054 v7
du1054 :: T988 -> AgdaAny -> AgdaAny
du1054 v0
  = let v1 = d1000 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d914 (coe v1))))))
name1056
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.reflexive"
d1056 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T988 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1056 v0 v1 v2 v3 v4 v5 v6 v7 = du1056 v7
du1056 ::
  T988 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1056 v0
  = let v1 = d1000 (coe v0) in
    let v2 = coe du934 (coe v1) in
    let v3 = d838 (coe v2) in
    let v4 = d324 (coe v3) in
    let v5 = d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v5)) v6
name1058
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.setoid"
d1058 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1058 v0 v1 v2 v3 v4 v5 v6 v7 = du1058 v7
du1058 :: T988 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1058 v0
  = let v1 = d1000 (coe v0) in
    let v2 = coe du934 (coe v1) in
    let v3 = d838 (coe v2) in
    let v4 = d324 (coe v3) in coe du104 (coe d124 (coe v4))
name1060
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.sym"
d1060 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1060 v0 v1 v2 v3 v4 v5 v6 v7 = du1060 v7
du1060 :: T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1060 v0
  = let v1 = d1000 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d914 (coe v1))))))
name1062
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.trans"
d1062 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1062 v0 v1 v2 v3 v4 v5 v6 v7 = du1062 v7
du1062 ::
  T988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1062 v0
  = let v1 = d1000 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d914 (coe v1))))))
name1064
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zero"
d1064 :: T988 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1064 v0 = coe d920 (coe d1000 (coe v0))
name1066
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroʳ"
d1066 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny
d1066 v0 v1 v2 v3 v4 v5 v6 v7 = du1066 v7
du1066 :: T988 -> AgdaAny -> AgdaAny
du1066 v0
  = let v1 = d1000 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d920 (coe v1))
name1068
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroˡ"
d1068 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny
d1068 v0 v1 v2 v3 v4 v5 v6 v7 = du1068 v7
du1068 :: T988 -> AgdaAny -> AgdaAny
du1068 v0
  = let v1 = d1000 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d920 (coe v1))
name1078 = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero"
d1078 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1078 = C19341 T362 T314 MAlonzo.Code.Agda.Builtin.Sigma.T14
name1094
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid"
d1094 :: T1078 -> T362
d1094 v0
  = case coe v0 of
      C19341 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1096
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-isMonoid"
d1096 :: T1078 -> T314
d1096 v0
  = case coe v0 of
      C19341 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1098
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distrib"
d1098 :: T1078 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1098 v0
  = case coe v0 of
      C19341 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1100
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribˡ"
d1100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1100 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1100 v8
du1100 :: T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1100 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1098 (coe v0))
name1102
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribʳ"
d1102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1102 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1102 v8
du1102 :: T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1102 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1098 (coe v0))
name1106
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc"
d1106 :: T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1106 v0 = coe d126 (coe d324 (coe d372 (coe d1094 (coe v0))))
name1108
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.comm"
d1108 :: T1078 -> AgdaAny -> AgdaAny -> AgdaAny
d1108 v0 = coe d374 (coe d1094 (coe v0))
name1110
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-cong"
d1110 ::
  T1078 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1110 v0
  = coe d90 (coe d124 (coe d324 (coe d372 (coe d1094 (coe v0)))))
name1112
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congʳ"
d1112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1112 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1112 v8
du1112 ::
  T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1112 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in coe du110 (coe d124 (coe v3))
name1114
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congˡ"
d1114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1114 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1114 v8
du1114 ::
  T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1114 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in coe du106 (coe d124 (coe v3))
name1116
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity"
d1116 :: T1078 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1116 v0 = coe d326 (coe d372 (coe d1094 (coe v0)))
name1118
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ"
d1118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
d1118 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1118 v8
du1118 :: T1078 -> AgdaAny -> AgdaAny
du1118 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d372 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v2))
name1120
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ"
d1120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
d1120 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1120 v8
du1120 :: T1078 -> AgdaAny -> AgdaAny
du1120 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d372 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v2))
name1122
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isCommutativeSemigroup"
d1122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> T192
d1122 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1122 v8
du1122 :: T1078 -> T192
du1122 v0 = coe du410 (coe d1094 (coe v0))
name1124
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMagma"
d1124 :: T1078 -> T80
d1124 v0 = coe d124 (coe d324 (coe d372 (coe d1094 (coe v0))))
name1126
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMonoid"
d1126 :: T1078 -> T314
d1126 v0 = coe d372 (coe d1094 (coe v0))
name1128
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup"
d1128 :: T1078 -> T116
d1128 v0 = coe d324 (coe d372 (coe d1094 (coe v0)))
name1130
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isEquivalence"
d1130 :: T1078 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1130 v0
  = coe d88 (coe d124 (coe d324 (coe d372 (coe d1094 (coe v0)))))
name1132
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isPartialEquivalence"
d1132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1078 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1132 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1132 v8
du1132 :: T1078 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1132 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in
    let v4 = d124 (coe v3) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v4))
name1134
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.refl"
d1134 :: T1078 -> AgdaAny -> AgdaAny
d1134 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d1094 (coe v0))))))
name1136
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.reflexive"
d1136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1078 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1136 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1136 v8
du1136 ::
  T1078 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1136 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in
    let v4 = d124 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v4)) v5
name1138
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.setoid"
d1138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1078 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1138 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1138 v8
du1138 :: T1078 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1138 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d372 (coe v1) in
    let v3 = d324 (coe v2) in coe du104 (coe d124 (coe v3))
name1140
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.sym"
d1140 :: T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1140 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d1094 (coe v0))))))
name1142
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.trans"
d1142 ::
  T1078 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1142 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d88 (coe d124 (coe d324 (coe d372 (coe d1094 (coe v0))))))
name1146
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc"
d1146 :: T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1146 v0 = coe d126 (coe d324 (coe d1096 (coe v0)))
name1148
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-cong"
d1148 ::
  T1078 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1148 v0 = coe d90 (coe d124 (coe d324 (coe d1096 (coe v0))))
name1150
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congʳ"
d1150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1150 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1150 v8
du1150 ::
  T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1150 v0
  = let v1 = d1096 (coe v0) in
    let v2 = d324 (coe v1) in coe du110 (coe d124 (coe v2))
name1152
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congˡ"
d1152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1152 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1152 v8
du1152 ::
  T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1152 v0
  = let v1 = d1096 (coe v0) in
    let v2 = d324 (coe v1) in coe du106 (coe d124 (coe v2))
name1154
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity"
d1154 :: T1078 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1154 v0 = coe d326 (coe d1096 (coe v0))
name1156
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ"
d1156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
d1156 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1156 v8
du1156 :: T1078 -> AgdaAny -> AgdaAny
du1156 v0
  = let v1 = d1096 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v1))
name1158
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ"
d1158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
d1158 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1158 v8
du1158 :: T1078 -> AgdaAny -> AgdaAny
du1158 v0
  = let v1 = d1096 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v1))
name1160
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMagma"
d1160 :: T1078 -> T80
d1160 v0 = coe d124 (coe d324 (coe d1096 (coe v0)))
name1162
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup"
d1162 :: T1078 -> T116
d1162 v0 = coe d324 (coe d1096 (coe v0))
name1172 = "Algebra.Structures.IsSemiring"
d1172 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1172 = C21369 T1078 MAlonzo.Code.Agda.Builtin.Sigma.T14
name1186
  = "Algebra.Structures.IsSemiring.isSemiringWithoutAnnihilatingZero"
d1186 :: T1172 -> T1078
d1186 v0
  = case coe v0 of
      C21369 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1188 = "Algebra.Structures.IsSemiring.zero"
d1188 :: T1172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1188 v0
  = case coe v0 of
      C21369 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1192 = "Algebra.Structures.IsSemiring._.assoc"
d1192 :: T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1192 v0 = coe d126 (coe d324 (coe d1096 (coe d1186 (coe v0))))
name1194 = "Algebra.Structures.IsSemiring._.∙-cong"
d1194 ::
  T1172 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1194 v0
  = coe d90 (coe d124 (coe d324 (coe d1096 (coe d1186 (coe v0)))))
name1196 = "Algebra.Structures.IsSemiring._.∙-congʳ"
d1196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1196 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1196 v8
du1196 ::
  T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1196 v0
  = let v1 = d1186 (coe v0) in
    let v2 = d1096 (coe v1) in
    let v3 = d324 (coe v2) in coe du110 (coe d124 (coe v3))
name1198 = "Algebra.Structures.IsSemiring._.∙-congˡ"
d1198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1198 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1198 v8
du1198 ::
  T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1198 v0
  = let v1 = d1186 (coe v0) in
    let v2 = d1096 (coe v1) in
    let v3 = d324 (coe v2) in coe du106 (coe d124 (coe v3))
name1200 = "Algebra.Structures.IsSemiring._.identity"
d1200 :: T1172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1200 v0 = coe d326 (coe d1096 (coe d1186 (coe v0)))
name1202 = "Algebra.Structures.IsSemiring._.identityʳ"
d1202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1172 -> AgdaAny -> AgdaAny
d1202 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1202 v8
du1202 :: T1172 -> AgdaAny -> AgdaAny
du1202 v0
  = let v1 = d1186 (coe v0) in
    let v2 = d1096 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v2))
name1204 = "Algebra.Structures.IsSemiring._.identityˡ"
d1204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1172 -> AgdaAny -> AgdaAny
d1204 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1204 v8
du1204 :: T1172 -> AgdaAny -> AgdaAny
du1204 v0
  = let v1 = d1186 (coe v0) in
    let v2 = d1096 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v2))
name1206 = "Algebra.Structures.IsSemiring._.isMagma"
d1206 :: T1172 -> T80
d1206 v0 = coe d124 (coe d324 (coe d1096 (coe d1186 (coe v0))))
name1208 = "Algebra.Structures.IsSemiring._.*-isMonoid"
d1208 :: T1172 -> T314
d1208 v0 = coe d1096 (coe d1186 (coe v0))
name1210 = "Algebra.Structures.IsSemiring._.isSemigroup"
d1210 :: T1172 -> T116
d1210 v0 = coe d324 (coe d1096 (coe d1186 (coe v0)))
name1212 = "Algebra.Structures.IsSemiring._.assoc"
d1212 :: T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1212 v0
  = coe d126 (coe d324 (coe d372 (coe d1094 (coe d1186 (coe v0)))))
name1214 = "Algebra.Structures.IsSemiring._.comm"
d1214 :: T1172 -> AgdaAny -> AgdaAny -> AgdaAny
d1214 v0 = coe d374 (coe d1094 (coe d1186 (coe v0)))
name1216 = "Algebra.Structures.IsSemiring._.∙-cong"
d1216 ::
  T1172 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1216 v0
  = coe
      d90
      (coe d124 (coe d324 (coe d372 (coe d1094 (coe d1186 (coe v0))))))
name1218 = "Algebra.Structures.IsSemiring._.∙-congʳ"
d1218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1218 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1218 v8
du1218 ::
  T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1218 v0
  = let v1 = d1186 (coe v0) in
    let v2 = d1094 (coe v1) in
    let v3 = d372 (coe v2) in
    let v4 = d324 (coe v3) in coe du110 (coe d124 (coe v4))
name1220 = "Algebra.Structures.IsSemiring._.∙-congˡ"
d1220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1220 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1220 v8
du1220 ::
  T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1220 v0
  = let v1 = d1186 (coe v0) in
    let v2 = d1094 (coe v1) in
    let v3 = d372 (coe v2) in
    let v4 = d324 (coe v3) in coe du106 (coe d124 (coe v4))
name1222 = "Algebra.Structures.IsSemiring._.identity"
d1222 :: T1172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1222 v0 = coe d326 (coe d372 (coe d1094 (coe d1186 (coe v0))))
name1224 = "Algebra.Structures.IsSemiring._.identityʳ"
d1224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1172 -> AgdaAny -> AgdaAny
d1224 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1224 v8
du1224 :: T1172 -> AgdaAny -> AgdaAny
du1224 v0
  = let v1 = d1186 (coe v0) in
    let v2 = d1094 (coe v1) in
    let v3 = d372 (coe v2) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v3))
name1226 = "Algebra.Structures.IsSemiring._.identityˡ"
d1226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1172 -> AgdaAny -> AgdaAny
d1226 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1226 v8
du1226 :: T1172 -> AgdaAny -> AgdaAny
du1226 v0
  = let v1 = d1186 (coe v0) in
    let v2 = d1094 (coe v1) in
    let v3 = d372 (coe v2) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v3))
name1228 = "Algebra.Structures.IsSemiring._.+-isCommutativeMonoid"
d1228 :: T1172 -> T362
d1228 v0 = coe d1094 (coe d1186 (coe v0))
name1230 = "Algebra.Structures.IsSemiring._.isCommutativeSemigroup"
d1230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1172 -> T192
d1230 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1230 v8
du1230 :: T1172 -> T192
du1230 v0
  = let v1 = d1186 (coe v0) in coe du410 (coe d1094 (coe v1))
name1232 = "Algebra.Structures.IsSemiring._.isMagma"
d1232 :: T1172 -> T80
d1232 v0
  = coe d124 (coe d324 (coe d372 (coe d1094 (coe d1186 (coe v0)))))
name1234 = "Algebra.Structures.IsSemiring._.isMonoid"
d1234 :: T1172 -> T314
d1234 v0 = coe d372 (coe d1094 (coe d1186 (coe v0)))
name1236 = "Algebra.Structures.IsSemiring._.isSemigroup"
d1236 :: T1172 -> T116
d1236 v0 = coe d324 (coe d372 (coe d1094 (coe d1186 (coe v0))))
name1238 = "Algebra.Structures.IsSemiring._.distrib"
d1238 :: T1172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1238 v0 = coe d1098 (coe d1186 (coe v0))
name1240 = "Algebra.Structures.IsSemiring._.distribʳ"
d1240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1240 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1240 v8
du1240 :: T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1240 v0
  = let v1 = d1186 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1098 (coe v1))
name1242 = "Algebra.Structures.IsSemiring._.distribˡ"
d1242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1242 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1242 v8
du1242 :: T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1242 v0
  = let v1 = d1186 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1098 (coe v1))
name1244 = "Algebra.Structures.IsSemiring._.isEquivalence"
d1244 :: T1172 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1244 v0
  = coe
      d88
      (coe d124 (coe d324 (coe d372 (coe d1094 (coe d1186 (coe v0))))))
name1246 = "Algebra.Structures.IsSemiring._.isPartialEquivalence"
d1246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1172 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1246 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1246 v8
du1246 :: T1172 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1246 v0
  = let v1 = d1186 (coe v0) in
    let v2 = d1094 (coe v1) in
    let v3 = d372 (coe v2) in
    let v4 = d324 (coe v3) in
    let v5 = d124 (coe v4) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v5))
name1248 = "Algebra.Structures.IsSemiring._.refl"
d1248 :: T1172 -> AgdaAny -> AgdaAny
d1248 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         d88
         (coe d124 (coe d324 (coe d372 (coe d1094 (coe d1186 (coe v0)))))))
name1250 = "Algebra.Structures.IsSemiring._.reflexive"
d1250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1172 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1250 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1250 v8
du1250 ::
  T1172 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1250 v0
  = let v1 = d1186 (coe v0) in
    let v2 = d1094 (coe v1) in
    let v3 = d372 (coe v2) in
    let v4 = d324 (coe v3) in
    let v5 = d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v5)) v6
name1252 = "Algebra.Structures.IsSemiring._.setoid"
d1252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1172 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1252 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1252 v8
du1252 :: T1172 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1252 v0
  = let v1 = d1186 (coe v0) in
    let v2 = d1094 (coe v1) in
    let v3 = d372 (coe v2) in
    let v4 = d324 (coe v3) in coe du104 (coe d124 (coe v4))
name1254 = "Algebra.Structures.IsSemiring._.sym"
d1254 :: T1172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1254 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         d88
         (coe d124 (coe d324 (coe d372 (coe d1094 (coe d1186 (coe v0)))))))
name1256 = "Algebra.Structures.IsSemiring._.trans"
d1256 ::
  T1172 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1256 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         d88
         (coe d124 (coe d324 (coe d372 (coe d1094 (coe d1186 (coe v0)))))))
name1258 = "Algebra.Structures.IsSemiring.isSemiringWithoutOne"
d1258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1172 -> T898
d1258 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1258 v8
du1258 :: T1172 -> T898
du1258 v0
  = coe
      C16303 (coe d1094 (coe d1186 (coe v0)))
      (coe d324 (coe d1096 (coe d1186 (coe v0))))
      (coe d1098 (coe d1186 (coe v0))) (coe d1188 (coe v0))
name1262 = "Algebra.Structures.IsSemiring._.isNearSemiring"
d1262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1172 -> T822
d1262 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1262 v8
du1262 :: T1172 -> T822
du1262 v0 = coe du934 (coe du1258 (coe v0))
name1264 = "Algebra.Structures.IsSemiring._.zeroʳ"
d1264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1172 -> AgdaAny -> AgdaAny
d1264 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1264 v8
du1264 :: T1172 -> AgdaAny -> AgdaAny
du1264 v0
  = let v1 = coe du1258 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d920 (coe v1))
name1266 = "Algebra.Structures.IsSemiring._.zeroˡ"
d1266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1172 -> AgdaAny -> AgdaAny
d1266 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1266 v8
du1266 :: T1172 -> AgdaAny -> AgdaAny
du1266 v0
  = let v1 = coe du1258 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d920 (coe v1))
name1276 = "Algebra.Structures.IsCommutativeSemiring"
d1276 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1276 = C23215 T1172 (AgdaAny -> AgdaAny -> AgdaAny)
name1290 = "Algebra.Structures.IsCommutativeSemiring.isSemiring"
d1290 :: T1276 -> T1172
d1290 v0
  = case coe v0 of
      C23215 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1292 = "Algebra.Structures.IsCommutativeSemiring.*-comm"
d1292 :: T1276 -> AgdaAny -> AgdaAny -> AgdaAny
d1292 v0
  = case coe v0 of
      C23215 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1296 = "Algebra.Structures.IsCommutativeSemiring._.assoc"
d1296 :: T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1296 v0
  = coe d126 (coe d324 (coe d1096 (coe d1186 (coe d1290 (coe v0)))))
name1298 = "Algebra.Structures.IsCommutativeSemiring._.∙-cong"
d1298 ::
  T1276 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1298 v0
  = coe
      d90
      (coe d124 (coe d324 (coe d1096 (coe d1186 (coe d1290 (coe v0))))))
name1300 = "Algebra.Structures.IsCommutativeSemiring._.∙-congʳ"
d1300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1300 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1300 v8
du1300 ::
  T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1300 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    let v3 = d1096 (coe v2) in
    let v4 = d324 (coe v3) in coe du110 (coe d124 (coe v4))
name1302 = "Algebra.Structures.IsCommutativeSemiring._.∙-congˡ"
d1302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1302 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1302 v8
du1302 ::
  T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1302 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    let v3 = d1096 (coe v2) in
    let v4 = d324 (coe v3) in coe du106 (coe d124 (coe v4))
name1304 = "Algebra.Structures.IsCommutativeSemiring._.identity"
d1304 :: T1276 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1304 v0 = coe d326 (coe d1096 (coe d1186 (coe d1290 (coe v0))))
name1306 = "Algebra.Structures.IsCommutativeSemiring._.identityʳ"
d1306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1276 -> AgdaAny -> AgdaAny
d1306 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1306 v8
du1306 :: T1276 -> AgdaAny -> AgdaAny
du1306 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    let v3 = d1096 (coe v2) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v3))
name1308 = "Algebra.Structures.IsCommutativeSemiring._.identityˡ"
d1308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1276 -> AgdaAny -> AgdaAny
d1308 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1308 v8
du1308 :: T1276 -> AgdaAny -> AgdaAny
du1308 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    let v3 = d1096 (coe v2) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v3))
name1310 = "Algebra.Structures.IsCommutativeSemiring._.isMagma"
d1310 :: T1276 -> T80
d1310 v0
  = coe d124 (coe d324 (coe d1096 (coe d1186 (coe d1290 (coe v0)))))
name1312 = "Algebra.Structures.IsCommutativeSemiring._.*-isMonoid"
d1312 :: T1276 -> T314
d1312 v0 = coe d1096 (coe d1186 (coe d1290 (coe v0)))
name1314 = "Algebra.Structures.IsCommutativeSemiring._.isSemigroup"
d1314 :: T1276 -> T116
d1314 v0 = coe d324 (coe d1096 (coe d1186 (coe d1290 (coe v0))))
name1316 = "Algebra.Structures.IsCommutativeSemiring._.assoc"
d1316 :: T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1316 v0
  = coe
      d126
      (coe d324 (coe d372 (coe d1094 (coe d1186 (coe d1290 (coe v0))))))
name1318 = "Algebra.Structures.IsCommutativeSemiring._.comm"
d1318 :: T1276 -> AgdaAny -> AgdaAny -> AgdaAny
d1318 v0 = coe d374 (coe d1094 (coe d1186 (coe d1290 (coe v0))))
name1320 = "Algebra.Structures.IsCommutativeSemiring._.∙-cong"
d1320 ::
  T1276 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1320 v0
  = coe
      d90
      (coe
         d124
         (coe d324 (coe d372 (coe d1094 (coe d1186 (coe d1290 (coe v0)))))))
name1322 = "Algebra.Structures.IsCommutativeSemiring._.∙-congʳ"
d1322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1322 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1322 v8
du1322 ::
  T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1322 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    let v3 = d1094 (coe v2) in
    let v4 = d372 (coe v3) in
    let v5 = d324 (coe v4) in coe du110 (coe d124 (coe v5))
name1324 = "Algebra.Structures.IsCommutativeSemiring._.∙-congˡ"
d1324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1324 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1324 v8
du1324 ::
  T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1324 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    let v3 = d1094 (coe v2) in
    let v4 = d372 (coe v3) in
    let v5 = d324 (coe v4) in coe du106 (coe d124 (coe v5))
name1326 = "Algebra.Structures.IsCommutativeSemiring._.identity"
d1326 :: T1276 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1326 v0
  = coe d326 (coe d372 (coe d1094 (coe d1186 (coe d1290 (coe v0)))))
name1328 = "Algebra.Structures.IsCommutativeSemiring._.identityʳ"
d1328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1276 -> AgdaAny -> AgdaAny
d1328 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1328 v8
du1328 :: T1276 -> AgdaAny -> AgdaAny
du1328 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    let v3 = d1094 (coe v2) in
    let v4 = d372 (coe v3) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v4))
name1330 = "Algebra.Structures.IsCommutativeSemiring._.identityˡ"
d1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1276 -> AgdaAny -> AgdaAny
d1330 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1330 v8
du1330 :: T1276 -> AgdaAny -> AgdaAny
du1330 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    let v3 = d1094 (coe v2) in
    let v4 = d372 (coe v3) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v4))
name1332
  = "Algebra.Structures.IsCommutativeSemiring._.+-isCommutativeMonoid"
d1332 :: T1276 -> T362
d1332 v0 = coe d1094 (coe d1186 (coe d1290 (coe v0)))
name1334
  = "Algebra.Structures.IsCommutativeSemiring._.isCommutativeSemigroup"
d1334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1276 -> T192
d1334 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1334 v8
du1334 :: T1276 -> T192
du1334 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in coe du410 (coe d1094 (coe v2))
name1336 = "Algebra.Structures.IsCommutativeSemiring._.isMagma"
d1336 :: T1276 -> T80
d1336 v0
  = coe
      d124
      (coe d324 (coe d372 (coe d1094 (coe d1186 (coe d1290 (coe v0))))))
name1338 = "Algebra.Structures.IsCommutativeSemiring._.isMonoid"
d1338 :: T1276 -> T314
d1338 v0 = coe d372 (coe d1094 (coe d1186 (coe d1290 (coe v0))))
name1340 = "Algebra.Structures.IsCommutativeSemiring._.isSemigroup"
d1340 :: T1276 -> T116
d1340 v0
  = coe d324 (coe d372 (coe d1094 (coe d1186 (coe d1290 (coe v0)))))
name1342 = "Algebra.Structures.IsCommutativeSemiring._.distrib"
d1342 :: T1276 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1342 v0 = coe d1098 (coe d1186 (coe d1290 (coe v0)))
name1344 = "Algebra.Structures.IsCommutativeSemiring._.distribʳ"
d1344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1344 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1344 v8
du1344 :: T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1344 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1098 (coe v2))
name1346 = "Algebra.Structures.IsCommutativeSemiring._.distribˡ"
d1346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1346 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1346 v8
du1346 :: T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1346 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1098 (coe v2))
name1348
  = "Algebra.Structures.IsCommutativeSemiring._.isEquivalence"
d1348 :: T1276 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1348 v0
  = coe
      d88
      (coe
         d124
         (coe d324 (coe d372 (coe d1094 (coe d1186 (coe d1290 (coe v0)))))))
name1350
  = "Algebra.Structures.IsCommutativeSemiring._.isNearSemiring"
d1350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1276 -> T822
d1350 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1350 v8
du1350 :: T1276 -> T822
du1350 v0
  = let v1 = d1290 (coe v0) in coe du934 (coe du1258 (coe v1))
name1352
  = "Algebra.Structures.IsCommutativeSemiring._.isPartialEquivalence"
d1352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1276 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1352 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1352 v8
du1352 :: T1276 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1352 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    let v3 = d1094 (coe v2) in
    let v4 = d372 (coe v3) in
    let v5 = d324 (coe v4) in
    let v6 = d124 (coe v5) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v6))
name1354
  = "Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutAnnihilatingZero"
d1354 :: T1276 -> T1078
d1354 v0 = coe d1186 (coe d1290 (coe v0))
name1356
  = "Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutOne"
d1356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1276 -> T898
d1356 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1356 v8
du1356 :: T1276 -> T898
du1356 v0 = coe du1258 (coe d1290 (coe v0))
name1358 = "Algebra.Structures.IsCommutativeSemiring._.refl"
d1358 :: T1276 -> AgdaAny -> AgdaAny
d1358 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         d88
         (coe
            d124
            (coe
               d324 (coe d372 (coe d1094 (coe d1186 (coe d1290 (coe v0))))))))
name1360 = "Algebra.Structures.IsCommutativeSemiring._.reflexive"
d1360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1276 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1360 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1360 v8
du1360 ::
  T1276 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1360 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    let v3 = d1094 (coe v2) in
    let v4 = d372 (coe v3) in
    let v5 = d324 (coe v4) in
    let v6 = d124 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v6)) v7
name1362 = "Algebra.Structures.IsCommutativeSemiring._.setoid"
d1362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1276 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1362 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1362 v8
du1362 :: T1276 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1362 v0
  = let v1 = d1290 (coe v0) in
    let v2 = d1186 (coe v1) in
    let v3 = d1094 (coe v2) in
    let v4 = d372 (coe v3) in
    let v5 = d324 (coe v4) in coe du104 (coe d124 (coe v5))
name1364 = "Algebra.Structures.IsCommutativeSemiring._.sym"
d1364 :: T1276 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1364 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         d88
         (coe
            d124
            (coe
               d324 (coe d372 (coe d1094 (coe d1186 (coe d1290 (coe v0))))))))
name1366 = "Algebra.Structures.IsCommutativeSemiring._.trans"
d1366 ::
  T1276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1366 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         d88
         (coe
            d124
            (coe
               d324 (coe d372 (coe d1094 (coe d1186 (coe d1290 (coe v0))))))))
name1368 = "Algebra.Structures.IsCommutativeSemiring._.zero"
d1368 :: T1276 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1368 v0 = coe d1188 (coe d1290 (coe v0))
name1370 = "Algebra.Structures.IsCommutativeSemiring._.zeroʳ"
d1370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1276 -> AgdaAny -> AgdaAny
d1370 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1370 v8
du1370 :: T1276 -> AgdaAny -> AgdaAny
du1370 v0
  = let v1 = d1290 (coe v0) in
    let v2 = coe du1258 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d920 (coe v2))
name1372 = "Algebra.Structures.IsCommutativeSemiring._.zeroˡ"
d1372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1276 -> AgdaAny -> AgdaAny
d1372 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1372 v8
du1372 :: T1276 -> AgdaAny -> AgdaAny
du1372 v0
  = let v1 = d1290 (coe v0) in
    let v2 = coe du1258 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d920 (coe v2))
name1374
  = "Algebra.Structures.IsCommutativeSemiring.isCommutativeSemiringWithoutOne"
d1374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1276 -> T988
d1374 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1374 v8
du1374 :: T1276 -> T988
du1374 v0
  = coe C18217 (coe du1258 (coe d1290 (coe v0))) (coe d1292 (coe v0))
name1376
  = "Algebra.Structures.IsCommutativeSemiring.*-isCommutativeSemigroup"
d1376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1276 -> T192
d1376 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1376 v8
du1376 :: T1276 -> T192
du1376 v0
  = coe
      C2681 (coe d324 (coe d1096 (coe d1186 (coe d1290 (coe v0)))))
      (coe d1292 (coe v0))
name1378
  = "Algebra.Structures.IsCommutativeSemiring.*-isCommutativeMonoid"
d1378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1276 -> T362
d1378 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1378 v8
du1378 :: T1276 -> T362
du1378 v0
  = coe
      C5263 (coe d1096 (coe d1186 (coe d1290 (coe v0))))
      (coe d1292 (coe v0))
name1390 = "Algebra.Structures.IsRing"
d1390 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1390
  = C25373 T610 T314 MAlonzo.Code.Agda.Builtin.Sigma.T14
           MAlonzo.Code.Agda.Builtin.Sigma.T14
name1410 = "Algebra.Structures.IsRing.+-isAbelianGroup"
d1410 :: T1390 -> T610
d1410 v0
  = case coe v0 of
      C25373 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1412 = "Algebra.Structures.IsRing.*-isMonoid"
d1412 :: T1390 -> T314
d1412 v0
  = case coe v0 of
      C25373 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1414 = "Algebra.Structures.IsRing.distrib"
d1414 :: T1390 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1414 v0
  = case coe v0 of
      C25373 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1416 = "Algebra.Structures.IsRing.zero"
d1416 :: T1390 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1416 v0
  = case coe v0 of
      C25373 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1420 = "Algebra.Structures.IsRing._._-_"
d1420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1390 -> AgdaAny -> AgdaAny -> AgdaAny
d1420 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1420 v4 v6 v10 v11
du1420 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1420 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name1422 = "Algebra.Structures.IsRing._.assoc"
d1422 :: T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1422 v0
  = coe d126 (coe d324 (coe d542 (coe d622 (coe d1410 (coe v0)))))
name1424 = "Algebra.Structures.IsRing._.comm"
d1424 :: T1390 -> AgdaAny -> AgdaAny -> AgdaAny
d1424 v0 = coe d624 (coe d1410 (coe v0))
name1426 = "Algebra.Structures.IsRing._.∙-cong"
d1426 ::
  T1390 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1426 v0
  = coe
      d90
      (coe d124 (coe d324 (coe d542 (coe d622 (coe d1410 (coe v0))))))
name1428 = "Algebra.Structures.IsRing._.∙-congʳ"
d1428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1428 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1428 v9
du1428 ::
  T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1428 v0
  = let v1 = d1410 (coe v0) in
    let v2 = d622 (coe v1) in
    let v3 = d542 (coe v2) in
    let v4 = d324 (coe v3) in coe du110 (coe d124 (coe v4))
name1430 = "Algebra.Structures.IsRing._.∙-congˡ"
d1430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1430 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1430 v9
du1430 ::
  T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1430 v0
  = let v1 = d1410 (coe v0) in
    let v2 = d622 (coe v1) in
    let v3 = d542 (coe v2) in
    let v4 = d324 (coe v3) in coe du106 (coe d124 (coe v4))
name1432 = "Algebra.Structures.IsRing._.identity"
d1432 :: T1390 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1432 v0 = coe d326 (coe d542 (coe d622 (coe d1410 (coe v0))))
name1434 = "Algebra.Structures.IsRing._.identityʳ"
d1434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1390 -> AgdaAny -> AgdaAny
d1434 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1434 v9
du1434 :: T1390 -> AgdaAny -> AgdaAny
du1434 v0
  = let v1 = d1410 (coe v0) in
    let v2 = d622 (coe v1) in
    let v3 = d542 (coe v2) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v3))
name1436 = "Algebra.Structures.IsRing._.identityˡ"
d1436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1390 -> AgdaAny -> AgdaAny
d1436 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1436 v9
du1436 :: T1390 -> AgdaAny -> AgdaAny
du1436 v0
  = let v1 = d1410 (coe v0) in
    let v2 = d622 (coe v1) in
    let v3 = d542 (coe v2) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v3))
name1438 = "Algebra.Structures.IsRing._.isCommutativeMonoid"
d1438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1390 -> T362
d1438 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1438 v9
du1438 :: T1390 -> T362
du1438 v0 = coe du676 (coe d1410 (coe v0))
name1440 = "Algebra.Structures.IsRing._.isCommutativeSemigroup"
d1440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1390 -> T192
d1440 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1440 v9
du1440 :: T1390 -> T192
du1440 v0
  = let v1 = d1410 (coe v0) in coe du410 (coe du676 (coe v1))
name1442 = "Algebra.Structures.IsRing._.isGroup"
d1442 :: T1390 -> T528
d1442 v0 = coe d622 (coe d1410 (coe v0))
name1444 = "Algebra.Structures.IsRing._.isMagma"
d1444 :: T1390 -> T80
d1444 v0
  = coe d124 (coe d324 (coe d542 (coe d622 (coe d1410 (coe v0)))))
name1446 = "Algebra.Structures.IsRing._.isMonoid"
d1446 :: T1390 -> T314
d1446 v0 = coe d542 (coe d622 (coe d1410 (coe v0)))
name1448 = "Algebra.Structures.IsRing._.isSemigroup"
d1448 :: T1390 -> T116
d1448 v0 = coe d324 (coe d542 (coe d622 (coe d1410 (coe v0))))
name1450 = "Algebra.Structures.IsRing._.⁻¹-cong"
d1450 :: T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1450 v0 = coe d546 (coe d622 (coe d1410 (coe v0)))
name1452 = "Algebra.Structures.IsRing._.inverse"
d1452 :: T1390 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1452 v0 = coe d544 (coe d622 (coe d1410 (coe v0)))
name1454 = "Algebra.Structures.IsRing._.inverseʳ"
d1454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1390 -> AgdaAny -> AgdaAny
d1454 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1454 v9
du1454 :: T1390 -> AgdaAny -> AgdaAny
du1454 v0
  = let v1 = d1410 (coe v0) in
    let v2 = d622 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d544 (coe v2))
name1456 = "Algebra.Structures.IsRing._.inverseˡ"
d1456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1390 -> AgdaAny -> AgdaAny
d1456 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1456 v9
du1456 :: T1390 -> AgdaAny -> AgdaAny
du1456 v0
  = let v1 = d1410 (coe v0) in
    let v2 = d622 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d544 (coe v2))
name1458 = "Algebra.Structures.IsRing._.isEquivalence"
d1458 :: T1390 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1458 v0
  = coe
      d88
      (coe d124 (coe d324 (coe d542 (coe d622 (coe d1410 (coe v0))))))
name1460 = "Algebra.Structures.IsRing._.isPartialEquivalence"
d1460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1390 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1460 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1460 v9
du1460 :: T1390 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1460 v0
  = let v1 = d1410 (coe v0) in
    let v2 = d622 (coe v1) in
    let v3 = d542 (coe v2) in
    let v4 = d324 (coe v3) in
    let v5 = d124 (coe v4) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v5))
name1462 = "Algebra.Structures.IsRing._.refl"
d1462 :: T1390 -> AgdaAny -> AgdaAny
d1462 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         d88
         (coe d124 (coe d324 (coe d542 (coe d622 (coe d1410 (coe v0)))))))
name1464 = "Algebra.Structures.IsRing._.reflexive"
d1464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1390 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1464 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1464 v9
du1464 ::
  T1390 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1464 v0
  = let v1 = d1410 (coe v0) in
    let v2 = d622 (coe v1) in
    let v3 = d542 (coe v2) in
    let v4 = d324 (coe v3) in
    let v5 = d124 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v5)) v6
name1466 = "Algebra.Structures.IsRing._.setoid"
d1466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1390 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1466 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1466 v9
du1466 :: T1390 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1466 v0
  = let v1 = d1410 (coe v0) in
    let v2 = d622 (coe v1) in
    let v3 = d542 (coe v2) in
    let v4 = d324 (coe v3) in coe du104 (coe d124 (coe v4))
name1468 = "Algebra.Structures.IsRing._.sym"
d1468 :: T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1468 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         d88
         (coe d124 (coe d324 (coe d542 (coe d622 (coe d1410 (coe v0)))))))
name1470 = "Algebra.Structures.IsRing._.trans"
d1470 ::
  T1390 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1470 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         d88
         (coe d124 (coe d324 (coe d542 (coe d622 (coe d1410 (coe v0)))))))
name1472 = "Algebra.Structures.IsRing._.uniqueʳ-⁻¹"
d1472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1472 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1472 v4 v6 v7 v9
du1472 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1472 v0 v1 v2 v3
  = let v4 = d1410 (coe v3) in
    coe du602 (coe v0) (coe v2) (coe v1) (coe d622 (coe v4))
name1474 = "Algebra.Structures.IsRing._.uniqueˡ-⁻¹"
d1474 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1474 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1474 v4 v6 v7 v9
du1474 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1474 v0 v1 v2 v3
  = let v4 = d1410 (coe v3) in
    coe du596 (coe v0) (coe v2) (coe v1) (coe d622 (coe v4))
name1478 = "Algebra.Structures.IsRing._.assoc"
d1478 :: T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1478 v0 = coe d126 (coe d324 (coe d1412 (coe v0)))
name1480 = "Algebra.Structures.IsRing._.∙-cong"
d1480 ::
  T1390 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1480 v0 = coe d90 (coe d124 (coe d324 (coe d1412 (coe v0))))
name1482 = "Algebra.Structures.IsRing._.∙-congʳ"
d1482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1482 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1482 v9
du1482 ::
  T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1482 v0
  = let v1 = d1412 (coe v0) in
    let v2 = d324 (coe v1) in coe du110 (coe d124 (coe v2))
name1484 = "Algebra.Structures.IsRing._.∙-congˡ"
d1484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1484 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1484 v9
du1484 ::
  T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1484 v0
  = let v1 = d1412 (coe v0) in
    let v2 = d324 (coe v1) in coe du106 (coe d124 (coe v2))
name1486 = "Algebra.Structures.IsRing._.identity"
d1486 :: T1390 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1486 v0 = coe d326 (coe d1412 (coe v0))
name1488 = "Algebra.Structures.IsRing._.identityʳ"
d1488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1390 -> AgdaAny -> AgdaAny
d1488 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1488 v9
du1488 :: T1390 -> AgdaAny -> AgdaAny
du1488 v0
  = let v1 = d1412 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v1))
name1490 = "Algebra.Structures.IsRing._.identityˡ"
d1490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1390 -> AgdaAny -> AgdaAny
d1490 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1490 v9
du1490 :: T1390 -> AgdaAny -> AgdaAny
du1490 v0
  = let v1 = d1412 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v1))
name1492 = "Algebra.Structures.IsRing._.isMagma"
d1492 :: T1390 -> T80
d1492 v0 = coe d124 (coe d324 (coe d1412 (coe v0)))
name1494 = "Algebra.Structures.IsRing._.isSemigroup"
d1494 :: T1390 -> T116
d1494 v0 = coe d324 (coe d1412 (coe v0))
name1496 = "Algebra.Structures.IsRing.zeroˡ"
d1496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1390 -> AgdaAny -> AgdaAny
d1496 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1496 v9
du1496 :: T1390 -> AgdaAny -> AgdaAny
du1496 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1416 (coe v0))
name1498 = "Algebra.Structures.IsRing.zeroʳ"
d1498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1390 -> AgdaAny -> AgdaAny
d1498 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1498 v9
du1498 :: T1390 -> AgdaAny -> AgdaAny
du1498 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1416 (coe v0))
name1500
  = "Algebra.Structures.IsRing.isSemiringWithoutAnnihilatingZero"
d1500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1390 -> T1078
d1500 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1500 v9
du1500 :: T1390 -> T1078
du1500 v0
  = coe
      C19341 (coe du676 (coe d1410 (coe v0))) (coe d1412 (coe v0))
      (coe d1414 (coe v0))
name1502 = "Algebra.Structures.IsRing.isSemiring"
d1502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1390 -> T1172
d1502 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1502 v9
du1502 :: T1390 -> T1172
du1502 v0 = coe C21369 (coe du1500 (coe v0)) (coe d1416 (coe v0))
name1506 = "Algebra.Structures.IsRing._.distribʳ"
d1506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1506 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1506 v9
du1506 :: T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1506 v0
  = let v1 = coe du1502 (coe v0) in
    let v2 = d1186 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1098 (coe v2))
name1508 = "Algebra.Structures.IsRing._.distribˡ"
d1508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1508 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1508 v9
du1508 :: T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1508 v0
  = let v1 = coe du1502 (coe v0) in
    let v2 = d1186 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1098 (coe v2))
name1510 = "Algebra.Structures.IsRing._.isNearSemiring"
d1510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1390 -> T822
d1510 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1510 v9
du1510 :: T1390 -> T822
du1510 v0
  = let v1 = coe du1502 (coe v0) in coe du934 (coe du1258 (coe v1))
name1512 = "Algebra.Structures.IsRing._.isSemiringWithoutOne"
d1512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1390 -> T898
d1512 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1512 v9
du1512 :: T1390 -> T898
du1512 v0 = coe du1258 (coe du1502 (coe v0))
name1524 = "Algebra.Structures.IsCommutativeRing"
d1524 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1524 = C28667 T1390 (AgdaAny -> AgdaAny -> AgdaAny)
name1540 = "Algebra.Structures.IsCommutativeRing.isRing"
d1540 :: T1524 -> T1390
d1540 v0
  = case coe v0 of
      C28667 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1542 = "Algebra.Structures.IsCommutativeRing.*-comm"
d1542 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny
d1542 v0
  = case coe v0 of
      C28667 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1546 = "Algebra.Structures.IsCommutativeRing._._-_"
d1546 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1524 -> AgdaAny -> AgdaAny -> AgdaAny
d1546 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1546 v4 v6 v10 v11
du1546 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1546 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name1548 = "Algebra.Structures.IsCommutativeRing._.assoc"
d1548 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1548 v0 = coe d126 (coe d324 (coe d1412 (coe d1540 (coe v0))))
name1550 = "Algebra.Structures.IsCommutativeRing._.∙-cong"
d1550 ::
  T1524 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1550 v0
  = coe d90 (coe d124 (coe d324 (coe d1412 (coe d1540 (coe v0)))))
name1552 = "Algebra.Structures.IsCommutativeRing._.∙-congʳ"
d1552 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1552 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1552 v9
du1552 ::
  T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1552 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1412 (coe v1) in
    let v3 = d324 (coe v2) in coe du110 (coe d124 (coe v3))
name1554 = "Algebra.Structures.IsCommutativeRing._.∙-congˡ"
d1554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1554 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1554 v9
du1554 ::
  T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1554 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1412 (coe v1) in
    let v3 = d324 (coe v2) in coe du106 (coe d124 (coe v3))
name1556 = "Algebra.Structures.IsCommutativeRing._.identity"
d1556 :: T1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1556 v0 = coe d326 (coe d1412 (coe d1540 (coe v0)))
name1558 = "Algebra.Structures.IsCommutativeRing._.identityʳ"
d1558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1524 -> AgdaAny -> AgdaAny
d1558 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1558 v9
du1558 :: T1524 -> AgdaAny -> AgdaAny
du1558 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1412 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v2))
name1560 = "Algebra.Structures.IsCommutativeRing._.identityˡ"
d1560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1524 -> AgdaAny -> AgdaAny
d1560 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1560 v9
du1560 :: T1524 -> AgdaAny -> AgdaAny
du1560 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1412 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v2))
name1562 = "Algebra.Structures.IsCommutativeRing._.isMagma"
d1562 :: T1524 -> T80
d1562 v0 = coe d124 (coe d324 (coe d1412 (coe d1540 (coe v0))))
name1564 = "Algebra.Structures.IsCommutativeRing._.*-isMonoid"
d1564 :: T1524 -> T314
d1564 v0 = coe d1412 (coe d1540 (coe v0))
name1566 = "Algebra.Structures.IsCommutativeRing._.isSemigroup"
d1566 :: T1524 -> T116
d1566 v0 = coe d324 (coe d1412 (coe d1540 (coe v0)))
name1568 = "Algebra.Structures.IsCommutativeRing._.assoc"
d1568 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1568 v0
  = coe
      d126
      (coe d324 (coe d542 (coe d622 (coe d1410 (coe d1540 (coe v0))))))
name1570 = "Algebra.Structures.IsCommutativeRing._.comm"
d1570 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny
d1570 v0 = coe d624 (coe d1410 (coe d1540 (coe v0)))
name1572 = "Algebra.Structures.IsCommutativeRing._.∙-cong"
d1572 ::
  T1524 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1572 v0
  = coe
      d90
      (coe
         d124
         (coe d324 (coe d542 (coe d622 (coe d1410 (coe d1540 (coe v0)))))))
name1574 = "Algebra.Structures.IsCommutativeRing._.∙-congʳ"
d1574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1574 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1574 v9
du1574 ::
  T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1574 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1410 (coe v1) in
    let v3 = d622 (coe v2) in
    let v4 = d542 (coe v3) in
    let v5 = d324 (coe v4) in coe du110 (coe d124 (coe v5))
name1576 = "Algebra.Structures.IsCommutativeRing._.∙-congˡ"
d1576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1576 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1576 v9
du1576 ::
  T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1576 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1410 (coe v1) in
    let v3 = d622 (coe v2) in
    let v4 = d542 (coe v3) in
    let v5 = d324 (coe v4) in coe du106 (coe d124 (coe v5))
name1578 = "Algebra.Structures.IsCommutativeRing._.identity"
d1578 :: T1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1578 v0
  = coe d326 (coe d542 (coe d622 (coe d1410 (coe d1540 (coe v0)))))
name1580 = "Algebra.Structures.IsCommutativeRing._.identityʳ"
d1580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1524 -> AgdaAny -> AgdaAny
d1580 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1580 v9
du1580 :: T1524 -> AgdaAny -> AgdaAny
du1580 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1410 (coe v1) in
    let v3 = d622 (coe v2) in
    let v4 = d542 (coe v3) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d326 (coe v4))
name1582 = "Algebra.Structures.IsCommutativeRing._.identityˡ"
d1582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1524 -> AgdaAny -> AgdaAny
d1582 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1582 v9
du1582 :: T1524 -> AgdaAny -> AgdaAny
du1582 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1410 (coe v1) in
    let v3 = d622 (coe v2) in
    let v4 = d542 (coe v3) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d326 (coe v4))
name1584
  = "Algebra.Structures.IsCommutativeRing._.+-isAbelianGroup"
d1584 :: T1524 -> T610
d1584 v0 = coe d1410 (coe d1540 (coe v0))
name1586
  = "Algebra.Structures.IsCommutativeRing._.isCommutativeMonoid"
d1586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T362
d1586 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1586 v9
du1586 :: T1524 -> T362
du1586 v0
  = let v1 = d1540 (coe v0) in coe du676 (coe d1410 (coe v1))
name1588
  = "Algebra.Structures.IsCommutativeRing._.isCommutativeSemigroup"
d1588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T192
d1588 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1588 v9
du1588 :: T1524 -> T192
du1588 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1410 (coe v1) in coe du410 (coe du676 (coe v2))
name1590 = "Algebra.Structures.IsCommutativeRing._.isGroup"
d1590 :: T1524 -> T528
d1590 v0 = coe d622 (coe d1410 (coe d1540 (coe v0)))
name1592 = "Algebra.Structures.IsCommutativeRing._.isMagma"
d1592 :: T1524 -> T80
d1592 v0
  = coe
      d124
      (coe d324 (coe d542 (coe d622 (coe d1410 (coe d1540 (coe v0))))))
name1594 = "Algebra.Structures.IsCommutativeRing._.isMonoid"
d1594 :: T1524 -> T314
d1594 v0 = coe d542 (coe d622 (coe d1410 (coe d1540 (coe v0))))
name1596 = "Algebra.Structures.IsCommutativeRing._.isSemigroup"
d1596 :: T1524 -> T116
d1596 v0
  = coe d324 (coe d542 (coe d622 (coe d1410 (coe d1540 (coe v0)))))
name1598 = "Algebra.Structures.IsCommutativeRing._.⁻¹-cong"
d1598 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1598 v0 = coe d546 (coe d622 (coe d1410 (coe d1540 (coe v0))))
name1600 = "Algebra.Structures.IsCommutativeRing._.inverse"
d1600 :: T1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1600 v0 = coe d544 (coe d622 (coe d1410 (coe d1540 (coe v0))))
name1602 = "Algebra.Structures.IsCommutativeRing._.inverseʳ"
d1602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1524 -> AgdaAny -> AgdaAny
d1602 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1602 v9
du1602 :: T1524 -> AgdaAny -> AgdaAny
du1602 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1410 (coe v1) in
    let v3 = d622 (coe v2) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d544 (coe v3))
name1604 = "Algebra.Structures.IsCommutativeRing._.inverseˡ"
d1604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1524 -> AgdaAny -> AgdaAny
d1604 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1604 v9
du1604 :: T1524 -> AgdaAny -> AgdaAny
du1604 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1410 (coe v1) in
    let v3 = d622 (coe v2) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d544 (coe v3))
name1606 = "Algebra.Structures.IsCommutativeRing._.distrib"
d1606 :: T1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1606 v0 = coe d1414 (coe d1540 (coe v0))
name1608 = "Algebra.Structures.IsCommutativeRing._.distribʳ"
d1608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1608 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1608 v9
du1608 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1608 v0
  = let v1 = d1540 (coe v0) in
    let v2 = coe du1502 (coe v1) in
    let v3 = d1186 (coe v2) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1098 (coe v3))
name1610 = "Algebra.Structures.IsCommutativeRing._.distribˡ"
d1610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1610 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1610 v9
du1610 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1610 v0
  = let v1 = d1540 (coe v0) in
    let v2 = coe du1502 (coe v1) in
    let v3 = d1186 (coe v2) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1098 (coe v3))
name1612 = "Algebra.Structures.IsCommutativeRing._.isEquivalence"
d1612 :: T1524 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1612 v0
  = coe
      d88
      (coe
         d124
         (coe d324 (coe d542 (coe d622 (coe d1410 (coe d1540 (coe v0)))))))
name1614 = "Algebra.Structures.IsCommutativeRing._.isNearSemiring"
d1614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T822
d1614 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1614 v9
du1614 :: T1524 -> T822
du1614 v0
  = let v1 = d1540 (coe v0) in
    let v2 = coe du1502 (coe v1) in coe du934 (coe du1258 (coe v2))
name1616
  = "Algebra.Structures.IsCommutativeRing._.isPartialEquivalence"
d1616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1524 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1616 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1616 v9
du1616 :: T1524 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1616 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1410 (coe v1) in
    let v3 = d622 (coe v2) in
    let v4 = d542 (coe v3) in
    let v5 = d324 (coe v4) in
    let v6 = d124 (coe v5) in
    coe MAlonzo.Code.Relation.Binary.Structures.du42 (coe d88 (coe v6))
name1618 = "Algebra.Structures.IsCommutativeRing._.isSemiring"
d1618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T1172
d1618 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1618 v9
du1618 :: T1524 -> T1172
du1618 v0 = coe du1502 (coe d1540 (coe v0))
name1620
  = "Algebra.Structures.IsCommutativeRing._.isSemiringWithoutAnnihilatingZero"
d1620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T1078
d1620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1620 v9
du1620 :: T1524 -> T1078
du1620 v0 = coe du1500 (coe d1540 (coe v0))
name1622
  = "Algebra.Structures.IsCommutativeRing._.isSemiringWithoutOne"
d1622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T898
d1622 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1622 v9
du1622 :: T1524 -> T898
du1622 v0
  = let v1 = d1540 (coe v0) in coe du1258 (coe du1502 (coe v1))
name1624 = "Algebra.Structures.IsCommutativeRing._.refl"
d1624 :: T1524 -> AgdaAny -> AgdaAny
d1624 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         d88
         (coe
            d124
            (coe d324 (coe d542 (coe d622 (coe d1410 (coe d1540 (coe v0))))))))
name1626 = "Algebra.Structures.IsCommutativeRing._.reflexive"
d1626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1524 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1626 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1626 v9
du1626 ::
  T1524 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1626 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1410 (coe v1) in
    let v3 = d622 (coe v2) in
    let v4 = d542 (coe v3) in
    let v5 = d324 (coe v4) in
    let v6 = d124 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d88 (coe v6)) v7
name1628 = "Algebra.Structures.IsCommutativeRing._.setoid"
d1628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1524 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1628 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1628 v9
du1628 :: T1524 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1628 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1410 (coe v1) in
    let v3 = d622 (coe v2) in
    let v4 = d542 (coe v3) in
    let v5 = d324 (coe v4) in coe du104 (coe d124 (coe v5))
name1630 = "Algebra.Structures.IsCommutativeRing._.sym"
d1630 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1630 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         d88
         (coe
            d124
            (coe d324 (coe d542 (coe d622 (coe d1410 (coe d1540 (coe v0))))))))
name1632 = "Algebra.Structures.IsCommutativeRing._.trans"
d1632 ::
  T1524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1632 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         d88
         (coe
            d124
            (coe d324 (coe d542 (coe d622 (coe d1410 (coe d1540 (coe v0))))))))
name1634 = "Algebra.Structures.IsCommutativeRing._.uniqueʳ-⁻¹"
d1634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1634 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1634 v4 v6 v7 v9
du1634 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1634 v0 v1 v2 v3
  = let v4 = d1540 (coe v3) in
    let v5 = d1410 (coe v4) in
    coe du602 (coe v0) (coe v2) (coe v1) (coe d622 (coe v5))
name1636 = "Algebra.Structures.IsCommutativeRing._.uniqueˡ-⁻¹"
d1636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1636 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1636 v4 v6 v7 v9
du1636 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1636 v0 v1 v2 v3
  = let v4 = d1540 (coe v3) in
    let v5 = d1410 (coe v4) in
    coe du596 (coe v0) (coe v2) (coe v1) (coe d622 (coe v5))
name1638 = "Algebra.Structures.IsCommutativeRing._.zero"
d1638 :: T1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1638 v0 = coe d1416 (coe d1540 (coe v0))
name1640 = "Algebra.Structures.IsCommutativeRing._.zeroʳ"
d1640 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1524 -> AgdaAny -> AgdaAny
d1640 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1640 v9
du1640 :: T1524 -> AgdaAny -> AgdaAny
du1640 v0
  = let v1 = d1540 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1416 (coe v1))
name1642 = "Algebra.Structures.IsCommutativeRing._.zeroˡ"
d1642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1524 -> AgdaAny -> AgdaAny
d1642 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1642 v9
du1642 :: T1524 -> AgdaAny -> AgdaAny
du1642 v0
  = let v1 = d1540 (coe v0) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1416 (coe v1))
name1644
  = "Algebra.Structures.IsCommutativeRing.*-isCommutativeMonoid"
d1644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T362
d1644 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1644 v9
du1644 :: T1524 -> T362
du1644 v0
  = coe C5263 (coe d1412 (coe d1540 (coe v0))) (coe d1542 (coe v0))
name1646
  = "Algebra.Structures.IsCommutativeRing.isCommutativeSemiring"
d1646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T1276
d1646 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1646 v9
du1646 :: T1524 -> T1276
du1646 v0
  = coe C23215 (coe du1502 (coe d1540 (coe v0))) (coe d1542 (coe v0))
name1650
  = "Algebra.Structures.IsCommutativeRing._.isCommutativeSemiringWithoutOne"
d1650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T988
d1650 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1650 v9
du1650 :: T1524 -> T988
du1650 v0 = coe du1374 (coe du1646 (coe v0))
name1662 = "Algebra.Structures.IsBooleanAlgebra"
d1662 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1662
  = C31455 T760 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name1682
  = "Algebra.Structures.IsBooleanAlgebra.isDistributiveLattice"
d1682 :: T1662 -> T760
d1682 v0
  = case coe v0 of
      C31455 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1684 = "Algebra.Structures.IsBooleanAlgebra.∨-complementʳ"
d1684 :: T1662 -> AgdaAny -> AgdaAny
d1684 v0
  = case coe v0 of
      C31455 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1686 = "Algebra.Structures.IsBooleanAlgebra.∧-complementʳ"
d1686 :: T1662 -> AgdaAny -> AgdaAny
d1686 v0
  = case coe v0 of
      C31455 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1688 = "Algebra.Structures.IsBooleanAlgebra.¬-cong"
d1688 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1688 v0
  = case coe v0 of
      C31455 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1692 = "Algebra.Structures.IsBooleanAlgebra._.absorptive"
d1692 :: T1662 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1692 v0 = coe d722 (coe d770 (coe d1682 (coe v0)))
name1694 = "Algebra.Structures.IsBooleanAlgebra._.isEquivalence"
d1694 :: T1662 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1694 v0 = coe d708 (coe d770 (coe d1682 (coe v0)))
name1696 = "Algebra.Structures.IsBooleanAlgebra._.isLattice"
d1696 :: T1662 -> T686
d1696 v0 = coe d770 (coe d1682 (coe v0))
name1698
  = "Algebra.Structures.IsBooleanAlgebra._.isPartialEquivalence"
d1698 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1662 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1698 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1698 v9
du1698 :: T1662 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1698 v0
  = let v1 = d1682 (coe v0) in
    let v2 = d770 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42 (coe d708 (coe v2))
name1700 = "Algebra.Structures.IsBooleanAlgebra._.refl"
d1700 :: T1662 -> AgdaAny -> AgdaAny
d1700 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe d708 (coe d770 (coe d1682 (coe v0))))
name1702 = "Algebra.Structures.IsBooleanAlgebra._.reflexive"
d1702 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1662 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1702 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1702 v9
du1702 ::
  T1662 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1702 v0
  = let v1 = d1682 (coe v0) in
    let v2 = d770 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40 (coe d708 (coe v2)) v3
name1704 = "Algebra.Structures.IsBooleanAlgebra._.sym"
d1704 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1704 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe d708 (coe d770 (coe d1682 (coe v0))))
name1706 = "Algebra.Structures.IsBooleanAlgebra._.trans"
d1706 ::
  T1662 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1706 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe d708 (coe d770 (coe d1682 (coe v0))))
name1708 = "Algebra.Structures.IsBooleanAlgebra._.∧-absorbs-∨"
d1708 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1662 -> AgdaAny -> AgdaAny -> AgdaAny
d1708 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1708 v9
du1708 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny
du1708 v0
  = let v1 = d1682 (coe v0) in
    let v2 = d770 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d722 (coe v2))
name1710 = "Algebra.Structures.IsBooleanAlgebra._.∧-assoc"
d1710 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1710 v0 = coe d718 (coe d770 (coe d1682 (coe v0)))
name1712 = "Algebra.Structures.IsBooleanAlgebra._.∧-comm"
d1712 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny
d1712 v0 = coe d716 (coe d770 (coe d1682 (coe v0)))
name1714 = "Algebra.Structures.IsBooleanAlgebra._.∧-cong"
d1714 ::
  T1662 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1714 v0 = coe d720 (coe d770 (coe d1682 (coe v0)))
name1716 = "Algebra.Structures.IsBooleanAlgebra._.∧-congʳ"
d1716 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1716 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1716 v9
du1716 ::
  T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1716 v0
  = let v1 = d1682 (coe v0) in coe du744 (coe d770 (coe v1))
name1718 = "Algebra.Structures.IsBooleanAlgebra._.∧-congˡ"
d1718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1718 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1718 v9
du1718 ::
  T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1718 v0
  = let v1 = d1682 (coe v0) in coe du740 (coe d770 (coe v1))
name1720 = "Algebra.Structures.IsBooleanAlgebra._.∨-absorbs-∧"
d1720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1662 -> AgdaAny -> AgdaAny -> AgdaAny
d1720 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1720 v9
du1720 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny
du1720 v0
  = let v1 = d1682 (coe v0) in
    let v2 = d770 (coe v1) in
    coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d722 (coe v2))
name1722 = "Algebra.Structures.IsBooleanAlgebra._.∨-assoc"
d1722 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1722 v0 = coe d712 (coe d770 (coe d1682 (coe v0)))
name1724 = "Algebra.Structures.IsBooleanAlgebra._.∨-comm"
d1724 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny
d1724 v0 = coe d710 (coe d770 (coe d1682 (coe v0)))
name1726 = "Algebra.Structures.IsBooleanAlgebra._.∨-cong"
d1726 ::
  T1662 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1726 v0 = coe d714 (coe d770 (coe d1682 (coe v0)))
name1728 = "Algebra.Structures.IsBooleanAlgebra._.∨-congʳ"
d1728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1728 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1728 v9
du1728 ::
  T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1728 v0
  = let v1 = d1682 (coe v0) in coe du752 (coe d770 (coe v1))
name1730 = "Algebra.Structures.IsBooleanAlgebra._.∨-congˡ"
d1730 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1730 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1730 v9
du1730 ::
  T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1730 v0
  = let v1 = d1682 (coe v0) in coe du748 (coe d770 (coe v1))
name1732 = "Algebra.Structures.IsBooleanAlgebra._.∨-distribʳ-∧"
d1732 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1732 v0 = coe d772 (coe d1682 (coe v0))
name1734 = "Algebra.Structures.IsBooleanAlgebra._.∨-∧-distribʳ"
d1734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1734 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1734 v9
du1734 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1734 v0 = coe du814 (coe d1682 (coe v0))
