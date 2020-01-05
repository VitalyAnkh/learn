{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
import qualified MAlonzo.Code.Algebra.FunctionProperties.Consequences
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
name44 = "Algebra.Structures._.Inverse"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d44 = erased
name50 = "Algebra.Structures._.LeftCongruent"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d50 = erased
name54 = "Algebra.Structures._.LeftIdentity"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d54 = erased
name56 = "Algebra.Structures._.LeftInverse"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d56 = erased
name58 = "Algebra.Structures._.LeftZero"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d58 = erased
name62 = "Algebra.Structures._.RightCongruent"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d62 = erased
name66 = "Algebra.Structures._.RightIdentity"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d66 = erased
name68 = "Algebra.Structures._.RightInverse"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d68 = erased
name70 = "Algebra.Structures._.RightZero"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d70 = erased
name72 = "Algebra.Structures._.Selective"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d72 = erased
name74 = "Algebra.Structures._.Zero"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d74 = erased
name78 = "Algebra.Structures.IsMagma"
d78 a0 a1 a2 a3 a4 = ()
data T78
  = C257 MAlonzo.Code.Relation.Binary.Structures.T26
         (AgdaAny ->
          AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name86 = "Algebra.Structures.IsMagma.isEquivalence"
d86 :: T78 -> MAlonzo.Code.Relation.Binary.Structures.T26
d86 v0
  = case coe v0 of
      C257 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name88 = "Algebra.Structures.IsMagma.∙-cong"
d88 ::
  T78 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d88 v0
  = case coe v0 of
      C257 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name92 = "Algebra.Structures.IsMagma._.isPartialEquivalence"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T78 -> MAlonzo.Code.Relation.Binary.Structures.T16
d92 v0 v1 v2 v3 v4 v5 = du92 v5
du92 :: T78 -> MAlonzo.Code.Relation.Binary.Structures.T16
du92 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v0))))
name94 = "Algebra.Structures.IsMagma._.refl"
d94 :: T78 -> AgdaAny -> AgdaAny
d94 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34 (coe (d86 (coe v0))))
name96 = "Algebra.Structures.IsMagma._.reflexive"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T78 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d96 v0 v1 v2 v3 v4 v5 = du96 v5
du96 ::
  T78 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du96 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v0))) v1)
name98 = "Algebra.Structures.IsMagma._.sym"
d98 :: T78 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d98 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36 (coe (d86 (coe v0))))
name100 = "Algebra.Structures.IsMagma._.trans"
d100 ::
  T78 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d100 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38 (coe (d86 (coe v0))))
name102 = "Algebra.Structures.IsMagma.setoid"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T78 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d102 v0 v1 v2 v3 v4 v5 = du102 v5
du102 :: T78 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du102 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C163 v3) erased
      erased (d86 (coe v0))
name104 = "Algebra.Structures.IsMagma.∙-congˡ"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T78 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d104 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du104 v5 v6 v7 v8 v9
du104 :: T78 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du104 v0 v1 v2 v3 v4
  = coe
      d88 v0 v1 v1 v2 v3
      (coe MAlonzo.Code.Relation.Binary.Structures.d34 (d86 (coe v0)) v1)
      v4
name108 = "Algebra.Structures.IsMagma.∙-congʳ"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T78 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d108 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du108 v5 v6 v7 v8 v9
du108 :: T78 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du108 v0 v1 v2 v3 v4
  = coe
      d88 v0 v2 v3 v1 v1 v4
      (coe MAlonzo.Code.Relation.Binary.Structures.d34 (d86 (coe v0)) v1)
name114 = "Algebra.Structures.IsSemigroup"
d114 a0 a1 a2 a3 a4 = ()
data T114 = C773 T78 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name122 = "Algebra.Structures.IsSemigroup.isMagma"
d122 :: T114 -> T78
d122 v0
  = case coe v0 of
      C773 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name124 = "Algebra.Structures.IsSemigroup.assoc"
d124 :: T114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d124 v0
  = case coe v0 of
      C773 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name128 = "Algebra.Structures.IsSemigroup._.isEquivalence"
d128 :: T114 -> MAlonzo.Code.Relation.Binary.Structures.T26
d128 v0 = coe (d86 (coe (d122 (coe v0))))
name130 = "Algebra.Structures.IsSemigroup._.isPartialEquivalence"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T114 -> MAlonzo.Code.Relation.Binary.Structures.T16
d130 v0 v1 v2 v3 v4 v5 = du130 v5
du130 :: T114 -> MAlonzo.Code.Relation.Binary.Structures.T16
du130 v0
  = let v1 = d122 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v1))))
name132 = "Algebra.Structures.IsSemigroup._.refl"
d132 :: T114 -> AgdaAny -> AgdaAny
d132 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe (d86 (coe (d122 (coe v0))))))
name134 = "Algebra.Structures.IsSemigroup._.reflexive"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T114 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d134 v0 v1 v2 v3 v4 v5 = du134 v5
du134 ::
  T114 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du134 v0
  = let v1 = d122 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v1))) v2)
name136 = "Algebra.Structures.IsSemigroup._.setoid"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T114 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d136 v0 v1 v2 v3 v4 v5 = du136 v5
du136 :: T114 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du136 v0 = coe (du102 (coe (d122 (coe v0))))
name138 = "Algebra.Structures.IsSemigroup._.sym"
d138 :: T114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d138 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe (d86 (coe (d122 (coe v0))))))
name140 = "Algebra.Structures.IsSemigroup._.trans"
d140 ::
  T114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d140 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe (d86 (coe (d122 (coe v0))))))
name142 = "Algebra.Structures.IsSemigroup._.∙-cong"
d142 ::
  T114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d142 v0 = coe (d88 (coe (d122 (coe v0))))
name144 = "Algebra.Structures.IsSemigroup._.∙-congʳ"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d144 v0 v1 v2 v3 v4 v5 = du144 v5
du144 ::
  T114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du144 v0 = coe (du108 (coe (d122 (coe v0))))
name146 = "Algebra.Structures.IsSemigroup._.∙-congˡ"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d146 v0 v1 v2 v3 v4 v5 = du146 v5
du146 ::
  T114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du146 v0 = coe (du104 (coe (d122 (coe v0))))
name150 = "Algebra.Structures.IsBand"
d150 a0 a1 a2 a3 a4 = ()
data T150 = C1025 T114 (AgdaAny -> AgdaAny)
name158 = "Algebra.Structures.IsBand.isSemigroup"
d158 :: T150 -> T114
d158 v0
  = case coe v0 of
      C1025 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name160 = "Algebra.Structures.IsBand.idem"
d160 :: T150 -> AgdaAny -> AgdaAny
d160 v0
  = case coe v0 of
      C1025 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name164 = "Algebra.Structures.IsBand._.assoc"
d164 :: T150 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d164 v0 = coe (d124 (coe (d158 (coe v0))))
name166 = "Algebra.Structures.IsBand._.isEquivalence"
d166 :: T150 -> MAlonzo.Code.Relation.Binary.Structures.T26
d166 v0 = coe (d86 (coe (d122 (coe (d158 (coe v0))))))
name168 = "Algebra.Structures.IsBand._.isMagma"
d168 :: T150 -> T78
d168 v0 = coe (d122 (coe (d158 (coe v0))))
name170 = "Algebra.Structures.IsBand._.isPartialEquivalence"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T150 -> MAlonzo.Code.Relation.Binary.Structures.T16
d170 v0 v1 v2 v3 v4 v5 = du170 v5
du170 :: T150 -> MAlonzo.Code.Relation.Binary.Structures.T16
du170 v0
  = let v1 = d158 (coe v0) in
    let v2 = d122 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v2))))
name172 = "Algebra.Structures.IsBand._.refl"
d172 :: T150 -> AgdaAny -> AgdaAny
d172 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe (d86 (coe (d122 (coe (d158 (coe v0))))))))
name174 = "Algebra.Structures.IsBand._.reflexive"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T150 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d174 v0 v1 v2 v3 v4 v5 = du174 v5
du174 ::
  T150 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du174 v0
  = let v1 = d158 (coe v0) in
    let v2 = d122 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v2))) v3)
name176 = "Algebra.Structures.IsBand._.setoid"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T150 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d176 v0 v1 v2 v3 v4 v5 = du176 v5
du176 :: T150 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du176 v0
  = let v1 = d158 (coe v0) in coe (du102 (coe (d122 (coe v1))))
name178 = "Algebra.Structures.IsBand._.sym"
d178 :: T150 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d178 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe (d86 (coe (d122 (coe (d158 (coe v0))))))))
name180 = "Algebra.Structures.IsBand._.trans"
d180 ::
  T150 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d180 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe (d86 (coe (d122 (coe (d158 (coe v0))))))))
name182 = "Algebra.Structures.IsBand._.∙-cong"
d182 ::
  T150 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d182 v0 = coe (d88 (coe (d122 (coe (d158 (coe v0))))))
name184 = "Algebra.Structures.IsBand._.∙-congʳ"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T150 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d184 v0 v1 v2 v3 v4 v5 = du184 v5
du184 ::
  T150 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du184 v0
  = let v1 = d158 (coe v0) in coe (du108 (coe (d122 (coe v1))))
name186 = "Algebra.Structures.IsBand._.∙-congˡ"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T150 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d186 v0 v1 v2 v3 v4 v5 = du186 v5
du186 ::
  T150 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du186 v0
  = let v1 = d158 (coe v0) in coe (du104 (coe (d122 (coe v1))))
name190 = "Algebra.Structures.IsCommutativeSemigroup"
d190 a0 a1 a2 a3 a4 = ()
data T190 = C1321 T114 (AgdaAny -> AgdaAny -> AgdaAny)
name198 = "Algebra.Structures.IsCommutativeSemigroup.isSemigroup"
d198 :: T190 -> T114
d198 v0
  = case coe v0 of
      C1321 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name200 = "Algebra.Structures.IsCommutativeSemigroup.comm"
d200 :: T190 -> AgdaAny -> AgdaAny -> AgdaAny
d200 v0
  = case coe v0 of
      C1321 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name204 = "Algebra.Structures.IsCommutativeSemigroup._.assoc"
d204 :: T190 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d204 v0 = coe (d124 (coe (d198 (coe v0))))
name206
  = "Algebra.Structures.IsCommutativeSemigroup._.isEquivalence"
d206 :: T190 -> MAlonzo.Code.Relation.Binary.Structures.T26
d206 v0 = coe (d86 (coe (d122 (coe (d198 (coe v0))))))
name208 = "Algebra.Structures.IsCommutativeSemigroup._.isMagma"
d208 :: T190 -> T78
d208 v0 = coe (d122 (coe (d198 (coe v0))))
name210
  = "Algebra.Structures.IsCommutativeSemigroup._.isPartialEquivalence"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T190 -> MAlonzo.Code.Relation.Binary.Structures.T16
d210 v0 v1 v2 v3 v4 v5 = du210 v5
du210 :: T190 -> MAlonzo.Code.Relation.Binary.Structures.T16
du210 v0
  = let v1 = d198 (coe v0) in
    let v2 = d122 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v2))))
name212 = "Algebra.Structures.IsCommutativeSemigroup._.refl"
d212 :: T190 -> AgdaAny -> AgdaAny
d212 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe (d86 (coe (d122 (coe (d198 (coe v0))))))))
name214 = "Algebra.Structures.IsCommutativeSemigroup._.reflexive"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T190 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d214 v0 v1 v2 v3 v4 v5 = du214 v5
du214 ::
  T190 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du214 v0
  = let v1 = d198 (coe v0) in
    let v2 = d122 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v2))) v3)
name216 = "Algebra.Structures.IsCommutativeSemigroup._.setoid"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T190 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d216 v0 v1 v2 v3 v4 v5 = du216 v5
du216 :: T190 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du216 v0
  = let v1 = d198 (coe v0) in coe (du102 (coe (d122 (coe v1))))
name218 = "Algebra.Structures.IsCommutativeSemigroup._.sym"
d218 :: T190 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d218 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe (d86 (coe (d122 (coe (d198 (coe v0))))))))
name220 = "Algebra.Structures.IsCommutativeSemigroup._.trans"
d220 ::
  T190 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d220 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe (d86 (coe (d122 (coe (d198 (coe v0))))))))
name222 = "Algebra.Structures.IsCommutativeSemigroup._.∙-cong"
d222 ::
  T190 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d222 v0 = coe (d88 (coe (d122 (coe (d198 (coe v0))))))
name224 = "Algebra.Structures.IsCommutativeSemigroup._.∙-congʳ"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T190 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d224 v0 v1 v2 v3 v4 v5 = du224 v5
du224 ::
  T190 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du224 v0
  = let v1 = d198 (coe v0) in coe (du108 (coe (d122 (coe v1))))
name226 = "Algebra.Structures.IsCommutativeSemigroup._.∙-congˡ"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T190 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d226 v0 v1 v2 v3 v4 v5 = du226 v5
du226 ::
  T190 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du226 v0
  = let v1 = d198 (coe v0) in coe (du104 (coe (d122 (coe v1))))
name230 = "Algebra.Structures.IsSemilattice"
d230 a0 a1 a2 a3 a4 = ()
data T230 = C1617 T150 (AgdaAny -> AgdaAny -> AgdaAny)
name238 = "Algebra.Structures.IsSemilattice.isBand"
d238 :: T230 -> T150
d238 v0
  = case coe v0 of
      C1617 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name240 = "Algebra.Structures.IsSemilattice.comm"
d240 :: T230 -> AgdaAny -> AgdaAny -> AgdaAny
d240 v0
  = case coe v0 of
      C1617 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name244 = "Algebra.Structures.IsSemilattice._.assoc"
d244 :: T230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d244 v0 = coe (d124 (coe (d158 (coe (d238 (coe v0))))))
name246 = "Algebra.Structures.IsSemilattice._.idem"
d246 :: T230 -> AgdaAny -> AgdaAny
d246 v0 = coe (d160 (coe (d238 (coe v0))))
name248 = "Algebra.Structures.IsSemilattice._.isEquivalence"
d248 :: T230 -> MAlonzo.Code.Relation.Binary.Structures.T26
d248 v0 = coe (d86 (coe (d122 (coe (d158 (coe (d238 (coe v0))))))))
name250 = "Algebra.Structures.IsSemilattice._.isMagma"
d250 :: T230 -> T78
d250 v0 = coe (d122 (coe (d158 (coe (d238 (coe v0))))))
name252 = "Algebra.Structures.IsSemilattice._.isPartialEquivalence"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T230 -> MAlonzo.Code.Relation.Binary.Structures.T16
d252 v0 v1 v2 v3 v4 v5 = du252 v5
du252 :: T230 -> MAlonzo.Code.Relation.Binary.Structures.T16
du252 v0
  = let v1 = d238 (coe v0) in
    let v2 = d158 (coe v1) in
    let v3 = d122 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v3))))
name254 = "Algebra.Structures.IsSemilattice._.isSemigroup"
d254 :: T230 -> T114
d254 v0 = coe (d158 (coe (d238 (coe v0))))
name256 = "Algebra.Structures.IsSemilattice._.refl"
d256 :: T230 -> AgdaAny -> AgdaAny
d256 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe (d86 (coe (d122 (coe (d158 (coe (d238 (coe v0))))))))))
name258 = "Algebra.Structures.IsSemilattice._.reflexive"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T230 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d258 v0 v1 v2 v3 v4 v5 = du258 v5
du258 ::
  T230 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du258 v0
  = let v1 = d238 (coe v0) in
    let v2 = d158 (coe v1) in
    let v3 = d122 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v3))) v4)
name260 = "Algebra.Structures.IsSemilattice._.setoid"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T230 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d260 v0 v1 v2 v3 v4 v5 = du260 v5
du260 :: T230 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du260 v0
  = let v1 = d238 (coe v0) in
    let v2 = d158 (coe v1) in coe (du102 (coe (d122 (coe v2))))
name262 = "Algebra.Structures.IsSemilattice._.sym"
d262 :: T230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d262 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe (d86 (coe (d122 (coe (d158 (coe (d238 (coe v0))))))))))
name264 = "Algebra.Structures.IsSemilattice._.trans"
d264 ::
  T230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d264 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe (d86 (coe (d122 (coe (d158 (coe (d238 (coe v0))))))))))
name266 = "Algebra.Structures.IsSemilattice._.∙-cong"
d266 ::
  T230 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d266 v0 = coe (d88 (coe (d122 (coe (d158 (coe (d238 (coe v0))))))))
name268 = "Algebra.Structures.IsSemilattice._.∙-congʳ"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d268 v0 v1 v2 v3 v4 v5 = du268 v5
du268 ::
  T230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du268 v0
  = let v1 = d238 (coe v0) in
    let v2 = d158 (coe v1) in coe (du108 (coe (d122 (coe v2))))
name270 = "Algebra.Structures.IsSemilattice._.∙-congˡ"
d270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d270 v0 v1 v2 v3 v4 v5 = du270 v5
du270 ::
  T230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du270 v0
  = let v1 = d238 (coe v0) in
    let v2 = d158 (coe v1) in coe (du104 (coe (d122 (coe v2))))
name274 = "Algebra.Structures.IsSelectiveMagma"
d274 a0 a1 a2 a3 a4 = ()
data T274
  = C1957 T78 (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30)
name282 = "Algebra.Structures.IsSelectiveMagma.isMagma"
d282 :: T274 -> T78
d282 v0
  = case coe v0 of
      C1957 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name284 = "Algebra.Structures.IsSelectiveMagma.sel"
