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
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

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
name78 = "Algebra.Structures._.Core.Op₁"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d78 = erased
name80 = "Algebra.Structures._.Core.Op₂"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d80 = erased
name84 = "Algebra.Structures.IsMagma"
d84 a0 a1 a2 a3 a4 = ()
data T84
  = C277 MAlonzo.Code.Relation.Binary.Core.T402
         (AgdaAny ->
          AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name92 = "Algebra.Structures.IsMagma.isEquivalence"
d92 :: T84 -> MAlonzo.Code.Relation.Binary.Core.T402
d92 v0
  = case coe v0 of
      C277 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name94 = "Algebra.Structures.IsMagma.∙-cong"
d94 ::
  T84 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d94 v0
  = case coe v0 of
      C277 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name98 = "Algebra.Structures.IsMagma._.refl"
d98 :: T84 -> AgdaAny -> AgdaAny
d98 v0
  = coe (MAlonzo.Code.Relation.Binary.Core.d414 (coe (d92 (coe v0))))
name100 = "Algebra.Structures.IsMagma._.reflexive"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T84 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d100 v0 v1 v2 v3 v4 v5 = du100 v5
du100 ::
  T84 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du100 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v0))) v1)
name102 = "Algebra.Structures.IsMagma._.sym"
d102 :: T84 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d102 v0
  = coe (MAlonzo.Code.Relation.Binary.Core.d416 (coe (d92 (coe v0))))
name104 = "Algebra.Structures.IsMagma._.trans"
d104 ::
  T84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d104 v0
  = coe (MAlonzo.Code.Relation.Binary.Core.d418 (coe (d92 (coe v0))))
name106 = "Algebra.Structures.IsMagma.setoid"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T84 -> MAlonzo.Code.Relation.Binary.T128
d106 v0 v1 v2 v3 v4 v5 = du106 v5
du106 :: T84 -> MAlonzo.Code.Relation.Binary.T128
du106 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1037 v3) erased erased
      (d92 (coe v0))
name108 = "Algebra.Structures.IsMagma.∙-congˡ"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T84 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d108 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du108 v5 v6 v7 v8 v9
du108 :: T84 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du108 v0 v1 v2 v3 v4
  = coe
      d94 v0 v1 v1 v2 v3
      (coe MAlonzo.Code.Relation.Binary.Core.d414 (d92 (coe v0)) v1) v4
name112 = "Algebra.Structures.IsMagma.∙-congʳ"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T84 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d112 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du112 v5 v6 v7 v8 v9
du112 :: T84 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du112 v0 v1 v2 v3 v4
  = coe
      d94 v0 v2 v3 v1 v1 v4
      (coe MAlonzo.Code.Relation.Binary.Core.d414 (d92 (coe v0)) v1)
name118 = "Algebra.Structures.IsSemigroup"
d118 a0 a1 a2 a3 a4 = ()
data T118 = C781 T84 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name126 = "Algebra.Structures.IsSemigroup.isMagma"
d126 :: T118 -> T84
d126 v0
  = case coe v0 of
      C781 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name128 = "Algebra.Structures.IsSemigroup.assoc"
d128 :: T118 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d128 v0
  = case coe v0 of
      C781 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name132 = "Algebra.Structures.IsSemigroup._.isEquivalence"
d132 :: T118 -> MAlonzo.Code.Relation.Binary.Core.T402
d132 v0 = coe (d92 (coe (d126 (coe v0))))
name134 = "Algebra.Structures.IsSemigroup._.refl"
d134 :: T118 -> AgdaAny -> AgdaAny
d134 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe v0))))))
name136 = "Algebra.Structures.IsSemigroup._.reflexive"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T118 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d136 v0 v1 v2 v3 v4 v5 = du136 v5
du136 ::
  T118 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du136 v0
  = let v1 = d126 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v1))) v2)
name138 = "Algebra.Structures.IsSemigroup._.setoid"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T118 -> MAlonzo.Code.Relation.Binary.T128
d138 v0 v1 v2 v3 v4 v5 = du138 v5
du138 :: T118 -> MAlonzo.Code.Relation.Binary.T128
du138 v0 = coe (du106 (coe (d126 (coe v0))))
name140 = "Algebra.Structures.IsSemigroup._.sym"
d140 :: T118 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d140 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe v0))))))
name142 = "Algebra.Structures.IsSemigroup._.trans"
d142 ::
  T118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d142 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe v0))))))
name144 = "Algebra.Structures.IsSemigroup._.∙-cong"
d144 ::
  T118 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d144 v0 = coe (d94 (coe (d126 (coe v0))))
name146 = "Algebra.Structures.IsSemigroup._.∙-congʳ"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T118 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d146 v0 v1 v2 v3 v4 v5 = du146 v5
du146 ::
  T118 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du146 v0 = coe (du112 (coe (d126 (coe v0))))
name148 = "Algebra.Structures.IsSemigroup._.∙-congˡ"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T118 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d148 v0 v1 v2 v3 v4 v5 = du148 v5
du148 ::
  T118 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du148 v0 = coe (du108 (coe (d126 (coe v0))))
name152 = "Algebra.Structures.IsBand"
d152 a0 a1 a2 a3 a4 = ()
data T152 = C1021 T118 (AgdaAny -> AgdaAny)
name160 = "Algebra.Structures.IsBand.isSemigroup"
d160 :: T152 -> T118
d160 v0
  = case coe v0 of
      C1021 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name162 = "Algebra.Structures.IsBand.idem"
d162 :: T152 -> AgdaAny -> AgdaAny
d162 v0
  = case coe v0 of
      C1021 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name166 = "Algebra.Structures.IsBand._.assoc"
d166 :: T152 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d166 v0 = coe (d128 (coe (d160 (coe v0))))
name168 = "Algebra.Structures.IsBand._.isEquivalence"
d168 :: T152 -> MAlonzo.Code.Relation.Binary.Core.T402
d168 v0 = coe (d92 (coe (d126 (coe (d160 (coe v0))))))
name170 = "Algebra.Structures.IsBand._.isMagma"
d170 :: T152 -> T84
d170 v0 = coe (d126 (coe (d160 (coe v0))))
name172 = "Algebra.Structures.IsBand._.refl"
d172 :: T152 -> AgdaAny -> AgdaAny
d172 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d160 (coe v0))))))))
name174 = "Algebra.Structures.IsBand._.reflexive"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T152 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d174 v0 v1 v2 v3 v4 v5 = du174 v5
du174 ::
  T152 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du174 v0
  = let v1 = d160 (coe v0) in
    let v2 = d126 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v2))) v3)
name176 = "Algebra.Structures.IsBand._.setoid"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T152 -> MAlonzo.Code.Relation.Binary.T128
d176 v0 v1 v2 v3 v4 v5 = du176 v5
du176 :: T152 -> MAlonzo.Code.Relation.Binary.T128
du176 v0
  = let v1 = d160 (coe v0) in coe (du106 (coe (d126 (coe v1))))
name178 = "Algebra.Structures.IsBand._.sym"
d178 :: T152 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d178 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d160 (coe v0))))))))
name180 = "Algebra.Structures.IsBand._.trans"
d180 ::
  T152 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d180 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d160 (coe v0))))))))
name182 = "Algebra.Structures.IsBand._.∙-cong"
d182 ::
  T152 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d182 v0 = coe (d94 (coe (d126 (coe (d160 (coe v0))))))
name184 = "Algebra.Structures.IsBand._.∙-congʳ"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T152 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d184 v0 v1 v2 v3 v4 v5 = du184 v5
du184 ::
  T152 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du184 v0
  = let v1 = d160 (coe v0) in coe (du112 (coe (d126 (coe v1))))
name186 = "Algebra.Structures.IsBand._.∙-congˡ"
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
du186 v0
  = let v1 = d160 (coe v0) in coe (du108 (coe (d126 (coe v1))))
name190 = "Algebra.Structures.IsSemilattice"
d190 a0 a1 a2 a3 a4 = ()
data T190 = C1305 T152 (AgdaAny -> AgdaAny -> AgdaAny)
name198 = "Algebra.Structures.IsSemilattice.isBand"
d198 :: T190 -> T152
d198 v0
  = case coe v0 of
      C1305 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name200 = "Algebra.Structures.IsSemilattice.comm"
d200 :: T190 -> AgdaAny -> AgdaAny -> AgdaAny
d200 v0
  = case coe v0 of
      C1305 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name204 = "Algebra.Structures.IsSemilattice._.assoc"
d204 :: T190 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d204 v0 = coe (d128 (coe (d160 (coe (d198 (coe v0))))))
name206 = "Algebra.Structures.IsSemilattice._.idem"
d206 :: T190 -> AgdaAny -> AgdaAny
d206 v0 = coe (d162 (coe (d198 (coe v0))))
name208 = "Algebra.Structures.IsSemilattice._.isEquivalence"
d208 :: T190 -> MAlonzo.Code.Relation.Binary.Core.T402
d208 v0 = coe (d92 (coe (d126 (coe (d160 (coe (d198 (coe v0))))))))
name210 = "Algebra.Structures.IsSemilattice._.isMagma"
d210 :: T190 -> T84
d210 v0 = coe (d126 (coe (d160 (coe (d198 (coe v0))))))
name212 = "Algebra.Structures.IsSemilattice._.isSemigroup"
d212 :: T190 -> T118
d212 v0 = coe (d160 (coe (d198 (coe v0))))
name214 = "Algebra.Structures.IsSemilattice._.refl"
d214 :: T190 -> AgdaAny -> AgdaAny
d214 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d160 (coe (d198 (coe v0))))))))))
name216 = "Algebra.Structures.IsSemilattice._.reflexive"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T190 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d216 v0 v1 v2 v3 v4 v5 = du216 v5
du216 ::
  T190 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du216 v0
  = let v1 = d198 (coe v0) in
    let v2 = d160 (coe v1) in
    let v3 = d126 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v3))) v4)
name218 = "Algebra.Structures.IsSemilattice._.setoid"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T190 -> MAlonzo.Code.Relation.Binary.T128
d218 v0 v1 v2 v3 v4 v5 = du218 v5
du218 :: T190 -> MAlonzo.Code.Relation.Binary.T128
du218 v0
  = let v1 = d198 (coe v0) in
    let v2 = d160 (coe v1) in coe (du106 (coe (d126 (coe v2))))
name220 = "Algebra.Structures.IsSemilattice._.sym"
d220 :: T190 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d220 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d160 (coe (d198 (coe v0))))))))))
name222 = "Algebra.Structures.IsSemilattice._.trans"
d222 ::
  T190 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d222 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d160 (coe (d198 (coe v0))))))))))
name224 = "Algebra.Structures.IsSemilattice._.∙-cong"
d224 ::
  T190 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d224 v0 = coe (d94 (coe (d126 (coe (d160 (coe (d198 (coe v0))))))))
name226 = "Algebra.Structures.IsSemilattice._.∙-congʳ"
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
  = let v1 = d198 (coe v0) in
    let v2 = d160 (coe v1) in coe (du112 (coe (d126 (coe v2))))
name228 = "Algebra.Structures.IsSemilattice._.∙-congˡ"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T190 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d228 v0 v1 v2 v3 v4 v5 = du228 v5
du228 ::
  T190 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du228 v0
  = let v1 = d198 (coe v0) in
    let v2 = d160 (coe v1) in coe (du108 (coe (d126 (coe v2))))
name232 = "Algebra.Structures.IsSelectiveMagma"
d232 a0 a1 a2 a3 a4 = ()
data T232
  = C1633 T84 (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30)
name240 = "Algebra.Structures.IsSelectiveMagma.isMagma"
d240 :: T232 -> T84
d240 v0
  = case coe v0 of
      C1633 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name242 = "Algebra.Structures.IsSelectiveMagma.sel"
d242 ::
  T232 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d242 v0
  = case coe v0 of
      C1633 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name246 = "Algebra.Structures.IsSelectiveMagma._.isEquivalence"
d246 :: T232 -> MAlonzo.Code.Relation.Binary.Core.T402
d246 v0 = coe (d92 (coe (d240 (coe v0))))
name248 = "Algebra.Structures.IsSelectiveMagma._.refl"
d248 :: T232 -> AgdaAny -> AgdaAny
d248 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d240 (coe v0))))))
name250 = "Algebra.Structures.IsSelectiveMagma._.reflexive"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T232 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d250 v0 v1 v2 v3 v4 v5 = du250 v5
du250 ::
  T232 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du250 v0
  = let v1 = d240 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v1))) v2)
name252 = "Algebra.Structures.IsSelectiveMagma._.setoid"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T232 -> MAlonzo.Code.Relation.Binary.T128
d252 v0 v1 v2 v3 v4 v5 = du252 v5
du252 :: T232 -> MAlonzo.Code.Relation.Binary.T128
du252 v0 = coe (du106 (coe (d240 (coe v0))))
name254 = "Algebra.Structures.IsSelectiveMagma._.sym"
d254 :: T232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d254 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d240 (coe v0))))))
name256 = "Algebra.Structures.IsSelectiveMagma._.trans"
d256 ::
  T232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d256 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d240 (coe v0))))))
name258 = "Algebra.Structures.IsSelectiveMagma._.∙-cong"
d258 ::
  T232 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d258 v0 = coe (d94 (coe (d240 (coe v0))))
name260 = "Algebra.Structures.IsSelectiveMagma._.∙-congʳ"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d260 v0 v1 v2 v3 v4 v5 = du260 v5
du260 ::
  T232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du260 v0 = coe (du112 (coe (d240 (coe v0))))
name262 = "Algebra.Structures.IsSelectiveMagma._.∙-congˡ"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d262 v0 v1 v2 v3 v4 v5 = du262 v5
du262 ::
  T232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du262 v0 = coe (du108 (coe (d240 (coe v0))))
name268 = "Algebra.Structures.IsMonoid"
d268 a0 a1 a2 a3 a4 a5 = ()
data T268 = C1873 T118 MAlonzo.Code.Agda.Builtin.Sigma.T14
name278 = "Algebra.Structures.IsMonoid.isSemigroup"
d278 :: T268 -> T118
d278 v0
  = case coe v0 of
      C1873 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name280 = "Algebra.Structures.IsMonoid.identity"
d280 :: T268 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d280 v0
  = case coe v0 of
      C1873 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name284 = "Algebra.Structures.IsMonoid._.assoc"
d284 :: T268 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d284 v0 = coe (d128 (coe (d278 (coe v0))))
name286 = "Algebra.Structures.IsMonoid._.isEquivalence"
d286 :: T268 -> MAlonzo.Code.Relation.Binary.Core.T402
d286 v0 = coe (d92 (coe (d126 (coe (d278 (coe v0))))))
name288 = "Algebra.Structures.IsMonoid._.isMagma"
d288 :: T268 -> T84
d288 v0 = coe (d126 (coe (d278 (coe v0))))
name290 = "Algebra.Structures.IsMonoid._.refl"
d290 :: T268 -> AgdaAny -> AgdaAny
d290 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d278 (coe v0))))))))
name292 = "Algebra.Structures.IsMonoid._.reflexive"
d292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T268 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d292 v0 v1 v2 v3 v4 v5 v6 = du292 v6
du292 ::
  T268 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du292 v0
  = let v1 = d278 (coe v0) in
    let v2 = d126 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v2))) v3)
name294 = "Algebra.Structures.IsMonoid._.setoid"
d294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T268 -> MAlonzo.Code.Relation.Binary.T128
d294 v0 v1 v2 v3 v4 v5 v6 = du294 v6
du294 :: T268 -> MAlonzo.Code.Relation.Binary.T128
du294 v0
  = let v1 = d278 (coe v0) in coe (du106 (coe (d126 (coe v1))))
name296 = "Algebra.Structures.IsMonoid._.sym"
d296 :: T268 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d296 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d278 (coe v0))))))))
name298 = "Algebra.Structures.IsMonoid._.trans"
d298 ::
  T268 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d298 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d278 (coe v0))))))))
name300 = "Algebra.Structures.IsMonoid._.∙-cong"
d300 ::
  T268 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d300 v0 = coe (d94 (coe (d126 (coe (d278 (coe v0))))))
name302 = "Algebra.Structures.IsMonoid._.∙-congʳ"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T268 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d302 v0 v1 v2 v3 v4 v5 v6 = du302 v6
du302 ::
  T268 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du302 v0
  = let v1 = d278 (coe v0) in coe (du112 (coe (d126 (coe v1))))
name304 = "Algebra.Structures.IsMonoid._.∙-congˡ"
d304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T268 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d304 v0 v1 v2 v3 v4 v5 v6 = du304 v6
du304 ::
  T268 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du304 v0
  = let v1 = d278 (coe v0) in coe (du108 (coe (d126 (coe v1))))
name306 = "Algebra.Structures.IsMonoid.identityˡ"
d306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T268 -> AgdaAny -> AgdaAny
d306 v0 v1 v2 v3 v4 v5 v6 = du306 v6
du306 :: T268 -> AgdaAny -> AgdaAny
du306 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v0))))
name308 = "Algebra.Structures.IsMonoid.identityʳ"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T268 -> AgdaAny -> AgdaAny
d308 v0 v1 v2 v3 v4 v5 v6 = du308 v6
du308 :: T268 -> AgdaAny -> AgdaAny
du308 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v0))))
name314 = "Algebra.Structures.IsCommutativeMonoid"
d314 a0 a1 a2 a3 a4 a5 = ()
data T314
  = C2409 T118 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
name326 = "Algebra.Structures.IsCommutativeMonoid.isSemigroup"
d326 :: T314 -> T118
d326 v0
  = case coe v0 of
      C2409 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name328 = "Algebra.Structures.IsCommutativeMonoid.identityˡ"
d328 :: T314 -> AgdaAny -> AgdaAny
d328 v0
  = case coe v0 of
      C2409 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name330 = "Algebra.Structures.IsCommutativeMonoid.comm"
d330 :: T314 -> AgdaAny -> AgdaAny -> AgdaAny
d330 v0
  = case coe v0 of
      C2409 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name334 = "Algebra.Structures.IsCommutativeMonoid._.assoc"
d334 :: T314 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d334 v0 = coe (d128 (coe (d326 (coe v0))))
name336 = "Algebra.Structures.IsCommutativeMonoid._.isEquivalence"
d336 :: T314 -> MAlonzo.Code.Relation.Binary.Core.T402
d336 v0 = coe (d92 (coe (d126 (coe (d326 (coe v0))))))
name338 = "Algebra.Structures.IsCommutativeMonoid._.isMagma"
d338 :: T314 -> T84
d338 v0 = coe (d126 (coe (d326 (coe v0))))
name340 = "Algebra.Structures.IsCommutativeMonoid._.refl"
d340 :: T314 -> AgdaAny -> AgdaAny
d340 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d326 (coe v0))))))))
name342 = "Algebra.Structures.IsCommutativeMonoid._.reflexive"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T314 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d342 v0 v1 v2 v3 v4 v5 v6 = du342 v6
du342 ::
  T314 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du342 v0
  = let v1 = d326 (coe v0) in
    let v2 = d126 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v2))) v3)
