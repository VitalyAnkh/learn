{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Function.HalfAdjointEquivalence where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Inverse

name12 = "Function.HalfAdjointEquivalence._≃_"
d12 a0 a1 a2 a3 = ()
data T12 = C541 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
name38 = "Function.HalfAdjointEquivalence._≃_.to"
d38 :: T12 -> AgdaAny -> AgdaAny
d38 v0
  = case coe v0 of
      C541 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name40 = "Function.HalfAdjointEquivalence._≃_.from"
d40 :: T12 -> AgdaAny -> AgdaAny
d40 v0
  = case coe v0 of
      C541 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name44 = "Function.HalfAdjointEquivalence._≃_.left-inverse-of"
d44 :: T12 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d44 = erased
name48 = "Function.HalfAdjointEquivalence._≃_.right-inverse-of"
d48 :: T12 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d48 = erased
name52 = "Function.HalfAdjointEquivalence._≃_.left-right"
d52 :: T12 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d52 = erased
name54 = "Function.HalfAdjointEquivalence._≃_.inverse"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> T12 -> MAlonzo.Code.Function.Inverse.T58
d54 v0 v1 v2 v3 v4 = du54 v4
du54 :: T12 -> MAlonzo.Code.Function.Inverse.T58
du54 v0
  = coe
      MAlonzo.Code.Function.Inverse.du156 (coe d38 (coe v0))
      (coe d40 (coe v0)) erased erased
name60 = "Function.HalfAdjointEquivalence._≃_.injective"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  T12 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d60 = erased
name80 = "Function.HalfAdjointEquivalence.↔→≃"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Function.Inverse.T58 -> T12
d80 v0 v1 v2 v3 v4 = du80 v4
du80 :: MAlonzo.Code.Function.Inverse.T58 -> T12
du80 v0
  = coe
      C541
      (MAlonzo.Code.Function.Equality.d38
         (coe MAlonzo.Code.Function.Inverse.d78 (coe v0)))
      (MAlonzo.Code.Function.Equality.d38
         (coe MAlonzo.Code.Function.Inverse.d80 (coe v0)))
name122 = "Function.HalfAdjointEquivalence._.right-inverse-of"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Function.Inverse.T58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d122 = erased
name132 = "Function.HalfAdjointEquivalence._.left-right"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Function.Inverse.T58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d132 = erased
name140 = "Function.HalfAdjointEquivalence._._.lemma"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Function.Inverse.T58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d140 = erased