d284 ::
  T274 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d284 v0
  = case coe v0 of
      C1957 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name288 = "Algebra.Structures.IsSelectiveMagma._.isEquivalence"
d288 :: T274 -> MAlonzo.Code.Relation.Binary.Structures.T26
d288 v0 = coe (d86 (coe (d282 (coe v0))))
name290
  = "Algebra.Structures.IsSelectiveMagma._.isPartialEquivalence"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T274 -> MAlonzo.Code.Relation.Binary.Structures.T16
d290 v0 v1 v2 v3 v4 v5 = du290 v5
du290 :: T274 -> MAlonzo.Code.Relation.Binary.Structures.T16
du290 v0
  = let v1 = d282 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v1))))
name292 = "Algebra.Structures.IsSelectiveMagma._.refl"
d292 :: T274 -> AgdaAny -> AgdaAny
d292 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe (d86 (coe (d282 (coe v0))))))
name294 = "Algebra.Structures.IsSelectiveMagma._.reflexive"
d294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T274 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d294 v0 v1 v2 v3 v4 v5 = du294 v5
du294 ::
  T274 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du294 v0
  = let v1 = d282 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v1))) v2)
name296 = "Algebra.Structures.IsSelectiveMagma._.setoid"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T274 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d296 v0 v1 v2 v3 v4 v5 = du296 v5
du296 :: T274 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du296 v0 = coe (du102 (coe (d282 (coe v0))))
name298 = "Algebra.Structures.IsSelectiveMagma._.sym"
d298 :: T274 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d298 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe (d86 (coe (d282 (coe v0))))))
name300 = "Algebra.Structures.IsSelectiveMagma._.trans"
d300 ::
  T274 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d300 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe (d86 (coe (d282 (coe v0))))))
name302 = "Algebra.Structures.IsSelectiveMagma._.∙-cong"
d302 ::
  T274 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d302 v0 = coe (d88 (coe (d282 (coe v0))))
name304 = "Algebra.Structures.IsSelectiveMagma._.∙-congʳ"
d304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T274 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d304 v0 v1 v2 v3 v4 v5 = du304 v5
du304 ::
  T274 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du304 v0 = coe (du108 (coe (d282 (coe v0))))
name306 = "Algebra.Structures.IsSelectiveMagma._.∙-congˡ"
d306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T274 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d306 v0 v1 v2 v3 v4 v5 = du306 v5
du306 ::
  T274 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du306 v0 = coe (du104 (coe (d282 (coe v0))))
name312 = "Algebra.Structures.IsMonoid"
d312 a0 a1 a2 a3 a4 a5 = ()
data T312 = C2209 T114 MAlonzo.Code.Agda.Builtin.Sigma.T14
name322 = "Algebra.Structures.IsMonoid.isSemigroup"
d322 :: T312 -> T114
d322 v0
  = case coe v0 of
      C2209 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name324 = "Algebra.Structures.IsMonoid.identity"
d324 :: T312 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d324 v0
  = case coe v0 of
      C2209 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name328 = "Algebra.Structures.IsMonoid._.assoc"
d328 :: T312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d328 v0 = coe (d124 (coe (d322 (coe v0))))
name330 = "Algebra.Structures.IsMonoid._.isEquivalence"
d330 :: T312 -> MAlonzo.Code.Relation.Binary.Structures.T26
d330 v0 = coe (d86 (coe (d122 (coe (d322 (coe v0))))))
name332 = "Algebra.Structures.IsMonoid._.isMagma"
d332 :: T312 -> T78
d332 v0 = coe (d122 (coe (d322 (coe v0))))
name334 = "Algebra.Structures.IsMonoid._.isPartialEquivalence"
d334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T312 -> MAlonzo.Code.Relation.Binary.Structures.T16
d334 v0 v1 v2 v3 v4 v5 v6 = du334 v6
du334 :: T312 -> MAlonzo.Code.Relation.Binary.Structures.T16
du334 v0
  = let v1 = d322 (coe v0) in
    let v2 = d122 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v2))))
name336 = "Algebra.Structures.IsMonoid._.refl"
d336 :: T312 -> AgdaAny -> AgdaAny
d336 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe (d86 (coe (d122 (coe (d322 (coe v0))))))))
name338 = "Algebra.Structures.IsMonoid._.reflexive"
d338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T312 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d338 v0 v1 v2 v3 v4 v5 v6 = du338 v6
du338 ::
  T312 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du338 v0
  = let v1 = d322 (coe v0) in
    let v2 = d122 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v2))) v3)
name340 = "Algebra.Structures.IsMonoid._.setoid"
d340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T312 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d340 v0 v1 v2 v3 v4 v5 v6 = du340 v6
du340 :: T312 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du340 v0
  = let v1 = d322 (coe v0) in coe (du102 (coe (d122 (coe v1))))
name342 = "Algebra.Structures.IsMonoid._.sym"
d342 :: T312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d342 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe (d86 (coe (d122 (coe (d322 (coe v0))))))))
name344 = "Algebra.Structures.IsMonoid._.trans"
d344 ::
  T312 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d344 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe (d86 (coe (d122 (coe (d322 (coe v0))))))))
name346 = "Algebra.Structures.IsMonoid._.∙-cong"
d346 ::
  T312 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d346 v0 = coe (d88 (coe (d122 (coe (d322 (coe v0))))))
name348 = "Algebra.Structures.IsMonoid._.∙-congʳ"
d348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d348 v0 v1 v2 v3 v4 v5 v6 = du348 v6
du348 ::
  T312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du348 v0
  = let v1 = d322 (coe v0) in coe (du108 (coe (d122 (coe v1))))
name350 = "Algebra.Structures.IsMonoid._.∙-congˡ"
d350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d350 v0 v1 v2 v3 v4 v5 v6 = du350 v6
du350 ::
  T312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du350 v0
  = let v1 = d322 (coe v0) in coe (du104 (coe (d122 (coe v1))))
name352 = "Algebra.Structures.IsMonoid.identityˡ"
d352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T312 -> AgdaAny -> AgdaAny
d352 v0 v1 v2 v3 v4 v5 v6 = du352 v6
du352 :: T312 -> AgdaAny -> AgdaAny
du352 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v0))))
name354 = "Algebra.Structures.IsMonoid.identityʳ"
d354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T312 -> AgdaAny -> AgdaAny
d354 v0 v1 v2 v3 v4 v5 v6 = du354 v6
du354 :: T312 -> AgdaAny -> AgdaAny
du354 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v0))))
name360 = "Algebra.Structures.IsCommutativeMonoid"
d360 a0 a1 a2 a3 a4 a5 = ()
data T360 = C2759 T312 (AgdaAny -> AgdaAny -> AgdaAny)
name370 = "Algebra.Structures.IsCommutativeMonoid.isMonoid"
d370 :: T360 -> T312
d370 v0
  = case coe v0 of
      C2759 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name372 = "Algebra.Structures.IsCommutativeMonoid.comm"
d372 :: T360 -> AgdaAny -> AgdaAny -> AgdaAny
d372 v0
  = case coe v0 of
      C2759 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name376 = "Algebra.Structures.IsCommutativeMonoid._.assoc"
d376 :: T360 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d376 v0 = coe (d124 (coe (d322 (coe (d370 (coe v0))))))
name378 = "Algebra.Structures.IsCommutativeMonoid._.identity"
d378 :: T360 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d378 v0 = coe (d324 (coe (d370 (coe v0))))
name380 = "Algebra.Structures.IsCommutativeMonoid._.identityʳ"
d380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T360 -> AgdaAny -> AgdaAny
d380 v0 v1 v2 v3 v4 v5 v6 = du380 v6
du380 :: T360 -> AgdaAny -> AgdaAny
du380 v0
  = let v1 = d370 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v1))))
name382 = "Algebra.Structures.IsCommutativeMonoid._.identityˡ"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T360 -> AgdaAny -> AgdaAny
d382 v0 v1 v2 v3 v4 v5 v6 = du382 v6
du382 :: T360 -> AgdaAny -> AgdaAny
du382 v0
  = let v1 = d370 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v1))))
name384 = "Algebra.Structures.IsCommutativeMonoid._.isEquivalence"
d384 :: T360 -> MAlonzo.Code.Relation.Binary.Structures.T26
d384 v0 = coe (d86 (coe (d122 (coe (d322 (coe (d370 (coe v0))))))))
name386 = "Algebra.Structures.IsCommutativeMonoid._.isMagma"
d386 :: T360 -> T78
d386 v0 = coe (d122 (coe (d322 (coe (d370 (coe v0))))))
name388
  = "Algebra.Structures.IsCommutativeMonoid._.isPartialEquivalence"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T360 -> MAlonzo.Code.Relation.Binary.Structures.T16
d388 v0 v1 v2 v3 v4 v5 v6 = du388 v6
du388 :: T360 -> MAlonzo.Code.Relation.Binary.Structures.T16
du388 v0
  = let v1 = d370 (coe v0) in
    let v2 = d322 (coe v1) in
    let v3 = d122 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v3))))
name390 = "Algebra.Structures.IsCommutativeMonoid._.isSemigroup"
d390 :: T360 -> T114
d390 v0 = coe (d322 (coe (d370 (coe v0))))
name392 = "Algebra.Structures.IsCommutativeMonoid._.refl"
d392 :: T360 -> AgdaAny -> AgdaAny
d392 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe (d86 (coe (d122 (coe (d322 (coe (d370 (coe v0))))))))))
name394 = "Algebra.Structures.IsCommutativeMonoid._.reflexive"
d394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T360 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d394 v0 v1 v2 v3 v4 v5 v6 = du394 v6
du394 ::
  T360 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du394 v0
  = let v1 = d370 (coe v0) in
    let v2 = d322 (coe v1) in
    let v3 = d122 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v3))) v4)
name396 = "Algebra.Structures.IsCommutativeMonoid._.setoid"
d396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T360 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d396 v0 v1 v2 v3 v4 v5 v6 = du396 v6
du396 :: T360 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du396 v0
  = let v1 = d370 (coe v0) in
    let v2 = d322 (coe v1) in coe (du102 (coe (d122 (coe v2))))
name398 = "Algebra.Structures.IsCommutativeMonoid._.sym"
d398 :: T360 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d398 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe (d86 (coe (d122 (coe (d322 (coe (d370 (coe v0))))))))))
name400 = "Algebra.Structures.IsCommutativeMonoid._.trans"
d400 ::
  T360 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d400 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe (d86 (coe (d122 (coe (d322 (coe (d370 (coe v0))))))))))
name402 = "Algebra.Structures.IsCommutativeMonoid._.∙-cong"
d402 ::
  T360 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d402 v0 = coe (d88 (coe (d122 (coe (d322 (coe (d370 (coe v0))))))))
name404 = "Algebra.Structures.IsCommutativeMonoid._.∙-congʳ"
d404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T360 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d404 v0 v1 v2 v3 v4 v5 v6 = du404 v6
du404 ::
  T360 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du404 v0
  = let v1 = d370 (coe v0) in
    let v2 = d322 (coe v1) in coe (du108 (coe (d122 (coe v2))))
name406 = "Algebra.Structures.IsCommutativeMonoid._.∙-congˡ"
d406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T360 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d406 v0 v1 v2 v3 v4 v5 v6 = du406 v6
du406 ::
  T360 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du406 v0
  = let v1 = d370 (coe v0) in
    let v2 = d322 (coe v1) in coe (du104 (coe (d122 (coe v2))))
name408
  = "Algebra.Structures.IsCommutativeMonoid.isCommutativeSemigroup"
d408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T360 -> T190
d408 v0 v1 v2 v3 v4 v5 v6 = du408 v6
du408 :: T360 -> T190
du408 v0
  = coe
      (C1321 (coe (d322 (coe (d370 (coe v0))))) (coe (d372 (coe v0))))
name414 = "Algebra.Structures.IsIdempotentCommutativeMonoid"
d414 a0 a1 a2 a3 a4 a5 = ()
data T414 = C3283 T360 (AgdaAny -> AgdaAny)
name424
  = "Algebra.Structures.IsIdempotentCommutativeMonoid.isCommutativeMonoid"
d424 :: T414 -> T360
d424 v0
  = case coe v0 of
      C3283 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name426 = "Algebra.Structures.IsIdempotentCommutativeMonoid.idem"
d426 :: T414 -> AgdaAny -> AgdaAny
d426 v0
  = case coe v0 of
      C3283 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name430
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.assoc"
d430 :: T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d430 v0
  = coe (d124 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))
name432 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.comm"
d432 :: T414 -> AgdaAny -> AgdaAny -> AgdaAny
d432 v0 = coe (d372 (coe (d424 (coe v0))))
name434
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identity"
d434 :: T414 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d434 v0 = coe (d324 (coe (d370 (coe (d424 (coe v0))))))
name436
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identityʳ"
d436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T414 -> AgdaAny -> AgdaAny
d436 v0 v1 v2 v3 v4 v5 v6 = du436 v6
du436 :: T414 -> AgdaAny -> AgdaAny
du436 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v2))))
name438
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identityˡ"
d438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T414 -> AgdaAny -> AgdaAny
d438 v0 v1 v2 v3 v4 v5 v6 = du438 v6
du438 :: T414 -> AgdaAny -> AgdaAny
du438 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v2))))
name440
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isCommutativeSemigroup"
d440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T414 -> T190
d440 v0 v1 v2 v3 v4 v5 v6 = du440 v6
du440 :: T414 -> T190
du440 v0 = coe (du408 (coe (d424 (coe v0))))
name442
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isEquivalence"
d442 :: T414 -> MAlonzo.Code.Relation.Binary.Structures.T26
d442 v0
  = coe
      (d86 (coe (d122 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))))
name444
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isMagma"
d444 :: T414 -> T78
d444 v0
  = coe (d122 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))
name446
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isMonoid"
d446 :: T414 -> T312
d446 v0 = coe (d370 (coe (d424 (coe v0))))
name448
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isPartialEquivalence"
d448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T414 -> MAlonzo.Code.Relation.Binary.Structures.T16
d448 v0 v1 v2 v3 v4 v5 v6 = du448 v6
du448 :: T414 -> MAlonzo.Code.Relation.Binary.Structures.T16
du448 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in
    let v4 = d122 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v4))))
name450
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isSemigroup"
d450 :: T414 -> T114
d450 v0 = coe (d322 (coe (d370 (coe (d424 (coe v0))))))
name452 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.refl"
d452 :: T414 -> AgdaAny -> AgdaAny
d452 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))))))
name454
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.reflexive"
d454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T414 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d454 v0 v1 v2 v3 v4 v5 v6 = du454 v6
du454 ::
  T414 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du454 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in
    let v4 = d122 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v4))) v5)
name456
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.setoid"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T414 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d456 v0 v1 v2 v3 v4 v5 v6 = du456 v6
du456 :: T414 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du456 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in coe (du102 (coe (d122 (coe v3))))
name458 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.sym"
d458 :: T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d458 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))))))
name460
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.trans"
d460 ::
  T414 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d460 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))))))
name462
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-cong"
d462 ::
  T414 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d462 v0
  = coe
      (d88 (coe (d122 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))))
name464
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-congʳ"
d464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d464 v0 v1 v2 v3 v4 v5 v6 = du464 v6
du464 ::
  T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du464 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in coe (du108 (coe (d122 (coe v3))))
name466
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-congˡ"
d466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d466 v0 v1 v2 v3 v4 v5 v6 = du466 v6
du466 ::
  T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du466 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in coe (du104 (coe (d122 (coe v3))))
name468 = "Algebra.Structures.IsBoundedLattice"
d468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d468 = erased
name478 = "Algebra.Structures.IsBoundedLattice.assoc"
d478 :: T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d478 v0
  = coe (d124 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))
name480 = "Algebra.Structures.IsBoundedLattice.comm"
d480 :: T414 -> AgdaAny -> AgdaAny -> AgdaAny
d480 v0 = coe (d372 (coe (d424 (coe v0))))
name482 = "Algebra.Structures.IsBoundedLattice.idem"
d482 :: T414 -> AgdaAny -> AgdaAny
d482 v0 = coe (d426 (coe v0))
name484 = "Algebra.Structures.IsBoundedLattice.identity"
d484 :: T414 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d484 v0 = coe (d324 (coe (d370 (coe (d424 (coe v0))))))
name486 = "Algebra.Structures.IsBoundedLattice.identityʳ"
d486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T414 -> AgdaAny -> AgdaAny
d486 v0 v1 v2 v3 v4 v5 v6 = du486 v6
du486 :: T414 -> AgdaAny -> AgdaAny
du486 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v2))))
name488 = "Algebra.Structures.IsBoundedLattice.identityˡ"
d488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T414 -> AgdaAny -> AgdaAny
d488 v0 v1 v2 v3 v4 v5 v6 = du488 v6
du488 :: T414 -> AgdaAny -> AgdaAny
du488 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v2))))
name490 = "Algebra.Structures.IsBoundedLattice.isCommutativeMonoid"
d490 :: T414 -> T360
d490 v0 = coe (d424 (coe v0))
name492
  = "Algebra.Structures.IsBoundedLattice.isCommutativeSemigroup"