name344 = "Algebra.Structures.IsCommutativeMonoid._.setoid"
d344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T314 -> MAlonzo.Code.Relation.Binary.T128
d344 v0 v1 v2 v3 v4 v5 v6 = du344 v6
du344 :: T314 -> MAlonzo.Code.Relation.Binary.T128
du344 v0
  = let v1 = d326 (coe v0) in coe (du106 (coe (d126 (coe v1))))
name346 = "Algebra.Structures.IsCommutativeMonoid._.sym"
d346 :: T314 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d346 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d326 (coe v0))))))))
name348 = "Algebra.Structures.IsCommutativeMonoid._.trans"
d348 ::
  T314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d348 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d326 (coe v0))))))))
name350 = "Algebra.Structures.IsCommutativeMonoid._.∙-cong"
d350 ::
  T314 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d350 v0 = coe (d94 (coe (d126 (coe (d326 (coe v0))))))
name352 = "Algebra.Structures.IsCommutativeMonoid._.∙-congʳ"
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
du352 v0
  = let v1 = d326 (coe v0) in coe (du112 (coe (d126 (coe v1))))
name354 = "Algebra.Structures.IsCommutativeMonoid._.∙-congˡ"
d354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T314 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d354 v0 v1 v2 v3 v4 v5 v6 = du354 v6
du354 ::
  T314 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du354 v0
  = let v1 = d326 (coe v0) in coe (du108 (coe (d126 (coe v1))))
name356 = "Algebra.Structures.IsCommutativeMonoid.identityʳ"
d356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T314 -> AgdaAny -> AgdaAny
d356 v0 v1 v2 v3 v4 v5 v6 = du356 v4 v5 v6
du356 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T314 -> AgdaAny -> AgdaAny
du356 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du170
         (coe (du106 (coe (d126 (coe (d326 (coe v2))))))) (coe v0)
         (coe (d330 (coe v2))) (coe v1) (coe (d328 (coe v2))))
name358 = "Algebra.Structures.IsCommutativeMonoid.identity"
d358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T314 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d358 v0 v1 v2 v3 v4 v5 v6 = du358 v4 v5 v6
du358 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T314 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du358 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (d328 (coe v2))) (coe (du356 (coe v0) (coe v1) (coe v2))))
name360 = "Algebra.Structures.IsCommutativeMonoid.isMonoid"
d360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T314 -> T268
d360 v0 v1 v2 v3 v4 v5 v6 = du360 v4 v5 v6
du360 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T314 -> T268
du360 v0 v1 v2
  = coe
      (C1873
         (coe (d326 (coe v2))) (coe (du358 (coe v0) (coe v1) (coe v2))))
name366 = "Algebra.Structures.IsIdempotentCommutativeMonoid"
d366 a0 a1 a2 a3 a4 a5 = ()
data T366 = C3071 T314 (AgdaAny -> AgdaAny)
name376
  = "Algebra.Structures.IsIdempotentCommutativeMonoid.isCommutativeMonoid"
d376 :: T366 -> T314
d376 v0
  = case coe v0 of
      C3071 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name378 = "Algebra.Structures.IsIdempotentCommutativeMonoid.idem"
d378 :: T366 -> AgdaAny -> AgdaAny
d378 v0
  = case coe v0 of
      C3071 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name382
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.assoc"
d382 :: T366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d382 v0 = coe (d128 (coe (d326 (coe (d376 (coe v0))))))
name384 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.comm"
d384 :: T366 -> AgdaAny -> AgdaAny -> AgdaAny
d384 v0 = coe (d330 (coe (d376 (coe v0))))
name386
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identity"
d386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T366 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d386 v0 v1 v2 v3 v4 v5 v6 = du386 v4 v5 v6
du386 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T366 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du386 v0 v1 v2
  = coe (du358 (coe v0) (coe v1) (coe (d376 (coe v2))))
name388
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identityʳ"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T366 -> AgdaAny -> AgdaAny
d388 v0 v1 v2 v3 v4 v5 v6 = du388 v4 v5 v6
du388 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T366 -> AgdaAny -> AgdaAny
du388 v0 v1 v2
  = coe (du356 (coe v0) (coe v1) (coe (d376 (coe v2))))
name390
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identityˡ"
d390 :: T366 -> AgdaAny -> AgdaAny
d390 v0 = coe (d328 (coe (d376 (coe v0))))
name392
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isEquivalence"
d392 :: T366 -> MAlonzo.Code.Relation.Binary.Core.T402
d392 v0 = coe (d92 (coe (d126 (coe (d326 (coe (d376 (coe v0))))))))
name394
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isMagma"
d394 :: T366 -> T84
d394 v0 = coe (d126 (coe (d326 (coe (d376 (coe v0))))))
name396
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isMonoid"
d396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T366 -> T268
d396 v0 v1 v2 v3 v4 v5 v6 = du396 v4 v5 v6
du396 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T366 -> T268
du396 v0 v1 v2
  = coe (du360 (coe v0) (coe v1) (coe (d376 (coe v2))))
name398
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isSemigroup"
d398 :: T366 -> T118
d398 v0 = coe (d326 (coe (d376 (coe v0))))
name400 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.refl"
d400 :: T366 -> AgdaAny -> AgdaAny
d400 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d326 (coe (d376 (coe v0))))))))))
name402
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.reflexive"
d402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T366 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d402 v0 v1 v2 v3 v4 v5 v6 = du402 v6
du402 ::
  T366 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du402 v0
  = let v1 = d376 (coe v0) in
    let v2 = d326 (coe v1) in
    let v3 = d126 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v3))) v4)
name404
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.setoid"
d404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T366 -> MAlonzo.Code.Relation.Binary.T128
d404 v0 v1 v2 v3 v4 v5 v6 = du404 v6
du404 :: T366 -> MAlonzo.Code.Relation.Binary.T128
du404 v0
  = let v1 = d376 (coe v0) in
    let v2 = d326 (coe v1) in coe (du106 (coe (d126 (coe v2))))
name406 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.sym"
d406 :: T366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d406 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d326 (coe (d376 (coe v0))))))))))
name408
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.trans"
d408 ::
  T366 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d408 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d326 (coe (d376 (coe v0))))))))))
name410
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-cong"
d410 ::
  T366 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d410 v0 = coe (d94 (coe (d126 (coe (d326 (coe (d376 (coe v0))))))))
name412
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-congʳ"
d412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d412 v0 v1 v2 v3 v4 v5 v6 = du412 v6
du412 ::
  T366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du412 v0
  = let v1 = d376 (coe v0) in
    let v2 = d326 (coe v1) in coe (du112 (coe (d126 (coe v2))))
name414
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-congˡ"
d414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d414 v0 v1 v2 v3 v4 v5 v6 = du414 v6
du414 ::
  T366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du414 v0
  = let v1 = d376 (coe v0) in
    let v2 = d326 (coe v1) in coe (du108 (coe (d126 (coe v2))))
name416 = "Algebra.Structures.IsBoundedLattice"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d416 = erased
name426 = "Algebra.Structures.IsBoundedLattice.assoc"
d426 :: T366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d426 v0 = coe (d128 (coe (d326 (coe (d376 (coe v0))))))
name428 = "Algebra.Structures.IsBoundedLattice.comm"
d428 :: T366 -> AgdaAny -> AgdaAny -> AgdaAny
d428 v0 = coe (d330 (coe (d376 (coe v0))))
name430 = "Algebra.Structures.IsBoundedLattice.idem"
d430 :: T366 -> AgdaAny -> AgdaAny
d430 v0 = coe (d378 (coe v0))
name432 = "Algebra.Structures.IsBoundedLattice.identity"
d432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T366 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d432 v0 v1 v2 v3 v4 v5 v6 = du432 v4 v5 v6
du432 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T366 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du432 v0 v1 v2
  = coe (du358 (coe v0) (coe v1) (coe (d376 (coe v2))))
name434 = "Algebra.Structures.IsBoundedLattice.identityʳ"
d434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T366 -> AgdaAny -> AgdaAny
d434 v0 v1 v2 v3 v4 v5 v6 = du434 v4 v5 v6
du434 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T366 -> AgdaAny -> AgdaAny
du434 v0 v1 v2
  = coe (du356 (coe v0) (coe v1) (coe (d376 (coe v2))))
name436 = "Algebra.Structures.IsBoundedLattice.identityˡ"
d436 :: T366 -> AgdaAny -> AgdaAny
d436 v0 = coe (d328 (coe (d376 (coe v0))))
name438 = "Algebra.Structures.IsBoundedLattice.isCommutativeMonoid"
d438 :: T366 -> T314
d438 v0 = coe (d376 (coe v0))
name440 = "Algebra.Structures.IsBoundedLattice.isEquivalence"
d440 :: T366 -> MAlonzo.Code.Relation.Binary.Core.T402
d440 v0 = coe (d92 (coe (d126 (coe (d326 (coe (d376 (coe v0))))))))
name442 = "Algebra.Structures.IsBoundedLattice.isMagma"
d442 :: T366 -> T84
d442 v0 = coe (d126 (coe (d326 (coe (d376 (coe v0))))))
name444 = "Algebra.Structures.IsBoundedLattice.isMonoid"
d444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T366 -> T268
d444 v0 v1 v2 v3 v4 v5 v6 = du444 v4 v5 v6
du444 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T366 -> T268
du444 v0 v1 v2
  = coe (du360 (coe v0) (coe v1) (coe (d376 (coe v2))))
name446 = "Algebra.Structures.IsBoundedLattice.isSemigroup"
d446 :: T366 -> T118
d446 v0 = coe (d326 (coe (d376 (coe v0))))
name448 = "Algebra.Structures.IsBoundedLattice.refl"
d448 :: T366 -> AgdaAny -> AgdaAny
d448 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d326 (coe (d376 (coe v0))))))))))
name450 = "Algebra.Structures.IsBoundedLattice.reflexive"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T366 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d450 v0 v1 v2 v3 v4 v5 v6 = du450 v6
du450 ::
  T366 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du450 v0
  = let v1 = d376 (coe v0) in
    let v2 = d326 (coe v1) in
    let v3 = d126 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v3))) v4)
name452 = "Algebra.Structures.IsBoundedLattice.setoid"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T366 -> MAlonzo.Code.Relation.Binary.T128
d452 v0 v1 v2 v3 v4 v5 v6 = du452 v6
du452 :: T366 -> MAlonzo.Code.Relation.Binary.T128
du452 v0
  = let v1 = d376 (coe v0) in
    let v2 = d326 (coe v1) in coe (du106 (coe (d126 (coe v2))))
name454 = "Algebra.Structures.IsBoundedLattice.sym"
d454 :: T366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d454 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d326 (coe (d376 (coe v0))))))))))
name456 = "Algebra.Structures.IsBoundedLattice.trans"
d456 ::
  T366 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d456 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d326 (coe (d376 (coe v0))))))))))
name458 = "Algebra.Structures.IsBoundedLattice.∙-cong"
d458 ::
  T366 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d458 v0 = coe (d94 (coe (d126 (coe (d326 (coe (d376 (coe v0))))))))
name460 = "Algebra.Structures.IsBoundedLattice.∙-congʳ"
d460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d460 v0 v1 v2 v3 v4 v5 v6 = du460 v6
du460 ::
  T366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du460 v0
  = let v1 = d376 (coe v0) in
    let v2 = d326 (coe v1) in coe (du112 (coe (d126 (coe v2))))
name462 = "Algebra.Structures.IsBoundedLattice.∙-congˡ"
d462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d462 v0 v1 v2 v3 v4 v5 v6 = du462 v6
du462 ::
  T366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du462 v0
  = let v1 = d376 (coe v0) in
    let v2 = d326 (coe v1) in coe (du108 (coe (d126 (coe v2))))
name470 = "Algebra.Structures.IsGroup"
d470 a0 a1 a2 a3 a4 a5 a6 = ()
data T470
  = C3683 T268 MAlonzo.Code.Agda.Builtin.Sigma.T14
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name484 = "Algebra.Structures.IsGroup.isMonoid"
d484 :: T470 -> T268
d484 v0
  = case coe v0 of
      C3683 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name486 = "Algebra.Structures.IsGroup.inverse"
d486 :: T470 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d486 v0
  = case coe v0 of
      C3683 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name488 = "Algebra.Structures.IsGroup.⁻¹-cong"
d488 :: T470 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d488 v0
  = case coe v0 of
      C3683 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name492 = "Algebra.Structures.IsGroup._.assoc"
d492 :: T470 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d492 v0 = coe (d128 (coe (d278 (coe (d484 (coe v0))))))
name494 = "Algebra.Structures.IsGroup._.identity"
d494 :: T470 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d494 v0 = coe (d280 (coe (d484 (coe v0))))
name496 = "Algebra.Structures.IsGroup._.identityʳ"
d496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T470 -> AgdaAny -> AgdaAny
d496 v0 v1 v2 v3 v4 v5 v6 v7 = du496 v7
du496 :: T470 -> AgdaAny -> AgdaAny
du496 v0
  = let v1 = d484 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v1))))
name498 = "Algebra.Structures.IsGroup._.identityˡ"
d498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T470 -> AgdaAny -> AgdaAny
d498 v0 v1 v2 v3 v4 v5 v6 v7 = du498 v7
du498 :: T470 -> AgdaAny -> AgdaAny
du498 v0
  = let v1 = d484 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v1))))
name500 = "Algebra.Structures.IsGroup._.isEquivalence"
d500 :: T470 -> MAlonzo.Code.Relation.Binary.Core.T402
d500 v0 = coe (d92 (coe (d126 (coe (d278 (coe (d484 (coe v0))))))))
name502 = "Algebra.Structures.IsGroup._.isMagma"
d502 :: T470 -> T84
d502 v0 = coe (d126 (coe (d278 (coe (d484 (coe v0))))))
name504 = "Algebra.Structures.IsGroup._.isSemigroup"
d504 :: T470 -> T118
d504 v0 = coe (d278 (coe (d484 (coe v0))))
name506 = "Algebra.Structures.IsGroup._.refl"
d506 :: T470 -> AgdaAny -> AgdaAny
d506 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d278 (coe (d484 (coe v0))))))))))
name508 = "Algebra.Structures.IsGroup._.reflexive"
d508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T470 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d508 v0 v1 v2 v3 v4 v5 v6 v7 = du508 v7
du508 ::
  T470 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du508 v0
  = let v1 = d484 (coe v0) in
    let v2 = d278 (coe v1) in
    let v3 = d126 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v3))) v4)
name510 = "Algebra.Structures.IsGroup._.setoid"
d510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T470 -> MAlonzo.Code.Relation.Binary.T128
d510 v0 v1 v2 v3 v4 v5 v6 v7 = du510 v7
du510 :: T470 -> MAlonzo.Code.Relation.Binary.T128
du510 v0
  = let v1 = d484 (coe v0) in
    let v2 = d278 (coe v1) in coe (du106 (coe (d126 (coe v2))))
name512 = "Algebra.Structures.IsGroup._.sym"
d512 :: T470 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d512 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d278 (coe (d484 (coe v0))))))))))
name514 = "Algebra.Structures.IsGroup._.trans"
d514 ::
  T470 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d514 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d278 (coe (d484 (coe v0))))))))))
name516 = "Algebra.Structures.IsGroup._.∙-cong"
d516 ::
  T470 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d516 v0 = coe (d94 (coe (d126 (coe (d278 (coe (d484 (coe v0))))))))
name518 = "Algebra.Structures.IsGroup._.∙-congʳ"
d518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T470 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d518 v0 v1 v2 v3 v4 v5 v6 v7 = du518 v7
du518 ::
  T470 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du518 v0
  = let v1 = d484 (coe v0) in
    let v2 = d278 (coe v1) in coe (du112 (coe (d126 (coe v2))))
name520 = "Algebra.Structures.IsGroup._.∙-congˡ"
d520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T470 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d520 v0 v1 v2 v3 v4 v5 v6 v7 = du520 v7
du520 ::
  T470 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du520 v0
  = let v1 = d484 (coe v0) in
    let v2 = d278 (coe v1) in coe (du108 (coe (d126 (coe v2))))
name522 = "Algebra.Structures.IsGroup._-_"
d522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T470 -> AgdaAny -> AgdaAny -> AgdaAny
d522 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du522 v4 v6 v8 v9
du522 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du522 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name528 = "Algebra.Structures.IsGroup.inverseˡ"
d528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T470 -> AgdaAny -> AgdaAny
d528 v0 v1 v2 v3 v4 v5 v6 v7 = du528 v7
du528 :: T470 -> AgdaAny -> AgdaAny
du528 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d486 (coe v0))))
name530 = "Algebra.Structures.IsGroup.inverseʳ"
d530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T470 -> AgdaAny -> AgdaAny
d530 v0 v1 v2 v3 v4 v5 v6 v7 = du530 v7
du530 :: T470 -> AgdaAny -> AgdaAny
du530 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d486 (coe v0))))
name536 = "Algebra.Structures.IsGroup.uniqueˡ-⁻¹"
d536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T470 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d536 v0 v1 v2 v3 v4 v5 v6 v7 = du536 v4 v5 v6 v7
du536 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T470 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du536 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du234
         (let v4 = d278 (coe (d484 (coe v3))) in
          coe (du106 (coe (d126 (coe v4)))))
         (coe v0) (coe v2) (coe v1)
         (coe (d94 (coe (d126 (coe (d278 (coe (d484 (coe v3)))))))))
         (coe (d128 (coe (d278 (coe (d484 (coe v3)))))))
         (coe (d280 (coe (d484 (coe v3)))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d486 (coe v3))))))
name542 = "Algebra.Structures.IsGroup.uniqueʳ-⁻¹"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T470 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d542 v0 v1 v2 v3 v4 v5 v6 v7 = du542 v4 v5 v6 v7
du542 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T470 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du542 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du254
         (let v4 = d278 (coe (d484 (coe v3))) in
          coe (du106 (coe (d126 (coe v4)))))
         (coe v0) (coe v2) (coe v1)
         (coe (d94 (coe (d126 (coe (d278 (coe (d484 (coe v3)))))))))
         (coe (d128 (coe (d278 (coe (d484 (coe v3)))))))
         (coe (d280 (coe (d484 (coe v3)))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d486 (coe v3))))))
name550 = "Algebra.Structures.IsAbelianGroup"
d550 a0 a1 a2 a3 a4 a5 a6 = ()
data T550 = C4861 T470 (AgdaAny -> AgdaAny -> AgdaAny)
name562 = "Algebra.Structures.IsAbelianGroup.isGroup"
d562 :: T550 -> T470
d562 v0
  = case coe v0 of
      C4861 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name564 = "Algebra.Structures.IsAbelianGroup.comm"
d564 :: T550 -> AgdaAny -> AgdaAny -> AgdaAny
d564 v0
  = case coe v0 of
      C4861 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name568 = "Algebra.Structures.IsAbelianGroup._._-_"
d568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T550 -> AgdaAny -> AgdaAny -> AgdaAny
d568 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du568 v4 v6 v8 v9
du568 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du568 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name570 = "Algebra.Structures.IsAbelianGroup._.assoc"
d570 :: T550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d570 v0
  = coe (d128 (coe (d278 (coe (d484 (coe (d562 (coe v0))))))))
