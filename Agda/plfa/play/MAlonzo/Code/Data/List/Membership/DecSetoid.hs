{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Membership.DecSetoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name44 = "Data.List.Membership.DecSetoid._._∈_"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  AgdaAny -> [AgdaAny] -> ()
d44 = erased
name46 = "Data.List.Membership.DecSetoid._._∉_"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  AgdaAny -> [AgdaAny] -> ()
d46 = erased
name48 = "Data.List.Membership.DecSetoid._.find"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d48 v0 v1 v2 = du48 v2
du48 ::
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du48 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du80
      (coe MAlonzo.Code.Relation.Binary.Bundles.du118 (coe v0)) v3 v4
name50 = "Data.List.Membership.DecSetoid._.lose"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T26
d50 v0 v1 v2 = du50
du50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T26
du50 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Data.List.Membership.Setoid.du90 v2 v3 v4 v5 v6
name52 = "Data.List.Membership.DecSetoid._.map-with-∈"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
d52 v0 v1 v2 = du52 v2
du52 ::
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
du52 v0
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du98
      (coe MAlonzo.Code.Relation.Binary.Bundles.du118 (coe v0))
name54 = "Data.List.Membership.DecSetoid._.mapWith∈"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
d54 v0 v1 v2 = du54 v2
du54 ::
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
du54 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du58
      (coe MAlonzo.Code.Relation.Binary.Bundles.du118 (coe v0)) v3 v4
name58 = "Data.List.Membership.DecSetoid._._._∷=_"
d58 ::
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> [AgdaAny]
d58 v0 = du58
du58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> [AgdaAny]
du58 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Data.List.Relation.Unary.Any.du134 v4 v5 v6
name60 = "Data.List.Membership.DecSetoid._._._─_"
d60 ::
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> [AgdaAny]
d60 v0 = du60
du60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> [AgdaAny]
du60 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Data.List.Relation.Unary.Any.du144 v4 v5
name62 = "Data.List.Membership.DecSetoid._∈?_"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
d62 v0 v1 v2 v3 v4 = du62 v2 v3 v4
du62 ::
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
du62 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du194
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d52
         (MAlonzo.Code.Relation.Binary.Bundles.d100 (coe v0)) v1)
      (coe v2)