d492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T414 -> T190
d492 v0 v1 v2 v3 v4 v5 v6 = du492 v6
du492 :: T414 -> T190
du492 v0 = coe (du408 (coe (d424 (coe v0))))
name494 = "Algebra.Structures.IsBoundedLattice.isEquivalence"
d494 :: T414 -> MAlonzo.Code.Relation.Binary.Structures.T26
d494 v0
  = coe
      (d86 (coe (d122 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))))
name496 = "Algebra.Structures.IsBoundedLattice.isMagma"
d496 :: T414 -> T78
d496 v0
  = coe (d122 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))
name498 = "Algebra.Structures.IsBoundedLattice.isMonoid"
d498 :: T414 -> T312
d498 v0 = coe (d370 (coe (d424 (coe v0))))
name500
  = "Algebra.Structures.IsBoundedLattice.isPartialEquivalence"
d500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T414 -> MAlonzo.Code.Relation.Binary.Structures.T16
d500 v0 v1 v2 v3 v4 v5 v6 = du500 v6
du500 :: T414 -> MAlonzo.Code.Relation.Binary.Structures.T16
du500 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in
    let v4 = d122 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v4))))
name502 = "Algebra.Structures.IsBoundedLattice.isSemigroup"
d502 :: T414 -> T114
d502 v0 = coe (d322 (coe (d370 (coe (d424 (coe v0))))))
name504 = "Algebra.Structures.IsBoundedLattice.refl"
d504 :: T414 -> AgdaAny -> AgdaAny
d504 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))))))
name506 = "Algebra.Structures.IsBoundedLattice.reflexive"
d506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T414 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d506 v0 v1 v2 v3 v4 v5 v6 = du506 v6
du506 ::
  T414 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du506 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in
    let v4 = d122 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v4))) v5)
name508 = "Algebra.Structures.IsBoundedLattice.setoid"
d508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T414 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d508 v0 v1 v2 v3 v4 v5 v6 = du508 v6
du508 :: T414 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du508 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in coe (du102 (coe (d122 (coe v3))))
name510 = "Algebra.Structures.IsBoundedLattice.sym"
d510 :: T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d510 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))))))
name512 = "Algebra.Structures.IsBoundedLattice.trans"
d512 ::
  T414 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d512 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))))))
name514 = "Algebra.Structures.IsBoundedLattice.∙-cong"
d514 ::
  T414 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d514 v0
  = coe
      (d88 (coe (d122 (coe (d322 (coe (d370 (coe (d424 (coe v0))))))))))
name516 = "Algebra.Structures.IsBoundedLattice.∙-congʳ"
d516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d516 v0 v1 v2 v3 v4 v5 v6 = du516 v6
du516 ::
  T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du516 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in coe (du108 (coe (d122 (coe v3))))
name518 = "Algebra.Structures.IsBoundedLattice.∙-congˡ"
d518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d518 v0 v1 v2 v3 v4 v5 v6 = du518 v6
du518 ::
  T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du518 v0
  = let v1 = d424 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in coe (du104 (coe (d122 (coe v3))))
name526 = "Algebra.Structures.IsGroup"
d526 a0 a1 a2 a3 a4 a5 a6 = ()
data T526
  = C3947 T312 MAlonzo.Code.Agda.Builtin.Sigma.T14
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name540 = "Algebra.Structures.IsGroup.isMonoid"
d540 :: T526 -> T312
d540 v0
  = case coe v0 of
      C3947 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name542 = "Algebra.Structures.IsGroup.inverse"
d542 :: T526 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d542 v0
  = case coe v0 of
      C3947 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name544 = "Algebra.Structures.IsGroup.⁻¹-cong"
d544 :: T526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d544 v0
  = case coe v0 of
      C3947 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name548 = "Algebra.Structures.IsGroup._.assoc"
d548 :: T526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d548 v0 = coe (d124 (coe (d322 (coe (d540 (coe v0))))))
name550 = "Algebra.Structures.IsGroup._.identity"
d550 :: T526 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d550 v0 = coe (d324 (coe (d540 (coe v0))))
name552 = "Algebra.Structures.IsGroup._.identityʳ"
d552 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T526 -> AgdaAny -> AgdaAny
d552 v0 v1 v2 v3 v4 v5 v6 v7 = du552 v7
du552 :: T526 -> AgdaAny -> AgdaAny
du552 v0
  = let v1 = d540 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v1))))
name554 = "Algebra.Structures.IsGroup._.identityˡ"
d554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T526 -> AgdaAny -> AgdaAny
d554 v0 v1 v2 v3 v4 v5 v6 v7 = du554 v7
du554 :: T526 -> AgdaAny -> AgdaAny
du554 v0
  = let v1 = d540 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v1))))
name556 = "Algebra.Structures.IsGroup._.isEquivalence"
d556 :: T526 -> MAlonzo.Code.Relation.Binary.Structures.T26
d556 v0 = coe (d86 (coe (d122 (coe (d322 (coe (d540 (coe v0))))))))
name558 = "Algebra.Structures.IsGroup._.isMagma"
d558 :: T526 -> T78
d558 v0 = coe (d122 (coe (d322 (coe (d540 (coe v0))))))
name560 = "Algebra.Structures.IsGroup._.isPartialEquivalence"
d560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T526 -> MAlonzo.Code.Relation.Binary.Structures.T16
d560 v0 v1 v2 v3 v4 v5 v6 v7 = du560 v7
du560 :: T526 -> MAlonzo.Code.Relation.Binary.Structures.T16
du560 v0
  = let v1 = d540 (coe v0) in
    let v2 = d322 (coe v1) in
    let v3 = d122 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v3))))
name562 = "Algebra.Structures.IsGroup._.isSemigroup"
d562 :: T526 -> T114
d562 v0 = coe (d322 (coe (d540 (coe v0))))
name564 = "Algebra.Structures.IsGroup._.refl"
d564 :: T526 -> AgdaAny -> AgdaAny
d564 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe (d86 (coe (d122 (coe (d322 (coe (d540 (coe v0))))))))))
name566 = "Algebra.Structures.IsGroup._.reflexive"
d566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T526 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d566 v0 v1 v2 v3 v4 v5 v6 v7 = du566 v7
du566 ::
  T526 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du566 v0
  = let v1 = d540 (coe v0) in
    let v2 = d322 (coe v1) in
    let v3 = d122 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v3))) v4)
name568 = "Algebra.Structures.IsGroup._.setoid"
d568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T526 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d568 v0 v1 v2 v3 v4 v5 v6 v7 = du568 v7
du568 :: T526 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du568 v0
  = let v1 = d540 (coe v0) in
    let v2 = d322 (coe v1) in coe (du102 (coe (d122 (coe v2))))
name570 = "Algebra.Structures.IsGroup._.sym"
d570 :: T526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d570 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe (d86 (coe (d122 (coe (d322 (coe (d540 (coe v0))))))))))
name572 = "Algebra.Structures.IsGroup._.trans"
d572 ::
  T526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d572 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe (d86 (coe (d122 (coe (d322 (coe (d540 (coe v0))))))))))
name574 = "Algebra.Structures.IsGroup._.∙-cong"
d574 ::
  T526 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d574 v0 = coe (d88 (coe (d122 (coe (d322 (coe (d540 (coe v0))))))))
name576 = "Algebra.Structures.IsGroup._.∙-congʳ"
d576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d576 v0 v1 v2 v3 v4 v5 v6 v7 = du576 v7
du576 ::
  T526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du576 v0
  = let v1 = d540 (coe v0) in
    let v2 = d322 (coe v1) in coe (du108 (coe (d122 (coe v2))))
name578 = "Algebra.Structures.IsGroup._.∙-congˡ"
d578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d578 v0 v1 v2 v3 v4 v5 v6 v7 = du578 v7
du578 ::
  T526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du578 v0
  = let v1 = d540 (coe v0) in
    let v2 = d322 (coe v1) in coe (du104 (coe (d122 (coe v2))))
name580 = "Algebra.Structures.IsGroup._-_"
d580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T526 -> AgdaAny -> AgdaAny -> AgdaAny
d580 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du580 v4 v6 v8 v9
du580 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du580 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name586 = "Algebra.Structures.IsGroup.inverseˡ"
d586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T526 -> AgdaAny -> AgdaAny
d586 v0 v1 v2 v3 v4 v5 v6 v7 = du586 v7
du586 :: T526 -> AgdaAny -> AgdaAny
du586 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d542 (coe v0))))
name588 = "Algebra.Structures.IsGroup.inverseʳ"
d588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T526 -> AgdaAny -> AgdaAny
d588 v0 v1 v2 v3 v4 v5 v6 v7 = du588 v7
du588 :: T526 -> AgdaAny -> AgdaAny
du588 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d542 (coe v0))))
name594 = "Algebra.Structures.IsGroup.uniqueˡ-⁻¹"
d594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d594 v0 v1 v2 v3 v4 v5 v6 v7 = du594 v4 v5 v6 v7
du594 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du594 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du230
         (let v4 = d322 (coe (d540 (coe v3))) in
          coe (du102 (coe (d122 (coe v4)))))
         (coe v0) (coe v2) (coe v1)
         (coe (d88 (coe (d122 (coe (d322 (coe (d540 (coe v3)))))))))
         (coe (d124 (coe (d322 (coe (d540 (coe v3)))))))
         (coe (d324 (coe (d540 (coe v3)))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d542 (coe v3))))))
name600 = "Algebra.Structures.IsGroup.uniqueʳ-⁻¹"
d600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d600 v0 v1 v2 v3 v4 v5 v6 v7 = du600 v4 v5 v6 v7
du600 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du600 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du250
         (let v4 = d322 (coe (d540 (coe v3))) in
          coe (du102 (coe (d122 (coe v4)))))
         (coe v0) (coe v2) (coe v1)
         (coe (d88 (coe (d122 (coe (d322 (coe (d540 (coe v3)))))))))
         (coe (d124 (coe (d322 (coe (d540 (coe v3)))))))
         (coe (d324 (coe (d540 (coe v3)))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d542 (coe v3))))))
name608 = "Algebra.Structures.IsAbelianGroup"
d608 a0 a1 a2 a3 a4 a5 a6 = ()
data T608 = C5141 T526 (AgdaAny -> AgdaAny -> AgdaAny)
name620 = "Algebra.Structures.IsAbelianGroup.isGroup"
d620 :: T608 -> T526
d620 v0
  = case coe v0 of
      C5141 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name622 = "Algebra.Structures.IsAbelianGroup.comm"
d622 :: T608 -> AgdaAny -> AgdaAny -> AgdaAny
d622 v0
  = case coe v0 of
      C5141 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name626 = "Algebra.Structures.IsAbelianGroup._._-_"
d626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T608 -> AgdaAny -> AgdaAny -> AgdaAny
d626 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du626 v4 v6 v8 v9
du626 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du626 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name628 = "Algebra.Structures.IsAbelianGroup._.assoc"
d628 :: T608 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d628 v0
  = coe (d124 (coe (d322 (coe (d540 (coe (d620 (coe v0))))))))
name630 = "Algebra.Structures.IsAbelianGroup._.identity"
d630 :: T608 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d630 v0 = coe (d324 (coe (d540 (coe (d620 (coe v0))))))
name632 = "Algebra.Structures.IsAbelianGroup._.identityʳ"
d632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T608 -> AgdaAny -> AgdaAny
d632 v0 v1 v2 v3 v4 v5 v6 v7 = du632 v7
du632 :: T608 -> AgdaAny -> AgdaAny
du632 v0
  = let v1 = d620 (coe v0) in
    let v2 = d540 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v2))))
name634 = "Algebra.Structures.IsAbelianGroup._.identityˡ"
d634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T608 -> AgdaAny -> AgdaAny
d634 v0 v1 v2 v3 v4 v5 v6 v7 = du634 v7
du634 :: T608 -> AgdaAny -> AgdaAny
du634 v0
  = let v1 = d620 (coe v0) in
    let v2 = d540 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v2))))
name636 = "Algebra.Structures.IsAbelianGroup._.inverse"
d636 :: T608 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d636 v0 = coe (d542 (coe (d620 (coe v0))))
name638 = "Algebra.Structures.IsAbelianGroup._.inverseʳ"
d638 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T608 -> AgdaAny -> AgdaAny
d638 v0 v1 v2 v3 v4 v5 v6 v7 = du638 v7
du638 :: T608 -> AgdaAny -> AgdaAny
du638 v0
  = let v1 = d620 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d542 (coe v1))))
name640 = "Algebra.Structures.IsAbelianGroup._.inverseˡ"
d640 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T608 -> AgdaAny -> AgdaAny
d640 v0 v1 v2 v3 v4 v5 v6 v7 = du640 v7
du640 :: T608 -> AgdaAny -> AgdaAny
du640 v0
  = let v1 = d620 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d542 (coe v1))))
name642 = "Algebra.Structures.IsAbelianGroup._.isEquivalence"
d642 :: T608 -> MAlonzo.Code.Relation.Binary.Structures.T26
d642 v0
  = coe
      (d86 (coe (d122 (coe (d322 (coe (d540 (coe (d620 (coe v0))))))))))
name644 = "Algebra.Structures.IsAbelianGroup._.isMagma"
d644 :: T608 -> T78
d644 v0
  = coe (d122 (coe (d322 (coe (d540 (coe (d620 (coe v0))))))))
name646 = "Algebra.Structures.IsAbelianGroup._.isMonoid"
d646 :: T608 -> T312
d646 v0 = coe (d540 (coe (d620 (coe v0))))
name648
  = "Algebra.Structures.IsAbelianGroup._.isPartialEquivalence"
d648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T608 -> MAlonzo.Code.Relation.Binary.Structures.T16
d648 v0 v1 v2 v3 v4 v5 v6 v7 = du648 v7
du648 :: T608 -> MAlonzo.Code.Relation.Binary.Structures.T16
du648 v0
  = let v1 = d620 (coe v0) in
    let v2 = d540 (coe v1) in
    let v3 = d322 (coe v2) in
    let v4 = d122 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v4))))
name650 = "Algebra.Structures.IsAbelianGroup._.isSemigroup"
d650 :: T608 -> T114
d650 v0 = coe (d322 (coe (d540 (coe (d620 (coe v0))))))
name652 = "Algebra.Structures.IsAbelianGroup._.refl"
d652 :: T608 -> AgdaAny -> AgdaAny
d652 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d540 (coe (d620 (coe v0))))))))))))
name654 = "Algebra.Structures.IsAbelianGroup._.reflexive"
d654 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T608 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d654 v0 v1 v2 v3 v4 v5 v6 v7 = du654 v7
du654 ::
  T608 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du654 v0
  = let v1 = d620 (coe v0) in
    let v2 = d540 (coe v1) in
    let v3 = d322 (coe v2) in
    let v4 = d122 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v4))) v5)
name656 = "Algebra.Structures.IsAbelianGroup._.setoid"
d656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T608 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d656 v0 v1 v2 v3 v4 v5 v6 v7 = du656 v7
du656 :: T608 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du656 v0
  = let v1 = d620 (coe v0) in
    let v2 = d540 (coe v1) in
    let v3 = d322 (coe v2) in coe (du102 (coe (d122 (coe v3))))
name658 = "Algebra.Structures.IsAbelianGroup._.sym"
d658 :: T608 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d658 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d540 (coe (d620 (coe v0))))))))))))
name660 = "Algebra.Structures.IsAbelianGroup._.trans"
d660 ::
  T608 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d660 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d540 (coe (d620 (coe v0))))))))))))
name662 = "Algebra.Structures.IsAbelianGroup._.uniqueʳ-⁻¹"
d662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T608 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d662 v0 v1 v2 v3 v4 v5 v6 v7 = du662 v4 v5 v6 v7
du662 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T608 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du662 v0 v1 v2 v3
  = coe (du600 (coe v0) (coe v1) (coe v2) (coe (d620 (coe v3))))
name664 = "Algebra.Structures.IsAbelianGroup._.uniqueˡ-⁻¹"
d664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T608 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d664 v0 v1 v2 v3 v4 v5 v6 v7 = du664 v4 v5 v6 v7
du664 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T608 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du664 v0 v1 v2 v3
  = coe (du594 (coe v0) (coe v1) (coe v2) (coe (d620 (coe v3))))
name666 = "Algebra.Structures.IsAbelianGroup._.⁻¹-cong"
d666 :: T608 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d666 v0 = coe (d544 (coe (d620 (coe v0))))
name668 = "Algebra.Structures.IsAbelianGroup._.∙-cong"
d668 ::
  T608 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d668 v0
  = coe
      (d88 (coe (d122 (coe (d322 (coe (d540 (coe (d620 (coe v0))))))))))
name670 = "Algebra.Structures.IsAbelianGroup._.∙-congʳ"
d670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T608 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d670 v0 v1 v2 v3 v4 v5 v6 v7 = du670 v7
du670 ::
  T608 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du670 v0
  = let v1 = d620 (coe v0) in
    let v2 = d540 (coe v1) in
    let v3 = d322 (coe v2) in coe (du108 (coe (d122 (coe v3))))
name672 = "Algebra.Structures.IsAbelianGroup._.∙-congˡ"
d672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T608 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d672 v0 v1 v2 v3 v4 v5 v6 v7 = du672 v7
du672 ::
  T608 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du672 v0
  = let v1 = d620 (coe v0) in
    let v2 = d540 (coe v1) in
    let v3 = d322 (coe v2) in coe (du104 (coe (d122 (coe v3))))