name572 = "Algebra.Structures.IsAbelianGroup._.identity"
d572 :: T550 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d572 v0 = coe (d280 (coe (d484 (coe (d562 (coe v0))))))
name574 = "Algebra.Structures.IsAbelianGroup._.identityʳ"
d574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T550 -> AgdaAny -> AgdaAny
d574 v0 v1 v2 v3 v4 v5 v6 v7 = du574 v7
du574 :: T550 -> AgdaAny -> AgdaAny
du574 v0
  = let v1 = d562 (coe v0) in
    let v2 = d484 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v2))))
name576 = "Algebra.Structures.IsAbelianGroup._.identityˡ"
d576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T550 -> AgdaAny -> AgdaAny
d576 v0 v1 v2 v3 v4 v5 v6 v7 = du576 v7
du576 :: T550 -> AgdaAny -> AgdaAny
du576 v0
  = let v1 = d562 (coe v0) in
    let v2 = d484 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v2))))
name578 = "Algebra.Structures.IsAbelianGroup._.inverse"
d578 :: T550 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d578 v0 = coe (d486 (coe (d562 (coe v0))))
name580 = "Algebra.Structures.IsAbelianGroup._.inverseʳ"
d580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T550 -> AgdaAny -> AgdaAny
d580 v0 v1 v2 v3 v4 v5 v6 v7 = du580 v7
du580 :: T550 -> AgdaAny -> AgdaAny
du580 v0
  = let v1 = d562 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d486 (coe v1))))
name582 = "Algebra.Structures.IsAbelianGroup._.inverseˡ"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T550 -> AgdaAny -> AgdaAny
d582 v0 v1 v2 v3 v4 v5 v6 v7 = du582 v7
du582 :: T550 -> AgdaAny -> AgdaAny
du582 v0
  = let v1 = d562 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d486 (coe v1))))
name584 = "Algebra.Structures.IsAbelianGroup._.isEquivalence"
d584 :: T550 -> MAlonzo.Code.Relation.Binary.Core.T402
d584 v0
  = coe
      (d92 (coe (d126 (coe (d278 (coe (d484 (coe (d562 (coe v0))))))))))
name586 = "Algebra.Structures.IsAbelianGroup._.isMagma"
d586 :: T550 -> T84
d586 v0
  = coe (d126 (coe (d278 (coe (d484 (coe (d562 (coe v0))))))))
name588 = "Algebra.Structures.IsAbelianGroup._.isMonoid"
d588 :: T550 -> T268
d588 v0 = coe (d484 (coe (d562 (coe v0))))
name590 = "Algebra.Structures.IsAbelianGroup._.isSemigroup"
d590 :: T550 -> T118
d590 v0 = coe (d278 (coe (d484 (coe (d562 (coe v0))))))
name592 = "Algebra.Structures.IsAbelianGroup._.refl"
d592 :: T550 -> AgdaAny -> AgdaAny
d592 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (d92
               (coe (d126 (coe (d278 (coe (d484 (coe (d562 (coe v0))))))))))))
name594 = "Algebra.Structures.IsAbelianGroup._.reflexive"
d594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T550 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d594 v0 v1 v2 v3 v4 v5 v6 v7 = du594 v7
du594 ::
  T550 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du594 v0
  = let v1 = d562 (coe v0) in
    let v2 = d484 (coe v1) in
    let v3 = d278 (coe v2) in
    let v4 = d126 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v4))) v5)
name596 = "Algebra.Structures.IsAbelianGroup._.setoid"
d596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T550 -> MAlonzo.Code.Relation.Binary.T128
d596 v0 v1 v2 v3 v4 v5 v6 v7 = du596 v7
du596 :: T550 -> MAlonzo.Code.Relation.Binary.T128
du596 v0
  = let v1 = d562 (coe v0) in
    let v2 = d484 (coe v1) in
    let v3 = d278 (coe v2) in coe (du106 (coe (d126 (coe v3))))
name598 = "Algebra.Structures.IsAbelianGroup._.sym"
d598 :: T550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d598 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (d92
               (coe (d126 (coe (d278 (coe (d484 (coe (d562 (coe v0))))))))))))
name600 = "Algebra.Structures.IsAbelianGroup._.trans"
d600 ::
  T550 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d600 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (d92
               (coe (d126 (coe (d278 (coe (d484 (coe (d562 (coe v0))))))))))))
name602 = "Algebra.Structures.IsAbelianGroup._.uniqueʳ-⁻¹"
d602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d602 v0 v1 v2 v3 v4 v5 v6 v7 = du602 v4 v5 v6 v7
du602 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du602 v0 v1 v2 v3
  = coe (du542 (coe v0) (coe v1) (coe v2) (coe (d562 (coe v3))))
name604 = "Algebra.Structures.IsAbelianGroup._.uniqueˡ-⁻¹"
d604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d604 v0 v1 v2 v3 v4 v5 v6 v7 = du604 v4 v5 v6 v7
du604 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du604 v0 v1 v2 v3
  = coe (du536 (coe v0) (coe v1) (coe v2) (coe (d562 (coe v3))))
name606 = "Algebra.Structures.IsAbelianGroup._.⁻¹-cong"
d606 :: T550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d606 v0 = coe (d488 (coe (d562 (coe v0))))
name608 = "Algebra.Structures.IsAbelianGroup._.∙-cong"
d608 ::
  T550 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d608 v0
  = coe
      (d94 (coe (d126 (coe (d278 (coe (d484 (coe (d562 (coe v0))))))))))
name610 = "Algebra.Structures.IsAbelianGroup._.∙-congʳ"
d610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d610 v0 v1 v2 v3 v4 v5 v6 v7 = du610 v7
du610 ::
  T550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du610 v0
  = let v1 = d562 (coe v0) in
    let v2 = d484 (coe v1) in
    let v3 = d278 (coe v2) in coe (du112 (coe (d126 (coe v3))))
name612 = "Algebra.Structures.IsAbelianGroup._.∙-congˡ"
d612 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d612 v0 v1 v2 v3 v4 v5 v6 v7 = du612 v7
du612 ::
  T550 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du612 v0
  = let v1 = d562 (coe v0) in
    let v2 = d484 (coe v1) in
    let v3 = d278 (coe v2) in coe (du108 (coe (d126 (coe v3))))
name614 = "Algebra.Structures.IsAbelianGroup.isCommutativeMonoid"
d614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T550 -> T314
d614 v0 v1 v2 v3 v4 v5 v6 v7 = du614 v7
du614 :: T550 -> T314
du614 v0
  = coe
      (C2409
         (coe (d278 (coe (d484 (coe (d562 (coe v0)))))))
         (let v1 = d484 (coe (d562 (coe v0))) in
          coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v1)))))
         (coe (d564 (coe v0))))
name620 = "Algebra.Structures.IsLattice"
d620 a0 a1 a2 a3 a4 a5 = ()
data T620
  = C5667 MAlonzo.Code.Relation.Binary.Core.T402
          (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny ->
           AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny ->
           AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Agda.Builtin.Sigma.T14
name642 = "Algebra.Structures.IsLattice.isEquivalence"
d642 :: T620 -> MAlonzo.Code.Relation.Binary.Core.T402
d642 v0
  = case coe v0 of
      C5667 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name644 = "Algebra.Structures.IsLattice.∨-comm"
d644 :: T620 -> AgdaAny -> AgdaAny -> AgdaAny
d644 v0
  = case coe v0 of
      C5667 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name646 = "Algebra.Structures.IsLattice.∨-assoc"
d646 :: T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d646 v0
  = case coe v0 of
      C5667 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name648 = "Algebra.Structures.IsLattice.∨-cong"
d648 ::
  T620 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d648 v0
  = case coe v0 of
      C5667 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name650 = "Algebra.Structures.IsLattice.∧-comm"
d650 :: T620 -> AgdaAny -> AgdaAny -> AgdaAny
d650 v0
  = case coe v0 of
      C5667 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name652 = "Algebra.Structures.IsLattice.∧-assoc"
d652 :: T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d652 v0
  = case coe v0 of
      C5667 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name654 = "Algebra.Structures.IsLattice.∧-cong"
d654 ::
  T620 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d654 v0
  = case coe v0 of
      C5667 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name656 = "Algebra.Structures.IsLattice.absorptive"
d656 :: T620 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d656 v0
  = case coe v0 of
      C5667 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name660 = "Algebra.Structures.IsLattice._.refl"
d660 :: T620 -> AgdaAny -> AgdaAny
d660 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414 (coe (d642 (coe v0))))
name662 = "Algebra.Structures.IsLattice._.reflexive"
d662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T620 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d662 v0 v1 v2 v3 v4 v5 v6 = du662 v6
du662 ::
  T620 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du662 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d642 (coe v0))) v1)
name664 = "Algebra.Structures.IsLattice._.sym"
d664 :: T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d664 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416 (coe (d642 (coe v0))))
name666 = "Algebra.Structures.IsLattice._.trans"
d666 ::
  T620 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d666 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418 (coe (d642 (coe v0))))
name668 = "Algebra.Structures.IsLattice.∨-absorbs-∧"
d668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T620 -> AgdaAny -> AgdaAny -> AgdaAny
d668 v0 v1 v2 v3 v4 v5 v6 = du668 v6
du668 :: T620 -> AgdaAny -> AgdaAny -> AgdaAny
du668 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d656 (coe v0))))
name670 = "Algebra.Structures.IsLattice.∧-absorbs-∨"
d670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T620 -> AgdaAny -> AgdaAny -> AgdaAny
d670 v0 v1 v2 v3 v4 v5 v6 = du670 v6
du670 :: T620 -> AgdaAny -> AgdaAny -> AgdaAny
du670 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d656 (coe v0))))
name672 = "Algebra.Structures.IsLattice.∧-congˡ"
d672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d672 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du672 v6 v7 v8 v9 v10
du672 ::
  T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du672 v0 v1 v2 v3 v4
  = coe
      d654 v0 v1 v1 v2 v3
      (coe MAlonzo.Code.Relation.Binary.Core.d414 (d642 (coe v0)) v1) v4
name676 = "Algebra.Structures.IsLattice.∧-congʳ"
d676 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d676 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du676 v6 v7 v8 v9 v10
du676 ::
  T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du676 v0 v1 v2 v3 v4
  = coe
      d654 v0 v2 v3 v1 v1 v4
      (coe MAlonzo.Code.Relation.Binary.Core.d414 (d642 (coe v0)) v1)
name680 = "Algebra.Structures.IsLattice.∨-congˡ"
d680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d680 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du680 v6 v7 v8 v9 v10
du680 ::
  T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du680 v0 v1 v2 v3 v4
  = coe
      d648 v0 v1 v1 v2 v3
      (coe MAlonzo.Code.Relation.Binary.Core.d414 (d642 (coe v0)) v1) v4
name684 = "Algebra.Structures.IsLattice.∨-congʳ"
d684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d684 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du684 v6 v7 v8 v9 v10
du684 ::
  T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du684 v0 v1 v2 v3 v4
  = coe
      d648 v0 v2 v3 v1 v1 v4
      (coe MAlonzo.Code.Relation.Binary.Core.d414 (d642 (coe v0)) v1)
name692 = "Algebra.Structures.IsDistributiveLattice"
d692 a0 a1 a2 a3 a4 a5 = ()
data T692 = C6793 T620 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name702 = "Algebra.Structures.IsDistributiveLattice.isLattice"
d702 :: T692 -> T620
d702 v0
  = case coe v0 of
      C6793 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name704 = "Algebra.Structures.IsDistributiveLattice.∨-distribʳ-∧"
d704 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d704 v0
  = case coe v0 of
      C6793 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name708 = "Algebra.Structures.IsDistributiveLattice._.absorptive"
d708 :: T692 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d708 v0 = coe (d656 (coe (d702 (coe v0))))
name710
  = "Algebra.Structures.IsDistributiveLattice._.isEquivalence"
d710 :: T692 -> MAlonzo.Code.Relation.Binary.Core.T402
d710 v0 = coe (d642 (coe (d702 (coe v0))))
name712 = "Algebra.Structures.IsDistributiveLattice._.refl"
d712 :: T692 -> AgdaAny -> AgdaAny
d712 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d642 (coe (d702 (coe v0))))))
name714 = "Algebra.Structures.IsDistributiveLattice._.reflexive"
d714 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T692 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d714 v0 v1 v2 v3 v4 v5 v6 = du714 v6
du714 ::
  T692 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du714 v0
  = let v1 = d702 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d642 (coe v1))) v2)
name716 = "Algebra.Structures.IsDistributiveLattice._.sym"
d716 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d716 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d642 (coe (d702 (coe v0))))))
name718 = "Algebra.Structures.IsDistributiveLattice._.trans"
d718 ::
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d718 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d642 (coe (d702 (coe v0))))))
name720 = "Algebra.Structures.IsDistributiveLattice._.∧-absorbs-∨"
d720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T692 -> AgdaAny -> AgdaAny -> AgdaAny
d720 v0 v1 v2 v3 v4 v5 v6 = du720 v6
du720 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny
du720 v0
  = let v1 = d702 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d656 (coe v1))))
name722 = "Algebra.Structures.IsDistributiveLattice._.∧-assoc"
d722 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d722 v0 = coe (d652 (coe (d702 (coe v0))))
name724 = "Algebra.Structures.IsDistributiveLattice._.∧-comm"
d724 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny
d724 v0 = coe (d650 (coe (d702 (coe v0))))
name726 = "Algebra.Structures.IsDistributiveLattice._.∧-cong"
d726 ::
  T692 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d726 v0 = coe (d654 (coe (d702 (coe v0))))
name728 = "Algebra.Structures.IsDistributiveLattice._.∧-congʳ"
d728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d728 v0 v1 v2 v3 v4 v5 v6 = du728 v6
du728 ::
  T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du728 v0 = coe (du676 (coe (d702 (coe v0))))
name730 = "Algebra.Structures.IsDistributiveLattice._.∧-congˡ"
d730 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d730 v0 v1 v2 v3 v4 v5 v6 = du730 v6
du730 ::
  T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du730 v0 = coe (du672 (coe (d702 (coe v0))))
name732 = "Algebra.Structures.IsDistributiveLattice._.∨-absorbs-∧"
d732 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T692 -> AgdaAny -> AgdaAny -> AgdaAny
d732 v0 v1 v2 v3 v4 v5 v6 = du732 v6
du732 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny
du732 v0
  = let v1 = d702 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d656 (coe v1))))
name734 = "Algebra.Structures.IsDistributiveLattice._.∨-assoc"
d734 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d734 v0 = coe (d646 (coe (d702 (coe v0))))
name736 = "Algebra.Structures.IsDistributiveLattice._.∨-comm"
d736 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny
d736 v0 = coe (d644 (coe (d702 (coe v0))))
name738 = "Algebra.Structures.IsDistributiveLattice._.∨-cong"
d738 ::
  T692 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d738 v0 = coe (d648 (coe (d702 (coe v0))))
name740 = "Algebra.Structures.IsDistributiveLattice._.∨-congʳ"
d740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d740 v0 v1 v2 v3 v4 v5 v6 = du740 v6
du740 ::
  T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du740 v0 = coe (du684 (coe (d702 (coe v0))))
name742 = "Algebra.Structures.IsDistributiveLattice._.∨-congˡ"
d742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d742 v0 v1 v2 v3 v4 v5 v6 = du742 v6
du742 ::
  T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du742 v0 = coe (du680 (coe (d702 (coe v0))))
name744 = "Algebra.Structures.IsDistributiveLattice.∨-∧-distribʳ"
d744 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d744 v0 v1 v2 v3 v4 v5 v6 = du744 v6
du744 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du744 v0 = coe (d704 (coe v0))
name752 = "Algebra.Structures.IsNearSemiring"
d752 a0 a1 a2 a3 a4 a5 a6 = ()
data T752
  = C7285 T268 T118 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny)
name768 = "Algebra.Structures.IsNearSemiring.+-isMonoid"
d768 :: T752 -> T268
d768 v0
  = case coe v0 of
      C7285 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name770 = "Algebra.Structures.IsNearSemiring.*-isSemigroup"
d770 :: T752 -> T118
d770 v0
  = case coe v0 of
      C7285 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name772 = "Algebra.Structures.IsNearSemiring.distribʳ"
d772 :: T752 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d772 v0
  = case coe v0 of
      C7285 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name774 = "Algebra.Structures.IsNearSemiring.zeroˡ"
d774 :: T752 -> AgdaAny -> AgdaAny
d774 v0
  = case coe v0 of
      C7285 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name778 = "Algebra.Structures.IsNearSemiring._.assoc"
d778 :: T752 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d778 v0 = coe (d128 (coe (d278 (coe (d768 (coe v0))))))
name780 = "Algebra.Structures.IsNearSemiring._.∙-cong"
d780 ::
  T752 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d780 v0 = coe (d94 (coe (d126 (coe (d278 (coe (d768 (coe v0))))))))
name782 = "Algebra.Structures.IsNearSemiring._.∙-congʳ"
d782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T752 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d782 v0 v1 v2 v3 v4 v5 v6 v7 = du782 v7
du782 ::
  T752 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du782 v0
  = let v1 = d768 (coe v0) in
    let v2 = d278 (coe v1) in coe (du112 (coe (d126 (coe v2))))
name784 = "Algebra.Structures.IsNearSemiring._.∙-congˡ"
d784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T752 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d784 v0 v1 v2 v3 v4 v5 v6 v7 = du784 v7
du784 ::
  T752 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du784 v0
  = let v1 = d768 (coe v0) in
    let v2 = d278 (coe v1) in coe (du108 (coe (d126 (coe v2))))
name786 = "Algebra.Structures.IsNearSemiring._.identity"
d786 :: T752 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d786 v0 = coe (d280 (coe (d768 (coe v0))))
name788 = "Algebra.Structures.IsNearSemiring._.identityʳ"
d788 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T752 -> AgdaAny -> AgdaAny
d788 v0 v1 v2 v3 v4 v5 v6 v7 = du788 v7
du788 :: T752 -> AgdaAny -> AgdaAny
du788 v0
  = let v1 = d768 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v1))))
name790 = "Algebra.Structures.IsNearSemiring._.identityˡ"
d790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T752 -> AgdaAny -> AgdaAny
d790 v0 v1 v2 v3 v4 v5 v6 v7 = du790 v7
du790 :: T752 -> AgdaAny -> AgdaAny
du790 v0
  = let v1 = d768 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v1))))
name792 = "Algebra.Structures.IsNearSemiring._.isMagma"
d792 :: T752 -> T84
d792 v0 = coe (d126 (coe (d278 (coe (d768 (coe v0))))))
name794 = "Algebra.Structures.IsNearSemiring._.isSemigroup"
d794 :: T752 -> T118
d794 v0 = coe (d278 (coe (d768 (coe v0))))
name796 = "Algebra.Structures.IsNearSemiring._.isEquivalence"
d796 :: T752 -> MAlonzo.Code.Relation.Binary.Core.T402
d796 v0 = coe (d92 (coe (d126 (coe (d278 (coe (d768 (coe v0))))))))
name798 = "Algebra.Structures.IsNearSemiring._.refl"
d798 :: T752 -> AgdaAny -> AgdaAny
d798 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d278 (coe (d768 (coe v0))))))))))
name800 = "Algebra.Structures.IsNearSemiring._.reflexive"
d800 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T752 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d800 v0 v1 v2 v3 v4 v5 v6 v7 = du800 v7
du800 ::
  T752 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du800 v0
  = let v1 = d768 (coe v0) in
    let v2 = d278 (coe v1) in
    let v3 = d126 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v3))) v4)
