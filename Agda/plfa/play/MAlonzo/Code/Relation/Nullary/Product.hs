{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Nullary.Product where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Relation.Nullary

name18 = "Relation.Nullary.Product._×-reflects_"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Bool ->
  Bool ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d18 v0 v1 v2 v3 v4 v5 v6 v7 = du18 v6 v7
du18 ::
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du18 v0 v1
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v2
        -> case coe v1 of
             MAlonzo.Code.Relation.Nullary.C22 v3
               -> coe
                    MAlonzo.Code.Relation.Nullary.C22
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2) (coe v3))
             MAlonzo.Code.Relation.Nullary.C26
               -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Relation.Nullary.C26
      _ -> MAlonzo.RTE.mazUnreachableError
name30 = "Relation.Nullary.Product._×-dec_"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
d30 v0 v1 v2 v3 v4 v5 = du30 v4 v5
du30 ::
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
du30 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.C46
      (coe
         MAlonzo.Code.Data.Bool.Base.d24
         (coe MAlonzo.Code.Relation.Nullary.d42 (coe v0))
         (coe MAlonzo.Code.Relation.Nullary.d42 (coe v1)))
      (coe
         du18 (coe MAlonzo.Code.Relation.Nullary.d44 (coe v0))
         (coe MAlonzo.Code.Relation.Nullary.d44 (coe v1)))
