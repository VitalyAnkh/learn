{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Construct.FromRel where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

name24 = "Relation.Binary.Construct.FromRel.Eq._≈_"
d24 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d24 = erased
name26 = "Relation.Binary.Construct.FromRel.Eq._≉_"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d26 = erased
name28 = "Relation.Binary.Construct.FromRel.Eq.Carrier"
d28 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> ()
d28 = erased
name30 = "Relation.Binary.Construct.FromRel.Eq.isEquivalence"
d30 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26
d30 v0 v1 v2 v3 v4 = du30 v0
du30 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
du30 v0 = coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)
name32
  = "Relation.Binary.Construct.FromRel.Eq.isPartialEquivalence"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T16
d32 v0 v1 v2 v3 v4 v5 v6 = du32 v2
du32 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T16
du32 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))
name34 = "Relation.Binary.Construct.FromRel.Eq.partialSetoid"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Bundles.T10
d34 v0 v1 v2 v3 v4 v5 v6 = du34 v2
du34 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T10
du34 v0 = coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0)
name36 = "Relation.Binary.Construct.FromRel.Eq.refl"
d36 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny
d36 v0 v1 v2 v3 v4 = du36 v0
du36 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> AgdaAny -> AgdaAny
du36 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))
name38 = "Relation.Binary.Construct.FromRel.Eq.reflexive"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d38 v0 v1 v2 v3 v4 v5 v6 = du38 v2
du38 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du38 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du40
      (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) v1
name40 = "Relation.Binary.Construct.FromRel.Eq.sym"
d40 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d40 v0 v1 v2 v3 v4 = du40 v0
du40 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du40 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))
name42 = "Relation.Binary.Construct.FromRel.Eq.trans"
d42 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d42 v0 v1 v2 v3 v4 = du42 v0
du42 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du42 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))
name44 = "Relation.Binary.Construct.FromRel.Resp"
d44 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d44 = erased
name56 = "Relation.Binary.Construct.FromRel.reflexive"
d56 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d56 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du56 v5 v6 v7 v8 v9
du56 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du56 v0 v1 v2 v3 v4 = coe v0 v4 v1 v2 v3
name62 = "Relation.Binary.Construct.FromRel.trans"
d62 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d62 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du62 v8 v9 v10 v11
du62 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du62 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
name72 = "Relation.Binary.Construct.FromRel.isPreorder"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d72 v0 v1 v2 v3 v4 v5 v6 v7 = du72 v2 v7
du72 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du72 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))
      (coe (\ v2 v3 v4 v5 -> coe v1 v5 v2 v3 v4))
      (coe (\ v2 v3 v4 v5 v6 v7 v8 -> coe v6 v7 (coe v5 v7 v8)))
name80 = "Relation.Binary.Construct.FromRel.preorder"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d80 v0 v1 v2 v3 v4 v5 v6 v7 = du80 v2 v7
du80 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du80 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509
      (coe du72 (coe v0) (coe v1))