name802 = "Algebra.Structures.IsNearSemiring._.setoid"
d802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T752 -> MAlonzo.Code.Relation.Binary.T128
d802 v0 v1 v2 v3 v4 v5 v6 v7 = du802 v7
du802 :: T752 -> MAlonzo.Code.Relation.Binary.T128
du802 v0
  = let v1 = d768 (coe v0) in
    let v2 = d278 (coe v1) in coe (du106 (coe (d126 (coe v2))))
name804 = "Algebra.Structures.IsNearSemiring._.sym"
d804 :: T752 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d804 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d278 (coe (d768 (coe v0))))))))))
name806 = "Algebra.Structures.IsNearSemiring._.trans"
d806 ::
  T752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d806 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d278 (coe (d768 (coe v0))))))))))
name810 = "Algebra.Structures.IsNearSemiring._.assoc"
d810 :: T752 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d810 v0 = coe (d128 (coe (d770 (coe v0))))
name812 = "Algebra.Structures.IsNearSemiring._.∙-cong"
d812 ::
  T752 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d812 v0 = coe (d94 (coe (d126 (coe (d770 (coe v0))))))
name814 = "Algebra.Structures.IsNearSemiring._.∙-congʳ"
d814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T752 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d814 v0 v1 v2 v3 v4 v5 v6 v7 = du814 v7
du814 ::
  T752 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du814 v0
  = let v1 = d770 (coe v0) in coe (du112 (coe (d126 (coe v1))))
name816 = "Algebra.Structures.IsNearSemiring._.∙-congˡ"
d816 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T752 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d816 v0 v1 v2 v3 v4 v5 v6 v7 = du816 v7
du816 ::
  T752 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du816 v0
  = let v1 = d770 (coe v0) in coe (du108 (coe (d126 (coe v1))))
name818 = "Algebra.Structures.IsNearSemiring._.isMagma"
d818 :: T752 -> T84
d818 v0 = coe (d126 (coe (d770 (coe v0))))
name826 = "Algebra.Structures.IsSemiringWithoutOne"
d826 a0 a1 a2 a3 a4 a5 a6 = ()
data T826
  = C7939 T314 T118 MAlonzo.Code.Agda.Builtin.Sigma.T14
          MAlonzo.Code.Agda.Builtin.Sigma.T14
name842
  = "Algebra.Structures.IsSemiringWithoutOne.+-isCommutativeMonoid"
d842 :: T826 -> T314
d842 v0
  = case coe v0 of
      C7939 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name844 = "Algebra.Structures.IsSemiringWithoutOne.*-isSemigroup"
d844 :: T826 -> T118
d844 v0
  = case coe v0 of
      C7939 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name846 = "Algebra.Structures.IsSemiringWithoutOne.distrib"
d846 :: T826 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d846 v0
  = case coe v0 of
      C7939 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name848 = "Algebra.Structures.IsSemiringWithoutOne.zero"
d848 :: T826 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d848 v0
  = case coe v0 of
      C7939 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name852 = "Algebra.Structures.IsSemiringWithoutOne._.comm"
d852 :: T826 -> AgdaAny -> AgdaAny -> AgdaAny
d852 v0 = coe (d330 (coe (d842 (coe v0))))
name854 = "Algebra.Structures.IsSemiringWithoutOne._.isMonoid"
d854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T826 -> T268
d854 v0 v1 v2 v3 v4 v5 v6 v7 = du854 v4 v6 v7
du854 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T826 -> T268
du854 v0 v1 v2
  = coe (du360 (coe v0) (coe v1) (coe (d842 (coe v2))))
name856 = "Algebra.Structures.IsSemiringWithoutOne.zeroˡ"
d856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> AgdaAny -> AgdaAny
d856 v0 v1 v2 v3 v4 v5 v6 v7 = du856 v7
du856 :: T826 -> AgdaAny -> AgdaAny
du856 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d848 (coe v0))))
name858 = "Algebra.Structures.IsSemiringWithoutOne.zeroʳ"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> AgdaAny -> AgdaAny
d858 v0 v1 v2 v3 v4 v5 v6 v7 = du858 v7
du858 :: T826 -> AgdaAny -> AgdaAny
du858 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d848 (coe v0))))
name860 = "Algebra.Structures.IsSemiringWithoutOne.isNearSemiring"
d860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T826 -> T752
d860 v0 v1 v2 v3 v4 v5 v6 v7 = du860 v4 v6 v7
du860 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T826 -> T752
du860 v0 v1 v2
  = coe
      (C7285
         (coe (du360 (coe v0) (coe v1) (coe (d842 (coe v2)))))
         (coe (d844 (coe v2)))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d846 (coe v2)))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d848 (coe v2))))))
name864 = "Algebra.Structures.IsSemiringWithoutOne._.assoc"
d864 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d864 v0 v1 v2 v3 v4 v5 v6 v7 = du864 v7
du864 :: T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du864 v0 = coe (d128 (coe (d844 (coe v0))))
name866 = "Algebra.Structures.IsSemiringWithoutOne._.∙-cong"
d866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d866 v0 v1 v2 v3 v4 v5 v6 v7 = du866 v7
du866 ::
  T826 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du866 v0 = coe (d94 (coe (d126 (coe (d844 (coe v0))))))
name868 = "Algebra.Structures.IsSemiringWithoutOne._.∙-congʳ"
d868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d868 v0 v1 v2 v3 v4 v5 v6 v7 = du868 v4 v6 v7
du868 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du868 v0 v1 v2
  = let v3 = du860 (coe v0) (coe v1) (coe v2) in
    let v4 = d770 (coe v3) in coe (du112 (coe (d126 (coe v4))))
name870 = "Algebra.Structures.IsSemiringWithoutOne._.∙-congˡ"
d870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d870 v0 v1 v2 v3 v4 v5 v6 v7 = du870 v4 v6 v7
du870 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du870 v0 v1 v2
  = let v3 = du860 (coe v0) (coe v1) (coe v2) in
    let v4 = d770 (coe v3) in coe (du108 (coe (d126 (coe v4))))
name872 = "Algebra.Structures.IsSemiringWithoutOne._.isMagma"
d872 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T826 -> T84
d872 v0 v1 v2 v3 v4 v5 v6 v7 = du872 v7
du872 :: T826 -> T84
du872 v0 = coe (d126 (coe (d844 (coe v0))))
name874 = "Algebra.Structures.IsSemiringWithoutOne._.*-isSemigroup"
d874 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T826 -> T118
d874 v0 v1 v2 v3 v4 v5 v6 v7 = du874 v7
du874 :: T826 -> T118
du874 v0 = coe (d844 (coe v0))
name876 = "Algebra.Structures.IsSemiringWithoutOne._.assoc"
d876 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d876 v0 v1 v2 v3 v4 v5 v6 v7 = du876 v7
du876 :: T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du876 v0 = coe (d128 (coe (d326 (coe (d842 (coe v0))))))
name878 = "Algebra.Structures.IsSemiringWithoutOne._.∙-cong"
d878 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d878 v0 v1 v2 v3 v4 v5 v6 v7 = du878 v7
du878 ::
  T826 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du878 v0
  = coe (d94 (coe (d126 (coe (d326 (coe (d842 (coe v0))))))))
name880 = "Algebra.Structures.IsSemiringWithoutOne._.∙-congʳ"
d880 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d880 v0 v1 v2 v3 v4 v5 v6 v7 = du880 v4 v6 v7
du880 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du880 v0 v1 v2
  = let v3 = du860 (coe v0) (coe v1) (coe v2) in
    let v4 = d768 (coe v3) in
    let v5 = d278 (coe v4) in coe (du112 (coe (d126 (coe v5))))
name882 = "Algebra.Structures.IsSemiringWithoutOne._.∙-congˡ"
d882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d882 v0 v1 v2 v3 v4 v5 v6 v7 = du882 v4 v6 v7
du882 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du882 v0 v1 v2
  = let v3 = du860 (coe v0) (coe v1) (coe v2) in
    let v4 = d768 (coe v3) in
    let v5 = d278 (coe v4) in coe (du108 (coe (d126 (coe v5))))
name884 = "Algebra.Structures.IsSemiringWithoutOne._.identity"
d884 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d884 v0 v1 v2 v3 v4 v5 v6 v7 = du884 v4 v6 v7
du884 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du884 v0 v1 v2
  = coe (du358 (coe v0) (coe v1) (coe (d842 (coe v2))))
name886 = "Algebra.Structures.IsSemiringWithoutOne._.identityʳ"
d886 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> AgdaAny -> AgdaAny
d886 v0 v1 v2 v3 v4 v5 v6 v7 = du886 v4 v6 v7
du886 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> AgdaAny -> AgdaAny
du886 v0 v1 v2
  = let v3 = du860 (coe v0) (coe v1) (coe v2) in
    let v4 = d768 (coe v3) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v4))))
name888 = "Algebra.Structures.IsSemiringWithoutOne._.identityˡ"
d888 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> AgdaAny -> AgdaAny
d888 v0 v1 v2 v3 v4 v5 v6 v7 = du888 v4 v6 v7
du888 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> AgdaAny -> AgdaAny
du888 v0 v1 v2
  = let v3 = du860 (coe v0) (coe v1) (coe v2) in
    let v4 = d768 (coe v3) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v4))))
name890 = "Algebra.Structures.IsSemiringWithoutOne._.isMagma"
d890 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T826 -> T84
d890 v0 v1 v2 v3 v4 v5 v6 v7 = du890 v7
du890 :: T826 -> T84
du890 v0 = coe (d126 (coe (d326 (coe (d842 (coe v0))))))
name892 = "Algebra.Structures.IsSemiringWithoutOne._.isSemigroup"
d892 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T826 -> T118
d892 v0 v1 v2 v3 v4 v5 v6 v7 = du892 v7
du892 :: T826 -> T118
du892 v0 = coe (d326 (coe (d842 (coe v0))))
name894 = "Algebra.Structures.IsSemiringWithoutOne._.distribʳ"
d894 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d894 v0 v1 v2 v3 v4 v5 v6 v7 = du894 v7
du894 :: T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du894 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d846 (coe v0))))
name896 = "Algebra.Structures.IsSemiringWithoutOne._.isEquivalence"
d896 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> MAlonzo.Code.Relation.Binary.Core.T402
d896 v0 v1 v2 v3 v4 v5 v6 v7 = du896 v7
du896 :: T826 -> MAlonzo.Code.Relation.Binary.Core.T402
du896 v0
  = coe (d92 (coe (d126 (coe (d326 (coe (d842 (coe v0))))))))
name898 = "Algebra.Structures.IsSemiringWithoutOne._.refl"
d898 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> AgdaAny -> AgdaAny
d898 v0 v1 v2 v3 v4 v5 v6 v7 = du898 v7
du898 :: T826 -> AgdaAny -> AgdaAny
du898 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d326 (coe (d842 (coe v0))))))))))
name900 = "Algebra.Structures.IsSemiringWithoutOne._.reflexive"
d900 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d900 v0 v1 v2 v3 v4 v5 v6 v7 = du900 v4 v6 v7
du900 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du900 v0 v1 v2
  = let v3 = du860 (coe v0) (coe v1) (coe v2) in
    let v4 = d768 (coe v3) in
    let v5 = d278 (coe v4) in
    let v6 = d126 (coe v5) in
    coe
      (\ v7 v8 v9 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v6))) v7)
name902 = "Algebra.Structures.IsSemiringWithoutOne._.setoid"
d902 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> MAlonzo.Code.Relation.Binary.T128
d902 v0 v1 v2 v3 v4 v5 v6 v7 = du902 v4 v6 v7
du902 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> MAlonzo.Code.Relation.Binary.T128
du902 v0 v1 v2
  = let v3 = du860 (coe v0) (coe v1) (coe v2) in
    let v4 = d768 (coe v3) in
    let v5 = d278 (coe v4) in coe (du106 (coe (d126 (coe v5))))
name904 = "Algebra.Structures.IsSemiringWithoutOne._.sym"
d904 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d904 v0 v1 v2 v3 v4 v5 v6 v7 = du904 v7
du904 :: T826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du904 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d326 (coe (d842 (coe v0))))))))))
name906 = "Algebra.Structures.IsSemiringWithoutOne._.trans"
d906 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d906 v0 v1 v2 v3 v4 v5 v6 v7 = du906 v7
du906 ::
  T826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du906 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d326 (coe (d842 (coe v0))))))))))
name914 = "Algebra.Structures.IsCommutativeSemiringWithoutOne"
d914 a0 a1 a2 a3 a4 a5 a6 = ()
data T914 = C8849 T826 (AgdaAny -> AgdaAny -> AgdaAny)
name926
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne"
d926 :: T914 -> T826
d926 v0
  = case coe v0 of
      C8849 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name928
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne.*-comm"
d928 :: T914 -> AgdaAny -> AgdaAny -> AgdaAny
d928 v0
  = case coe v0 of
      C8849 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name932
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc"
d932 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d932 v0 v1 v2 v3 v4 v5 v6 v7 = du932 v7
du932 :: T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du932 v0
  = let v1 = d926 (coe v0) in coe (d128 (coe (d844 (coe v1))))
name934
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-cong"
d934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d934 v0 v1 v2 v3 v4 v5 v6 v7 = du934 v7
du934 ::
  T914 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du934 v0
  = let v1 = d926 (coe v0) in
    coe (d94 (coe (d126 (coe (d844 (coe v1))))))
name936
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congʳ"
d936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d936 v0 v1 v2 v3 v4 v5 v6 v7 = du936 v4 v6 v7
du936 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du936 v0 v1 v2
  = let v3 = d926 (coe v2) in
    let v4 = du860 (coe v0) (coe v1) (coe v3) in
    let v5 = d770 (coe v4) in coe (du112 (coe (d126 (coe v5))))
name938
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congˡ"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d938 v0 v1 v2 v3 v4 v5 v6 v7 = du938 v4 v6 v7
du938 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du938 v0 v1 v2
  = let v3 = d926 (coe v2) in
    let v4 = du860 (coe v0) (coe v1) (coe v3) in
    let v5 = d770 (coe v4) in coe (du108 (coe (d126 (coe v5))))
name940
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMagma"
d940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T914 -> T84
d940 v0 v1 v2 v3 v4 v5 v6 v7 = du940 v7
du940 :: T914 -> T84
du940 v0
  = let v1 = d926 (coe v0) in coe (d126 (coe (d844 (coe v1))))
name942
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isSemigroup"
d942 :: T914 -> T118
d942 v0 = coe (d844 (coe (d926 (coe v0))))
name944
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isSemigroup"
d944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T914 -> T118
d944 v0 v1 v2 v3 v4 v5 v6 v7 = du944 v7
du944 :: T914 -> T118
du944 v0 = let v1 = d926 (coe v0) in coe (d844 (coe v1))
name946
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc"
d946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d946 v0 v1 v2 v3 v4 v5 v6 v7 = du946 v7
du946 :: T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du946 v0
  = let v1 = d926 (coe v0) in
    coe (d128 (coe (d326 (coe (d842 (coe v1))))))
name948
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.comm"
d948 :: T914 -> AgdaAny -> AgdaAny -> AgdaAny
d948 v0 = coe (d330 (coe (d842 (coe (d926 (coe v0))))))
name950
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-cong"
d950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d950 v0 v1 v2 v3 v4 v5 v6 v7 = du950 v7
du950 ::
  T914 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du950 v0
  = let v1 = d926 (coe v0) in
    coe (d94 (coe (d126 (coe (d326 (coe (d842 (coe v1))))))))
name952
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congʳ"
d952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d952 v0 v1 v2 v3 v4 v5 v6 v7 = du952 v4 v6 v7
du952 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du952 v0 v1 v2
  = let v3 = d926 (coe v2) in
    let v4 = du860 (coe v0) (coe v1) (coe v3) in
    let v5 = d768 (coe v4) in
    let v6 = d278 (coe v5) in coe (du112 (coe (d126 (coe v6))))
name954
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congˡ"
d954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d954 v0 v1 v2 v3 v4 v5 v6 v7 = du954 v4 v6 v7
du954 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du954 v0 v1 v2
  = let v3 = d926 (coe v2) in
    let v4 = du860 (coe v0) (coe v1) (coe v3) in
    let v5 = d768 (coe v4) in
    let v6 = d278 (coe v5) in coe (du108 (coe (d126 (coe v6))))
name956
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identity"
d956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d956 v0 v1 v2 v3 v4 v5 v6 v7 = du956 v4 v6 v7
du956 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du956 v0 v1 v2
  = let v3 = d926 (coe v2) in
    coe (du358 (coe v0) (coe v1) (coe (d842 (coe v3))))
name958
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identityʳ"
d958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> AgdaAny -> AgdaAny
d958 v0 v1 v2 v3 v4 v5 v6 v7 = du958 v4 v6 v7
du958 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> AgdaAny -> AgdaAny
du958 v0 v1 v2
  = let v3 = d926 (coe v2) in
    let v4 = du860 (coe v0) (coe v1) (coe v3) in
    let v5 = d768 (coe v4) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v5))))
name960
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identityˡ"
d960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> AgdaAny -> AgdaAny
d960 v0 v1 v2 v3 v4 v5 v6 v7 = du960 v4 v6 v7
du960 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> AgdaAny -> AgdaAny
du960 v0 v1 v2
  = let v3 = d926 (coe v2) in
    let v4 = du860 (coe v0) (coe v1) (coe v3) in
    let v5 = d768 (coe v4) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v5))))
name962
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.+-isCommutativeMonoid"
d962 :: T914 -> T314
d962 v0 = coe (d842 (coe (d926 (coe v0))))
name964
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMagma"
d964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T914 -> T84
d964 v0 v1 v2 v3 v4 v5 v6 v7 = du964 v7
du964 :: T914 -> T84
du964 v0
  = let v1 = d926 (coe v0) in
    coe (d126 (coe (d326 (coe (d842 (coe v1))))))
name966
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMonoid"
d966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T914 -> T268
d966 v0 v1 v2 v3 v4 v5 v6 v7 = du966 v4 v6 v7
du966 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T914 -> T268
du966 v0 v1 v2
  = let v3 = d926 (coe v2) in
    coe (du360 (coe v0) (coe v1) (coe (d842 (coe v3))))
name968
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isSemigroup"
d968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T914 -> T118
d968 v0 v1 v2 v3 v4 v5 v6 v7 = du968 v7
du968 :: T914 -> T118
du968 v0
  = let v1 = d926 (coe v0) in coe (d326 (coe (d842 (coe v1))))
name970
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.distrib"
d970 :: T914 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d970 v0 = coe (d846 (coe (d926 (coe v0))))
name972
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.distribʳ"
d972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d972 v0 v1 v2 v3 v4 v5 v6 v7 = du972 v7
du972 :: T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du972 v0
  = let v1 = d926 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d846 (coe v1))))
name974
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isEquivalence"
d974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> MAlonzo.Code.Relation.Binary.Core.T402
d974 v0 v1 v2 v3 v4 v5 v6 v7 = du974 v7
du974 :: T914 -> MAlonzo.Code.Relation.Binary.Core.T402
du974 v0
  = let v1 = d926 (coe v0) in
    coe (d92 (coe (d126 (coe (d326 (coe (d842 (coe v1))))))))
