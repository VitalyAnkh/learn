{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Relation.Unary.Unique.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Relation.Binary.Bundles

name50 = "Data.List.Relation.Unary.Unique.Setoid._.AllPairs"
d50 a0 a1 a2 a3 = ()
name62 = "Data.List.Relation.Unary.Unique.Setoid._.head"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34
d62 v0 v1 v2 = du62
du62 ::
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34
du62 v0 v1 v2
  = coe MAlonzo.Code.Data.List.Relation.Unary.AllPairs.du22 v2
name64 = "Data.List.Relation.Unary.Unique.Setoid._.tail"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
d64 v0 v1 v2 = du64
du64 ::
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
du64 v0 v1 v2
  = coe MAlonzo.Code.Data.List.Relation.Unary.AllPairs.du32 v2
