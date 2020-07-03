{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Category.Functor where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

name24 = "Category.Functor.RawFunctor"
d24 a0 a1 a2 = ()
newtype T24
  = C181 (() -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
name30 = "Category.Functor.RawFunctor._<$>_"
d30 ::
  T24 -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d30 v0
  = case coe v0 of
      C181 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name32 = "Category.Functor.RawFunctor._<$_"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) -> T24 -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d32 v0 v1 v2 v3 v4 v5 v6 v7 = du32 v3 v6 v7
du32 :: T24 -> AgdaAny -> AgdaAny -> AgdaAny
du32 v0 v1 v2 = coe d30 v0 erased erased (\ v3 -> v1) v2
name38 = "Category.Functor.RawFunctor._<&>_"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  T24 -> () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d38 v0 v1 v2 v3 v4 v5 v6 v7 = du38 v3 v6 v7
du38 :: T24 -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du38 v0 v1 v2 = coe d30 v0 erased erased v2 v1
name54 = "Category.Functor.Morphism"
d54 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T54 = C2287 (() -> AgdaAny -> AgdaAny)
name72 = "Category.Functor.Morphism.op"
d72 :: T54 -> () -> AgdaAny -> AgdaAny
d72 v0
  = case coe v0 of
      C2287 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name78 = "Category.Functor.Morphism.op-<$>"
d78 ::
  T54 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d78 = erased
