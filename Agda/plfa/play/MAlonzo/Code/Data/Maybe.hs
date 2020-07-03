{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Maybe where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any

name8 = "Data.Maybe.Is-just"
d8 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.Maybe.Base.T22 -> ()
d8 = erased
name12 = "Data.Maybe.Is-nothing"
d12 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.Maybe.Base.T22 -> ()
d12 = erased
name18 = "Data.Maybe.to-witness"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T18 -> AgdaAny
d18 v0 v1 v2 v3 = du18 v2 v3
du18 ::
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T18 -> AgdaAny
du18 v0 v1
  = coe
      seq (coe v1)
      (case coe v0 of
         MAlonzo.Code.Data.Maybe.Base.C30 v2 -> coe v2
         _ -> MAlonzo.RTE.mazUnreachableError)
name24 = "Data.Maybe.to-witness-T"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.Maybe.Base.T22 -> AgdaAny -> AgdaAny
d24 v0 v1 v2 v3 = du24 v2
du24 :: MAlonzo.Code.Data.Maybe.Base.T22 -> AgdaAny
du24 v0
  = case coe v0 of
      MAlonzo.Code.Data.Maybe.Base.C30 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
