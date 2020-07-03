{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Construct.NaturalChoice.Max where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Min
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Converse

name80 = "Algebra.Construct.NaturalChoice.Max.Min.x⊓y≈x⇒x≤y"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d80 v0 v1 v2 v3 = du80 v3
du80 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du80 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2306
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name82 = "Algebra.Construct.NaturalChoice.Max.Min.x⊓y≈y⇒y≤x"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d82 v0 v1 v2 v3 = du82 v3
du82 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du82 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2276
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name84 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-assoc"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d84 v0 v1 v2 v3 = du84 v3
du84 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du84 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du1580
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name86 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-band"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T138
d86 v0 v1 v2 v3 = du86 v3
du86 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T138
du86 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2260
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name88 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-comm"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
d88 v0 v1 v2 v3 = du88 v3
du88 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
du88 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du1546
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name90 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-cong"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d90 v0 v1 v2 v3 = du90 v3
du90 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du90 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du1464
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name92 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-idem"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 -> AgdaAny -> AgdaAny
d92 v0 v1 v2 v3 = du92 v3
du92 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 -> AgdaAny -> AgdaAny
du92 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du1448
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name94 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-identity"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d94 v0 v1 v2 v3 = du94 v3
du94 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du94 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2170
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name96 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-identityʳ"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d96 v0 v1 v2 v3 = du96 v3
du96 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du96 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2140
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name98 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-identityˡ"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d98 v0 v1 v2 v3 = du98 v3
du98 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du98 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2110
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name100 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-isBand"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T152
d100 v0 v1 v2 v3 = du100 v3
du100 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T152
du100 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2244
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name102 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-isMagma"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T80
d102 v0 v1 v2 v3 = du102 v3
du102 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T80
du102 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2240
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name104 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-isMonoid"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Structures.T314
d104 v0 v1 v2 v3 = du104 v3
du104 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Structures.T314
du104 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2250
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name106
  = "Algebra.Construct.NaturalChoice.Max.Min.⊓-isSelectiveMagma"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T276
d106 v0 v1 v2 v3 = du106 v3
du106 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T276
du106 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name108 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-isSemigroup"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T116
d108 v0 v1 v2 v3 = du108 v3
du108 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T116
du108 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2242
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name110 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-isSemilattice"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T232
d110 v0 v1 v2 v3 = du110 v3
du110 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T232
du110 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2246
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name112 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-magma"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T30
d112 v0 v1 v2 v3 = du112 v3
du112 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T30
du112 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2256
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name114 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-monoid"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T422
d114 v0 v1 v2 v3 = du114 v3
du114 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T422
du114 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2266
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name116 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-sel"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d116 v0 v1 v2 v3 = du116 v3
du116 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du116 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du1426
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name118
  = "Algebra.Construct.NaturalChoice.Max.Min.⊓-selectiveMagma"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T336
d118 v0 v1 v2 v3 = du118 v3
du118 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T336
du118 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2270
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name120 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-semigroup"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T80
d120 v0 v1 v2 v3 = du120 v3
du120 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T80
du120 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2258
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name122 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-semilattice"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T266
d122 v0 v1 v2 v3 = du122 v3
du122 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T266
du122 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2262
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name124 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-zero"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d124 v0 v1 v2 v3 = du124 v3
du124 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du124 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2236
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name126 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-zeroʳ"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d126 v0 v1 v2 v3 = du126 v3
du126 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du126 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2206
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name128 = "Algebra.Construct.NaturalChoice.Max.Min.⊓-zeroˡ"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d128 v0 v1 v2 v3 = du128 v3
du128 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du128 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2176
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
name130 = "Algebra.Construct.NaturalChoice.Max._⊔_"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
d130 v0 v1 v2 v3 = du130 v3
du130 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
du130 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du1404
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
