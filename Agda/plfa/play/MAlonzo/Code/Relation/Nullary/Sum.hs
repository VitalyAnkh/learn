{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Nullary.Sum where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary

name14 = "Relation.Nullary.Sum._¬-⊎_"
d14 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Data.Empty.T4
d14 = erased
name20 = "Relation.Nullary.Sum._⊎-reflects_"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Bool ->
  Bool ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d20 v0 v1 v2 v3 v4 v5 v6 v7 = du20 v6 v7
du20 ::
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du20 v0 v1
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.C22
             (coe MAlonzo.Code.Data.Sum.Base.C38 (coe v2))
      MAlonzo.Code.Relation.Nullary.C26
        -> case coe v1 of
             MAlonzo.Code.Relation.Nullary.C22 v3
               -> coe
                    MAlonzo.Code.Relation.Nullary.C22
                    (coe MAlonzo.Code.Data.Sum.Base.C42 (coe v3))
             MAlonzo.Code.Relation.Nullary.C26
               -> coe MAlonzo.Code.Relation.Nullary.C26
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name32 = "Relation.Nullary.Sum._⊎-dec_"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
d32 v0 v1 v2 v3 v4 v5 = du32 v4 v5
du32 ::
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
du32 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.C46
      (coe
         MAlonzo.Code.Data.Bool.Base.d30
         (coe MAlonzo.Code.Relation.Nullary.d42 (coe v0))
         (coe MAlonzo.Code.Relation.Nullary.d42 (coe v1)))
      (coe
         du20 (coe MAlonzo.Code.Relation.Nullary.d44 (coe v0))
         (coe MAlonzo.Code.Relation.Nullary.d44 (coe v1)))
