{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Maybe.Relation.Unary.Any where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name18 = "Data.Maybe.Relation.Unary.Any.Any"
d18 a0 a1 a2 a3 a4 = ()
newtype T18 = C30 AgdaAny
name46 = "Data.Maybe.Relation.Unary.Any._.drop-just"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> T18 -> AgdaAny
d46 v0 v1 v2 v3 v4 v5 = du46 v5
du46 :: T18 -> AgdaAny
du46 v0
  = case coe v0 of
      C30 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name52 = "Data.Maybe.Relation.Unary.Any._.just-equivalence"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16
d52 v0 v1 v2 v3 v4 = du52
du52 :: MAlonzo.Code.Function.Equivalence.T16
du52
  = coe (MAlonzo.Code.Function.Equivalence.du56 (coe C30) (coe du46))
name58 = "Data.Maybe.Relation.Unary.Any._.map"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Maybe.Base.T22 -> T18 -> T18
d58 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du58 v6 v7 v8
du58 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Maybe.Base.T22 -> T18 -> T18
du58 v0 v1 v2
  = case coe v2 of
      C30 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Maybe.Base.C28 v5
               -> coe (\ v6 v7 -> C30 v7) erased (coe v0 v5 v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name66 = "Data.Maybe.Relation.Unary.Any._.satisfied"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d66 v0 v1 v2 v3 v4 v5 = du66 v4 v5
du66 ::
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du66 v0 v1
  = case coe v1 of
      C30 v3
        -> case coe v0 of
             MAlonzo.Code.Data.Maybe.Base.C28 v4
               -> coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v4) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Data.Maybe.Relation.Unary.Any._.zipWith"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> T18
d90 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du90 v8 v9 v10
du90 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> T18
du90 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> case coe v3 of
             C30 v6
               -> case coe v4 of
                    C30 v8
                      -> case coe v1 of
                           MAlonzo.Code.Data.Maybe.Base.C28 v9
                             -> coe
                                  (\ v10 v11 -> C30 v11) erased
                                  (coe
                                     v0 v9 (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v6) (coe v8)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name98 = "Data.Maybe.Relation.Unary.Any._.unzipWith"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d98 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du98 v8 v9 v10
du98 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du98 v0 v1 v2
  = case coe v2 of
      C30 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Maybe.Base.C28 v5
               -> coe
                    (MAlonzo.Code.Data.Product.du150
                       (coe C30) (coe (\ v6 -> C30)) (coe v0 v5 v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name120 = "Data.Maybe.Relation.Unary.Any._.zip"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> T18
d120 v0 v1 v2 v3 v4 v5 v6 = du120 v6
du120 ::
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> T18
du120 v0 = coe (du90 (coe (\ v1 v2 -> v2)) (coe v0))
name122 = "Data.Maybe.Relation.Unary.Any._.unzip"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d122 v0 v1 v2 v3 v4 v5 v6 = du122 v6
du122 ::
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du122 v0 = coe (du98 (coe (\ v1 v2 -> v2)) (coe v0))
name136 = "Data.Maybe.Relation.Unary.Any._.dec"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Relation.Nullary.T14
d136 v0 v1 v2 v3 v4 v5 = du136 v4 v5
du136 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Relation.Nullary.T14
du136 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Maybe.Base.C28 v2
        -> coe
             (MAlonzo.Code.Relation.Nullary.Decidable.du14
                (coe du52) (coe v0 v2))
      MAlonzo.Code.Data.Maybe.Base.C30
        -> coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased
      _ -> MAlonzo.RTE.mazUnreachableError
name144 = "Data.Maybe.Relation.Unary.Any._.irrelevant"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> T18 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d144 = erased
name152 = "Data.Maybe.Relation.Unary.Any._.satisfiable"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d152 v0 v1 v2 v3 v4 = du152 v4
du152 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du152 v0
  = coe
      (MAlonzo.Code.Data.Product.du150
         (coe MAlonzo.Code.Data.Maybe.Base.C28) (coe (\ v1 v2 -> C30 v2))
         (coe v0))
name3509 = "Data.Maybe.Relation.Unary.Any._..absurdlambda"
d3509 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  T18 -> MAlonzo.Code.Data.Empty.T4
d3509 = erased