name674 = "Algebra.Structures.IsAbelianGroup.isCommutativeMonoid"
d674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T608 -> T360
d674 v0 v1 v2 v3 v4 v5 v6 v7 = du674 v7
du674 :: T608 -> T360
du674 v0
  = coe
      (C2759 (coe (d540 (coe (d620 (coe v0))))) (coe (d622 (coe v0))))
name678
  = "Algebra.Structures.IsAbelianGroup._.isCommutativeSemigroup"
d678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T608 -> T190
d678 v0 v1 v2 v3 v4 v5 v6 v7 = du678 v7
du678 :: T608 -> T190
du678 v0 = coe (du408 (coe (du674 (coe v0))))
name684 = "Algebra.Structures.IsLattice"
d684 a0 a1 a2 a3 a4 a5 = ()
data T684
  = C5979 MAlonzo.Code.Relation.Binary.Structures.T26
          (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny ->
           AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny ->
           AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Agda.Builtin.Sigma.T14
name706 = "Algebra.Structures.IsLattice.isEquivalence"
d706 :: T684 -> MAlonzo.Code.Relation.Binary.Structures.T26
d706 v0
  = case coe v0 of
      C5979 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name708 = "Algebra.Structures.IsLattice.∨-comm"
d708 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny
d708 v0
  = case coe v0 of
      C5979 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name710 = "Algebra.Structures.IsLattice.∨-assoc"
d710 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d710 v0
  = case coe v0 of
      C5979 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name712 = "Algebra.Structures.IsLattice.∨-cong"
d712 ::
  T684 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d712 v0
  = case coe v0 of
      C5979 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name714 = "Algebra.Structures.IsLattice.∧-comm"
d714 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny
d714 v0
  = case coe v0 of
      C5979 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name716 = "Algebra.Structures.IsLattice.∧-assoc"
d716 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d716 v0
  = case coe v0 of
      C5979 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name718 = "Algebra.Structures.IsLattice.∧-cong"
d718 ::
  T684 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d718 v0
  = case coe v0 of
      C5979 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name720 = "Algebra.Structures.IsLattice.absorptive"
d720 :: T684 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d720 v0
  = case coe v0 of
      C5979 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name724 = "Algebra.Structures.IsLattice._.isPartialEquivalence"
d724 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T684 -> MAlonzo.Code.Relation.Binary.Structures.T16
d724 v0 v1 v2 v3 v4 v5 v6 = du724 v6
du724 :: T684 -> MAlonzo.Code.Relation.Binary.Structures.T16
du724 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (d706 (coe v0))))
name726 = "Algebra.Structures.IsLattice._.refl"
d726 :: T684 -> AgdaAny -> AgdaAny
d726 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34 (coe (d706 (coe v0))))
name728 = "Algebra.Structures.IsLattice._.reflexive"
d728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T684 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d728 v0 v1 v2 v3 v4 v5 v6 = du728 v6
du728 ::
  T684 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du728 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d706 (coe v0))) v1)
name730 = "Algebra.Structures.IsLattice._.sym"
d730 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d730 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36 (coe (d706 (coe v0))))
name732 = "Algebra.Structures.IsLattice._.trans"
d732 ::
  T684 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d732 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38 (coe (d706 (coe v0))))
name734 = "Algebra.Structures.IsLattice.∨-absorbs-∧"
d734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T684 -> AgdaAny -> AgdaAny -> AgdaAny
d734 v0 v1 v2 v3 v4 v5 v6 = du734 v6
du734 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny
du734 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d720 (coe v0))))
name736 = "Algebra.Structures.IsLattice.∧-absorbs-∨"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T684 -> AgdaAny -> AgdaAny -> AgdaAny
d736 v0 v1 v2 v3 v4 v5 v6 = du736 v6
du736 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny
du736 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d720 (coe v0))))
name738 = "Algebra.Structures.IsLattice.∧-congˡ"
d738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d738 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du738 v6 v7 v8 v9 v10
du738 ::
  T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du738 v0 v1 v2 v3 v4
  = coe
      d718 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d34 (d706 (coe v0)) v1)
      v4
name742 = "Algebra.Structures.IsLattice.∧-congʳ"
d742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d742 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du742 v6 v7 v8 v9 v10
du742 ::
  T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du742 v0 v1 v2 v3 v4
  = coe
      d718 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d34 (d706 (coe v0)) v1)
name746 = "Algebra.Structures.IsLattice.∨-congˡ"
d746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d746 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du746 v6 v7 v8 v9 v10
du746 ::
  T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du746 v0 v1 v2 v3 v4
  = coe
      d712 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d34 (d706 (coe v0)) v1)
      v4
name750 = "Algebra.Structures.IsLattice.∨-congʳ"
d750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d750 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du750 v6 v7 v8 v9 v10
du750 ::
  T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du750 v0 v1 v2 v3 v4
  = coe
      d712 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d34 (d706 (coe v0)) v1)
name758 = "Algebra.Structures.IsDistributiveLattice"
d758 a0 a1 a2 a3 a4 a5 = ()
data T758 = C7119 T684 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name768 = "Algebra.Structures.IsDistributiveLattice.isLattice"
d768 :: T758 -> T684
d768 v0
  = case coe v0 of
      C7119 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name770 = "Algebra.Structures.IsDistributiveLattice.∨-distribʳ-∧"
d770 :: T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d770 v0
  = case coe v0 of
      C7119 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name774 = "Algebra.Structures.IsDistributiveLattice._.absorptive"
d774 :: T758 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d774 v0 = coe (d720 (coe (d768 (coe v0))))
name776
  = "Algebra.Structures.IsDistributiveLattice._.isEquivalence"
d776 :: T758 -> MAlonzo.Code.Relation.Binary.Structures.T26
d776 v0 = coe (d706 (coe (d768 (coe v0))))
name778
  = "Algebra.Structures.IsDistributiveLattice._.isPartialEquivalence"
d778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T758 -> MAlonzo.Code.Relation.Binary.Structures.T16
d778 v0 v1 v2 v3 v4 v5 v6 = du778 v6
du778 :: T758 -> MAlonzo.Code.Relation.Binary.Structures.T16
du778 v0
  = let v1 = d768 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (d706 (coe v1))))
name780 = "Algebra.Structures.IsDistributiveLattice._.refl"
d780 :: T758 -> AgdaAny -> AgdaAny
d780 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe (d706 (coe (d768 (coe v0))))))
name782 = "Algebra.Structures.IsDistributiveLattice._.reflexive"
d782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T758 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d782 v0 v1 v2 v3 v4 v5 v6 = du782 v6
du782 ::
  T758 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du782 v0
  = let v1 = d768 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d706 (coe v1))) v2)
name784 = "Algebra.Structures.IsDistributiveLattice._.sym"
d784 :: T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d784 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe (d706 (coe (d768 (coe v0))))))
name786 = "Algebra.Structures.IsDistributiveLattice._.trans"
d786 ::
  T758 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d786 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe (d706 (coe (d768 (coe v0))))))
name788 = "Algebra.Structures.IsDistributiveLattice._.∧-absorbs-∨"
d788 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T758 -> AgdaAny -> AgdaAny -> AgdaAny
d788 v0 v1 v2 v3 v4 v5 v6 = du788 v6
du788 :: T758 -> AgdaAny -> AgdaAny -> AgdaAny
du788 v0
  = let v1 = d768 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d720 (coe v1))))
name790 = "Algebra.Structures.IsDistributiveLattice._.∧-assoc"
d790 :: T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d790 v0 = coe (d716 (coe (d768 (coe v0))))
name792 = "Algebra.Structures.IsDistributiveLattice._.∧-comm"
d792 :: T758 -> AgdaAny -> AgdaAny -> AgdaAny
d792 v0 = coe (d714 (coe (d768 (coe v0))))
name794 = "Algebra.Structures.IsDistributiveLattice._.∧-cong"
d794 ::
  T758 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d794 v0 = coe (d718 (coe (d768 (coe v0))))
name796 = "Algebra.Structures.IsDistributiveLattice._.∧-congʳ"
d796 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d796 v0 v1 v2 v3 v4 v5 v6 = du796 v6
du796 ::
  T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du796 v0 = coe (du742 (coe (d768 (coe v0))))
name798 = "Algebra.Structures.IsDistributiveLattice._.∧-congˡ"
d798 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d798 v0 v1 v2 v3 v4 v5 v6 = du798 v6
du798 ::
  T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du798 v0 = coe (du738 (coe (d768 (coe v0))))
name800 = "Algebra.Structures.IsDistributiveLattice._.∨-absorbs-∧"
d800 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T758 -> AgdaAny -> AgdaAny -> AgdaAny
d800 v0 v1 v2 v3 v4 v5 v6 = du800 v6
du800 :: T758 -> AgdaAny -> AgdaAny -> AgdaAny
du800 v0
  = let v1 = d768 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d720 (coe v1))))
name802 = "Algebra.Structures.IsDistributiveLattice._.∨-assoc"
d802 :: T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d802 v0 = coe (d710 (coe (d768 (coe v0))))
name804 = "Algebra.Structures.IsDistributiveLattice._.∨-comm"
d804 :: T758 -> AgdaAny -> AgdaAny -> AgdaAny
d804 v0 = coe (d708 (coe (d768 (coe v0))))
name806 = "Algebra.Structures.IsDistributiveLattice._.∨-cong"
d806 ::
  T758 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d806 v0 = coe (d712 (coe (d768 (coe v0))))
name808 = "Algebra.Structures.IsDistributiveLattice._.∨-congʳ"
d808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d808 v0 v1 v2 v3 v4 v5 v6 = du808 v6
du808 ::
  T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du808 v0 = coe (du750 (coe (d768 (coe v0))))
name810 = "Algebra.Structures.IsDistributiveLattice._.∨-congˡ"
d810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d810 v0 v1 v2 v3 v4 v5 v6 = du810 v6
du810 ::
  T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du810 v0 = coe (du746 (coe (d768 (coe v0))))
name812 = "Algebra.Structures.IsDistributiveLattice.∨-∧-distribʳ"
d812 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d812 v0 v1 v2 v3 v4 v5 v6 = du812 v6
du812 :: T758 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du812 v0 = coe (d770 (coe v0))
name820 = "Algebra.Structures.IsNearSemiring"
d820 a0 a1 a2 a3 a4 a5 a6 = ()
data T820
  = C7625 T312 T114 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny)
name836 = "Algebra.Structures.IsNearSemiring.+-isMonoid"
d836 :: T820 -> T312
d836 v0
  = case coe v0 of
      C7625 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name838 = "Algebra.Structures.IsNearSemiring.*-isSemigroup"
d838 :: T820 -> T114
d838 v0
  = case coe v0 of
      C7625 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name840 = "Algebra.Structures.IsNearSemiring.distribʳ"
d840 :: T820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d840 v0
  = case coe v0 of
      C7625 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name842 = "Algebra.Structures.IsNearSemiring.zeroˡ"
d842 :: T820 -> AgdaAny -> AgdaAny
d842 v0
  = case coe v0 of
      C7625 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name846 = "Algebra.Structures.IsNearSemiring._.assoc"
d846 :: T820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d846 v0 = coe (d124 (coe (d322 (coe (d836 (coe v0))))))
name848 = "Algebra.Structures.IsNearSemiring._.∙-cong"
d848 ::
  T820 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d848 v0 = coe (d88 (coe (d122 (coe (d322 (coe (d836 (coe v0))))))))
name850 = "Algebra.Structures.IsNearSemiring._.∙-congʳ"
d850 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d850 v0 v1 v2 v3 v4 v5 v6 v7 = du850 v7
du850 ::
  T820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du850 v0
  = let v1 = d836 (coe v0) in
    let v2 = d322 (coe v1) in coe (du108 (coe (d122 (coe v2))))
name852 = "Algebra.Structures.IsNearSemiring._.∙-congˡ"
d852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d852 v0 v1 v2 v3 v4 v5 v6 v7 = du852 v7
du852 ::
  T820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du852 v0
  = let v1 = d836 (coe v0) in
    let v2 = d322 (coe v1) in coe (du104 (coe (d122 (coe v2))))
name854 = "Algebra.Structures.IsNearSemiring._.identity"
d854 :: T820 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d854 v0 = coe (d324 (coe (d836 (coe v0))))
name856 = "Algebra.Structures.IsNearSemiring._.identityʳ"
d856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T820 -> AgdaAny -> AgdaAny
d856 v0 v1 v2 v3 v4 v5 v6 v7 = du856 v7
du856 :: T820 -> AgdaAny -> AgdaAny
du856 v0
  = let v1 = d836 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v1))))
name858 = "Algebra.Structures.IsNearSemiring._.identityˡ"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T820 -> AgdaAny -> AgdaAny
d858 v0 v1 v2 v3 v4 v5 v6 v7 = du858 v7
du858 :: T820 -> AgdaAny -> AgdaAny
du858 v0
  = let v1 = d836 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v1))))
name860 = "Algebra.Structures.IsNearSemiring._.isMagma"
d860 :: T820 -> T78
d860 v0 = coe (d122 (coe (d322 (coe (d836 (coe v0))))))
name862 = "Algebra.Structures.IsNearSemiring._.isSemigroup"
d862 :: T820 -> T114
d862 v0 = coe (d322 (coe (d836 (coe v0))))
name864 = "Algebra.Structures.IsNearSemiring._.isEquivalence"
d864 :: T820 -> MAlonzo.Code.Relation.Binary.Structures.T26
d864 v0 = coe (d86 (coe (d122 (coe (d322 (coe (d836 (coe v0))))))))
name866
  = "Algebra.Structures.IsNearSemiring._.isPartialEquivalence"
d866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T820 -> MAlonzo.Code.Relation.Binary.Structures.T16
d866 v0 v1 v2 v3 v4 v5 v6 v7 = du866 v7
du866 :: T820 -> MAlonzo.Code.Relation.Binary.Structures.T16
du866 v0
  = let v1 = d836 (coe v0) in
    let v2 = d322 (coe v1) in
    let v3 = d122 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v3))))
name868 = "Algebra.Structures.IsNearSemiring._.refl"
d868 :: T820 -> AgdaAny -> AgdaAny
d868 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe (d86 (coe (d122 (coe (d322 (coe (d836 (coe v0))))))))))
name870 = "Algebra.Structures.IsNearSemiring._.reflexive"
d870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T820 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d870 v0 v1 v2 v3 v4 v5 v6 v7 = du870 v7
du870 ::
  T820 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du870 v0
  = let v1 = d836 (coe v0) in
    let v2 = d322 (coe v1) in
    let v3 = d122 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v3))) v4)
name872 = "Algebra.Structures.IsNearSemiring._.setoid"
d872 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T820 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d872 v0 v1 v2 v3 v4 v5 v6 v7 = du872 v7
du872 :: T820 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du872 v0
  = let v1 = d836 (coe v0) in
    let v2 = d322 (coe v1) in coe (du102 (coe (d122 (coe v2))))
name874 = "Algebra.Structures.IsNearSemiring._.sym"
d874 :: T820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d874 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe (d86 (coe (d122 (coe (d322 (coe (d836 (coe v0))))))))))
name876 = "Algebra.Structures.IsNearSemiring._.trans"
d876 ::
  T820 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d876 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe (d86 (coe (d122 (coe (d322 (coe (d836 (coe v0))))))))))
name880 = "Algebra.Structures.IsNearSemiring._.assoc"
d880 :: T820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d880 v0 = coe (d124 (coe (d838 (coe v0))))
name882 = "Algebra.Structures.IsNearSemiring._.∙-cong"
d882 ::
  T820 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d882 v0 = coe (d88 (coe (d122 (coe (d838 (coe v0))))))
name884 = "Algebra.Structures.IsNearSemiring._.∙-congʳ"
d884 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d884 v0 v1 v2 v3 v4 v5 v6 v7 = du884 v7
du884 ::
  T820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du884 v0
  = let v1 = d838 (coe v0) in coe (du108 (coe (d122 (coe v1))))
name886 = "Algebra.Structures.IsNearSemiring._.∙-congˡ"
d886 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d886 v0 v1 v2 v3 v4 v5 v6 v7 = du886 v7
du886 ::
  T820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du886 v0
  = let v1 = d838 (coe v0) in coe (du104 (coe (d122 (coe v1))))
name888 = "Algebra.Structures.IsNearSemiring._.isMagma"
d888 :: T820 -> T78
d888 v0 = coe (d122 (coe (d838 (coe v0))))
name896 = "Algebra.Structures.IsSemiringWithoutOne"
d896 a0 a1 a2 a3 a4 a5 a6 = ()
data T896
  = C8295 T360 T114 MAlonzo.Code.Agda.Builtin.Sigma.T14
          MAlonzo.Code.Agda.Builtin.Sigma.T14
name912
  = "Algebra.Structures.IsSemiringWithoutOne.+-isCommutativeMonoid"
d912 :: T896 -> T360
d912 v0
  = case coe v0 of
      C8295 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name914 = "Algebra.Structures.IsSemiringWithoutOne.*-isSemigroup"
d914 :: T896 -> T114
d914 v0
  = case coe v0 of
      C8295 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name916 = "Algebra.Structures.IsSemiringWithoutOne.distrib"
d916 :: T896 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d916 v0
  = case coe v0 of
      C8295 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name918 = "Algebra.Structures.IsSemiringWithoutOne.zero"
d918 :: T896 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d918 v0
  = case coe v0 of
      C8295 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name922 = "Algebra.Structures.IsSemiringWithoutOne._.comm"