name976
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isNearSemiring"
d976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T914 -> T752
d976 v0 v1 v2 v3 v4 v5 v6 v7 = du976 v4 v6 v7
du976 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T914 -> T752
du976 v0 v1 v2
  = coe (du860 (coe v0) (coe v1) (coe (d926 (coe v2))))
name978
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.refl"
d978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> AgdaAny -> AgdaAny
d978 v0 v1 v2 v3 v4 v5 v6 v7 = du978 v7
du978 :: T914 -> AgdaAny -> AgdaAny
du978 v0
  = let v1 = d926 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d326 (coe (d842 (coe v1))))))))))
name980
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.reflexive"
d980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d980 v0 v1 v2 v3 v4 v5 v6 v7 = du980 v4 v6 v7
du980 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du980 v0 v1 v2
  = let v3 = d926 (coe v2) in
    let v4 = du860 (coe v0) (coe v1) (coe v3) in
    let v5 = d768 (coe v4) in
    let v6 = d278 (coe v5) in
    let v7 = d126 (coe v6) in
    coe
      (\ v8 v9 v10 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v7))) v8)
name982
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.setoid"
d982 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> MAlonzo.Code.Relation.Binary.T128
d982 v0 v1 v2 v3 v4 v5 v6 v7 = du982 v4 v6 v7
du982 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> MAlonzo.Code.Relation.Binary.T128
du982 v0 v1 v2
  = let v3 = d926 (coe v2) in
    let v4 = du860 (coe v0) (coe v1) (coe v3) in
    let v5 = d768 (coe v4) in
    let v6 = d278 (coe v5) in coe (du106 (coe (d126 (coe v6))))
name984
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.sym"
d984 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d984 v0 v1 v2 v3 v4 v5 v6 v7 = du984 v7
du984 :: T914 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du984 v0
  = let v1 = d926 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d326 (coe (d842 (coe v1))))))))))
name986
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.trans"
d986 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T914 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d986 v0 v1 v2 v3 v4 v5 v6 v7 = du986 v7
du986 ::
  T914 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du986 v0
  = let v1 = d926 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d326 (coe (d842 (coe v1))))))))))
name988
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zero"
d988 :: T914 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d988 v0 = coe (d848 (coe (d926 (coe v0))))
name990
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroʳ"
d990 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> AgdaAny -> AgdaAny
d990 v0 v1 v2 v3 v4 v5 v6 v7 = du990 v7
du990 :: T914 -> AgdaAny -> AgdaAny
du990 v0
  = let v1 = d926 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d848 (coe v1))))
name992
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroˡ"
d992 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T914 -> AgdaAny -> AgdaAny
d992 v0 v1 v2 v3 v4 v5 v6 v7 = du992 v7
du992 :: T914 -> AgdaAny -> AgdaAny
du992 v0
  = let v1 = d926 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d848 (coe v1))))
name1002 = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero"
d1002 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1002 = C9521 T314 T268 MAlonzo.Code.Agda.Builtin.Sigma.T14
name1018
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid"
d1018 :: T1002 -> T314
d1018 v0
  = case coe v0 of
      C9521 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1020
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-isMonoid"
d1020 :: T1002 -> T268
d1020 v0
  = case coe v0 of
      C9521 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1022
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distrib"
d1022 :: T1002 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1022 v0
  = case coe v0 of
      C9521 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1024
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribˡ"
d1024 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1024 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1024 v8
du1024 :: T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1024 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d1022 (coe v0))))
name1026
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribʳ"
d1026 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1026 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1026 v8
du1026 :: T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1026 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1022 (coe v0))))
name1030
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc"
d1030 :: T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1030 v0 = coe (d128 (coe (d326 (coe (d1018 (coe v0))))))
name1032
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.comm"
d1032 :: T1002 -> AgdaAny -> AgdaAny -> AgdaAny
d1032 v0 = coe (d330 (coe (d1018 (coe v0))))
name1034
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-cong"
d1034 ::
  T1002 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1034 v0
  = coe (d94 (coe (d126 (coe (d326 (coe (d1018 (coe v0))))))))
name1036
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congʳ"
d1036 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1036 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1036 v8
du1036 ::
  T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1036 v0
  = let v1 = d1018 (coe v0) in
    let v2 = d326 (coe v1) in coe (du112 (coe (d126 (coe v2))))
name1038
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congˡ"
d1038 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1038 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1038 v8
du1038 ::
  T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1038 v0
  = let v1 = d1018 (coe v0) in
    let v2 = d326 (coe v1) in coe (du108 (coe (d126 (coe v2))))
name1040
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity"
d1040 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1002 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1040 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1040 v4 v6 v8
du1040 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1002 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1040 v0 v1 v2
  = coe (du358 (coe v0) (coe v1) (coe (d1018 (coe v2))))
name1042
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ"
d1042 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1002 -> AgdaAny -> AgdaAny
d1042 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1042 v4 v6 v8
du1042 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1002 -> AgdaAny -> AgdaAny
du1042 v0 v1 v2
  = coe (du356 (coe v0) (coe v1) (coe (d1018 (coe v2))))
name1044
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ"
d1044 :: T1002 -> AgdaAny -> AgdaAny
d1044 v0 = coe (d328 (coe (d1018 (coe v0))))
name1046
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMagma"
d1046 :: T1002 -> T84
d1046 v0 = coe (d126 (coe (d326 (coe (d1018 (coe v0))))))
name1048
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMonoid"
d1048 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1002 -> T268
d1048 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1048 v4 v6 v8
du1048 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T1002 -> T268
du1048 v0 v1 v2
  = coe (du360 (coe v0) (coe v1) (coe (d1018 (coe v2))))
name1050
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup"
d1050 :: T1002 -> T118
d1050 v0 = coe (d326 (coe (d1018 (coe v0))))
name1052
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isEquivalence"
d1052 :: T1002 -> MAlonzo.Code.Relation.Binary.Core.T402
d1052 v0
  = coe (d92 (coe (d126 (coe (d326 (coe (d1018 (coe v0))))))))
name1054
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.refl"
d1054 :: T1002 -> AgdaAny -> AgdaAny
d1054 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d326 (coe (d1018 (coe v0))))))))))
name1056
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.reflexive"
d1056 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1002 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1056 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1056 v8
du1056 ::
  T1002 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1056 v0
  = let v1 = d1018 (coe v0) in
    let v2 = d326 (coe v1) in
    let v3 = d126 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v3))) v4)
name1058
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.setoid"
d1058 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1002 -> MAlonzo.Code.Relation.Binary.T128
d1058 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1058 v8
du1058 :: T1002 -> MAlonzo.Code.Relation.Binary.T128
du1058 v0
  = let v1 = d1018 (coe v0) in
    let v2 = d326 (coe v1) in coe (du106 (coe (d126 (coe v2))))
name1060
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.sym"
d1060 :: T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1060 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d326 (coe (d1018 (coe v0))))))))))
name1062
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.trans"
d1062 ::
  T1002 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1062 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d326 (coe (d1018 (coe v0))))))))))
name1066
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc"
d1066 :: T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1066 v0 = coe (d128 (coe (d278 (coe (d1020 (coe v0))))))
name1068
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-cong"
d1068 ::
  T1002 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1068 v0
  = coe (d94 (coe (d126 (coe (d278 (coe (d1020 (coe v0))))))))
name1070
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congʳ"
d1070 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1070 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1070 v8
du1070 ::
  T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1070 v0
  = let v1 = d1020 (coe v0) in
    let v2 = d278 (coe v1) in coe (du112 (coe (d126 (coe v2))))
name1072
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congˡ"
d1072 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1072 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1072 v8
du1072 ::
  T1002 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1072 v0
  = let v1 = d1020 (coe v0) in
    let v2 = d278 (coe v1) in coe (du108 (coe (d126 (coe v2))))
name1074
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity"
d1074 :: T1002 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1074 v0 = coe (d280 (coe (d1020 (coe v0))))
name1076
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ"
d1076 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1002 -> AgdaAny -> AgdaAny
d1076 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1076 v8
du1076 :: T1002 -> AgdaAny -> AgdaAny
du1076 v0
  = let v1 = d1020 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v1))))
name1078
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ"
d1078 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1002 -> AgdaAny -> AgdaAny
d1078 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1078 v8
du1078 :: T1002 -> AgdaAny -> AgdaAny
du1078 v0
  = let v1 = d1020 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v1))))
name1080
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMagma"
d1080 :: T1002 -> T84
d1080 v0 = coe (d126 (coe (d278 (coe (d1020 (coe v0))))))
name1082
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup"
d1082 :: T1002 -> T118
d1082 v0 = coe (d278 (coe (d1020 (coe v0))))
name1092 = "Algebra.Structures.IsSemiring"
d1092 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1092 = C10649 T1002 MAlonzo.Code.Agda.Builtin.Sigma.T14
name1106
  = "Algebra.Structures.IsSemiring.isSemiringWithoutAnnihilatingZero"
d1106 :: T1092 -> T1002
d1106 v0
  = case coe v0 of
      C10649 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1108 = "Algebra.Structures.IsSemiring.zero"
d1108 :: T1092 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1108 v0
  = case coe v0 of
      C10649 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1112 = "Algebra.Structures.IsSemiring._.assoc"
d1112 :: T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1112 v0
  = coe (d128 (coe (d278 (coe (d1020 (coe (d1106 (coe v0))))))))
name1114 = "Algebra.Structures.IsSemiring._.∙-cong"
d1114 ::
  T1092 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1114 v0
  = coe
      (d94
         (coe (d126 (coe (d278 (coe (d1020 (coe (d1106 (coe v0))))))))))
name1116 = "Algebra.Structures.IsSemiring._.∙-congʳ"
d1116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1116 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1116 v8
du1116 ::
  T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1116 v0
  = let v1 = d1106 (coe v0) in
    let v2 = d1020 (coe v1) in
    let v3 = d278 (coe v2) in coe (du112 (coe (d126 (coe v3))))
name1118 = "Algebra.Structures.IsSemiring._.∙-congˡ"
d1118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1118 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1118 v8
du1118 ::
  T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1118 v0
  = let v1 = d1106 (coe v0) in
    let v2 = d1020 (coe v1) in
    let v3 = d278 (coe v2) in coe (du108 (coe (d126 (coe v3))))
name1120 = "Algebra.Structures.IsSemiring._.identity"
d1120 :: T1092 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1120 v0 = coe (d280 (coe (d1020 (coe (d1106 (coe v0))))))
name1122 = "Algebra.Structures.IsSemiring._.identityʳ"
d1122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1092 -> AgdaAny -> AgdaAny
d1122 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1122 v8
du1122 :: T1092 -> AgdaAny -> AgdaAny
du1122 v0
  = let v1 = d1106 (coe v0) in
    let v2 = d1020 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v2))))
name1124 = "Algebra.Structures.IsSemiring._.identityˡ"
d1124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1092 -> AgdaAny -> AgdaAny
d1124 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1124 v8
du1124 :: T1092 -> AgdaAny -> AgdaAny
du1124 v0
  = let v1 = d1106 (coe v0) in
    let v2 = d1020 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v2))))
name1126 = "Algebra.Structures.IsSemiring._.isMagma"
d1126 :: T1092 -> T84
d1126 v0
  = coe (d126 (coe (d278 (coe (d1020 (coe (d1106 (coe v0))))))))
name1128 = "Algebra.Structures.IsSemiring._.*-isMonoid"
d1128 :: T1092 -> T268
d1128 v0 = coe (d1020 (coe (d1106 (coe v0))))
name1130 = "Algebra.Structures.IsSemiring._.isSemigroup"
d1130 :: T1092 -> T118
d1130 v0 = coe (d278 (coe (d1020 (coe (d1106 (coe v0))))))
name1132 = "Algebra.Structures.IsSemiring._.assoc"
d1132 :: T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1132 v0
  = coe (d128 (coe (d326 (coe (d1018 (coe (d1106 (coe v0))))))))
name1134 = "Algebra.Structures.IsSemiring._.comm"
d1134 :: T1092 -> AgdaAny -> AgdaAny -> AgdaAny
d1134 v0 = coe (d330 (coe (d1018 (coe (d1106 (coe v0))))))
name1136 = "Algebra.Structures.IsSemiring._.∙-cong"
d1136 ::
  T1092 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1136 v0
  = coe
      (d94
         (coe (d126 (coe (d326 (coe (d1018 (coe (d1106 (coe v0))))))))))
name1138 = "Algebra.Structures.IsSemiring._.∙-congʳ"
d1138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1138 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1138 v8
du1138 ::
  T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1138 v0
  = let v1 = d1106 (coe v0) in
    let v2 = d1018 (coe v1) in
    let v3 = d326 (coe v2) in coe (du112 (coe (d126 (coe v3))))
name1140 = "Algebra.Structures.IsSemiring._.∙-congˡ"
d1140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1140 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1140 v8
du1140 ::
  T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1140 v0
  = let v1 = d1106 (coe v0) in
    let v2 = d1018 (coe v1) in
    let v3 = d326 (coe v2) in coe (du108 (coe (d126 (coe v3))))
name1142 = "Algebra.Structures.IsSemiring._.identity"
d1142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1092 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1142 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1142 v4 v6 v8
du1142 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1092 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1142 v0 v1 v2
  = let v3 = d1106 (coe v2) in
    coe (du358 (coe v0) (coe v1) (coe (d1018 (coe v3))))
name1144 = "Algebra.Structures.IsSemiring._.identityʳ"
d1144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1092 -> AgdaAny -> AgdaAny
d1144 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1144 v4 v6 v8
du1144 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1092 -> AgdaAny -> AgdaAny
du1144 v0 v1 v2
  = let v3 = d1106 (coe v2) in
    coe (du356 (coe v0) (coe v1) (coe (d1018 (coe v3))))
name1146 = "Algebra.Structures.IsSemiring._.identityˡ"
d1146 :: T1092 -> AgdaAny -> AgdaAny
d1146 v0 = coe (d328 (coe (d1018 (coe (d1106 (coe v0))))))
name1148 = "Algebra.Structures.IsSemiring._.+-isCommutativeMonoid"
d1148 :: T1092 -> T314
d1148 v0 = coe (d1018 (coe (d1106 (coe v0))))
name1150 = "Algebra.Structures.IsSemiring._.isMagma"
d1150 :: T1092 -> T84
d1150 v0
  = coe (d126 (coe (d326 (coe (d1018 (coe (d1106 (coe v0))))))))
name1152 = "Algebra.Structures.IsSemiring._.isMonoid"
d1152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1092 -> T268
d1152 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1152 v4 v6 v8
du1152 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T1092 -> T268
du1152 v0 v1 v2
  = let v3 = d1106 (coe v2) in
    coe (du360 (coe v0) (coe v1) (coe (d1018 (coe v3))))
name1154 = "Algebra.Structures.IsSemiring._.isSemigroup"
d1154 :: T1092 -> T118
d1154 v0 = coe (d326 (coe (d1018 (coe (d1106 (coe v0))))))
name1156 = "Algebra.Structures.IsSemiring._.distrib"
d1156 :: T1092 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1156 v0 = coe (d1022 (coe (d1106 (coe v0))))
name1158 = "Algebra.Structures.IsSemiring._.distribʳ"
d1158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1158 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1158 v8
du1158 :: T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1158 v0
  = let v1 = d1106 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1022 (coe v1))))
name1160 = "Algebra.Structures.IsSemiring._.distribˡ"
d1160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1160 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1160 v8
du1160 :: T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1160 v0
  = let v1 = d1106 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d1022 (coe v1))))
name1162 = "Algebra.Structures.IsSemiring._.isEquivalence"
d1162 :: T1092 -> MAlonzo.Code.Relation.Binary.Core.T402
d1162 v0
  = coe
      (d92
         (coe (d126 (coe (d326 (coe (d1018 (coe (d1106 (coe v0))))))))))
name1164 = "Algebra.Structures.IsSemiring._.refl"
d1164 :: T1092 -> AgdaAny -> AgdaAny
d1164 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (d92
               (coe (d126 (coe (d326 (coe (d1018 (coe (d1106 (coe v0))))))))))))
name1166 = "Algebra.Structures.IsSemiring._.reflexive"
d1166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1092 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1166 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1166 v8
du1166 ::
  T1092 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1166 v0
  = let v1 = d1106 (coe v0) in
    let v2 = d1018 (coe v1) in
    let v3 = d326 (coe v2) in
    let v4 = d126 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v4))) v5)
name1168 = "Algebra.Structures.IsSemiring._.setoid"
d1168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1092 -> MAlonzo.Code.Relation.Binary.T128
d1168 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1168 v8
du1168 :: T1092 -> MAlonzo.Code.Relation.Binary.T128
du1168 v0
  = let v1 = d1106 (coe v0) in
    let v2 = d1018 (coe v1) in
    let v3 = d326 (coe v2) in coe (du106 (coe (d126 (coe v3))))
name1170 = "Algebra.Structures.IsSemiring._.sym"
d1170 :: T1092 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1170 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (d92
               (coe (d126 (coe (d326 (coe (d1018 (coe (d1106 (coe v0))))))))))))
name1172 = "Algebra.Structures.IsSemiring._.trans"
d1172 ::
  T1092 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1172 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (d92
               (coe (d126 (coe (d326 (coe (d1018 (coe (d1106 (coe v0))))))))))))
name1174 = "Algebra.Structures.IsSemiring.isSemiringWithoutOne"
d1174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1092 -> T826
d1174 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1174 v8
du1174 :: T1092 -> T826
du1174 v0
  = coe
      (C7939
         (coe (d1018 (coe (d1106 (coe v0)))))
         (coe (d278 (coe (d1020 (coe (d1106 (coe v0)))))))
         (coe (d1022 (coe (d1106 (coe v0))))) (coe (d1108 (coe v0))))
name1178 = "Algebra.Structures.IsSemiring._.isNearSemiring"
d1178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1092 -> T752
d1178 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1178 v4 v6 v8
du1178 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T1092 -> T752
du1178 v0 v1 v2
  = coe (du860 (coe v0) (coe v1) (coe (du1174 (coe v2))))
name1180 = "Algebra.Structures.IsSemiring._.zeroʳ"
d1180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1092 -> AgdaAny -> AgdaAny
d1180 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1180 v8
du1180 :: T1092 -> AgdaAny -> AgdaAny
du1180 v0
  = let v1 = du1174 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d848 (coe v1))))
name1182 = "Algebra.Structures.IsSemiring._.zeroˡ"
d1182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1092 -> AgdaAny -> AgdaAny
d1182 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1182 v8
du1182 :: T1092 -> AgdaAny -> AgdaAny
du1182 v0
  = let v1 = du1174 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d848 (coe v1))))
name1192 = "Algebra.Structures.IsCommutativeSemiring"
d1192 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1192
  = C11793 T314 T314 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny)
name1210
  = "Algebra.Structures.IsCommutativeSemiring.+-isCommutativeMonoid"
d1210 :: T1192 -> T314
d1210 v0
  = case coe v0 of
      C11793 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1212
  = "Algebra.Structures.IsCommutativeSemiring.*-isCommutativeMonoid"
