{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Relation.Binary.Equality.Propositional where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name18 = "Data.List.Relation.Binary.Equality.Propositional._._≋_"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> ()
d18 = erased
name20
  = "Data.List.Relation.Binary.Equality.Propositional._.++-cancelʳ"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d20 v0 v1 = du20
du20 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du20 v0
  = coe MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du134
name22
  = "Data.List.Relation.Binary.Equality.Propositional._.++-cancelˡ"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d22 v0 v1 = du22
du22 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du22
  = coe MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du126
name24 = "Data.List.Relation.Binary.Equality.Propositional._.++⁺"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d24 v0 v1 = du24
du24 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du24 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du118 v0 v1
name26
  = "Data.List.Relation.Binary.Equality.Propositional._.Unique-resp-≋"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
d26 v0 v1 = du26
du26 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
du26
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du72
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
name27 = "Pointwise"
d27 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
name28
  = "Data.List.Relation.Binary.Equality.Propositional._.concat⁺"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d28 v0 v1 = du28
du28 ::
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du28
  = coe MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du140
name30
  = "Data.List.Relation.Binary.Equality.Propositional._.filter⁺"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d30 v0 v1 = du30
du30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du30 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du178 v2 v4
      v5 v6
name32 = "Data.List.Relation.Binary.Equality.Propositional._.map⁺"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d32 v0 v1 = du32
du32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du32 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du102 v4 v5
      v6 v7
name34
  = "Data.List.Relation.Binary.Equality.Propositional._.reverse⁺"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d34 v0 v1 = du34
du34 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du34
  = coe MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du196
name36
  = "Data.List.Relation.Binary.Equality.Propositional._.tabulate⁺"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d36 v0 v1 = du36
du36 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du36 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du150 v0
name38
  = "Data.List.Relation.Binary.Equality.Propositional._.tabulate⁻"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d38 = erased
name40 = "Data.List.Relation.Binary.Equality.Propositional._.ʳ++⁺"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d40 v0 v1 = du40
du40 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du40 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du190 v0 v1
name42
  = "Data.List.Relation.Binary.Equality.Propositional._.≋-isEquivalence"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T26
d42 v0 v1 = du42
du42 :: MAlonzo.Code.Relation.Binary.Structures.T26
du42
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du68
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
name44
  = "Data.List.Relation.Binary.Equality.Propositional._.≋-length"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d44 = erased
name46
  = "Data.List.Relation.Binary.Equality.Propositional._.≋-refl"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d46 v0 v1 = du46
du46 ::
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du46
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du60
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
name48
  = "Data.List.Relation.Binary.Equality.Propositional._.≋-reflexive"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d48 v0 v1 = du48
du48 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du48 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du62
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      v0
name50
  = "Data.List.Relation.Binary.Equality.Propositional._.≋-setoid"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T44
d50 v0 v1 = du50
du50 :: MAlonzo.Code.Relation.Binary.Bundles.T44
du50
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du70
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
name52 = "Data.List.Relation.Binary.Equality.Propositional._.≋-sym"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d52 v0 v1 = du52
du52 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du52
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du64
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
name54
  = "Data.List.Relation.Binary.Equality.Propositional._.≋-trans"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d54 v0 v1 = du54
du54 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du54
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du66
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
name62
  = "Data.List.Relation.Binary.Equality.Propositional._._.All-resp-Pointwise"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34
d62 v0 v1 = du62
du62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34
du62 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du502 v6 v7 v8 v9
      v10
name66
  = "Data.List.Relation.Binary.Equality.Propositional._._.AllPairs-resp-Pointwise"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
d66 v0 v1 = du66
du66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
du66 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du548 v6 v7 v8 v9
      v10
name68
  = "Data.List.Relation.Binary.Equality.Propositional._._.Any-resp-Pointwise"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26
d68 v0 v1 = du68
du68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26
du68 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du516 v6 v7 v8 v9
      v10
name72 = "Data.List.Relation.Binary.Equality.Propositional.≋⇒≡"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d72 = erased
name78 = "Data.List.Relation.Binary.Equality.Propositional.≡⇒≋"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d78 v0 v1 v2 v3 v4 = du78 v2
du78 ::
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du78 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du60
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      (coe v0)