d922 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny
d922 v0 = coe (d372 (coe (d912 (coe v0))))
name924
  = "Algebra.Structures.IsSemiringWithoutOne._.isCommutativeSemigroup"
d924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T896 -> T190
d924 v0 v1 v2 v3 v4 v5 v6 v7 = du924 v7
du924 :: T896 -> T190
du924 v0 = coe (du408 (coe (d912 (coe v0))))
name926 = "Algebra.Structures.IsSemiringWithoutOne._.isMonoid"
d926 :: T896 -> T312
d926 v0 = coe (d370 (coe (d912 (coe v0))))
name928 = "Algebra.Structures.IsSemiringWithoutOne.zeroˡ"
d928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> AgdaAny -> AgdaAny
d928 v0 v1 v2 v3 v4 v5 v6 v7 = du928 v7
du928 :: T896 -> AgdaAny -> AgdaAny
du928 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d918 (coe v0))))
name930 = "Algebra.Structures.IsSemiringWithoutOne.zeroʳ"
d930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> AgdaAny -> AgdaAny
d930 v0 v1 v2 v3 v4 v5 v6 v7 = du930 v7
du930 :: T896 -> AgdaAny -> AgdaAny
du930 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d918 (coe v0))))
name932 = "Algebra.Structures.IsSemiringWithoutOne.isNearSemiring"
d932 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T896 -> T820
d932 v0 v1 v2 v3 v4 v5 v6 v7 = du932 v7
du932 :: T896 -> T820
du932 v0
  = coe
      (C7625
         (coe (d370 (coe (d912 (coe v0))))) (coe (d914 (coe v0)))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d916 (coe v0)))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d918 (coe v0))))))
name936 = "Algebra.Structures.IsSemiringWithoutOne._.assoc"
d936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d936 v0 v1 v2 v3 v4 v5 v6 v7 = du936 v7
du936 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du936 v0 = coe (d124 (coe (d914 (coe v0))))
name938 = "Algebra.Structures.IsSemiringWithoutOne._.∙-cong"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T896 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d938 v0 v1 v2 v3 v4 v5 v6 v7 = du938 v7
du938 ::
  T896 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du938 v0 = coe (d88 (coe (d122 (coe (d914 (coe v0))))))
name940 = "Algebra.Structures.IsSemiringWithoutOne._.∙-congʳ"
d940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d940 v0 v1 v2 v3 v4 v5 v6 v7 = du940 v7
du940 ::
  T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du940 v0
  = let v1 = du932 (coe v0) in
    let v2 = d838 (coe v1) in coe (du108 (coe (d122 (coe v2))))
name942 = "Algebra.Structures.IsSemiringWithoutOne._.∙-congˡ"
d942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d942 v0 v1 v2 v3 v4 v5 v6 v7 = du942 v7
du942 ::
  T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du942 v0
  = let v1 = du932 (coe v0) in
    let v2 = d838 (coe v1) in coe (du104 (coe (d122 (coe v2))))
name944 = "Algebra.Structures.IsSemiringWithoutOne._.isMagma"
d944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T896 -> T78
d944 v0 v1 v2 v3 v4 v5 v6 v7 = du944 v7
du944 :: T896 -> T78
du944 v0 = coe (d122 (coe (d914 (coe v0))))
name946 = "Algebra.Structures.IsSemiringWithoutOne._.*-isSemigroup"
d946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T896 -> T114
d946 v0 v1 v2 v3 v4 v5 v6 v7 = du946 v7
du946 :: T896 -> T114
du946 v0 = coe (d914 (coe v0))
name948 = "Algebra.Structures.IsSemiringWithoutOne._.assoc"
d948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d948 v0 v1 v2 v3 v4 v5 v6 v7 = du948 v7
du948 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du948 v0
  = coe (d124 (coe (d322 (coe (d370 (coe (d912 (coe v0))))))))
name950 = "Algebra.Structures.IsSemiringWithoutOne._.∙-cong"
d950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T896 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d950 v0 v1 v2 v3 v4 v5 v6 v7 = du950 v7
du950 ::
  T896 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du950 v0
  = coe
      (d88 (coe (d122 (coe (d322 (coe (d370 (coe (d912 (coe v0))))))))))
name952 = "Algebra.Structures.IsSemiringWithoutOne._.∙-congʳ"
d952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d952 v0 v1 v2 v3 v4 v5 v6 v7 = du952 v7
du952 ::
  T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du952 v0
  = let v1 = du932 (coe v0) in
    let v2 = d836 (coe v1) in
    let v3 = d322 (coe v2) in coe (du108 (coe (d122 (coe v3))))
name954 = "Algebra.Structures.IsSemiringWithoutOne._.∙-congˡ"
d954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d954 v0 v1 v2 v3 v4 v5 v6 v7 = du954 v7
du954 ::
  T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du954 v0
  = let v1 = du932 (coe v0) in
    let v2 = d836 (coe v1) in
    let v3 = d322 (coe v2) in coe (du104 (coe (d122 (coe v3))))
name956 = "Algebra.Structures.IsSemiringWithoutOne._.identity"
d956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d956 v0 v1 v2 v3 v4 v5 v6 v7 = du956 v7
du956 :: T896 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du956 v0 = coe (d324 (coe (d370 (coe (d912 (coe v0))))))
name958 = "Algebra.Structures.IsSemiringWithoutOne._.identityʳ"
d958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> AgdaAny -> AgdaAny
d958 v0 v1 v2 v3 v4 v5 v6 v7 = du958 v7
du958 :: T896 -> AgdaAny -> AgdaAny
du958 v0
  = let v1 = du932 (coe v0) in
    let v2 = d836 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v2))))
name960 = "Algebra.Structures.IsSemiringWithoutOne._.identityˡ"
d960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> AgdaAny -> AgdaAny
d960 v0 v1 v2 v3 v4 v5 v6 v7 = du960 v7
du960 :: T896 -> AgdaAny -> AgdaAny
du960 v0
  = let v1 = du932 (coe v0) in
    let v2 = d836 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v2))))
name962 = "Algebra.Structures.IsSemiringWithoutOne._.isMagma"
d962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T896 -> T78
d962 v0 v1 v2 v3 v4 v5 v6 v7 = du962 v7
du962 :: T896 -> T78
du962 v0
  = coe (d122 (coe (d322 (coe (d370 (coe (d912 (coe v0))))))))
name964 = "Algebra.Structures.IsSemiringWithoutOne._.isSemigroup"
d964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T896 -> T114
d964 v0 v1 v2 v3 v4 v5 v6 v7 = du964 v7
du964 :: T896 -> T114
du964 v0 = coe (d322 (coe (d370 (coe (d912 (coe v0))))))
name966 = "Algebra.Structures.IsSemiringWithoutOne._.distribʳ"
d966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d966 v0 v1 v2 v3 v4 v5 v6 v7 = du966 v7
du966 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du966 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d916 (coe v0))))
name968 = "Algebra.Structures.IsSemiringWithoutOne._.isEquivalence"
d968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> MAlonzo.Code.Relation.Binary.Structures.T26
d968 v0 v1 v2 v3 v4 v5 v6 v7 = du968 v7
du968 :: T896 -> MAlonzo.Code.Relation.Binary.Structures.T26
du968 v0
  = coe
      (d86 (coe (d122 (coe (d322 (coe (d370 (coe (d912 (coe v0))))))))))
name970
  = "Algebra.Structures.IsSemiringWithoutOne._.isPartialEquivalence"
d970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> MAlonzo.Code.Relation.Binary.Structures.T16
d970 v0 v1 v2 v3 v4 v5 v6 v7 = du970 v7
du970 :: T896 -> MAlonzo.Code.Relation.Binary.Structures.T16
du970 v0
  = let v1 = du932 (coe v0) in
    let v2 = d836 (coe v1) in
    let v3 = d322 (coe v2) in
    let v4 = d122 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v4))))
name972 = "Algebra.Structures.IsSemiringWithoutOne._.refl"
d972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> AgdaAny -> AgdaAny
d972 v0 v1 v2 v3 v4 v5 v6 v7 = du972 v7
du972 :: T896 -> AgdaAny -> AgdaAny
du972 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d912 (coe v0))))))))))))
name974 = "Algebra.Structures.IsSemiringWithoutOne._.reflexive"
d974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T896 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d974 v0 v1 v2 v3 v4 v5 v6 v7 = du974 v7
du974 ::
  T896 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du974 v0
  = let v1 = du932 (coe v0) in
    let v2 = d836 (coe v1) in
    let v3 = d322 (coe v2) in
    let v4 = d122 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v4))) v5)
name976 = "Algebra.Structures.IsSemiringWithoutOne._.setoid"
d976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d976 v0 v1 v2 v3 v4 v5 v6 v7 = du976 v7
du976 :: T896 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du976 v0
  = let v1 = du932 (coe v0) in
    let v2 = d836 (coe v1) in
    let v3 = d322 (coe v2) in coe (du102 (coe (d122 (coe v3))))
name978 = "Algebra.Structures.IsSemiringWithoutOne._.sym"
d978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d978 v0 v1 v2 v3 v4 v5 v6 v7 = du978 v7
du978 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du978 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d912 (coe v0))))))))))))
name980 = "Algebra.Structures.IsSemiringWithoutOne._.trans"
d980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T896 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d980 v0 v1 v2 v3 v4 v5 v6 v7 = du980 v7
du980 ::
  T896 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du980 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d912 (coe v0))))))))))))
name988 = "Algebra.Structures.IsCommutativeSemiringWithoutOne"
d988 a0 a1 a2 a3 a4 a5 a6 = ()
data T988 = C9251 T896 (AgdaAny -> AgdaAny -> AgdaAny)
name1000
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne"
d1000 :: T988 -> T896
d1000 v0
  = case coe v0 of
      C9251 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1002
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne.*-comm"
d1002 :: T988 -> AgdaAny -> AgdaAny -> AgdaAny
d1002 v0
  = case coe v0 of
      C9251 v1 v2 -> coe v2
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
du1006 v0
  = let v1 = d1000 (coe v0) in coe (d124 (coe (d914 (coe v1))))
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
  = let v1 = d1000 (coe v0) in
    coe (d88 (coe (d122 (coe (d914 (coe v1))))))
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
    let v2 = du932 (coe v1) in
    let v3 = d838 (coe v2) in coe (du108 (coe (d122 (coe v3))))
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
    let v2 = du932 (coe v1) in
    let v3 = d838 (coe v2) in coe (du104 (coe (d122 (coe v3))))
name1014
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMagma"
d1014 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T988 -> T78
d1014 v0 v1 v2 v3 v4 v5 v6 v7 = du1014 v7
du1014 :: T988 -> T78
du1014 v0
  = let v1 = d1000 (coe v0) in coe (d122 (coe (d914 (coe v1))))
name1016
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isSemigroup"
d1016 :: T988 -> T114
d1016 v0 = coe (d914 (coe (d1000 (coe v0))))
name1018
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isSemigroup"
d1018 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T988 -> T114
d1018 v0 v1 v2 v3 v4 v5 v6 v7 = du1018 v7
du1018 :: T988 -> T114
du1018 v0 = let v1 = d1000 (coe v0) in coe (d914 (coe v1))
name1020
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc"
d1020 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1020 v0 v1 v2 v3 v4 v5 v6 v7 = du1020 v7
du1020 :: T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1020 v0
  = let v1 = d1000 (coe v0) in
    coe (d124 (coe (d322 (coe (d370 (coe (d912 (coe v1))))))))
name1022
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.comm"
d1022 :: T988 -> AgdaAny -> AgdaAny -> AgdaAny
d1022 v0 = coe (d372 (coe (d912 (coe (d1000 (coe v0))))))
name1024
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-cong"
d1024 ::
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
d1024 v0 v1 v2 v3 v4 v5 v6 v7 = du1024 v7
du1024 ::
  T988 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1024 v0
  = let v1 = d1000 (coe v0) in
    coe
      (d88 (coe (d122 (coe (d322 (coe (d370 (coe (d912 (coe v1))))))))))
name1026
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congʳ"
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
    let v2 = du932 (coe v1) in
    let v3 = d836 (coe v2) in
    let v4 = d322 (coe v3) in coe (du108 (coe (d122 (coe v4))))
name1028
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congˡ"
d1028 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1028 v0 v1 v2 v3 v4 v5 v6 v7 = du1028 v7
du1028 ::
  T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1028 v0
  = let v1 = d1000 (coe v0) in
    let v2 = du932 (coe v1) in
    let v3 = d836 (coe v2) in
    let v4 = d322 (coe v3) in coe (du104 (coe (d122 (coe v4))))
name1030
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identity"
d1030 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1030 v0 v1 v2 v3 v4 v5 v6 v7 = du1030 v7
du1030 :: T988 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1030 v0
  = let v1 = d1000 (coe v0) in
    coe (d324 (coe (d370 (coe (d912 (coe v1))))))
name1032
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identityʳ"
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
    let v2 = du932 (coe v1) in
    let v3 = d836 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v3))))
name1034
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identityˡ"
d1034 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny
d1034 v0 v1 v2 v3 v4 v5 v6 v7 = du1034 v7
du1034 :: T988 -> AgdaAny -> AgdaAny
du1034 v0
  = let v1 = d1000 (coe v0) in
    let v2 = du932 (coe v1) in
    let v3 = d836 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v3))))
name1036
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.+-isCommutativeMonoid"
d1036 :: T988 -> T360
d1036 v0 = coe (d912 (coe (d1000 (coe v0))))
name1038
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isCommutativeSemigroup"
d1038 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T988 -> T190
d1038 v0 v1 v2 v3 v4 v5 v6 v7 = du1038 v7
du1038 :: T988 -> T190
du1038 v0
  = let v1 = d1000 (coe v0) in coe (du408 (coe (d912 (coe v1))))
name1040
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMagma"
d1040 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T988 -> T78
d1040 v0 v1 v2 v3 v4 v5 v6 v7 = du1040 v7
du1040 :: T988 -> T78
du1040 v0
  = let v1 = d1000 (coe v0) in
    coe (d122 (coe (d322 (coe (d370 (coe (d912 (coe v1))))))))
name1042
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMonoid"
d1042 :: T988 -> T312
d1042 v0 = coe (d370 (coe (d912 (coe (d1000 (coe v0))))))
name1044
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isSemigroup"
d1044 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T988 -> T114
d1044 v0 v1 v2 v3 v4 v5 v6 v7 = du1044 v7
du1044 :: T988 -> T114
du1044 v0
  = let v1 = d1000 (coe v0) in
    coe (d322 (coe (d370 (coe (d912 (coe v1))))))
name1046
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.distrib"
d1046 :: T988 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1046 v0 = coe (d916 (coe (d1000 (coe v0))))
name1048
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.distribʳ"
d1048 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1048 v0 v1 v2 v3 v4 v5 v6 v7 = du1048 v7
du1048 :: T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1048 v0
  = let v1 = d1000 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d916 (coe v1))))
name1050
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isEquivalence"
d1050 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1050 v0 v1 v2 v3 v4 v5 v6 v7 = du1050 v7
du1050 :: T988 -> MAlonzo.Code.Relation.Binary.Structures.T26
du1050 v0
  = let v1 = d1000 (coe v0) in
    coe
      (d86 (coe (d122 (coe (d322 (coe (d370 (coe (d912 (coe v1))))))))))
name1052
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isNearSemiring"
d1052 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T988 -> T820
d1052 v0 v1 v2 v3 v4 v5 v6 v7 = du1052 v7
du1052 :: T988 -> T820
du1052 v0 = coe (du932 (coe (d1000 (coe v0))))
name1054
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isPartialEquivalence"
d1054 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1054 v0 v1 v2 v3 v4 v5 v6 v7 = du1054 v7
du1054 :: T988 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1054 v0
  = let v1 = d1000 (coe v0) in
    let v2 = du932 (coe v1) in
    let v3 = d836 (coe v2) in
    let v4 = d322 (coe v3) in
    let v5 = d122 (coe v4) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v5))))
name1056
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.refl"
d1056 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny
d1056 v0 v1 v2 v3 v4 v5 v6 v7 = du1056 v7
du1056 :: T988 -> AgdaAny -> AgdaAny
du1056 v0
  = let v1 = d1000 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d912 (coe v1))))))))))))
name1058
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.reflexive"
d1058 ::
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
d1058 v0 v1 v2 v3 v4 v5 v6 v7 = du1058 v7
du1058 ::
  T988 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1058 v0
  = let v1 = d1000 (coe v0) in
    let v2 = du932 (coe v1) in
    let v3 = d836 (coe v2) in
    let v4 = d322 (coe v3) in
    let v5 = d122 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v5))) v6)
name1060
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.setoid"
d1060 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1060 v0 v1 v2 v3 v4 v5 v6 v7 = du1060 v7
du1060 :: T988 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1060 v0
  = let v1 = d1000 (coe v0) in
    let v2 = du932 (coe v1) in
    let v3 = d836 (coe v2) in
    let v4 = d322 (coe v3) in coe (du102 (coe (d122 (coe v4))))
name1062
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.sym"
d1062 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1062 v0 v1 v2 v3 v4 v5 v6 v7 = du1062 v7
du1062 :: T988 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1062 v0
  = let v1 = d1000 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d912 (coe v1))))))))))))
name1064
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.trans"
d1064 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1064 v0 v1 v2 v3 v4 v5 v6 v7 = du1064 v7
du1064 ::
  T988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1064 v0
  = let v1 = d1000 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d912 (coe v1))))))))))))
