{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Maybe.Relation.Unary.All where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Category.Functor
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name18 = "Data.Maybe.Relation.Unary.All.All"
d18 a0 a1 a2 a3 a4 = ()
data T18 = C30 AgdaAny | C32
name48 = "Data.Maybe.Relation.Unary.All._.drop-just"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> T18 -> AgdaAny
d48 v0 v1 v2 v3 v4 v5 = du48 v5
du48 :: T18 -> AgdaAny
du48 v0
  = case coe v0 of
      C30 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name54 = "Data.Maybe.Relation.Unary.All._.just-equivalence"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16
d54 v0 v1 v2 v3 v4 = du54
du54 :: MAlonzo.Code.Function.Equivalence.T16
du54
  = coe MAlonzo.Code.Function.Equivalence.du56 (coe C30) (coe du48)
name60 = "Data.Maybe.Relation.Unary.All._.map"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Maybe.Base.T22 -> T18 -> T18
d60 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du60 v6 v7 v8
du60 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Maybe.Base.T22 -> T18 -> T18
du60 v0 v1 v2
  = case coe v2 of
      C30 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Maybe.Base.C30 v5 -> coe C30 (coe v0 v5 v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      C32 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name68 = "Data.Maybe.Relation.Unary.All._.fromAny"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T18 -> T18
d68 v0 v1 v2 v3 v4 v5 = du68 v5
du68 :: MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T18 -> T18
du68 v0
  = case coe v0 of
      MAlonzo.Code.Data.Maybe.Relation.Unary.Any.C30 v2 -> coe C30 v2
      _ -> MAlonzo.RTE.mazUnreachableError
name92 = "Data.Maybe.Relation.Unary.All._.zipWith"
d92 ::
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
d92 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du92 v8 v9 v10
du92 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> T18
du92 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> case coe v3 of
             C30 v6
               -> case coe v1 of
                    MAlonzo.Code.Data.Maybe.Base.C30 v7
                      -> case coe v4 of
                           C30 v9
                             -> coe
                                  C30
                                  (coe
                                     v0 v7
                                     (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v6) (coe v9)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             C32 -> coe seq (coe v4) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name102 = "Data.Maybe.Relation.Unary.All._.unzipWith"
d102 ::
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
d102 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du102 v8 v9 v10
du102 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du102 v0 v1 v2
  = case coe v2 of
      C30 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Maybe.Base.C30 v5
               -> coe
                    MAlonzo.Code.Data.Product.du148 (coe C30) (coe (\ v6 -> coe C30))
                    (coe v0 v5 v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      C32 -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name126 = "Data.Maybe.Relation.Unary.All._.zip"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> T18
d126 v0 v1 v2 v3 v4 v5 v6 = du126 v6
du126 ::
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> T18
du126 v0 = coe du92 (coe (\ v1 v2 -> v2)) (coe v0)
name128 = "Data.Maybe.Relation.Unary.All._.unzip"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d128 v0 v1 v2 v3 v4 v5 v6 = du128 v6
du128 ::
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du128 v0 = coe du102 (coe (\ v1 v2 -> v2)) (coe v0)
name170 = "Data.Maybe.Relation.Unary.All._.sequenceA"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Data.Maybe.Base.T22 -> T18 -> AgdaAny
d170 v0 v1 v2 v3 v4 v5 v6 v7 = du170 v5 v7
du170 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 -> T18 -> AgdaAny
du170 v0 v1
  = case coe v1 of
      C30 v3
        -> let v4 = coe MAlonzo.Code.Agda.Builtin.Unit.C8 in
           let v5 = coe MAlonzo.Code.Agda.Builtin.Unit.C8 in
           coe
             MAlonzo.Code.Category.Functor.d30
             (coe
                MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v0) (coe v4)
                (coe v5))
             erased erased (coe C30) v3
      C32
        -> coe
             MAlonzo.Code.Category.Applicative.Indexed.d58 v0 erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C8) v1
      _ -> MAlonzo.RTE.mazUnreachableError
name178 = "Data.Maybe.Relation.Unary.All._.mapA"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Maybe.Base.T22 -> T18 -> AgdaAny
d178 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du178 v5 v8 v9 v10
du178 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Maybe.Base.T22 -> T18 -> AgdaAny
du178 v0 v1 v2 v3
  = coe du170 (coe v0) (coe du60 (coe v1) (coe v2) (coe v3))
name188 = "Data.Maybe.Relation.Unary.All._.forA"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
d188 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du188 v5 v8 v9 v10
du188 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
du188 v0 v1 v2 v3 = coe du178 (coe v0) (coe v3) (coe v1) (coe v2)
name210 = "Data.Maybe.Relation.Unary.All._.App"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Category.Applicative.Indexed.T38
d210 v0 v1 v2 v3 v4 v5 = du210 v5
du210 ::
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Category.Applicative.Indexed.T38
du210 v0 = coe MAlonzo.Code.Category.Monad.Indexed.du122 (coe v0)
name212 = "Data.Maybe.Relation.Unary.All._.sequenceM"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Data.Maybe.Base.T22 -> T18 -> AgdaAny
d212 v0 v1 v2 v3 v4 v5 v6 = du212 v5
du212 :: MAlonzo.Code.Category.Monad.Indexed.T32 -> T18 -> AgdaAny
du212 v0 = coe du170 (coe du210 (coe v0))
name218 = "Data.Maybe.Relation.Unary.All._.mapM"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Maybe.Base.T22 -> T18 -> AgdaAny
d218 v0 v1 v2 v3 v4 v5 v6 v7 = du218 v5
du218 ::
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Maybe.Base.T22 -> T18 -> AgdaAny
du218 v0 = coe du178 (coe du210 (coe v0))
name226 = "Data.Maybe.Relation.Unary.All._.forM"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
d226 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du226 v5 v8
du226 ::
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
du226 v0 v1 = coe du188 (coe du210 (coe v0)) (coe v1)
name240 = "Data.Maybe.Relation.Unary.All._.dec"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Relation.Nullary.T32
d240 v0 v1 v2 v3 v4 v5 = du240 v4 v5
du240 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  MAlonzo.Code.Relation.Nullary.T32
du240 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Maybe.Base.C26
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
             (coe MAlonzo.Code.Relation.Nullary.C22 (coe C32))
      MAlonzo.Code.Data.Maybe.Base.C30 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.du14 (coe du54) (coe v0 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name248 = "Data.Maybe.Relation.Unary.All._.universal"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Maybe.Base.T22 -> T18
d248 v0 v1 v2 v3 v4 v5 = du248 v4 v5
du248 ::
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Maybe.Base.T22 -> T18
du248 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Maybe.Base.C26 -> coe C32
      MAlonzo.Code.Data.Maybe.Base.C30 v2 -> coe C30 (coe v0 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name256 = "Data.Maybe.Relation.Unary.All._.irrelevant"
d256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.Maybe.Base.T22 ->
  T18 -> T18 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d256 = erased
name266 = "Data.Maybe.Relation.Unary.All._.satisfiable"
d266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d266 v0 v1 v2 v3 = du266
du266 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du266
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe MAlonzo.Code.Data.Maybe.Base.C26) (coe C32)