d1212 :: T1192 -> T314
d1212 v0
  = case coe v0 of
      C11793 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1214 = "Algebra.Structures.IsCommutativeSemiring.distribʳ"
d1214 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1214 v0
  = case coe v0 of
      C11793 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1216 = "Algebra.Structures.IsCommutativeSemiring.zeroˡ"
d1216 :: T1192 -> AgdaAny -> AgdaAny
d1216 v0
  = case coe v0 of
      C11793 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1220 = "Algebra.Structures.IsCommutativeSemiring.+-CM.assoc"
d1220 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1220 v0 = coe (d128 (coe (d326 (coe (d1210 (coe v0))))))
name1222 = "Algebra.Structures.IsCommutativeSemiring.+-CM.comm"
d1222 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny
d1222 v0 = coe (d330 (coe (d1210 (coe v0))))
name1224 = "Algebra.Structures.IsCommutativeSemiring.+-CM.identity"
d1224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1224 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1224 v4 v6 v8
du1224 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1192 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1224 v0 v1 v2
  = coe (du358 (coe v0) (coe v1) (coe (d1210 (coe v2))))
name1226
  = "Algebra.Structures.IsCommutativeSemiring.+-CM.identityʳ"
d1226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> AgdaAny -> AgdaAny
d1226 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1226 v4 v6 v8
du1226 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1192 -> AgdaAny -> AgdaAny
du1226 v0 v1 v2
  = coe (du356 (coe v0) (coe v1) (coe (d1210 (coe v2))))
name1228
  = "Algebra.Structures.IsCommutativeSemiring.+-CM.identityˡ"
d1228 :: T1192 -> AgdaAny -> AgdaAny
d1228 v0 = coe (d328 (coe (d1210 (coe v0))))
name1230
  = "Algebra.Structures.IsCommutativeSemiring.+-CM.isEquivalence"
d1230 :: T1192 -> MAlonzo.Code.Relation.Binary.Core.T402
d1230 v0
  = coe (d92 (coe (d126 (coe (d326 (coe (d1210 (coe v0))))))))
name1232 = "Algebra.Structures.IsCommutativeSemiring.+-CM.isMagma"
d1232 :: T1192 -> T84
d1232 v0 = coe (d126 (coe (d326 (coe (d1210 (coe v0))))))
name1234 = "Algebra.Structures.IsCommutativeSemiring.+-CM.isMonoid"
d1234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T268
d1234 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1234 v4 v6 v8
du1234 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T1192 -> T268
du1234 v0 v1 v2
  = coe (du360 (coe v0) (coe v1) (coe (d1210 (coe v2))))
name1236
  = "Algebra.Structures.IsCommutativeSemiring.+-CM.isSemigroup"
d1236 :: T1192 -> T118
d1236 v0 = coe (d326 (coe (d1210 (coe v0))))
name1238 = "Algebra.Structures.IsCommutativeSemiring.+-CM.refl"
d1238 :: T1192 -> AgdaAny -> AgdaAny
d1238 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d326 (coe (d1210 (coe v0))))))))))
name1240
  = "Algebra.Structures.IsCommutativeSemiring.+-CM.reflexive"
d1240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1240 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1240 v8
du1240 ::
  T1192 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1240 v0
  = let v1 = d1210 (coe v0) in
    let v2 = d326 (coe v1) in
    let v3 = d126 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v3))) v4)
name1242 = "Algebra.Structures.IsCommutativeSemiring.+-CM.setoid"
d1242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> MAlonzo.Code.Relation.Binary.T128
d1242 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1242 v8
du1242 :: T1192 -> MAlonzo.Code.Relation.Binary.T128
du1242 v0
  = let v1 = d1210 (coe v0) in
    let v2 = d326 (coe v1) in coe (du106 (coe (d126 (coe v2))))
name1244 = "Algebra.Structures.IsCommutativeSemiring.+-CM.sym"
d1244 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1244 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d326 (coe (d1210 (coe v0))))))))))
name1246 = "Algebra.Structures.IsCommutativeSemiring.+-CM.trans"
d1246 ::
  T1192 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1246 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d326 (coe (d1210 (coe v0))))))))))
name1248 = "Algebra.Structures.IsCommutativeSemiring.+-CM.∙-cong"
d1248 ::
  T1192 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1248 v0
  = coe (d94 (coe (d126 (coe (d326 (coe (d1210 (coe v0))))))))
name1250 = "Algebra.Structures.IsCommutativeSemiring.+-CM.∙-congʳ"
d1250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1250 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1250 v8
du1250 ::
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1250 v0
  = let v1 = d1210 (coe v0) in
    let v2 = d326 (coe v1) in coe (du112 (coe (d126 (coe v2))))
name1252 = "Algebra.Structures.IsCommutativeSemiring.+-CM.∙-congˡ"
d1252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1252 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1252 v8
du1252 ::
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1252 v0
  = let v1 = d1210 (coe v0) in
    let v2 = d326 (coe v1) in coe (du108 (coe (d126 (coe v2))))
name1256 = "Algebra.Structures.IsCommutativeSemiring.*-CM.assoc"
d1256 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1256 v0 = coe (d128 (coe (d326 (coe (d1212 (coe v0))))))
name1258 = "Algebra.Structures.IsCommutativeSemiring.*-CM.comm"
d1258 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny
d1258 v0 = coe (d330 (coe (d1212 (coe v0))))
name1260 = "Algebra.Structures.IsCommutativeSemiring.*-CM.identity"
d1260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1260 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1260 v5 v7 v8
du1260 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1192 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1260 v0 v1 v2
  = coe (du358 (coe v0) (coe v1) (coe (d1212 (coe v2))))
name1262
  = "Algebra.Structures.IsCommutativeSemiring.*-CM.identityʳ"
d1262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> AgdaAny -> AgdaAny
d1262 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1262 v5 v7 v8
du1262 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1192 -> AgdaAny -> AgdaAny
du1262 v0 v1 v2
  = coe (du356 (coe v0) (coe v1) (coe (d1212 (coe v2))))
name1264
  = "Algebra.Structures.IsCommutativeSemiring.*-CM.identityˡ"
d1264 :: T1192 -> AgdaAny -> AgdaAny
d1264 v0 = coe (d328 (coe (d1212 (coe v0))))
name1266
  = "Algebra.Structures.IsCommutativeSemiring.*-CM.isEquivalence"
d1266 :: T1192 -> MAlonzo.Code.Relation.Binary.Core.T402
d1266 v0
  = coe (d92 (coe (d126 (coe (d326 (coe (d1212 (coe v0))))))))
name1268 = "Algebra.Structures.IsCommutativeSemiring.*-CM.isMagma"
d1268 :: T1192 -> T84
d1268 v0 = coe (d126 (coe (d326 (coe (d1212 (coe v0))))))
name1270 = "Algebra.Structures.IsCommutativeSemiring.*-CM.isMonoid"
d1270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T268
d1270 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1270 v5 v7 v8
du1270 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T1192 -> T268
du1270 v0 v1 v2
  = coe (du360 (coe v0) (coe v1) (coe (d1212 (coe v2))))
name1272
  = "Algebra.Structures.IsCommutativeSemiring.*-CM.isSemigroup"
d1272 :: T1192 -> T118
d1272 v0 = coe (d326 (coe (d1212 (coe v0))))
name1274 = "Algebra.Structures.IsCommutativeSemiring.*-CM.refl"
d1274 :: T1192 -> AgdaAny -> AgdaAny
d1274 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d326 (coe (d1212 (coe v0))))))))))
name1276
  = "Algebra.Structures.IsCommutativeSemiring.*-CM.reflexive"
d1276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1276 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1276 v8
du1276 ::
  T1192 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1276 v0
  = let v1 = d1212 (coe v0) in
    let v2 = d326 (coe v1) in
    let v3 = d126 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v3))) v4)
name1278 = "Algebra.Structures.IsCommutativeSemiring.*-CM.setoid"
d1278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> MAlonzo.Code.Relation.Binary.T128
d1278 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1278 v8
du1278 :: T1192 -> MAlonzo.Code.Relation.Binary.T128
du1278 v0
  = let v1 = d1212 (coe v0) in
    let v2 = d326 (coe v1) in coe (du106 (coe (d126 (coe v2))))
name1280 = "Algebra.Structures.IsCommutativeSemiring.*-CM.sym"
d1280 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1280 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d326 (coe (d1212 (coe v0))))))))))
name1282 = "Algebra.Structures.IsCommutativeSemiring.*-CM.trans"
d1282 ::
  T1192 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1282 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d326 (coe (d1212 (coe v0))))))))))
name1284 = "Algebra.Structures.IsCommutativeSemiring.*-CM.∙-cong"
d1284 ::
  T1192 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1284 v0
  = coe (d94 (coe (d126 (coe (d326 (coe (d1212 (coe v0))))))))
name1286 = "Algebra.Structures.IsCommutativeSemiring.*-CM.∙-congʳ"
d1286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1286 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1286 v8
du1286 ::
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1286 v0
  = let v1 = d1212 (coe v0) in
    let v2 = d326 (coe v1) in coe (du112 (coe (d126 (coe v2))))
name1288 = "Algebra.Structures.IsCommutativeSemiring.*-CM.∙-congˡ"
d1288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1288 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1288 v8
du1288 ::
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1288 v0
  = let v1 = d1212 (coe v0) in
    let v2 = d326 (coe v1) in coe (du108 (coe (d126 (coe v2))))
name1290 = "Algebra.Structures.IsCommutativeSemiring.distribˡ"
d1290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1290 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1290 v4 v5 v8
du1290 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1290 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du292
         (let v3 = d326 (coe (d1210 (coe v2))) in
          coe (du106 (coe (d126 (coe v3)))))
         (coe v1) (coe v0)
         (coe (d94 (coe (d126 (coe (d326 (coe (d1210 (coe v2)))))))))
         (coe (d330 (coe (d1212 (coe v2))))) (coe (d1214 (coe v2))))
name1292 = "Algebra.Structures.IsCommutativeSemiring.distrib"
d1292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1292 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1292 v4 v5 v8
du1292 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1192 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1292 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1290 (coe v0) (coe v1) (coe v2))) (coe (d1214 (coe v2))))
name1294 = "Algebra.Structures.IsCommutativeSemiring.zeroʳ"
d1294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> AgdaAny -> AgdaAny
d1294 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1294 v5 v6 v8
du1294 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1192 -> AgdaAny -> AgdaAny
du1294 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du182
         (let v3 = d326 (coe (d1210 (coe v2))) in
          coe (du106 (coe (d126 (coe v3)))))
         (coe v0) (coe (d330 (coe (d1212 (coe v2))))) (coe v1)
         (coe (d1216 (coe v2))))
name1296 = "Algebra.Structures.IsCommutativeSemiring.zero"
d1296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1296 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1296 v5 v6 v8
du1296 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1192 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1296 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (d1216 (coe v2))) (coe (du1294 (coe v0) (coe v1) (coe v2))))
name1298 = "Algebra.Structures.IsCommutativeSemiring.isSemiring"
d1298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T1092
d1298 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1298 v4 v5 v6 v7 v8
du1298 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T1092
du1298 v0 v1 v2 v3 v4
  = coe
      (C10649
         (coe
            (C9521
               (coe (d1210 (coe v4)))
               (coe (du360 (coe v1) (coe v3) (coe (d1212 (coe v4)))))
               (coe (du1292 (coe v0) (coe v1) (coe v4)))))
         (coe (du1296 (coe v1) (coe v2) (coe v4))))
name1302 = "Algebra.Structures.IsCommutativeSemiring._.assoc"
d1302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1302 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1302 v8
du1302 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1302 v0 = coe (d128 (coe (d326 (coe (d1212 (coe v0))))))
name1304 = "Algebra.Structures.IsCommutativeSemiring._.∙-cong"
d1304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1304 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1304 v8
du1304 ::
  T1192 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1304 v0
  = coe (d94 (coe (d126 (coe (d326 (coe (d1212 (coe v0))))))))
name1306 = "Algebra.Structures.IsCommutativeSemiring._.∙-congʳ"
d1306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1306 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1306 v4 v5 v6 v7 v8
du1306 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1306 v0 v1 v2 v3 v4
  = let v5 = du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    let v7 = d1020 (coe v6) in
    let v8 = d278 (coe v7) in coe (du112 (coe (d126 (coe v8))))
name1308 = "Algebra.Structures.IsCommutativeSemiring._.∙-congˡ"
d1308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1308 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1308 v4 v5 v6 v7 v8
du1308 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1308 v0 v1 v2 v3 v4
  = let v5 = du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    let v7 = d1020 (coe v6) in
    let v8 = d278 (coe v7) in coe (du108 (coe (d126 (coe v8))))
name1310 = "Algebra.Structures.IsCommutativeSemiring._.identity"
d1310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1310 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1310 v5 v7 v8
du1310 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1192 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1310 v0 v1 v2
  = coe (du358 (coe v0) (coe v1) (coe (d1212 (coe v2))))
name1312 = "Algebra.Structures.IsCommutativeSemiring._.identityʳ"
d1312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> AgdaAny -> AgdaAny
d1312 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1312 v4 v5 v6 v7 v8
du1312 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> AgdaAny -> AgdaAny
du1312 v0 v1 v2 v3 v4
  = let v5 = du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    let v7 = d1020 (coe v6) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v7))))
name1314 = "Algebra.Structures.IsCommutativeSemiring._.identityˡ"
d1314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> AgdaAny -> AgdaAny
d1314 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1314 v4 v5 v6 v7 v8
du1314 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> AgdaAny -> AgdaAny
du1314 v0 v1 v2 v3 v4
  = let v5 = du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    let v7 = d1020 (coe v6) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v7))))
name1316 = "Algebra.Structures.IsCommutativeSemiring._.isMagma"
d1316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T84
d1316 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1316 v8
du1316 :: T1192 -> T84
du1316 v0 = coe (d126 (coe (d326 (coe (d1212 (coe v0))))))
name1318 = "Algebra.Structures.IsCommutativeSemiring._.*-isMonoid"
d1318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T268
d1318 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1318 v5 v7 v8
du1318 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T1192 -> T268
du1318 v0 v1 v2
  = coe (du360 (coe v0) (coe v1) (coe (d1212 (coe v2))))
name1320 = "Algebra.Structures.IsCommutativeSemiring._.isSemigroup"
d1320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T118
d1320 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1320 v8
du1320 :: T1192 -> T118
du1320 v0 = coe (d326 (coe (d1212 (coe v0))))
name1322 = "Algebra.Structures.IsCommutativeSemiring._.assoc"
d1322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1322 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1322 v8
du1322 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1322 v0 = coe (d128 (coe (d326 (coe (d1210 (coe v0))))))
name1324 = "Algebra.Structures.IsCommutativeSemiring._.comm"
d1324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> AgdaAny -> AgdaAny -> AgdaAny
d1324 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1324 v8
du1324 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny
du1324 v0 = coe (d330 (coe (d1210 (coe v0))))
name1326 = "Algebra.Structures.IsCommutativeSemiring._.∙-cong"
d1326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1326 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1326 v8
du1326 ::
  T1192 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1326 v0
  = coe (d94 (coe (d126 (coe (d326 (coe (d1210 (coe v0))))))))
name1328 = "Algebra.Structures.IsCommutativeSemiring._.∙-congʳ"
d1328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1328 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1328 v4 v5 v6 v7 v8
du1328 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1328 v0 v1 v2 v3 v4
  = let v5 = du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    let v7 = d1018 (coe v6) in
    let v8 = d326 (coe v7) in coe (du112 (coe (d126 (coe v8))))
name1330 = "Algebra.Structures.IsCommutativeSemiring._.∙-congˡ"
d1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1330 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1330 v4 v5 v6 v7 v8
du1330 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1330 v0 v1 v2 v3 v4
  = let v5 = du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    let v7 = d1018 (coe v6) in
    let v8 = d326 (coe v7) in coe (du108 (coe (d126 (coe v8))))
name1332 = "Algebra.Structures.IsCommutativeSemiring._.identity"
d1332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1332 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1332 v4 v5 v6 v7 v8
du1332 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1332 v0 v1 v2 v3 v4
  = let v5 = du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    coe (du358 (coe v0) (coe v2) (coe (d1018 (coe v6))))
name1334 = "Algebra.Structures.IsCommutativeSemiring._.identityʳ"
d1334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> AgdaAny -> AgdaAny
d1334 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1334 v4 v5 v6 v7 v8
du1334 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> AgdaAny -> AgdaAny
du1334 v0 v1 v2 v3 v4
  = let v5 = du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    coe (du356 (coe v0) (coe v2) (coe (d1018 (coe v6))))
name1336 = "Algebra.Structures.IsCommutativeSemiring._.identityˡ"
d1336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> AgdaAny -> AgdaAny
d1336 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1336 v8
du1336 :: T1192 -> AgdaAny -> AgdaAny
du1336 v0 = coe (d328 (coe (d1210 (coe v0))))
name1338 = "Algebra.Structures.IsCommutativeSemiring._.isMagma"
d1338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T84
d1338 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1338 v8
du1338 :: T1192 -> T84
du1338 v0 = coe (d126 (coe (d326 (coe (d1210 (coe v0))))))
name1340 = "Algebra.Structures.IsCommutativeSemiring._.isMonoid"
d1340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T268
d1340 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1340 v4 v5 v6 v7 v8
du1340 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T268
du1340 v0 v1 v2 v3 v4
  = let v5 = du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    coe (du360 (coe v0) (coe v2) (coe (d1018 (coe v6))))
name1342 = "Algebra.Structures.IsCommutativeSemiring._.isSemigroup"
d1342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T118
d1342 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1342 v8
du1342 :: T1192 -> T118
du1342 v0 = coe (d326 (coe (d1210 (coe v0))))
name1344
  = "Algebra.Structures.IsCommutativeSemiring._.isEquivalence"
d1344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1192 -> MAlonzo.Code.Relation.Binary.Core.T402
d1344 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1344 v8
du1344 :: T1192 -> MAlonzo.Code.Relation.Binary.Core.T402
du1344 v0
  = coe (d92 (coe (d126 (coe (d326 (coe (d1210 (coe v0))))))))
name1346
  = "Algebra.Structures.IsCommutativeSemiring._.isNearSemiring"
d1346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T752
d1346 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1346 v4 v5 v6 v7 v8
du1346 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T752
du1346 v0 v1 v2 v3 v4
  = let v5 = du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe (du860 (coe v0) (coe v2) (coe (du1174 (coe v5))))
name1348
  = "Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutAnnihilatingZero"
d1348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T1002
d1348 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1348 v4 v5 v6 v7 v8
du1348 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T1002
du1348 v0 v1 v2 v3 v4
  = coe
      (d1106 (coe (du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
name1350
  = "Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutOne"
d1350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T826
d1350 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1350 v4 v5 v6 v7 v8
du1350 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T826
du1350 v0 v1 v2 v3 v4
  = coe
      (du1174
         (coe (du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
name1352 = "Algebra.Structures.IsCommutativeSemiring._.refl"
d1352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> AgdaAny -> AgdaAny
d1352 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1352 v8
du1352 :: T1192 -> AgdaAny -> AgdaAny
du1352 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d92 (coe (d126 (coe (d326 (coe (d1210 (coe v0))))))))))
name1354 = "Algebra.Structures.IsCommutativeSemiring._.reflexive"
d1354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1354 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1354 v4 v5 v6 v7 v8
du1354 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1354 v0 v1 v2 v3 v4
  = let v5 = du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    let v7 = d1018 (coe v6) in
    let v8 = d326 (coe v7) in
    let v9 = d126 (coe v8) in
    coe
      (\ v10 v11 v12 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v9))) v10)