name1066
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zero"
d1066 :: T988 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1066 v0 = coe (d918 (coe (d1000 (coe v0))))
name1068
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroʳ"
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
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d918 (coe v1))))
name1070
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroˡ"
d1070 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T988 -> AgdaAny -> AgdaAny
d1070 v0 v1 v2 v3 v4 v5 v6 v7 = du1070 v7
du1070 :: T988 -> AgdaAny -> AgdaAny
du1070 v0
  = let v1 = d1000 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d918 (coe v1))))
name1080 = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero"
d1080 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1080 = C9969 T360 T312 MAlonzo.Code.Agda.Builtin.Sigma.T14
name1096
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid"
d1096 :: T1080 -> T360
d1096 v0
  = case coe v0 of
      C9969 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1098
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-isMonoid"
d1098 :: T1080 -> T312
d1098 v0
  = case coe v0 of
      C9969 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1100
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distrib"
d1100 :: T1080 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1100 v0
  = case coe v0 of
      C9969 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1102
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribˡ"
d1102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1102 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1102 v8
du1102 :: T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1102 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d1100 (coe v0))))
name1104
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribʳ"
d1104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1104 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1104 v8
du1104 :: T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1104 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1100 (coe v0))))
name1108
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc"
d1108 :: T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1108 v0
  = coe (d124 (coe (d322 (coe (d370 (coe (d1096 (coe v0))))))))
name1110
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.comm"
d1110 :: T1080 -> AgdaAny -> AgdaAny -> AgdaAny
d1110 v0 = coe (d372 (coe (d1096 (coe v0))))
name1112
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-cong"
d1112 ::
  T1080 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1112 v0
  = coe
      (d88 (coe (d122 (coe (d322 (coe (d370 (coe (d1096 (coe v0))))))))))
name1114
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congʳ"
d1114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1114 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1114 v8
du1114 ::
  T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1114 v0
  = let v1 = d1096 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in coe (du108 (coe (d122 (coe v3))))
name1116
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congˡ"
d1116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1116 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1116 v8
du1116 ::
  T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1116 v0
  = let v1 = d1096 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in coe (du104 (coe (d122 (coe v3))))
name1118
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity"
d1118 :: T1080 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1118 v0 = coe (d324 (coe (d370 (coe (d1096 (coe v0))))))
name1120
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ"
d1120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1080 -> AgdaAny -> AgdaAny
d1120 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1120 v8
du1120 :: T1080 -> AgdaAny -> AgdaAny
du1120 v0
  = let v1 = d1096 (coe v0) in
    let v2 = d370 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v2))))
name1122
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ"
d1122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1080 -> AgdaAny -> AgdaAny
d1122 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1122 v8
du1122 :: T1080 -> AgdaAny -> AgdaAny
du1122 v0
  = let v1 = d1096 (coe v0) in
    let v2 = d370 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v2))))
name1124
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isCommutativeSemigroup"
d1124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1080 -> T190
d1124 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1124 v8
du1124 :: T1080 -> T190
du1124 v0 = coe (du408 (coe (d1096 (coe v0))))
name1126
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMagma"
d1126 :: T1080 -> T78
d1126 v0
  = coe (d122 (coe (d322 (coe (d370 (coe (d1096 (coe v0))))))))
name1128
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMonoid"
d1128 :: T1080 -> T312
d1128 v0 = coe (d370 (coe (d1096 (coe v0))))
name1130
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup"
d1130 :: T1080 -> T114
d1130 v0 = coe (d322 (coe (d370 (coe (d1096 (coe v0))))))
name1132
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isEquivalence"
d1132 :: T1080 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1132 v0
  = coe
      (d86 (coe (d122 (coe (d322 (coe (d370 (coe (d1096 (coe v0))))))))))
name1134
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isPartialEquivalence"
d1134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1080 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1134 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1134 v8
du1134 :: T1080 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1134 v0
  = let v1 = d1096 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in
    let v4 = d122 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v4))))
name1136
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.refl"
d1136 :: T1080 -> AgdaAny -> AgdaAny
d1136 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d1096 (coe v0))))))))))))
name1138
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.reflexive"
d1138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1080 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1138 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1138 v8
du1138 ::
  T1080 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1138 v0
  = let v1 = d1096 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in
    let v4 = d122 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v4))) v5)
name1140
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.setoid"
d1140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1080 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1140 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1140 v8
du1140 :: T1080 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1140 v0
  = let v1 = d1096 (coe v0) in
    let v2 = d370 (coe v1) in
    let v3 = d322 (coe v2) in coe (du102 (coe (d122 (coe v3))))
name1142
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.sym"
d1142 :: T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1142 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d1096 (coe v0))))))))))))
name1144
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.trans"
d1144 ::
  T1080 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1144 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (d86
               (coe (d122 (coe (d322 (coe (d370 (coe (d1096 (coe v0))))))))))))
name1148
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc"
d1148 :: T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1148 v0 = coe (d124 (coe (d322 (coe (d1098 (coe v0))))))
name1150
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-cong"
d1150 ::
  T1080 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1150 v0
  = coe (d88 (coe (d122 (coe (d322 (coe (d1098 (coe v0))))))))
name1152
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congʳ"
d1152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1152 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1152 v8
du1152 ::
  T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1152 v0
  = let v1 = d1098 (coe v0) in
    let v2 = d322 (coe v1) in coe (du108 (coe (d122 (coe v2))))
name1154
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congˡ"
d1154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1154 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1154 v8
du1154 ::
  T1080 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1154 v0
  = let v1 = d1098 (coe v0) in
    let v2 = d322 (coe v1) in coe (du104 (coe (d122 (coe v2))))
name1156
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity"
d1156 :: T1080 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1156 v0 = coe (d324 (coe (d1098 (coe v0))))
name1158
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ"
d1158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1080 -> AgdaAny -> AgdaAny
d1158 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1158 v8
du1158 :: T1080 -> AgdaAny -> AgdaAny
du1158 v0
  = let v1 = d1098 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v1))))
name1160
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ"
d1160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1080 -> AgdaAny -> AgdaAny
d1160 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1160 v8
du1160 :: T1080 -> AgdaAny -> AgdaAny
du1160 v0
  = let v1 = d1098 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v1))))
name1162
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMagma"
d1162 :: T1080 -> T78
d1162 v0 = coe (d122 (coe (d322 (coe (d1098 (coe v0))))))
name1164
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup"
d1164 :: T1080 -> T114
d1164 v0 = coe (d322 (coe (d1098 (coe v0))))
name1174 = "Algebra.Structures.IsSemiring"
d1174 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1174 = C11149 T1080 MAlonzo.Code.Agda.Builtin.Sigma.T14
name1188
  = "Algebra.Structures.IsSemiring.isSemiringWithoutAnnihilatingZero"
d1188 :: T1174 -> T1080
d1188 v0
  = case coe v0 of
      C11149 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1190 = "Algebra.Structures.IsSemiring.zero"
d1190 :: T1174 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1190 v0
  = case coe v0 of
      C11149 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1194 = "Algebra.Structures.IsSemiring._.assoc"
d1194 :: T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1194 v0
  = coe (d124 (coe (d322 (coe (d1098 (coe (d1188 (coe v0))))))))
name1196 = "Algebra.Structures.IsSemiring._.∙-cong"
d1196 ::
  T1174 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1196 v0
  = coe
      (d88
         (coe (d122 (coe (d322 (coe (d1098 (coe (d1188 (coe v0))))))))))
name1198 = "Algebra.Structures.IsSemiring._.∙-congʳ"
d1198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1198 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1198 v8
du1198 ::
  T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1198 v0
  = let v1 = d1188 (coe v0) in
    let v2 = d1098 (coe v1) in
    let v3 = d322 (coe v2) in coe (du108 (coe (d122 (coe v3))))
name1200 = "Algebra.Structures.IsSemiring._.∙-congˡ"
d1200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1200 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1200 v8
du1200 ::
  T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1200 v0
  = let v1 = d1188 (coe v0) in
    let v2 = d1098 (coe v1) in
    let v3 = d322 (coe v2) in coe (du104 (coe (d122 (coe v3))))
name1202 = "Algebra.Structures.IsSemiring._.identity"
d1202 :: T1174 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1202 v0 = coe (d324 (coe (d1098 (coe (d1188 (coe v0))))))
name1204 = "Algebra.Structures.IsSemiring._.identityʳ"
d1204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1174 -> AgdaAny -> AgdaAny
d1204 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1204 v8
du1204 :: T1174 -> AgdaAny -> AgdaAny
du1204 v0
  = let v1 = d1188 (coe v0) in
    let v2 = d1098 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v2))))
name1206 = "Algebra.Structures.IsSemiring._.identityˡ"
d1206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1174 -> AgdaAny -> AgdaAny
d1206 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1206 v8
du1206 :: T1174 -> AgdaAny -> AgdaAny
du1206 v0
  = let v1 = d1188 (coe v0) in
    let v2 = d1098 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v2))))
name1208 = "Algebra.Structures.IsSemiring._.isMagma"
d1208 :: T1174 -> T78
d1208 v0
  = coe (d122 (coe (d322 (coe (d1098 (coe (d1188 (coe v0))))))))
name1210 = "Algebra.Structures.IsSemiring._.*-isMonoid"
d1210 :: T1174 -> T312
d1210 v0 = coe (d1098 (coe (d1188 (coe v0))))
name1212 = "Algebra.Structures.IsSemiring._.isSemigroup"
d1212 :: T1174 -> T114
d1212 v0 = coe (d322 (coe (d1098 (coe (d1188 (coe v0))))))
name1214 = "Algebra.Structures.IsSemiring._.assoc"
d1214 :: T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1214 v0
  = coe
      (d124
         (coe (d322 (coe (d370 (coe (d1096 (coe (d1188 (coe v0))))))))))
name1216 = "Algebra.Structures.IsSemiring._.comm"
d1216 :: T1174 -> AgdaAny -> AgdaAny -> AgdaAny
d1216 v0 = coe (d372 (coe (d1096 (coe (d1188 (coe v0))))))
name1218 = "Algebra.Structures.IsSemiring._.∙-cong"
d1218 ::
  T1174 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1218 v0
  = coe
      (d88
         (coe
            (d122
               (coe (d322 (coe (d370 (coe (d1096 (coe (d1188 (coe v0))))))))))))
name1220 = "Algebra.Structures.IsSemiring._.∙-congʳ"
d1220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1220 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1220 v8
du1220 ::
  T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1220 v0
  = let v1 = d1188 (coe v0) in
    let v2 = d1096 (coe v1) in
    let v3 = d370 (coe v2) in
    let v4 = d322 (coe v3) in coe (du108 (coe (d122 (coe v4))))
name1222 = "Algebra.Structures.IsSemiring._.∙-congˡ"
d1222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1222 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1222 v8
du1222 ::
  T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1222 v0
  = let v1 = d1188 (coe v0) in
    let v2 = d1096 (coe v1) in
    let v3 = d370 (coe v2) in
    let v4 = d322 (coe v3) in coe (du104 (coe (d122 (coe v4))))
name1224 = "Algebra.Structures.IsSemiring._.identity"
d1224 :: T1174 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1224 v0
  = coe (d324 (coe (d370 (coe (d1096 (coe (d1188 (coe v0))))))))
name1226 = "Algebra.Structures.IsSemiring._.identityʳ"
d1226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1174 -> AgdaAny -> AgdaAny
d1226 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1226 v8
du1226 :: T1174 -> AgdaAny -> AgdaAny
du1226 v0
  = let v1 = d1188 (coe v0) in
    let v2 = d1096 (coe v1) in
    let v3 = d370 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v3))))
name1228 = "Algebra.Structures.IsSemiring._.identityˡ"
d1228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1174 -> AgdaAny -> AgdaAny
d1228 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1228 v8
du1228 :: T1174 -> AgdaAny -> AgdaAny
du1228 v0
  = let v1 = d1188 (coe v0) in
    let v2 = d1096 (coe v1) in
    let v3 = d370 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v3))))
name1230 = "Algebra.Structures.IsSemiring._.+-isCommutativeMonoid"
d1230 :: T1174 -> T360
d1230 v0 = coe (d1096 (coe (d1188 (coe v0))))
name1232 = "Algebra.Structures.IsSemiring._.isCommutativeSemigroup"
d1232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1174 -> T190
d1232 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1232 v8
du1232 :: T1174 -> T190
du1232 v0
  = let v1 = d1188 (coe v0) in coe (du408 (coe (d1096 (coe v1))))
name1234 = "Algebra.Structures.IsSemiring._.isMagma"
d1234 :: T1174 -> T78
d1234 v0
  = coe
      (d122
         (coe (d322 (coe (d370 (coe (d1096 (coe (d1188 (coe v0))))))))))
name1236 = "Algebra.Structures.IsSemiring._.isMonoid"
d1236 :: T1174 -> T312
d1236 v0 = coe (d370 (coe (d1096 (coe (d1188 (coe v0))))))
name1238 = "Algebra.Structures.IsSemiring._.isSemigroup"
d1238 :: T1174 -> T114
d1238 v0
  = coe (d322 (coe (d370 (coe (d1096 (coe (d1188 (coe v0))))))))
name1240 = "Algebra.Structures.IsSemiring._.distrib"
d1240 :: T1174 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1240 v0 = coe (d1100 (coe (d1188 (coe v0))))
name1242 = "Algebra.Structures.IsSemiring._.distribʳ"
d1242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1242 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1242 v8
du1242 :: T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1242 v0
  = let v1 = d1188 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1100 (coe v1))))
name1244 = "Algebra.Structures.IsSemiring._.distribˡ"
d1244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1244 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1244 v8
du1244 :: T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1244 v0
  = let v1 = d1188 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d1100 (coe v1))))
name1246 = "Algebra.Structures.IsSemiring._.isEquivalence"
d1246 :: T1174 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1246 v0
  = coe
      (d86
         (coe
            (d122
               (coe (d322 (coe (d370 (coe (d1096 (coe (d1188 (coe v0))))))))))))
name1248 = "Algebra.Structures.IsSemiring._.isPartialEquivalence"
d1248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1174 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1248 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1248 v8
du1248 :: T1174 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1248 v0
  = let v1 = d1188 (coe v0) in
    let v2 = d1096 (coe v1) in
    let v3 = d370 (coe v2) in
    let v4 = d322 (coe v3) in
    let v5 = d122 (coe v4) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v5))))
name1250 = "Algebra.Structures.IsSemiring._.refl"
d1250 :: T1174 -> AgdaAny -> AgdaAny
d1250 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (d86
               (coe
                  (d122
                     (coe (d322 (coe (d370 (coe (d1096 (coe (d1188 (coe v0))))))))))))))
name1252 = "Algebra.Structures.IsSemiring._.reflexive"
d1252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1174 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1252 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1252 v8
du1252 ::
  T1174 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1252 v0
  = let v1 = d1188 (coe v0) in
    let v2 = d1096 (coe v1) in
    let v3 = d370 (coe v2) in
    let v4 = d322 (coe v3) in
    let v5 = d122 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v5))) v6)
name1254 = "Algebra.Structures.IsSemiring._.setoid"
d1254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1174 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1254 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1254 v8
du1254 :: T1174 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1254 v0
  = let v1 = d1188 (coe v0) in
    let v2 = d1096 (coe v1) in
    let v3 = d370 (coe v2) in
    let v4 = d322 (coe v3) in coe (du102 (coe (d122 (coe v4))))
name1256 = "Algebra.Structures.IsSemiring._.sym"
d1256 :: T1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1256 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (d86
               (coe
                  (d122
                     (coe (d322 (coe (d370 (coe (d1096 (coe (d1188 (coe v0))))))))))))))
name1258 = "Algebra.Structures.IsSemiring._.trans"
d1258 ::
  T1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1258 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (d86
               (coe
                  (d122
                     (coe (d322 (coe (d370 (coe (d1096 (coe (d1188 (coe v0))))))))))))))
name1260 = "Algebra.Structures.IsSemiring.isSemiringWithoutOne"
d1260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1174 -> T896
d1260 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1260 v8
du1260 :: T1174 -> T896
du1260 v0
  = coe
      (C8295
         (coe (d1096 (coe (d1188 (coe v0)))))
         (coe (d322 (coe (d1098 (coe (d1188 (coe v0)))))))
         (coe (d1100 (coe (d1188 (coe v0))))) (coe (d1190 (coe v0))))
name1264 = "Algebra.Structures.IsSemiring._.isNearSemiring"
d1264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1174 -> T820
d1264 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1264 v8
du1264 :: T1174 -> T820
du1264 v0 = coe (du932 (coe (du1260 (coe v0))))
name1266 = "Algebra.Structures.IsSemiring._.zeroʳ"
d1266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1174 -> AgdaAny -> AgdaAny
d1266 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1266 v8
du1266 :: T1174 -> AgdaAny -> AgdaAny
du1266 v0
  = let v1 = du1260 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d918 (coe v1))))
name1268 = "Algebra.Structures.IsSemiring._.zeroˡ"
d1268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1174 -> AgdaAny -> AgdaAny
d1268 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1268 v8
du1268 :: T1174 -> AgdaAny -> AgdaAny
du1268 v0
  = let v1 = du1260 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d918 (coe v1))))
