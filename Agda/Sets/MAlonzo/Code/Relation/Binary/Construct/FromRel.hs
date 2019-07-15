{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Construct.FromRel where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name24 = "Relation.Binary.Construct.FromRel.Eq._≈_"
d24 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d24 = erased
name26 = "Relation.Binary.Construct.FromRel.Eq._≉_"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d26 = erased
name28 = "Relation.Binary.Construct.FromRel.Eq.Carrier"
d28 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> ()
d28 = erased
name30 = "Relation.Binary.Construct.FromRel.Eq.isEquivalence"
d30 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402
d30 v0 v1 v2 v3 v4 = du30 v0
du30 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.Core.T402
du30 v0 = coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))
name32 = "Relation.Binary.Construct.FromRel.Eq.isPreorder"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Relation.Binary.T16
d32 v0 v1 v2 v3 v4 v5 v6 = du32 v2
du32 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T16
du32 v0 = coe (MAlonzo.Code.Relation.Binary.du162 (coe v0))
name34 = "Relation.Binary.Construct.FromRel.Eq.preorder"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Relation.Binary.T74
d34 v0 v1 v2 v3 v4 v5 v6 = du34 v2
du34 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T74
du34 v0 = coe (MAlonzo.Code.Relation.Binary.du164 (coe v0))
name36 = "Relation.Binary.Construct.FromRel.Eq.refl"
d36 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny
d36 v0 v1 v2 v3 v4 = du36 v0
du36 :: MAlonzo.Code.Relation.Binary.T128 -> AgdaAny -> AgdaAny
du36 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))))
name38 = "Relation.Binary.Construct.FromRel.Eq.reflexive"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d38 v0 v1 v2 v3 v4 v5 v6 = du38 v2
du38 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du38 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))) v1)
name40 = "Relation.Binary.Construct.FromRel.Eq.sym"
d40 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d40 v0 v1 v2 v3 v4 = du40 v0
du40 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du40 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))))
name42 = "Relation.Binary.Construct.FromRel.Eq.trans"
d42 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d42 v0 v1 v2 v3 v4 = du42 v0
du42 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du42 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))))
name44 = "Relation.Binary.Construct.FromRel.Resp"
d44 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d44 = erased
name56 = "Relation.Binary.Construct.FromRel.reflexive"
d56 ::
  MAlonzo.Code.Relation.Binary.T128 ->
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
  MAlonzo.Code.Relation.Binary.T128 ->
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
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.T16
d72 v0 v1 v2 v3 v4 v5 = du72 v0 v5
du72 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.T16
du72 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C17
         (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))
         (coe (\ v2 v3 v4 v5 -> coe v1 v5 v2 v3 v4))
         (coe (\ v2 v3 v4 v5 v6 v7 v8 -> coe v6 v7 (coe v5 v7 v8))))
name80 = "Relation.Binary.Construct.FromRel.preorder"
d80 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.T74
d80 v0 v1 v2 v3 v4 v5 = du80 v0 v5
du80 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.T74
du80 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C807 v5) erased
      erased erased (du72 (coe v0) (coe v1))