name1356 = "Algebra.Structures.IsCommutativeSemiring._.setoid"
d1356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> MAlonzo.Code.Relation.Binary.T128
d1356 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1356 v4 v5 v6 v7 v8
du1356 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> MAlonzo.Code.Relation.Binary.T128
du1356 v0 v1 v2 v3 v4
  = let v5 = du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    let v7 = d1018 (coe v6) in
    let v8 = d326 (coe v7) in coe (du106 (coe (d126 (coe v8))))
name1358 = "Algebra.Structures.IsCommutativeSemiring._.sym"
d1358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1358 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1358 v8
du1358 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1358 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d92 (coe (d126 (coe (d326 (coe (d1210 (coe v0))))))))))
name1360 = "Algebra.Structures.IsCommutativeSemiring._.trans"
d1360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1192 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1360 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1360 v8
du1360 ::
  T1192 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1360 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d92 (coe (d126 (coe (d326 (coe (d1210 (coe v0))))))))))
name1362
  = "Algebra.Structures.IsCommutativeSemiring.isCommutativeSemiringWithoutOne"
d1362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T914
d1362 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1362 v4 v5 v6 v7 v8
du1362 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1192 -> T914
du1362 v0 v1 v2 v3 v4
  = coe
      (C8849
         (coe
            (du1174
               (coe (du1298 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))))
         (coe (d330 (coe (d1212 (coe v4))))))
name1374 = "Algebra.Structures.IsRing"
d1374 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1374 = C14251 T550 T268 MAlonzo.Code.Agda.Builtin.Sigma.T14
name1392 = "Algebra.Structures.IsRing.+-isAbelianGroup"
d1392 :: T1374 -> T550
d1392 v0
  = case coe v0 of
      C14251 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1394 = "Algebra.Structures.IsRing.*-isMonoid"
d1394 :: T1374 -> T268
d1394 v0
  = case coe v0 of
      C14251 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1396 = "Algebra.Structures.IsRing.distrib"
d1396 :: T1374 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1396 v0
  = case coe v0 of
      C14251 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1400 = "Algebra.Structures.IsRing._._-_"
d1400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1374 -> AgdaAny -> AgdaAny -> AgdaAny
d1400 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1400 v4 v6 v10 v11
du1400 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1400 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name1402 = "Algebra.Structures.IsRing._.assoc"
d1402 :: T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1402 v0
  = coe
      (d128
         (coe (d278 (coe (d484 (coe (d562 (coe (d1392 (coe v0))))))))))
name1404 = "Algebra.Structures.IsRing._.comm"
d1404 :: T1374 -> AgdaAny -> AgdaAny -> AgdaAny
d1404 v0 = coe (d564 (coe (d1392 (coe v0))))
name1406 = "Algebra.Structures.IsRing._.∙-cong"
d1406 ::
  T1374 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1406 v0
  = coe
      (d94
         (coe
            (d126
               (coe (d278 (coe (d484 (coe (d562 (coe (d1392 (coe v0))))))))))))
name1408 = "Algebra.Structures.IsRing._.∙-congʳ"
d1408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1408 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1408 v9
du1408 ::
  T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1408 v0
  = let v1 = d1392 (coe v0) in
    let v2 = d562 (coe v1) in
    let v3 = d484 (coe v2) in
    let v4 = d278 (coe v3) in coe (du112 (coe (d126 (coe v4))))
name1410 = "Algebra.Structures.IsRing._.∙-congˡ"
d1410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1410 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1410 v9
du1410 ::
  T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1410 v0
  = let v1 = d1392 (coe v0) in
    let v2 = d562 (coe v1) in
    let v3 = d484 (coe v2) in
    let v4 = d278 (coe v3) in coe (du108 (coe (d126 (coe v4))))
name1412 = "Algebra.Structures.IsRing._.identity"
d1412 :: T1374 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1412 v0
  = coe (d280 (coe (d484 (coe (d562 (coe (d1392 (coe v0))))))))
name1414 = "Algebra.Structures.IsRing._.identityʳ"
d1414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1374 -> AgdaAny -> AgdaAny
d1414 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1414 v9
du1414 :: T1374 -> AgdaAny -> AgdaAny
du1414 v0
  = let v1 = d1392 (coe v0) in
    let v2 = d562 (coe v1) in
    let v3 = d484 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v3))))
name1416 = "Algebra.Structures.IsRing._.identityˡ"
d1416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1374 -> AgdaAny -> AgdaAny
d1416 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1416 v9
du1416 :: T1374 -> AgdaAny -> AgdaAny
du1416 v0
  = let v1 = d1392 (coe v0) in
    let v2 = d562 (coe v1) in
    let v3 = d484 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v3))))
name1418 = "Algebra.Structures.IsRing._.isCommutativeMonoid"
d1418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1374 -> T314
d1418 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1418 v9
du1418 :: T1374 -> T314
du1418 v0 = coe (du614 (coe (d1392 (coe v0))))
name1420 = "Algebra.Structures.IsRing._.isGroup"
d1420 :: T1374 -> T470
d1420 v0 = coe (d562 (coe (d1392 (coe v0))))
name1422 = "Algebra.Structures.IsRing._.isMagma"
d1422 :: T1374 -> T84
d1422 v0
  = coe
      (d126
         (coe (d278 (coe (d484 (coe (d562 (coe (d1392 (coe v0))))))))))
name1424 = "Algebra.Structures.IsRing._.isMonoid"
d1424 :: T1374 -> T268
d1424 v0 = coe (d484 (coe (d562 (coe (d1392 (coe v0))))))
name1426 = "Algebra.Structures.IsRing._.isSemigroup"
d1426 :: T1374 -> T118
d1426 v0
  = coe (d278 (coe (d484 (coe (d562 (coe (d1392 (coe v0))))))))
name1428 = "Algebra.Structures.IsRing._.⁻¹-cong"
d1428 :: T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1428 v0 = coe (d488 (coe (d562 (coe (d1392 (coe v0))))))
name1430 = "Algebra.Structures.IsRing._.inverse"
d1430 :: T1374 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1430 v0 = coe (d486 (coe (d562 (coe (d1392 (coe v0))))))
name1432 = "Algebra.Structures.IsRing._.inverseʳ"
d1432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1374 -> AgdaAny -> AgdaAny
d1432 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1432 v9
du1432 :: T1374 -> AgdaAny -> AgdaAny
du1432 v0
  = let v1 = d1392 (coe v0) in
    let v2 = d562 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d486 (coe v2))))
name1434 = "Algebra.Structures.IsRing._.inverseˡ"
d1434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1374 -> AgdaAny -> AgdaAny
d1434 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1434 v9
du1434 :: T1374 -> AgdaAny -> AgdaAny
du1434 v0
  = let v1 = d1392 (coe v0) in
    let v2 = d562 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d486 (coe v2))))
name1436 = "Algebra.Structures.IsRing._.isEquivalence"
d1436 :: T1374 -> MAlonzo.Code.Relation.Binary.Core.T402
d1436 v0
  = coe
      (d92
         (coe
            (d126
               (coe (d278 (coe (d484 (coe (d562 (coe (d1392 (coe v0))))))))))))
name1438 = "Algebra.Structures.IsRing._.refl"
d1438 :: T1374 -> AgdaAny -> AgdaAny
d1438 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (d92
               (coe
                  (d126
                     (coe (d278 (coe (d484 (coe (d562 (coe (d1392 (coe v0))))))))))))))
name1440 = "Algebra.Structures.IsRing._.reflexive"
d1440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1374 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1440 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1440 v9
du1440 ::
  T1374 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1440 v0
  = let v1 = d1392 (coe v0) in
    let v2 = d562 (coe v1) in
    let v3 = d484 (coe v2) in
    let v4 = d278 (coe v3) in
    let v5 = d126 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v5))) v6)
name1442 = "Algebra.Structures.IsRing._.setoid"
d1442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1374 -> MAlonzo.Code.Relation.Binary.T128
d1442 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1442 v9
du1442 :: T1374 -> MAlonzo.Code.Relation.Binary.T128
du1442 v0
  = let v1 = d1392 (coe v0) in
    let v2 = d562 (coe v1) in
    let v3 = d484 (coe v2) in
    let v4 = d278 (coe v3) in coe (du106 (coe (d126 (coe v4))))
name1444 = "Algebra.Structures.IsRing._.sym"
d1444 :: T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1444 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (d92
               (coe
                  (d126
                     (coe (d278 (coe (d484 (coe (d562 (coe (d1392 (coe v0))))))))))))))
name1446 = "Algebra.Structures.IsRing._.trans"
d1446 ::
  T1374 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1446 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (d92
               (coe
                  (d126
                     (coe (d278 (coe (d484 (coe (d562 (coe (d1392 (coe v0))))))))))))))
name1448 = "Algebra.Structures.IsRing._.uniqueʳ-⁻¹"
d1448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1448 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1448 v4 v6 v7 v9
du1448 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1448 v0 v1 v2 v3
  = let v4 = d1392 (coe v3) in
    coe (du542 (coe v0) (coe v2) (coe v1) (coe (d562 (coe v4))))
name1450 = "Algebra.Structures.IsRing._.uniqueˡ-⁻¹"
d1450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1450 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1450 v4 v6 v7 v9
du1450 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1450 v0 v1 v2 v3
  = let v4 = d1392 (coe v3) in
    coe (du536 (coe v0) (coe v2) (coe v1) (coe (d562 (coe v4))))
name1454 = "Algebra.Structures.IsRing._.assoc"
d1454 :: T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1454 v0 = coe (d128 (coe (d278 (coe (d1394 (coe v0))))))
name1456 = "Algebra.Structures.IsRing._.∙-cong"
d1456 ::
  T1374 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1456 v0
  = coe (d94 (coe (d126 (coe (d278 (coe (d1394 (coe v0))))))))
name1458 = "Algebra.Structures.IsRing._.∙-congʳ"
d1458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1458 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1458 v9
du1458 ::
  T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1458 v0
  = let v1 = d1394 (coe v0) in
    let v2 = d278 (coe v1) in coe (du112 (coe (d126 (coe v2))))
name1460 = "Algebra.Structures.IsRing._.∙-congˡ"
d1460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1460 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1460 v9
du1460 ::
  T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1460 v0
  = let v1 = d1394 (coe v0) in
    let v2 = d278 (coe v1) in coe (du108 (coe (d126 (coe v2))))
name1462 = "Algebra.Structures.IsRing._.identity"
d1462 :: T1374 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1462 v0 = coe (d280 (coe (d1394 (coe v0))))
name1464 = "Algebra.Structures.IsRing._.identityʳ"
d1464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1374 -> AgdaAny -> AgdaAny
d1464 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1464 v9
du1464 :: T1374 -> AgdaAny -> AgdaAny
du1464 v0
  = let v1 = d1394 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v1))))
name1466 = "Algebra.Structures.IsRing._.identityˡ"
d1466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1374 -> AgdaAny -> AgdaAny
d1466 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1466 v9
du1466 :: T1374 -> AgdaAny -> AgdaAny
du1466 v0
  = let v1 = d1394 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v1))))
name1468 = "Algebra.Structures.IsRing._.isMagma"
d1468 :: T1374 -> T84
d1468 v0 = coe (d126 (coe (d278 (coe (d1394 (coe v0))))))
name1470 = "Algebra.Structures.IsRing._.isSemigroup"
d1470 :: T1374 -> T118
d1470 v0 = coe (d278 (coe (d1394 (coe v0))))
name1472 = "Algebra.Structures.IsRing.zeroˡ"
d1472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1374 -> AgdaAny -> AgdaAny
d1472 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1472 v4 v5 v6 v7 v9
du1472 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1374 -> AgdaAny -> AgdaAny
du1472 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du334
         (let v5 = d562 (coe (d1392 (coe v4))) in
          let v6 = d484 (coe v5) in
          let v7 = d278 (coe v6) in coe (du106 (coe (d126 (coe v7)))))
         (coe v0) (coe v1) (coe v2) (coe v3)
         (coe
            (d94
               (coe
                  (d126
                     (coe (d278 (coe (d484 (coe (d562 (coe (d1392 (coe v4)))))))))))))
         (coe (d94 (coe (d126 (coe (d278 (coe (d1394 (coe v4)))))))))
         (coe
            (d128
               (coe (d278 (coe (d484 (coe (d562 (coe (d1392 (coe v4)))))))))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1396 (coe v4)))))
         (let v5 = d562 (coe (d1392 (coe v4))) in
          let v6 = d484 (coe v5) in
          coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v6)))))
         (let v5 = d562 (coe (d1392 (coe v4))) in
          coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d486 (coe v5))))))
name1474 = "Algebra.Structures.IsRing.zeroʳ"
d1474 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1374 -> AgdaAny -> AgdaAny
d1474 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1474 v4 v5 v6 v7 v9
du1474 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1374 -> AgdaAny -> AgdaAny
du1474 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du346
         (let v5 = d562 (coe (d1392 (coe v4))) in
          let v6 = d484 (coe v5) in
          let v7 = d278 (coe v6) in coe (du106 (coe (d126 (coe v7)))))
         (coe v0) (coe v1) (coe v2) (coe v3)
         (coe
            (d94
               (coe
                  (d126
                     (coe (d278 (coe (d484 (coe (d562 (coe (d1392 (coe v4)))))))))))))
         (coe (d94 (coe (d126 (coe (d278 (coe (d1394 (coe v4)))))))))
         (coe
            (d128
               (coe (d278 (coe (d484 (coe (d562 (coe (d1392 (coe v4)))))))))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d1396 (coe v4)))))
         (let v5 = d562 (coe (d1392 (coe v4))) in
          let v6 = d484 (coe v5) in
          coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v6)))))
         (let v5 = d562 (coe (d1392 (coe v4))) in
          coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d486 (coe v5))))))
name1476 = "Algebra.Structures.IsRing.zero"
d1476 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1374 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1476 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1476 v4 v5 v6 v7 v9
du1476 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1374 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1476 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1472 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
         (coe (du1474 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
name1478
  = "Algebra.Structures.IsRing.isSemiringWithoutAnnihilatingZero"
d1478 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1374 -> T1002
d1478 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1478 v9
du1478 :: T1374 -> T1002
du1478 v0
  = coe
      (C9521
         (coe (du614 (coe (d1392 (coe v0))))) (coe (d1394 (coe v0)))
         (coe (d1396 (coe v0))))
name1480 = "Algebra.Structures.IsRing.isSemiring"
d1480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1374 -> T1092
d1480 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1480 v4 v5 v6 v7 v9
du1480 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1374 -> T1092
du1480 v0 v1 v2 v3 v4
  = coe
      (C10649
         (coe (du1478 (coe v4)))
         (coe (du1476 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
name1484 = "Algebra.Structures.IsRing._.distribʳ"
d1484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1484 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1484 v4 v5 v6 v7 v9
du1484 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1484 v0 v1 v2 v3 v4
  = let v5 = du1480 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1022 (coe v6))))
name1486 = "Algebra.Structures.IsRing._.distribˡ"
d1486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1486 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1486 v4 v5 v6 v7 v9
du1486 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1374 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1486 v0 v1 v2 v3 v4
  = let v5 = du1480 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d1106 (coe v5) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d1022 (coe v6))))
name1488 = "Algebra.Structures.IsRing._.isNearSemiring"
d1488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1374 -> T752
d1488 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1488 v4 v5 v6 v7 v9
du1488 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1374 -> T752
du1488 v0 v1 v2 v3 v4
  = let v5 = du1480 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe (du860 (coe v0) (coe v3) (coe (du1174 (coe v5))))
name1490 = "Algebra.Structures.IsRing._.isSemiringWithoutOne"
d1490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1374 -> T826
d1490 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1490 v4 v5 v6 v7 v9
du1490 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1374 -> T826
du1490 v0 v1 v2 v3 v4
  = coe
      (du1174
         (coe (du1480 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
name1502 = "Algebra.Structures.IsCommutativeRing"
d1502 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1502 = C16389 T1374 (AgdaAny -> AgdaAny -> AgdaAny)
name1518 = "Algebra.Structures.IsCommutativeRing.isRing"
d1518 :: T1502 -> T1374
d1518 v0
  = case coe v0 of
      C16389 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1520 = "Algebra.Structures.IsCommutativeRing.*-comm"
d1520 :: T1502 -> AgdaAny -> AgdaAny -> AgdaAny
d1520 v0
  = case coe v0 of
      C16389 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1524 = "Algebra.Structures.IsCommutativeRing._._-_"
d1524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1502 -> AgdaAny -> AgdaAny -> AgdaAny
d1524 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1524 v4 v6 v10 v11
du1524 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1524 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name1526 = "Algebra.Structures.IsCommutativeRing._.assoc"
d1526 :: T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1526 v0
  = coe (d128 (coe (d278 (coe (d1394 (coe (d1518 (coe v0))))))))
name1528 = "Algebra.Structures.IsCommutativeRing._.∙-cong"
d1528 ::
  T1502 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1528 v0
  = coe
      (d94
         (coe (d126 (coe (d278 (coe (d1394 (coe (d1518 (coe v0))))))))))
name1530 = "Algebra.Structures.IsCommutativeRing._.∙-congʳ"
d1530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1530 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1530 v9
du1530 ::
  T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1530 v0
  = let v1 = d1518 (coe v0) in
    let v2 = d1394 (coe v1) in
    let v3 = d278 (coe v2) in coe (du112 (coe (d126 (coe v3))))
name1532 = "Algebra.Structures.IsCommutativeRing._.∙-congˡ"
d1532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1532 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1532 v9
du1532 ::
  T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1532 v0
  = let v1 = d1518 (coe v0) in
    let v2 = d1394 (coe v1) in
    let v3 = d278 (coe v2) in coe (du108 (coe (d126 (coe v3))))
name1534 = "Algebra.Structures.IsCommutativeRing._.identity"
d1534 :: T1502 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1534 v0 = coe (d280 (coe (d1394 (coe (d1518 (coe v0))))))
name1536 = "Algebra.Structures.IsCommutativeRing._.identityʳ"
d1536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1502 -> AgdaAny -> AgdaAny
d1536 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1536 v9
du1536 :: T1502 -> AgdaAny -> AgdaAny
du1536 v0
  = let v1 = d1518 (coe v0) in
    let v2 = d1394 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v2))))
name1538 = "Algebra.Structures.IsCommutativeRing._.identityˡ"
d1538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1502 -> AgdaAny -> AgdaAny
d1538 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1538 v9
du1538 :: T1502 -> AgdaAny -> AgdaAny
du1538 v0
  = let v1 = d1518 (coe v0) in
    let v2 = d1394 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v2))))
name1540 = "Algebra.Structures.IsCommutativeRing._.isMagma"
d1540 :: T1502 -> T84
d1540 v0
  = coe (d126 (coe (d278 (coe (d1394 (coe (d1518 (coe v0))))))))