name1278 = "Algebra.Structures.IsCommutativeSemiring"
d1278 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1278 = C12345 T1174 (AgdaAny -> AgdaAny -> AgdaAny)
name1292 = "Algebra.Structures.IsCommutativeSemiring.isSemiring"
d1292 :: T1278 -> T1174
d1292 v0
  = case coe v0 of
      C12345 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1294 = "Algebra.Structures.IsCommutativeSemiring.*-comm"
d1294 :: T1278 -> AgdaAny -> AgdaAny -> AgdaAny
d1294 v0
  = case coe v0 of
      C12345 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1298 = "Algebra.Structures.IsCommutativeSemiring._.assoc"
d1298 :: T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1298 v0
  = coe
      (d124
         (coe (d322 (coe (d1098 (coe (d1188 (coe (d1292 (coe v0))))))))))
name1300 = "Algebra.Structures.IsCommutativeSemiring._.∙-cong"
d1300 ::
  T1278 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1300 v0
  = coe
      (d88
         (coe
            (d122
               (coe (d322 (coe (d1098 (coe (d1188 (coe (d1292 (coe v0))))))))))))
name1302 = "Algebra.Structures.IsCommutativeSemiring._.∙-congʳ"
d1302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1302 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1302 v8
du1302 ::
  T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1302 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    let v3 = d1098 (coe v2) in
    let v4 = d322 (coe v3) in coe (du108 (coe (d122 (coe v4))))
name1304 = "Algebra.Structures.IsCommutativeSemiring._.∙-congˡ"
d1304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1304 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1304 v8
du1304 ::
  T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1304 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    let v3 = d1098 (coe v2) in
    let v4 = d322 (coe v3) in coe (du104 (coe (d122 (coe v4))))
name1306 = "Algebra.Structures.IsCommutativeSemiring._.identity"
d1306 :: T1278 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1306 v0
  = coe (d324 (coe (d1098 (coe (d1188 (coe (d1292 (coe v0))))))))
name1308 = "Algebra.Structures.IsCommutativeSemiring._.identityʳ"
d1308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1278 -> AgdaAny -> AgdaAny
d1308 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1308 v8
du1308 :: T1278 -> AgdaAny -> AgdaAny
du1308 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    let v3 = d1098 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v3))))
name1310 = "Algebra.Structures.IsCommutativeSemiring._.identityˡ"
d1310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1278 -> AgdaAny -> AgdaAny
d1310 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1310 v8
du1310 :: T1278 -> AgdaAny -> AgdaAny
du1310 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    let v3 = d1098 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v3))))
name1312 = "Algebra.Structures.IsCommutativeSemiring._.isMagma"
d1312 :: T1278 -> T78
d1312 v0
  = coe
      (d122
         (coe (d322 (coe (d1098 (coe (d1188 (coe (d1292 (coe v0))))))))))
name1314 = "Algebra.Structures.IsCommutativeSemiring._.*-isMonoid"
d1314 :: T1278 -> T312
d1314 v0 = coe (d1098 (coe (d1188 (coe (d1292 (coe v0))))))
name1316 = "Algebra.Structures.IsCommutativeSemiring._.isSemigroup"
d1316 :: T1278 -> T114
d1316 v0
  = coe (d322 (coe (d1098 (coe (d1188 (coe (d1292 (coe v0))))))))
name1318 = "Algebra.Structures.IsCommutativeSemiring._.assoc"
d1318 :: T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1318 v0
  = coe
      (d124
         (coe
            (d322
               (coe (d370 (coe (d1096 (coe (d1188 (coe (d1292 (coe v0))))))))))))
name1320 = "Algebra.Structures.IsCommutativeSemiring._.comm"
d1320 :: T1278 -> AgdaAny -> AgdaAny -> AgdaAny
d1320 v0
  = coe (d372 (coe (d1096 (coe (d1188 (coe (d1292 (coe v0))))))))
name1322 = "Algebra.Structures.IsCommutativeSemiring._.∙-cong"
d1322 ::
  T1278 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1322 v0
  = coe
      (d88
         (coe
            (d122
               (coe
                  (d322
                     (coe
                        (d370 (coe (d1096 (coe (d1188 (coe (d1292 (coe v0))))))))))))))
name1324 = "Algebra.Structures.IsCommutativeSemiring._.∙-congʳ"
d1324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1324 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1324 v8
du1324 ::
  T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1324 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    let v3 = d1096 (coe v2) in
    let v4 = d370 (coe v3) in
    let v5 = d322 (coe v4) in coe (du108 (coe (d122 (coe v5))))
name1326 = "Algebra.Structures.IsCommutativeSemiring._.∙-congˡ"
d1326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1326 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1326 v8
du1326 ::
  T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1326 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    let v3 = d1096 (coe v2) in
    let v4 = d370 (coe v3) in
    let v5 = d322 (coe v4) in coe (du104 (coe (d122 (coe v5))))
name1328 = "Algebra.Structures.IsCommutativeSemiring._.identity"
d1328 :: T1278 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1328 v0
  = coe
      (d324
         (coe (d370 (coe (d1096 (coe (d1188 (coe (d1292 (coe v0))))))))))
name1330 = "Algebra.Structures.IsCommutativeSemiring._.identityʳ"
d1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1278 -> AgdaAny -> AgdaAny
d1330 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1330 v8
du1330 :: T1278 -> AgdaAny -> AgdaAny
du1330 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    let v3 = d1096 (coe v2) in
    let v4 = d370 (coe v3) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v4))))
name1332 = "Algebra.Structures.IsCommutativeSemiring._.identityˡ"
d1332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1278 -> AgdaAny -> AgdaAny
d1332 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1332 v8
du1332 :: T1278 -> AgdaAny -> AgdaAny
du1332 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    let v3 = d1096 (coe v2) in
    let v4 = d370 (coe v3) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v4))))
name1334
  = "Algebra.Structures.IsCommutativeSemiring._.+-isCommutativeMonoid"
d1334 :: T1278 -> T360
d1334 v0 = coe (d1096 (coe (d1188 (coe (d1292 (coe v0))))))
name1336
  = "Algebra.Structures.IsCommutativeSemiring._.isCommutativeSemigroup"
d1336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1278 -> T190
d1336 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1336 v8
du1336 :: T1278 -> T190
du1336 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in coe (du408 (coe (d1096 (coe v2))))
name1338 = "Algebra.Structures.IsCommutativeSemiring._.isMagma"
d1338 :: T1278 -> T78
d1338 v0
  = coe
      (d122
         (coe
            (d322
               (coe (d370 (coe (d1096 (coe (d1188 (coe (d1292 (coe v0))))))))))))
name1340 = "Algebra.Structures.IsCommutativeSemiring._.isMonoid"
d1340 :: T1278 -> T312
d1340 v0
  = coe (d370 (coe (d1096 (coe (d1188 (coe (d1292 (coe v0))))))))
name1342 = "Algebra.Structures.IsCommutativeSemiring._.isSemigroup"
d1342 :: T1278 -> T114
d1342 v0
  = coe
      (d322
         (coe (d370 (coe (d1096 (coe (d1188 (coe (d1292 (coe v0))))))))))
name1344 = "Algebra.Structures.IsCommutativeSemiring._.distrib"
d1344 :: T1278 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1344 v0 = coe (d1100 (coe (d1188 (coe (d1292 (coe v0))))))
name1346 = "Algebra.Structures.IsCommutativeSemiring._.distribʳ"
d1346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1346 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1346 v8
du1346 :: T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1346 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1100 (coe v2))))
name1348 = "Algebra.Structures.IsCommutativeSemiring._.distribˡ"
d1348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1348 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1348 v8
du1348 :: T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1348 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d1100 (coe v2))))
name1350
  = "Algebra.Structures.IsCommutativeSemiring._.isEquivalence"
d1350 :: T1278 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1350 v0
  = coe
      (d86
         (coe
            (d122
               (coe
                  (d322
                     (coe
                        (d370 (coe (d1096 (coe (d1188 (coe (d1292 (coe v0))))))))))))))
name1352
  = "Algebra.Structures.IsCommutativeSemiring._.isNearSemiring"
d1352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1278 -> T820
d1352 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1352 v8
du1352 :: T1278 -> T820
du1352 v0
  = let v1 = d1292 (coe v0) in coe (du932 (coe (du1260 (coe v1))))
name1354
  = "Algebra.Structures.IsCommutativeSemiring._.isPartialEquivalence"
d1354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1278 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1354 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1354 v8
du1354 :: T1278 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1354 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    let v3 = d1096 (coe v2) in
    let v4 = d370 (coe v3) in
    let v5 = d322 (coe v4) in
    let v6 = d122 (coe v5) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v6))))
name1356
  = "Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutAnnihilatingZero"
d1356 :: T1278 -> T1080
d1356 v0 = coe (d1188 (coe (d1292 (coe v0))))
name1358
  = "Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutOne"
d1358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1278 -> T896
d1358 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1358 v8
du1358 :: T1278 -> T896
du1358 v0 = coe (du1260 (coe (d1292 (coe v0))))
name1360 = "Algebra.Structures.IsCommutativeSemiring._.refl"
d1360 :: T1278 -> AgdaAny -> AgdaAny
d1360 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (d86
               (coe
                  (d122
                     (coe
                        (d322
                           (coe
                              (d370 (coe (d1096 (coe (d1188 (coe (d1292 (coe v0))))))))))))))))
name1362 = "Algebra.Structures.IsCommutativeSemiring._.reflexive"
d1362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1278 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1362 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1362 v8
du1362 ::
  T1278 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1362 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    let v3 = d1096 (coe v2) in
    let v4 = d370 (coe v3) in
    let v5 = d322 (coe v4) in
    let v6 = d122 (coe v5) in
    coe
      (\ v7 v8 v9 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v6))) v7)
name1364 = "Algebra.Structures.IsCommutativeSemiring._.setoid"
d1364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1278 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1364 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1364 v8
du1364 :: T1278 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1364 v0
  = let v1 = d1292 (coe v0) in
    let v2 = d1188 (coe v1) in
    let v3 = d1096 (coe v2) in
    let v4 = d370 (coe v3) in
    let v5 = d322 (coe v4) in coe (du102 (coe (d122 (coe v5))))
name1366 = "Algebra.Structures.IsCommutativeSemiring._.sym"
d1366 :: T1278 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1366 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (d86
               (coe
                  (d122
                     (coe
                        (d322
                           (coe
                              (d370 (coe (d1096 (coe (d1188 (coe (d1292 (coe v0))))))))))))))))
name1368 = "Algebra.Structures.IsCommutativeSemiring._.trans"
d1368 ::
  T1278 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1368 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (d86
               (coe
                  (d122
                     (coe
                        (d322
                           (coe
                              (d370 (coe (d1096 (coe (d1188 (coe (d1292 (coe v0))))))))))))))))
name1370 = "Algebra.Structures.IsCommutativeSemiring._.zero"
d1370 :: T1278 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1370 v0 = coe (d1190 (coe (d1292 (coe v0))))
name1372 = "Algebra.Structures.IsCommutativeSemiring._.zeroʳ"
d1372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1278 -> AgdaAny -> AgdaAny
d1372 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1372 v8
du1372 :: T1278 -> AgdaAny -> AgdaAny
du1372 v0
  = let v1 = d1292 (coe v0) in
    let v2 = du1260 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d918 (coe v2))))
name1374 = "Algebra.Structures.IsCommutativeSemiring._.zeroˡ"
d1374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1278 -> AgdaAny -> AgdaAny
d1374 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1374 v8
du1374 :: T1278 -> AgdaAny -> AgdaAny
du1374 v0
  = let v1 = d1292 (coe v0) in
    let v2 = du1260 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d918 (coe v2))))
name1376
  = "Algebra.Structures.IsCommutativeSemiring.isCommutativeSemiringWithoutOne"
d1376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1278 -> T988
d1376 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1376 v8
du1376 :: T1278 -> T988
du1376 v0
  = coe
      (C9251
         (coe (du1260 (coe (d1292 (coe v0))))) (coe (d1294 (coe v0))))
name1378
  = "Algebra.Structures.IsCommutativeSemiring.*-isCommutativeMonoid"
d1378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1278 -> T360
d1378 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1378 v8
du1378 :: T1278 -> T360
du1378 v0
  = coe
      (C2759
         (coe (d1098 (coe (d1188 (coe (d1292 (coe v0)))))))
         (coe (d1294 (coe v0))))
name1390 = "Algebra.Structures.IsRing"
d1390 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1390
  = C13753 T608 T312 MAlonzo.Code.Agda.Builtin.Sigma.T14
           MAlonzo.Code.Agda.Builtin.Sigma.T14
name1410 = "Algebra.Structures.IsRing.+-isAbelianGroup"
d1410 :: T1390 -> T608
d1410 v0
  = case coe v0 of
      C13753 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1412 = "Algebra.Structures.IsRing.*-isMonoid"
d1412 :: T1390 -> T312
d1412 v0
  = case coe v0 of
      C13753 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1414 = "Algebra.Structures.IsRing.distrib"
d1414 :: T1390 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1414 v0
  = case coe v0 of
      C13753 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1416 = "Algebra.Structures.IsRing.zero"
d1416 :: T1390 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1416 v0
  = case coe v0 of
      C13753 v1 v2 v3 v4 -> coe v4
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
  = coe
      (d124
         (coe (d322 (coe (d540 (coe (d620 (coe (d1410 (coe v0))))))))))
name1424 = "Algebra.Structures.IsRing._.comm"
d1424 :: T1390 -> AgdaAny -> AgdaAny -> AgdaAny
d1424 v0 = coe (d622 (coe (d1410 (coe v0))))
name1426 = "Algebra.Structures.IsRing._.∙-cong"
d1426 ::
  T1390 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1426 v0
  = coe
      (d88
         (coe
            (d122
               (coe (d322 (coe (d540 (coe (d620 (coe (d1410 (coe v0))))))))))))
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
    let v2 = d620 (coe v1) in
    let v3 = d540 (coe v2) in
    let v4 = d322 (coe v3) in coe (du108 (coe (d122 (coe v4))))
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
    let v2 = d620 (coe v1) in
    let v3 = d540 (coe v2) in
    let v4 = d322 (coe v3) in coe (du104 (coe (d122 (coe v4))))
name1432 = "Algebra.Structures.IsRing._.identity"
d1432 :: T1390 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1432 v0
  = coe (d324 (coe (d540 (coe (d620 (coe (d1410 (coe v0))))))))
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
    let v2 = d620 (coe v1) in
    let v3 = d540 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v3))))
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
    let v2 = d620 (coe v1) in
    let v3 = d540 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v3))))
name1438 = "Algebra.Structures.IsRing._.isCommutativeMonoid"
d1438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1390 -> T360
d1438 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1438 v9
du1438 :: T1390 -> T360
du1438 v0 = coe (du674 (coe (d1410 (coe v0))))
name1440 = "Algebra.Structures.IsRing._.isCommutativeSemigroup"
d1440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1390 -> T190
d1440 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1440 v9
du1440 :: T1390 -> T190
du1440 v0
  = let v1 = d1410 (coe v0) in coe (du408 (coe (du674 (coe v1))))
name1442 = "Algebra.Structures.IsRing._.isGroup"
d1442 :: T1390 -> T526
d1442 v0 = coe (d620 (coe (d1410 (coe v0))))
name1444 = "Algebra.Structures.IsRing._.isMagma"
d1444 :: T1390 -> T78
d1444 v0
  = coe
      (d122
         (coe (d322 (coe (d540 (coe (d620 (coe (d1410 (coe v0))))))))))
name1446 = "Algebra.Structures.IsRing._.isMonoid"
d1446 :: T1390 -> T312
d1446 v0 = coe (d540 (coe (d620 (coe (d1410 (coe v0))))))
name1448 = "Algebra.Structures.IsRing._.isSemigroup"
d1448 :: T1390 -> T114
d1448 v0
  = coe (d322 (coe (d540 (coe (d620 (coe (d1410 (coe v0))))))))
name1450 = "Algebra.Structures.IsRing._.⁻¹-cong"
d1450 :: T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1450 v0 = coe (d544 (coe (d620 (coe (d1410 (coe v0))))))
name1452 = "Algebra.Structures.IsRing._.inverse"
d1452 :: T1390 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1452 v0 = coe (d542 (coe (d620 (coe (d1410 (coe v0))))))
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
    let v2 = d620 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d542 (coe v2))))
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
    let v2 = d620 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d542 (coe v2))))
name1458 = "Algebra.Structures.IsRing._.isEquivalence"
d1458 :: T1390 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1458 v0
  = coe
      (d86
         (coe
            (d122
               (coe (d322 (coe (d540 (coe (d620 (coe (d1410 (coe v0))))))))))))
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
    let v2 = d620 (coe v1) in
    let v3 = d540 (coe v2) in
    let v4 = d322 (coe v3) in
    let v5 = d122 (coe v4) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v5))))
name1462 = "Algebra.Structures.IsRing._.refl"
d1462 :: T1390 -> AgdaAny -> AgdaAny
d1462 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (d86
               (coe
                  (d122
                     (coe (d322 (coe (d540 (coe (d620 (coe (d1410 (coe v0))))))))))))))
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
    let v2 = d620 (coe v1) in
    let v3 = d540 (coe v2) in
    let v4 = d322 (coe v3) in
    let v5 = d122 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v5))) v6)
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
    let v2 = d620 (coe v1) in
    let v3 = d540 (coe v2) in
    let v4 = d322 (coe v3) in coe (du102 (coe (d122 (coe v4))))
