{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Construct.On where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name38 = "Relation.Binary.Construct.On._.implies"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d38 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du38 v4 v9 v10 v11
du38 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du38 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name44 = "Relation.Binary.Construct.On._.reflexive"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d44 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du44 v4 v7 v8
du44 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du44 v0 v1 v2 = coe v1 (coe v0 v2)
name52 = "Relation.Binary.Construct.On._.irreflexive"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d52 = erased
name58 = "Relation.Binary.Construct.On._.symmetric"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d58 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du58 v4 v7 v8 v9
du58 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du58 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name64 = "Relation.Binary.Construct.On._.transitive"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d64 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du64 v4 v7 v8 v9 v10
du64 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du64 v0 v1 v2 v3 v4 = coe v1 (coe v0 v2) (coe v0 v3) (coe v0 v4)
name72 = "Relation.Binary.Construct.On._.antisymmetric"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d72 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du72 v4 v9 v10 v11
du72 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du72 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name78 = "Relation.Binary.Construct.On._.asymmetric"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d78 = erased
name86 = "Relation.Binary.Construct.On._.respects"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d86 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du86 v4 v9 v10 v11
du86 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du86 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name94 = "Relation.Binary.Construct.On._.respects₂"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d94 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du94 v4 v9
du94 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du94 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe (\ v4 v5 v6 -> coe v2 (coe v0 v4) (coe v0 v5) (coe v0 v6)))
             (coe (\ v4 v5 v6 -> coe v3 (coe v0 v4) (coe v0 v5) (coe v0 v6)))
      _ -> MAlonzo.RTE.mazUnreachableError
name102 = "Relation.Binary.Construct.On._.decidable"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d102 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du102 v4 v7 v8 v9
du102 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du102 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name112 = "Relation.Binary.Construct.On._.total"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d112 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du112 v4 v7 v8 v9
du112 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du112 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name124 = "Relation.Binary.Construct.On._.trichotomous"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
d124 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du124 v4 v9 v10 v11
du124 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
du124 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name136 = "Relation.Binary.Construct.On._.accessible"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Induction.WellFounded.T42 ->
  MAlonzo.Code.Induction.WellFounded.T42
d136 = erased
name146 = "Relation.Binary.Construct.On._.wellFounded"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T42) ->
  AgdaAny -> MAlonzo.Code.Induction.WellFounded.T42
d146 = erased
name166 = "Relation.Binary.Construct.On._.isEquivalence"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
d166 v0 v1 v2 v3 v4 v5 v6 v7 = du166 v5 v7
du166 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
du166 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C483
      (coe
         (\ v2 ->
            coe MAlonzo.Code.Relation.Binary.Structures.d34 v1 (coe v0 v2)))
      (coe
         du58 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d36 (coe v1)))
      (coe
         du64 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d38 (coe v1)))
name186 = "Relation.Binary.Construct.On._.isDecEquivalence"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
d186 v0 v1 v2 v3 v4 v5 v6 v7 = du186 v5 v7
du186 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
du186 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C1529
      (coe
         du166 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v1)))
      (coe
         du102 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d52 (coe v1)))
name228 = "Relation.Binary.Construct.On._.isPreorder"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d228 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du228 v6 v9
du228 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du228 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe
         du166 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v1)))
      (coe
         du38 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d82 (coe v1)))
      (coe
         du64 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d84 (coe v1)))
name264 = "Relation.Binary.Construct.On._.isPartialOrder"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d264 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du264 v6 v9
du264 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du264 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865
      (coe
         du228 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1)))
      (coe
         du72 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d128 (coe v1)))
name304 = "Relation.Binary.Construct.On._.isDecPartialOrder"
d304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T162 ->
  MAlonzo.Code.Relation.Binary.Structures.T162
d304 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du304 v6 v9
du304 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T162 ->
  MAlonzo.Code.Relation.Binary.Structures.T162