name1542 = "Algebra.Structures.IsCommutativeRing._.*-isMonoid"
d1542 :: T1502 -> T268
d1542 v0 = coe (d1394 (coe (d1518 (coe v0))))
name1544 = "Algebra.Structures.IsCommutativeRing._.isSemigroup"
d1544 :: T1502 -> T118
d1544 v0 = coe (d278 (coe (d1394 (coe (d1518 (coe v0))))))
name1546 = "Algebra.Structures.IsCommutativeRing._.assoc"
d1546 :: T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1546 v0
  = coe
      (d128
         (coe
            (d278
               (coe (d484 (coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))))))))
name1548 = "Algebra.Structures.IsCommutativeRing._.comm"
d1548 :: T1502 -> AgdaAny -> AgdaAny -> AgdaAny
d1548 v0 = coe (d564 (coe (d1392 (coe (d1518 (coe v0))))))
name1550 = "Algebra.Structures.IsCommutativeRing._.∙-cong"
d1550 ::
  T1502 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1550 v0
  = coe
      (d94
         (coe
            (d126
               (coe
                  (d278
                     (coe (d484 (coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))))))))))
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
  T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1552 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1552 v9
du1552 ::
  T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1552 v0
  = let v1 = d1518 (coe v0) in
    let v2 = d1392 (coe v1) in
    let v3 = d562 (coe v2) in
    let v4 = d484 (coe v3) in
    let v5 = d278 (coe v4) in coe (du112 (coe (d126 (coe v5))))
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
  T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1554 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1554 v9
du1554 ::
  T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1554 v0
  = let v1 = d1518 (coe v0) in
    let v2 = d1392 (coe v1) in
    let v3 = d562 (coe v2) in
    let v4 = d484 (coe v3) in
    let v5 = d278 (coe v4) in coe (du108 (coe (d126 (coe v5))))
name1556 = "Algebra.Structures.IsCommutativeRing._.identity"
d1556 :: T1502 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1556 v0
  = coe
      (d280
         (coe (d484 (coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))))))
name1558 = "Algebra.Structures.IsCommutativeRing._.identityʳ"
d1558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1502 -> AgdaAny -> AgdaAny
d1558 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1558 v9
du1558 :: T1502 -> AgdaAny -> AgdaAny
du1558 v0
  = let v1 = d1518 (coe v0) in
    let v2 = d1392 (coe v1) in
    let v3 = d562 (coe v2) in
    let v4 = d484 (coe v3) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d280 (coe v4))))
name1560 = "Algebra.Structures.IsCommutativeRing._.identityˡ"
d1560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1502 -> AgdaAny -> AgdaAny
d1560 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1560 v9
du1560 :: T1502 -> AgdaAny -> AgdaAny
du1560 v0
  = let v1 = d1518 (coe v0) in
    let v2 = d1392 (coe v1) in
    let v3 = d562 (coe v2) in
    let v4 = d484 (coe v3) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v4))))
name1562
  = "Algebra.Structures.IsCommutativeRing._.+-isAbelianGroup"
d1562 :: T1502 -> T550
d1562 v0 = coe (d1392 (coe (d1518 (coe v0))))
name1564
  = "Algebra.Structures.IsCommutativeRing._.isCommutativeMonoid"
d1564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1502 -> T314
d1564 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1564 v9
du1564 :: T1502 -> T314
du1564 v0
  = let v1 = d1518 (coe v0) in coe (du614 (coe (d1392 (coe v1))))
name1566 = "Algebra.Structures.IsCommutativeRing._.isGroup"
d1566 :: T1502 -> T470
d1566 v0 = coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))
name1568 = "Algebra.Structures.IsCommutativeRing._.isMagma"
d1568 :: T1502 -> T84
d1568 v0
  = coe
      (d126
         (coe
            (d278
               (coe (d484 (coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))))))))
name1570 = "Algebra.Structures.IsCommutativeRing._.isMonoid"
d1570 :: T1502 -> T268
d1570 v0
  = coe (d484 (coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))))
name1572 = "Algebra.Structures.IsCommutativeRing._.isSemigroup"
d1572 :: T1502 -> T118
d1572 v0
  = coe
      (d278
         (coe (d484 (coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))))))
name1574 = "Algebra.Structures.IsCommutativeRing._.⁻¹-cong"
d1574 :: T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1574 v0
  = coe (d488 (coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))))
name1576 = "Algebra.Structures.IsCommutativeRing._.inverse"
d1576 :: T1502 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1576 v0
  = coe (d486 (coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))))
name1578 = "Algebra.Structures.IsCommutativeRing._.inverseʳ"
d1578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1502 -> AgdaAny -> AgdaAny
d1578 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1578 v9
du1578 :: T1502 -> AgdaAny -> AgdaAny
du1578 v0
  = let v1 = d1518 (coe v0) in
    let v2 = d1392 (coe v1) in
    let v3 = d562 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d486 (coe v3))))
name1580 = "Algebra.Structures.IsCommutativeRing._.inverseˡ"
d1580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1502 -> AgdaAny -> AgdaAny
d1580 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1580 v9
du1580 :: T1502 -> AgdaAny -> AgdaAny
du1580 v0
  = let v1 = d1518 (coe v0) in
    let v2 = d1392 (coe v1) in
    let v3 = d562 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d486 (coe v3))))
name1582 = "Algebra.Structures.IsCommutativeRing._.distrib"
d1582 :: T1502 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1582 v0 = coe (d1396 (coe (d1518 (coe v0))))
name1584 = "Algebra.Structures.IsCommutativeRing._.distribʳ"
d1584 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1584 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1584 v4 v5 v6 v7 v9
du1584 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1584 v0 v1 v2 v3 v4
  = let v5 = d1518 (coe v4) in
    let v6 = du1480 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = d1106 (coe v6) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1022 (coe v7))))
name1586 = "Algebra.Structures.IsCommutativeRing._.distribˡ"
d1586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1586 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1586 v4 v5 v6 v7 v9
du1586 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1586 v0 v1 v2 v3 v4
  = let v5 = d1518 (coe v4) in
    let v6 = du1480 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = d1106 (coe v6) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d1022 (coe v7))))
name1588 = "Algebra.Structures.IsCommutativeRing._.isEquivalence"
d1588 :: T1502 -> MAlonzo.Code.Relation.Binary.Core.T402
d1588 v0
  = coe
      (d92
         (coe
            (d126
               (coe
                  (d278
                     (coe (d484 (coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))))))))))
name1590 = "Algebra.Structures.IsCommutativeRing._.isNearSemiring"
d1590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1502 -> T752
d1590 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1590 v4 v5 v6 v7 v9
du1590 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1502 -> T752
du1590 v0 v1 v2 v3 v4
  = let v5 = d1518 (coe v4) in
    let v6 = du1480 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    coe (du860 (coe v0) (coe v3) (coe (du1174 (coe v6))))
name1592 = "Algebra.Structures.IsCommutativeRing._.isSemiring"
d1592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1502 -> T1092
d1592 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1592 v4 v5 v6 v7 v9
du1592 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1502 -> T1092
du1592 v0 v1 v2 v3 v4
  = coe
      (du1480 (coe v0) (coe v1) (coe v2) (coe v3) (coe (d1518 (coe v4))))
name1594
  = "Algebra.Structures.IsCommutativeRing._.isSemiringWithoutAnnihilatingZero"
d1594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1502 -> T1002
d1594 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1594 v9
du1594 :: T1502 -> T1002
du1594 v0 = coe (du1478 (coe (d1518 (coe v0))))
name1596
  = "Algebra.Structures.IsCommutativeRing._.isSemiringWithoutOne"
d1596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1502 -> T826
d1596 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1596 v4 v5 v6 v7 v9
du1596 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1502 -> T826
du1596 v0 v1 v2 v3 v4
  = let v5 = d1518 (coe v4) in
    coe
      (du1174
         (coe (du1480 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))))
name1598 = "Algebra.Structures.IsCommutativeRing._.refl"
d1598 :: T1502 -> AgdaAny -> AgdaAny
d1598 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (d92
               (coe
                  (d126
                     (coe
                        (d278
                           (coe
                              (d484 (coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))))))))))))
name1600 = "Algebra.Structures.IsCommutativeRing._.reflexive"
d1600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1502 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1600 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1600 v9
du1600 ::
  T1502 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1600 v0
  = let v1 = d1518 (coe v0) in
    let v2 = d1392 (coe v1) in
    let v3 = d562 (coe v2) in
    let v4 = d484 (coe v3) in
    let v5 = d278 (coe v4) in
    let v6 = d126 (coe v5) in
    coe
      (\ v7 v8 v9 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d92 (coe v6))) v7)
name1602 = "Algebra.Structures.IsCommutativeRing._.setoid"
d1602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1502 -> MAlonzo.Code.Relation.Binary.T128
d1602 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1602 v9
du1602 :: T1502 -> MAlonzo.Code.Relation.Binary.T128
du1602 v0
  = let v1 = d1518 (coe v0) in
    let v2 = d1392 (coe v1) in
    let v3 = d562 (coe v2) in
    let v4 = d484 (coe v3) in
    let v5 = d278 (coe v4) in coe (du106 (coe (d126 (coe v5))))
name1604 = "Algebra.Structures.IsCommutativeRing._.sym"
d1604 :: T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1604 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (d92
               (coe
                  (d126
                     (coe
                        (d278
                           (coe
                              (d484 (coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))))))))))))
name1606 = "Algebra.Structures.IsCommutativeRing._.trans"
d1606 ::
  T1502 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1606 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (d92
               (coe
                  (d126
                     (coe
                        (d278
                           (coe
                              (d484 (coe (d562 (coe (d1392 (coe (d1518 (coe v0))))))))))))))))
name1608 = "Algebra.Structures.IsCommutativeRing._.uniqueʳ-⁻¹"
d1608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1608 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1608 v4 v6 v7 v9
du1608 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1608 v0 v1 v2 v3
  = let v4 = d1518 (coe v3) in
    let v5 = d1392 (coe v4) in
    coe (du542 (coe v0) (coe v2) (coe v1) (coe (d562 (coe v5))))
name1610 = "Algebra.Structures.IsCommutativeRing._.uniqueˡ-⁻¹"
d1610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1610 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1610 v4 v6 v7 v9
du1610 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1502 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1610 v0 v1 v2 v3
  = let v4 = d1518 (coe v3) in
    let v5 = d1392 (coe v4) in
    coe (du536 (coe v0) (coe v2) (coe v1) (coe (d562 (coe v5))))
name1612 = "Algebra.Structures.IsCommutativeRing._.zero"
d1612 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1502 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1612 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1612 v4 v5 v6 v7 v9
du1612 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1502 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1612 v0 v1 v2 v3 v4
  = coe
      (du1476 (coe v0) (coe v1) (coe v2) (coe v3) (coe (d1518 (coe v4))))
name1614 = "Algebra.Structures.IsCommutativeRing._.zeroʳ"
d1614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1502 -> AgdaAny -> AgdaAny
d1614 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1614 v4 v5 v6 v7 v9
du1614 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1502 -> AgdaAny -> AgdaAny
du1614 v0 v1 v2 v3 v4
  = coe
      (du1474 (coe v0) (coe v1) (coe v2) (coe v3) (coe (d1518 (coe v4))))
name1616 = "Algebra.Structures.IsCommutativeRing._.zeroˡ"
d1616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1502 -> AgdaAny -> AgdaAny
d1616 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1616 v4 v5 v6 v7 v9
du1616 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1502 -> AgdaAny -> AgdaAny
du1616 v0 v1 v2 v3 v4
  = coe
      (du1472 (coe v0) (coe v1) (coe v2) (coe v3) (coe (d1518 (coe v4))))
name1618
  = "Algebra.Structures.IsCommutativeRing.*-isCommutativeMonoid"
d1618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1502 -> T314
d1618 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1618 v9
du1618 :: T1502 -> T314
du1618 v0
  = coe
      (C2409
         (coe (d278 (coe (d1394 (coe (d1518 (coe v0)))))))
         (let v1 = d1394 (coe (d1518 (coe v0))) in
          coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d280 (coe v1)))))
         (coe (d1520 (coe v0))))
name1620
  = "Algebra.Structures.IsCommutativeRing.isCommutativeSemiring"
d1620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1502 -> T1192
d1620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1620 v4 v5 v6 v7 v9
du1620 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1502 -> T1192
du1620 v0 v1 v2 v3 v4
  = coe
      (C11793
         (coe (du614 (coe (d1392 (coe (d1518 (coe v4)))))))
         (coe (du1618 (coe v4)))
         (let v5
                = du1480
                    (coe v0) (coe v1) (coe v2) (coe v3) (coe (d1518 (coe v4))) in
          let v6 = d1106 (coe v5) in
          coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d1022 (coe v6)))))
         (coe
            (du1472
               (coe v0) (coe v1) (coe v2) (coe v3) (coe (d1518 (coe v4))))))
name1624
  = "Algebra.Structures.IsCommutativeRing._.isCommutativeSemiringWithoutOne"
d1624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1502 -> T914
d1624 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1624 v4 v5 v6 v7 v8 v9
du1624 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1502 -> T914
du1624 v0 v1 v2 v3 v4 v5
  = coe
      (du1362
         (coe v0) (coe v1) (coe v3) (coe v4)
         (coe (du1620 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))))
name1636 = "Algebra.Structures.IsBooleanAlgebra"
d1636 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1636
  = C18211 T692 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name1656
  = "Algebra.Structures.IsBooleanAlgebra.isDistributiveLattice"
d1656 :: T1636 -> T692
d1656 v0
  = case coe v0 of
      C18211 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1658 = "Algebra.Structures.IsBooleanAlgebra.∨-complementʳ"
d1658 :: T1636 -> AgdaAny -> AgdaAny
d1658 v0
  = case coe v0 of
      C18211 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1660 = "Algebra.Structures.IsBooleanAlgebra.∧-complementʳ"
d1660 :: T1636 -> AgdaAny -> AgdaAny
d1660 v0
  = case coe v0 of
      C18211 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1662 = "Algebra.Structures.IsBooleanAlgebra.¬-cong"
d1662 :: T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1662 v0
  = case coe v0 of
      C18211 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1666 = "Algebra.Structures.IsBooleanAlgebra._.absorptive"
d1666 :: T1636 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1666 v0 = coe (d656 (coe (d702 (coe (d1656 (coe v0))))))
name1668 = "Algebra.Structures.IsBooleanAlgebra._.isEquivalence"
d1668 :: T1636 -> MAlonzo.Code.Relation.Binary.Core.T402
d1668 v0 = coe (d642 (coe (d702 (coe (d1656 (coe v0))))))
name1670 = "Algebra.Structures.IsBooleanAlgebra._.isLattice"
d1670 :: T1636 -> T620
d1670 v0 = coe (d702 (coe (d1656 (coe v0))))
name1672 = "Algebra.Structures.IsBooleanAlgebra._.refl"
d1672 :: T1636 -> AgdaAny -> AgdaAny
d1672 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d642 (coe (d702 (coe (d1656 (coe v0))))))))
name1674 = "Algebra.Structures.IsBooleanAlgebra._.reflexive"
d1674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1636 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1674 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1674 v9
du1674 ::
  T1636 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1674 v0
  = let v1 = d1656 (coe v0) in
    let v2 = d702 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d642 (coe v2))) v3)
name1676 = "Algebra.Structures.IsBooleanAlgebra._.sym"
d1676 :: T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1676 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d642 (coe (d702 (coe (d1656 (coe v0))))))))
name1678 = "Algebra.Structures.IsBooleanAlgebra._.trans"
d1678 ::
  T1636 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1678 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d642 (coe (d702 (coe (d1656 (coe v0))))))))
name1680 = "Algebra.Structures.IsBooleanAlgebra._.∧-absorbs-∨"
d1680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1636 -> AgdaAny -> AgdaAny -> AgdaAny
d1680 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1680 v9
du1680 :: T1636 -> AgdaAny -> AgdaAny -> AgdaAny
du1680 v0
  = let v1 = d1656 (coe v0) in
    let v2 = d702 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d656 (coe v2))))
name1682 = "Algebra.Structures.IsBooleanAlgebra._.∧-assoc"
d1682 :: T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1682 v0 = coe (d652 (coe (d702 (coe (d1656 (coe v0))))))
name1684 = "Algebra.Structures.IsBooleanAlgebra._.∧-comm"
d1684 :: T1636 -> AgdaAny -> AgdaAny -> AgdaAny
d1684 v0 = coe (d650 (coe (d702 (coe (d1656 (coe v0))))))
name1686 = "Algebra.Structures.IsBooleanAlgebra._.∧-cong"
d1686 ::
  T1636 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1686 v0 = coe (d654 (coe (d702 (coe (d1656 (coe v0))))))
name1688 = "Algebra.Structures.IsBooleanAlgebra._.∧-congʳ"
d1688 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1688 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1688 v9
du1688 ::
  T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1688 v0
  = let v1 = d1656 (coe v0) in coe (du676 (coe (d702 (coe v1))))
name1690 = "Algebra.Structures.IsBooleanAlgebra._.∧-congˡ"
d1690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1690 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1690 v9
du1690 ::
  T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1690 v0
  = let v1 = d1656 (coe v0) in coe (du672 (coe (d702 (coe v1))))
name1692 = "Algebra.Structures.IsBooleanAlgebra._.∨-absorbs-∧"
d1692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1636 -> AgdaAny -> AgdaAny -> AgdaAny
d1692 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1692 v9
du1692 :: T1636 -> AgdaAny -> AgdaAny -> AgdaAny
du1692 v0
  = let v1 = d1656 (coe v0) in
    let v2 = d702 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d656 (coe v2))))
name1694 = "Algebra.Structures.IsBooleanAlgebra._.∨-assoc"
d1694 :: T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1694 v0 = coe (d646 (coe (d702 (coe (d1656 (coe v0))))))
name1696 = "Algebra.Structures.IsBooleanAlgebra._.∨-comm"
d1696 :: T1636 -> AgdaAny -> AgdaAny -> AgdaAny
d1696 v0 = coe (d644 (coe (d702 (coe (d1656 (coe v0))))))
name1698 = "Algebra.Structures.IsBooleanAlgebra._.∨-cong"
d1698 ::
  T1636 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1698 v0 = coe (d648 (coe (d702 (coe (d1656 (coe v0))))))
name1700 = "Algebra.Structures.IsBooleanAlgebra._.∨-congʳ"
d1700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1700 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1700 v9
du1700 ::
  T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1700 v0
  = let v1 = d1656 (coe v0) in coe (du684 (coe (d702 (coe v1))))
name1702 = "Algebra.Structures.IsBooleanAlgebra._.∨-congˡ"
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
  T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1702 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1702 v9
du1702 ::
  T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1702 v0
  = let v1 = d1656 (coe v0) in coe (du680 (coe (d702 (coe v1))))
name1704 = "Algebra.Structures.IsBooleanAlgebra._.∨-distribʳ-∧"
d1704 :: T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1704 v0 = coe (d704 (coe (d1656 (coe v0))))
name1706 = "Algebra.Structures.IsBooleanAlgebra._.∨-∧-distribʳ"
d1706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1706 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1706 v9
du1706 :: T1636 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1706 v0 = coe (du744 (coe (d1656 (coe v0))))
