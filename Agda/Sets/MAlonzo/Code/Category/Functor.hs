{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Category.Functor where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

name8 = "Category.Functor.RawFunctor"
d8 a0 a1 = ()
newtype T8
  = C5 (() -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
name24 = "Category.Functor.RawFunctor._<$>_"
d24 :: T8 -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d24 v0
  = case coe v0 of
      C5 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name30 = "Category.Functor.RawFunctor._<$_"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) -> T8 -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d30 v0 v1 v2 v3 v4 v5 v6 = du30 v2 v5 v6
du30 :: T8 -> AgdaAny -> AgdaAny -> AgdaAny
du30 v0 v1 v2 = coe d24 v0 erased erased (\ v3 -> v1) v2
name40 = "Category.Functor.RawFunctor._<&>_"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  T8 -> () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d40 v0 v1 v2 v3 v4 v5 v6 = du40 v2 v5 v6
du40 :: T8 -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du40 v0 v1 v2 = coe d24 v0 erased erased v2 v1
name52 = "Category.Functor.Morphism"
d52 a0 a1 a2 a3 a4 = ()
newtype T52 = C241 (() -> AgdaAny -> AgdaAny)
name80 = "Category.Functor.Morphism.op"
d80 :: T52 -> () -> AgdaAny -> AgdaAny
d80 v0
  = case coe v0 of
      C241 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Category.Functor.Morphism.op-<$>"
d90 ::
  T52 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d90 = erased