du304 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C5875
      (coe
         du264 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d172 (coe v1)))
      (coe
         du102 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d174 (coe v1)))
      (coe
         du102 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d176 (coe v1)))
name356 = "Relation.Binary.Construct.On._.isStrictPartialOrder"
d356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d356 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du356 v6 v9
du356 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du356 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C7193
      (coe
         du166 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d234 (coe v1)))
      (coe
         du64 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d238 (coe v1)))
      (coe
         du94 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d240 (coe v1)))
name394 = "Relation.Binary.Construct.On._.isTotalOrder"
d394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T340 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
d394 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du394 v6 v9
du394 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T340 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
du394 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C11665
      (coe
         du264 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1)))
      (coe
         du112 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d350 (coe v1)))
name438 = "Relation.Binary.Construct.On._.isDecTotalOrder"
d438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T388 ->
  MAlonzo.Code.Relation.Binary.Structures.T388
d438 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du438 v6 v9
du438 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T388 ->
  MAlonzo.Code.Relation.Binary.Structures.T388
du438 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C12739
      (coe
         du394 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d398 (coe v1)))
      (coe
         du102 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d400 (coe v1)))
      (coe
         du102 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d402 (coe v1)))
name496 = "Relation.Binary.Construct.On._.isStrictTotalOrder"
d496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T454 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
d496 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du496 v6 v9
du496 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T454 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
du496 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C14057
      (coe
         du166 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d464 (coe v1)))
      (coe
         du64 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d466 (coe v1)))
      (coe
         du124 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d468 (coe v1)))
name550 = "Relation.Binary.Construct.On.preorder"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T132
d550 v0 v1 v2 v3 v4 v5 v6 = du550 v5 v6
du550 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T132
du550 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509
      (coe
         du228 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)))
name558 = "Relation.Binary.Construct.On.setoid"
d558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T44
d558 v0 v1 v2 v3 v4 v5 = du558 v4 v5
du558 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T44
du558 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe
         du166 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)))
name566 = "Relation.Binary.Construct.On.decSetoid"
d566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T84
d566 v0 v1 v2 v3 v4 v5 = du566 v4 v5
du566 ::
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T84
du566 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C939
      (coe
         du186 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d100 (coe v0)))
name574 = "Relation.Binary.Construct.On.poset"
d574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T204
d574 v0 v1 v2 v3 v4 v5 v6 = du574 v5 v6
du574 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T204
du574 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365
      (coe
         du264 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
name582 = "Relation.Binary.Construct.On.decPoset"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T282 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T282
d582 v0 v1 v2 v3 v4 v5 v6 = du582 v5 v6
du582 ::
  MAlonzo.Code.Relation.Binary.Bundles.T282 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T282
du582 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C3319
      (coe
         du304 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d304 (coe v0)))
name590 = "Relation.Binary.Construct.On.strictPartialOrder"
d590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T394
d590 v0 v1 v2 v3 v4 v5 v6 = du590 v5 v6
du590 ::
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T394
du590 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C4625
      (coe
         du356 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v0)))
name598 = "Relation.Binary.Construct.On.totalOrder"
d598 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T574
d598 v0 v1 v2 v3 v4 v5 v6 = du598 v5 v6
du598 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T574
du598 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C6779
      (coe
         du394 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
name606 = "Relation.Binary.Construct.On.decTotalOrder"
d606 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T658
d606 v0 v1 v2 v3 v4 v5 v6 = du606 v5 v6
du606 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T658
du606 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C7777
      (coe
         du438 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d680 (coe v0)))
name614 = "Relation.Binary.Construct.On.strictTotalOrder"
d614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T780 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T780
d614 v0 v1 v2 v3 v4 v5 v6 = du614 v5 v6
du614 ::
  MAlonzo.Code.Relation.Binary.Bundles.T780 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.Bundles.T780
du614 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C9189
      (coe
         du496 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d802 (coe v0)))
