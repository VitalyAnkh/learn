{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Nullary.Reflects where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Nullary

name12 = "Relation.Nullary.Reflects.of"
d12 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Bool -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d12 v0 v1 v2 v3 = du12 v2 v3
du12 :: Bool -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du12 v0 v1
  = if coe v0
      then coe MAlonzo.Code.Relation.Nullary.C22 (coe v1)
      else coe MAlonzo.Code.Relation.Nullary.C26
name20 = "Relation.Nullary.Reflects.invert"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Bool -> MAlonzo.Code.Relation.Nullary.T14 -> AgdaAny
d20 v0 v1 v2 v3 = du20 v3
du20 :: MAlonzo.Code.Relation.Nullary.T14 -> AgdaAny
du20 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1 -> coe v1
      MAlonzo.Code.Relation.Nullary.C26 -> erased
      _ -> MAlonzo.RTE.mazUnreachableError
name30 = "Relation.Nullary.Reflects.det"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Bool ->
  Bool ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d30 = erased