name1468 = "Algebra.Structures.IsRing._.sym"
d1468 :: T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1468 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (d86
               (coe
                  (d122
                     (coe (d322 (coe (d540 (coe (d620 (coe (d1410 (coe v0))))))))))))))
name1470 = "Algebra.Structures.IsRing._.trans"
d1470 ::
  T1390 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1470 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (d86
               (coe
                  (d122
                     (coe (d322 (coe (d540 (coe (d620 (coe (d1410 (coe v0))))))))))))))
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
    coe (du600 (coe v0) (coe v2) (coe v1) (coe (d620 (coe v4))))
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
    coe (du594 (coe v0) (coe v2) (coe v1) (coe (d620 (coe v4))))
name1478 = "Algebra.Structures.IsRing._.assoc"
d1478 :: T1390 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1478 v0 = coe (d124 (coe (d322 (coe (d1412 (coe v0))))))
name1480 = "Algebra.Structures.IsRing._.∙-cong"
d1480 ::
  T1390 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1480 v0
  = coe (d88 (coe (d122 (coe (d322 (coe (d1412 (coe v0))))))))
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
    let v2 = d322 (coe v1) in coe (du108 (coe (d122 (coe v2))))
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
    let v2 = d322 (coe v1) in coe (du104 (coe (d122 (coe v2))))
name1486 = "Algebra.Structures.IsRing._.identity"
d1486 :: T1390 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1486 v0 = coe (d324 (coe (d1412 (coe v0))))
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
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v1))))
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
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v1))))
name1492 = "Algebra.Structures.IsRing._.isMagma"
d1492 :: T1390 -> T78
d1492 v0 = coe (d122 (coe (d322 (coe (d1412 (coe v0))))))
name1494 = "Algebra.Structures.IsRing._.isSemigroup"
d1494 :: T1390 -> T114
d1494 v0 = coe (d322 (coe (d1412 (coe v0))))
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
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d1416 (coe v0))))
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
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1416 (coe v0))))
name1500
  = "Algebra.Structures.IsRing.isSemiringWithoutAnnihilatingZero"
d1500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1390 -> T1080
d1500 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1500 v9
du1500 :: T1390 -> T1080
du1500 v0
  = coe
      (C9969
         (coe (du674 (coe (d1410 (coe v0))))) (coe (d1412 (coe v0)))
         (coe (d1414 (coe v0))))
name1502 = "Algebra.Structures.IsRing.isSemiring"
d1502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1390 -> T1174
d1502 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1502 v9
du1502 :: T1390 -> T1174
du1502 v0
  = coe (C11149 (coe (du1500 (coe v0))) (coe (d1416 (coe v0))))
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
  = let v1 = du1502 (coe v0) in
    let v2 = d1188 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1100 (coe v2))))
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
  = let v1 = du1502 (coe v0) in
    let v2 = d1188 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d1100 (coe v2))))
name1510 = "Algebra.Structures.IsRing._.isNearSemiring"
d1510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1390 -> T820
d1510 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1510 v9
du1510 :: T1390 -> T820
du1510 v0
  = let v1 = du1502 (coe v0) in coe (du932 (coe (du1260 (coe v1))))
name1512 = "Algebra.Structures.IsRing._.isSemiringWithoutOne"
d1512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1390 -> T896
d1512 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1512 v9
du1512 :: T1390 -> T896
du1512 v0 = coe (du1260 (coe (du1502 (coe v0))))
name1524 = "Algebra.Structures.IsCommutativeRing"
d1524 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1524 = C15745 T1390 (AgdaAny -> AgdaAny -> AgdaAny)
name1540 = "Algebra.Structures.IsCommutativeRing.isRing"
d1540 :: T1524 -> T1390
d1540 v0
  = case coe v0 of
      C15745 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1542 = "Algebra.Structures.IsCommutativeRing.*-comm"
d1542 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny
d1542 v0
  = case coe v0 of
      C15745 v1 v2 -> coe v2
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
d1548 v0
  = coe (d124 (coe (d322 (coe (d1412 (coe (d1540 (coe v0))))))))
name1550 = "Algebra.Structures.IsCommutativeRing._.∙-cong"
d1550 ::
  T1524 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1550 v0
  = coe
      (d88
         (coe (d122 (coe (d322 (coe (d1412 (coe (d1540 (coe v0))))))))))
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
    let v3 = d322 (coe v2) in coe (du108 (coe (d122 (coe v3))))
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
    let v3 = d322 (coe v2) in coe (du104 (coe (d122 (coe v3))))
name1556 = "Algebra.Structures.IsCommutativeRing._.identity"
d1556 :: T1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1556 v0 = coe (d324 (coe (d1412 (coe (d1540 (coe v0))))))
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
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v2))))
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
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v2))))
name1562 = "Algebra.Structures.IsCommutativeRing._.isMagma"
d1562 :: T1524 -> T78
d1562 v0
  = coe (d122 (coe (d322 (coe (d1412 (coe (d1540 (coe v0))))))))
name1564 = "Algebra.Structures.IsCommutativeRing._.*-isMonoid"
d1564 :: T1524 -> T312
d1564 v0 = coe (d1412 (coe (d1540 (coe v0))))
name1566 = "Algebra.Structures.IsCommutativeRing._.isSemigroup"
d1566 :: T1524 -> T114
d1566 v0 = coe (d322 (coe (d1412 (coe (d1540 (coe v0))))))
name1568 = "Algebra.Structures.IsCommutativeRing._.assoc"
d1568 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1568 v0
  = coe
      (d124
         (coe
            (d322
               (coe (d540 (coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))))))))
name1570 = "Algebra.Structures.IsCommutativeRing._.comm"
d1570 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny
d1570 v0 = coe (d622 (coe (d1410 (coe (d1540 (coe v0))))))
name1572 = "Algebra.Structures.IsCommutativeRing._.∙-cong"
d1572 ::
  T1524 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1572 v0
  = coe
      (d88
         (coe
            (d122
               (coe
                  (d322
                     (coe (d540 (coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))))))))))
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
    let v3 = d620 (coe v2) in
    let v4 = d540 (coe v3) in
    let v5 = d322 (coe v4) in coe (du108 (coe (d122 (coe v5))))
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
    let v3 = d620 (coe v2) in
    let v4 = d540 (coe v3) in
    let v5 = d322 (coe v4) in coe (du104 (coe (d122 (coe v5))))
name1578 = "Algebra.Structures.IsCommutativeRing._.identity"
d1578 :: T1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1578 v0
  = coe
      (d324
         (coe (d540 (coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))))))
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
    let v3 = d620 (coe v2) in
    let v4 = d540 (coe v3) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d324 (coe v4))))
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
    let v3 = d620 (coe v2) in
    let v4 = d540 (coe v3) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d324 (coe v4))))
name1584
  = "Algebra.Structures.IsCommutativeRing._.+-isAbelianGroup"
d1584 :: T1524 -> T608
d1584 v0 = coe (d1410 (coe (d1540 (coe v0))))
name1586
  = "Algebra.Structures.IsCommutativeRing._.isCommutativeMonoid"
d1586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T360
d1586 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1586 v9
du1586 :: T1524 -> T360
du1586 v0
  = let v1 = d1540 (coe v0) in coe (du674 (coe (d1410 (coe v1))))
name1588
  = "Algebra.Structures.IsCommutativeRing._.isCommutativeSemigroup"
d1588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T190
d1588 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1588 v9
du1588 :: T1524 -> T190
du1588 v0
  = let v1 = d1540 (coe v0) in
    let v2 = d1410 (coe v1) in coe (du408 (coe (du674 (coe v2))))
name1590 = "Algebra.Structures.IsCommutativeRing._.isGroup"
d1590 :: T1524 -> T526
d1590 v0 = coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))
name1592 = "Algebra.Structures.IsCommutativeRing._.isMagma"
d1592 :: T1524 -> T78
d1592 v0
  = coe
      (d122
         (coe
            (d322
               (coe (d540 (coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))))))))
name1594 = "Algebra.Structures.IsCommutativeRing._.isMonoid"
d1594 :: T1524 -> T312
d1594 v0
  = coe (d540 (coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))))
name1596 = "Algebra.Structures.IsCommutativeRing._.isSemigroup"
d1596 :: T1524 -> T114
d1596 v0
  = coe
      (d322
         (coe (d540 (coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))))))
name1598 = "Algebra.Structures.IsCommutativeRing._.⁻¹-cong"
d1598 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1598 v0
  = coe (d544 (coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))))
name1600 = "Algebra.Structures.IsCommutativeRing._.inverse"
d1600 :: T1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1600 v0
  = coe (d542 (coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))))
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
    let v3 = d620 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d542 (coe v3))))
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
    let v3 = d620 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d542 (coe v3))))
name1606 = "Algebra.Structures.IsCommutativeRing._.distrib"
d1606 :: T1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1606 v0 = coe (d1414 (coe (d1540 (coe v0))))
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
    let v2 = du1502 (coe v1) in
    let v3 = d1188 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1100 (coe v3))))
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
    let v2 = du1502 (coe v1) in
    let v3 = d1188 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d1100 (coe v3))))
name1612 = "Algebra.Structures.IsCommutativeRing._.isEquivalence"
d1612 :: T1524 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1612 v0
  = coe
      (d86
         (coe
            (d122
               (coe
                  (d322
                     (coe (d540 (coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))))))))))
name1614 = "Algebra.Structures.IsCommutativeRing._.isNearSemiring"
d1614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T820
d1614 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1614 v9
du1614 :: T1524 -> T820
du1614 v0
  = let v1 = d1540 (coe v0) in
    let v2 = du1502 (coe v1) in coe (du932 (coe (du1260 (coe v2))))
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
    let v3 = d620 (coe v2) in
    let v4 = d540 (coe v3) in
    let v5 = d322 (coe v4) in
    let v6 = d122 (coe v5) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42 (coe (d86 (coe v6))))
name1618 = "Algebra.Structures.IsCommutativeRing._.isSemiring"
d1618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T1174
d1618 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1618 v9
du1618 :: T1524 -> T1174
du1618 v0 = coe (du1502 (coe (d1540 (coe v0))))
name1620
  = "Algebra.Structures.IsCommutativeRing._.isSemiringWithoutAnnihilatingZero"
d1620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T1080
d1620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1620 v9
du1620 :: T1524 -> T1080
du1620 v0 = coe (du1500 (coe (d1540 (coe v0))))
name1622
  = "Algebra.Structures.IsCommutativeRing._.isSemiringWithoutOne"
d1622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T896
d1622 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1622 v9
du1622 :: T1524 -> T896
du1622 v0
  = let v1 = d1540 (coe v0) in coe (du1260 (coe (du1502 (coe v1))))
name1624 = "Algebra.Structures.IsCommutativeRing._.refl"
d1624 :: T1524 -> AgdaAny -> AgdaAny
d1624 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe
            (d86
               (coe
                  (d122
                     (coe
                        (d322
                           (coe
                              (d540 (coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))))))))))))
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
    let v3 = d620 (coe v2) in
    let v4 = d540 (coe v3) in
    let v5 = d322 (coe v4) in
    let v6 = d122 (coe v5) in
    coe
      (\ v7 v8 v9 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d86 (coe v6))) v7)
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
    let v3 = d620 (coe v2) in
    let v4 = d540 (coe v3) in
    let v5 = d322 (coe v4) in coe (du102 (coe (d122 (coe v5))))
name1630 = "Algebra.Structures.IsCommutativeRing._.sym"
d1630 :: T1524 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1630 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            (d86
               (coe
                  (d122
                     (coe
                        (d322
                           (coe
                              (d540 (coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))))))))))))
name1632 = "Algebra.Structures.IsCommutativeRing._.trans"
d1632 ::
  T1524 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1632 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe
            (d86
               (coe
                  (d122
                     (coe
                        (d322
                           (coe
                              (d540 (coe (d620 (coe (d1410 (coe (d1540 (coe v0))))))))))))))))
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
    coe (du600 (coe v0) (coe v2) (coe v1) (coe (d620 (coe v5))))
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
    coe (du594 (coe v0) (coe v2) (coe v1) (coe (d620 (coe v5))))
name1638 = "Algebra.Structures.IsCommutativeRing._.zero"
d1638 :: T1524 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1638 v0 = coe (d1416 (coe (d1540 (coe v0))))
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
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1416 (coe v1))))
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
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d1416 (coe v1))))
name1644
  = "Algebra.Structures.IsCommutativeRing.*-isCommutativeMonoid"
d1644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T360
d1644 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1644 v9
du1644 :: T1524 -> T360
du1644 v0
  = coe
      (C2759 (coe (d1412 (coe (d1540 (coe v0))))) (coe (d1542 (coe v0))))
name1646
  = "Algebra.Structures.IsCommutativeRing.isCommutativeSemiring"
d1646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1524 -> T1278
d1646 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1646 v9
du1646 :: T1524 -> T1278
du1646 v0
  = coe
      (C12345
         (coe (du1502 (coe (d1540 (coe v0))))) (coe (d1542 (coe v0))))
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
du1650 v0 = coe (du1376 (coe (du1646 (coe v0))))
name1662 = "Algebra.Structures.IsBooleanAlgebra"
d1662 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1662
  = C17625 T758 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name1682
  = "Algebra.Structures.IsBooleanAlgebra.isDistributiveLattice"
d1682 :: T1662 -> T758
d1682 v0
  = case coe v0 of
      C17625 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1684 = "Algebra.Structures.IsBooleanAlgebra.∨-complementʳ"
d1684 :: T1662 -> AgdaAny -> AgdaAny
d1684 v0
  = case coe v0 of
      C17625 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1686 = "Algebra.Structures.IsBooleanAlgebra.∧-complementʳ"
d1686 :: T1662 -> AgdaAny -> AgdaAny
d1686 v0
  = case coe v0 of
      C17625 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1688 = "Algebra.Structures.IsBooleanAlgebra.¬-cong"
d1688 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1688 v0
  = case coe v0 of
      C17625 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1692 = "Algebra.Structures.IsBooleanAlgebra._.absorptive"
d1692 :: T1662 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1692 v0 = coe (d720 (coe (d768 (coe (d1682 (coe v0))))))
name1694 = "Algebra.Structures.IsBooleanAlgebra._.isEquivalence"
d1694 :: T1662 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1694 v0 = coe (d706 (coe (d768 (coe (d1682 (coe v0))))))
name1696 = "Algebra.Structures.IsBooleanAlgebra._.isLattice"
d1696 :: T1662 -> T684
d1696 v0 = coe (d768 (coe (d1682 (coe v0))))
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
    let v2 = d768 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du42
         (coe (d706 (coe v2))))
name1700 = "Algebra.Structures.IsBooleanAlgebra._.refl"
d1700 :: T1662 -> AgdaAny -> AgdaAny
d1700 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d34
         (coe (d706 (coe (d768 (coe (d1682 (coe v0))))))))
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
    let v2 = d768 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Structures.du40
           (coe (d706 (coe v2))) v3)
name1704 = "Algebra.Structures.IsBooleanAlgebra._.sym"
d1704 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1704 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d36
         (coe (d706 (coe (d768 (coe (d1682 (coe v0))))))))
name1706 = "Algebra.Structures.IsBooleanAlgebra._.trans"
d1706 ::
  T1662 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1706 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d38
         (coe (d706 (coe (d768 (coe (d1682 (coe v0))))))))
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
    let v2 = d768 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d720 (coe v2))))
name1710 = "Algebra.Structures.IsBooleanAlgebra._.∧-assoc"
d1710 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1710 v0 = coe (d716 (coe (d768 (coe (d1682 (coe v0))))))
name1712 = "Algebra.Structures.IsBooleanAlgebra._.∧-comm"
d1712 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny
d1712 v0 = coe (d714 (coe (d768 (coe (d1682 (coe v0))))))
name1714 = "Algebra.Structures.IsBooleanAlgebra._.∧-cong"
d1714 ::
  T1662 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1714 v0 = coe (d718 (coe (d768 (coe (d1682 (coe v0))))))
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
  = let v1 = d1682 (coe v0) in coe (du742 (coe (d768 (coe v1))))
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
  = let v1 = d1682 (coe v0) in coe (du738 (coe (d768 (coe v1))))
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
    let v2 = d768 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d720 (coe v2))))
name1722 = "Algebra.Structures.IsBooleanAlgebra._.∨-assoc"
d1722 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1722 v0 = coe (d710 (coe (d768 (coe (d1682 (coe v0))))))
name1724 = "Algebra.Structures.IsBooleanAlgebra._.∨-comm"
d1724 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny
d1724 v0 = coe (d708 (coe (d768 (coe (d1682 (coe v0))))))
name1726 = "Algebra.Structures.IsBooleanAlgebra._.∨-cong"
d1726 ::
  T1662 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1726 v0 = coe (d712 (coe (d768 (coe (d1682 (coe v0))))))
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
  = let v1 = d1682 (coe v0) in coe (du750 (coe (d768 (coe v1))))
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
  = let v1 = d1682 (coe v0) in coe (du746 (coe (d768 (coe v1))))
name1732 = "Algebra.Structures.IsBooleanAlgebra._.∨-distribʳ-∧"
d1732 :: T1662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1732 v0 = coe (d770 (coe (d1682 (coe v0))))
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
du1734 v0 = coe (du812 (coe (d1682 (coe v0))))
