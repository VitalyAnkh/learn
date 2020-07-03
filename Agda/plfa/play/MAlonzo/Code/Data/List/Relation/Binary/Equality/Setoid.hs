{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name20 = "Data.List.Relation.Binary.Equality.Setoid._.AllPairs"
d20 a0 a1 a2 a3 = ()
name58 = "Data.List.Relation.Binary.Equality.Setoid._≋_"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d58 = erased
name60 = "Data.List.Relation.Binary.Equality.Setoid.≋-refl"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d60 v0 v1 v2 v3 = du60 v2 v3
du60 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du60 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du196
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d34
         (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)))
      (coe v1)
name62 = "Data.List.Relation.Binary.Equality.Setoid.≋-reflexive"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d62 v0 v1 v2 v3 v4 v5 = du62 v2 v3
du62 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du62 v0 v1 = coe du60 (coe v0) (coe v1)
name64 = "Data.List.Relation.Binary.Equality.Setoid.≋-sym"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d64 v0 v1 v2 v3 v4 = du64 v2 v3 v4
du64 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du64 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du210
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d36
         (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)))
      (coe v1) (coe v2)
name66 = "Data.List.Relation.Binary.Equality.Setoid.≋-trans"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d66 v0 v1 v2 v3 v4 v5 = du66 v2 v3 v4 v5
du66 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du66 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du226
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d38
         (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)))
      (coe v1) (coe v2) (coe v3)
name68
  = "Data.List.Relation.Binary.Equality.Setoid.≋-isEquivalence"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
d68 v0 v1 v2 = du68 v2
du68 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
du68 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du338
      (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))
name70 = "Data.List.Relation.Binary.Equality.Setoid.≋-setoid"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d70 v0 v1 v2 = du70 v2
du70 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
du70 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du472 (coe v0)
name72 = "Data.List.Relation.Binary.Equality.Setoid.Unique-resp-≋"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
d72 v0 v1 v2 v3 v4 = du72 v2 v3 v4
du72 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
du72 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du548
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe
            (\ v3 v4 v5 v6 v7 v8 ->
               coe
                 v7
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d38
                    (MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) v3 v5 v4 v8
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d36
                       (MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) v4 v5 v6))))
         (coe
            (\ v3 v4 v5 v6 v7 v8 ->
               coe
                 v7
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d38
                    (MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) v4 v5 v3 v6
                    v8))))
      (coe v1) (coe v2)
name78 = "Data.List.Relation.Binary.Equality.Setoid.≋-length"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d78 = erased
name94 = "Data.List.Relation.Binary.Equality.Setoid._._≋′_"
d94 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d94 = erased
name102 = "Data.List.Relation.Binary.Equality.Setoid._.map⁺"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d102 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du102 v7 v8 v9 v10
du102 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du102 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du826 (coe v1)
      (coe v2)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du170 (coe v0)
         (coe v1) (coe v2) (coe v3))
name118 = "Data.List.Relation.Binary.Equality.Setoid.++⁺"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d118 v0 v1 v2 v3 v4 v5 v6 = du118 v3 v4
du118 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du118 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du658 (coe v0)
      (coe v1)
name126 = "Data.List.Relation.Binary.Equality.Setoid.++-cancelˡ"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d126 v0 v1 v2 = du126
du126 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du126 v0 v1 v2 v3
  = coe MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du684 v0 v3
name134 = "Data.List.Relation.Binary.Equality.Setoid.++-cancelʳ"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d134 v0 v1 v2 v3 = du134
du134 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du134 = coe MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du700
name140 = "Data.List.Relation.Binary.Equality.Setoid.concat⁺"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d140 v0 v1 v2 v3 v4 = du140 v3 v4
du140 ::
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du140 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du746 (coe v0)
      (coe v1)
name150 = "Data.List.Relation.Binary.Equality.Setoid.tabulate⁺"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d150 v0 v1 v2 v3 v4 v5 = du150 v3
du150 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du150 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du606 (coe v0)
name160 = "Data.List.Relation.Binary.Equality.Setoid.tabulate⁻"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
d160 v0 v1 v2 v3 v4 v5 = du160
du160 ::
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
du160 = coe MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du622
name178 = "Data.List.Relation.Binary.Equality.Setoid._.filter⁺"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d178 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du178 v5 v7 v8 v9
du178 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du178 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du934 (coe v0)
      (coe v0) (coe v1) (coe v2) (coe v3)
name190 = "Data.List.Relation.Binary.Equality.Setoid.ʳ++⁺"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d190 v0 v1 v2 v3 v4 v5 v6 = du190 v3 v4
du190 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du190 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du790 (coe v0)
      (coe v1)
name196 = "Data.List.Relation.Binary.Equality.Setoid.reverse⁺"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d196 v0 v1 v2 v3 v4 = du196 v3 v4
du196 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du196 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du800 (coe v0)
      (coe v1)
