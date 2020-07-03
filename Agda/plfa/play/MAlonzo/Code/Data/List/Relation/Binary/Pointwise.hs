{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Relation.Binary.Pointwise where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Product

name52 = "Data.List.Relation.Binary.Pointwise.Pointwise"
d52 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T52 = C60 | C74 AgdaAny T52
name96 = "Data.List.Relation.Binary.Pointwise._.head"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> [AgdaAny] -> T52 -> AgdaAny
d96 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du96 v10
du96 :: T52 -> AgdaAny
du96 v0
  = case coe v0 of
      C74 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name110 = "Data.List.Relation.Binary.Pointwise._.tail"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> [AgdaAny] -> T52 -> T52
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du110 v10
du110 :: T52 -> T52
du110 v0
  = case coe v0 of
      C74 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name124 = "Data.List.Relation.Binary.Pointwise._.uncons"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] -> T52 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d124 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du124
du124 :: T52 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du124 = coe MAlonzo.Code.Data.Product.du132 (coe du96) (coe du110)
name150 = "Data.List.Relation.Binary.Pointwise._.rec"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  ([AgdaAny] -> [AgdaAny] -> T52 -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   [AgdaAny] -> [AgdaAny] -> T52 -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny] -> T52 -> AgdaAny
d150 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du150 v8 v9 v10 v11 v12
du150 ::
  (AgdaAny ->
   AgdaAny ->
   [AgdaAny] -> [AgdaAny] -> T52 -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny] -> T52 -> AgdaAny
du150 v0 v1 v2 v3 v4
  = case coe v4 of
      C60 -> coe v1
      C74 v9 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v3 of
                    (:) v13 v14
                      -> coe
                           v0 v11 v13 v12 v14 v10 v9
                           (coe du150 (coe v0) (coe v1) (coe v12) (coe v14) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name170 = "Data.List.Relation.Binary.Pointwise._.map"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T52 -> T52
d170 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du170 v8 v9 v10 v11
du170 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T52 -> T52
du170 v0 v1 v2 v3
  = case coe v3 of
      C60 -> coe v3
      C74 v8 v9
        -> case coe v1 of
             (:) v10 v11
               -> case coe v2 of
                    (:) v12 v13
                      -> coe
                           C74 (coe v0 v10 v12 v8)
                           (coe du170 (coe v0) (coe v11) (coe v13) (coe v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name184 = "Data.List.Relation.Binary.Pointwise.reflexive"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T52 -> T52
d184 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du184 v8 v9 v10 v11
du184 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T52 -> T52
du184 v0 v1 v2 v3
  = case coe v3 of
      C60 -> coe v3
      C74 v8 v9
        -> case coe v1 of
             (:) v10 v11
               -> case coe v2 of
                    (:) v12 v13
                      -> coe
                           C74 (coe v0 v10 v12 v8)
                           (coe du184 (coe v0) (coe v11) (coe v13) (coe v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name196 = "Data.List.Relation.Binary.Pointwise.refl"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> T52
d196 v0 v1 v2 v3 v4 v5 = du196 v4 v5
du196 :: (AgdaAny -> AgdaAny) -> [AgdaAny] -> T52
du196 v0 v1
  = case coe v1 of
      [] -> coe C60
      (:) v2 v3 -> coe C74 (coe v0 v2) (coe du196 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name210 = "Data.List.Relation.Binary.Pointwise.symmetric"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T52 -> T52
d210 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du210 v8 v9 v10 v11
du210 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T52 -> T52
du210 v0 v1 v2 v3
  = case coe v3 of
      C60 -> coe v3
      C74 v8 v9
        -> case coe v1 of
             (:) v10 v11
               -> case coe v2 of
                    (:) v12 v13
                      -> coe
                           C74 (coe v0 v10 v12 v8)
                           (coe du210 (coe v0) (coe v11) (coe v13) (coe v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name226 = "Data.List.Relation.Binary.Pointwise.transitive"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
d226 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
  = du226 v12 v13 v14 v15 v16 v17
du226 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
du226 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C60 -> coe seq (coe v5) (coe v4)
      C74 v10 v11
        -> case coe v1 of
             (:) v12 v13
               -> case coe v2 of
                    (:) v14 v15
                      -> case coe v5 of
                           C74 v20 v21
                             -> case coe v3 of
                                  (:) v22 v23
                                    -> coe
                                         C74 (coe v0 v12 v14 v22 v10 v20)
                                         (coe
                                            du226 (coe v0) (coe v13) (coe v15) (coe v23) (coe v11)
                                            (coe v21))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name246 = "Data.List.Relation.Binary.Pointwise.antisymmetric"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
d246 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du246 v10 v11 v12 v13 v14
du246 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
du246 v0 v1 v2 v3 v4
  = case coe v3 of
      C60 -> coe seq (coe v4) (coe v3)
      C74 v9 v10
        -> case coe v1 of
             (:) v11 v12
               -> case coe v2 of
                    (:) v13 v14
                      -> case coe v4 of
                           C74 v19 v20
                             -> coe
                                  C74 (coe v0 v11 v13 v9 v19)
                                  (coe du246 (coe v0) (coe v12) (coe v14) (coe v10) (coe v20))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name264 = "Data.List.Relation.Binary.Pointwise.respects₂"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d264 v0 v1 v2 v3 v4 v5 v6 = du264 v6
du264 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du264 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du276 (coe v0))
      (coe du286 (coe v0))
name276 = "Data.List.Relation.Binary.Pointwise._.respʳ"
d276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
d276 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du276 v6 v7 v8 v9 v10 v11
du276 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
du276 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C60 -> coe seq (coe v5) (coe v4)
      C74 v10 v11
        -> case coe v2 of
             (:) v12 v13
               -> case coe v3 of
                    (:) v14 v15
                      -> case coe v5 of
                           C74 v20 v21
                             -> case coe v1 of
                                  (:) v22 v23
                                    -> coe
                                         C74
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d28 v0 v22 v12 v14 v10
                                            v20)
                                         (coe
                                            du276 (coe v0) (coe v23) (coe v13) (coe v15) (coe v11)
                                            (coe v21))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name286 = "Data.List.Relation.Binary.Pointwise._.respˡ"
d286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
d286 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du286 v6 v7 v8 v9 v10 v11
du286 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
du286 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C60 -> coe seq (coe v5) (coe v4)
      C74 v10 v11
        -> case coe v2 of
             (:) v12 v13
               -> case coe v3 of
                    (:) v14 v15
                      -> case coe v5 of
                           C74 v20 v21
                             -> case coe v1 of
                                  (:) v22 v23
                                    -> coe
                                         C74
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d30 v0 v22 v12 v14 v10
                                            v20)
                                         (coe
                                            du286 (coe v0) (coe v23) (coe v13) (coe v15) (coe v11)
                                            (coe v21))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name310 = "Data.List.Relation.Binary.Pointwise._.decidable"
d310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
d310 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du310 v6 v7 v8
du310 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
du310 v0 v1 v2
  = case coe v1 of
      []
        -> case coe v2 of
             []
               -> coe
                    MAlonzo.Code.Relation.Nullary.C46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                    (coe MAlonzo.Code.Relation.Nullary.C22 (coe C60))
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Relation.Nullary.C46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
                    (coe MAlonzo.Code.Relation.Nullary.C26)
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v3 v4
        -> case coe v2 of
             []
               -> coe
                    MAlonzo.Code.Relation.Nullary.C46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
                    (coe MAlonzo.Code.Relation.Nullary.C26)
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
                    (coe MAlonzo.Code.Data.Product.du232 (coe C74))
                    (coe
                       MAlonzo.Code.Relation.Nullary.Product.du30 (coe v0 v3 v5)
                       (coe du310 (coe v0) (coe v4) (coe v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name338 = "Data.List.Relation.Binary.Pointwise._.isEquivalence"
d338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
d338 v0 v1 v2 v3 v4 = du338 v4
du338 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
du338 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C483
      (coe
         du196 (coe MAlonzo.Code.Relation.Binary.Structures.d34 (coe v0)))
      (coe
         du210 (coe MAlonzo.Code.Relation.Binary.Structures.d36 (coe v0)))
      (coe
         du226 (coe MAlonzo.Code.Relation.Binary.Structures.d38 (coe v0)))
name358 = "Data.List.Relation.Binary.Pointwise._.isDecEquivalence"
d358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
d358 v0 v1 v2 v3 v4 = du358 v4
du358 ::
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
du358 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C1529
      (coe
         du338 (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v0)))
      (coe
         du310 (coe MAlonzo.Code.Relation.Binary.Structures.d52 (coe v0)))
name396 = "Data.List.Relation.Binary.Pointwise._.isPreorder"
d396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d396 v0 v1 v2 v3 v4 v5 v6 = du396 v6
du396 ::
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du396 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe
         du338 (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0)))
      (coe
         du184 (coe MAlonzo.Code.Relation.Binary.Structures.d82 (coe v0)))
      (coe
         du226 (coe MAlonzo.Code.Relation.Binary.Structures.d84 (coe v0)))
name432 = "Data.List.Relation.Binary.Pointwise._.isPartialOrder"
d432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d432 v0 v1 v2 v3 v4 v5 v6 = du432 v6
du432 ::
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du432 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865
      (coe
         du396 (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v0)))
      (coe
         du246 (coe MAlonzo.Code.Relation.Binary.Structures.d128 (coe v0)))
name472 = "Data.List.Relation.Binary.Pointwise.setoid"
d472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d472 v0 v1 v2 = du472 v2
du472 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
du472 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe du338 (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)))
name476 = "Data.List.Relation.Binary.Pointwise.decSetoid"
d476 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84
d476 v0 v1 v2 = du476 v2
du476 ::
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84
du476 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C939
      (coe
         du358 (coe MAlonzo.Code.Relation.Binary.Bundles.d100 (coe v0)))
name480 = "Data.List.Relation.Binary.Pointwise.preorder"
d480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d480 v0 v1 v2 v3 = du480 v3
du480 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du480 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509
      (coe
         du396 (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)))
name484 = "Data.List.Relation.Binary.Pointwise.poset"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d484 v0 v1 v2 v3 = du484 v3
du484 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du484 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365
      (coe
         du432 (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
name502
  = "Data.List.Relation.Binary.Pointwise._.All-resp-Pointwise"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34
d502 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du502 v6 v7 v8 v9 v10
du502 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34
du502 v0 v1 v2 v3 v4
  = case coe v3 of
      C60
        -> coe
             seq (coe v4) (coe MAlonzo.Code.Data.List.Relation.Unary.All.C40)
      C74 v9 v10
        -> case coe v1 of
             (:) v11 v12
               -> case coe v2 of
                    (:) v13 v14
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Unary.All.C50 v17 v18
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.All.C50
                                  (coe v0 v11 v13 v9 v17)
                                  (coe du502 (coe v0) (coe v12) (coe v14) (coe v10) (coe v18))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name516
  = "Data.List.Relation.Binary.Pointwise._.Any-resp-Pointwise"
d516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26
d516 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du516 v6 v7 v8 v9 v10
du516 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26
du516 v0 v1 v2 v3 v4
  = case coe v3 of
      C74 v9 v10
        -> case coe v1 of
             (:) v11 v12
               -> case coe v2 of
                    (:) v13 v14
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C38 v17
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.Any.C38
                                  (coe v0 v11 v13 v9 v17)
                           MAlonzo.Code.Data.List.Relation.Unary.Any.C46 v17
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.Any.C46
                                  (coe du516 (coe v0) (coe v12) (coe v14) (coe v10) (coe v17))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name548
  = "Data.List.Relation.Binary.Pointwise._.AllPairs-resp-Pointwise"
d548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
d548 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du548 v6 v7 v8 v9 v10
du548 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  T52 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
du548 v0 v1 v2 v3 v4
  = case coe v3 of
      C60
        -> coe
             seq (coe v4)
             (coe MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C22)
      C74 v9 v10
        -> case coe v1 of
             (:) v11 v12
               -> case coe v2 of
                    (:) v13 v14
                      -> case coe v0 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C32 v15 v16
                             -> case coe v4 of
                                  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28 v19 v20
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28
                                         (coe
                                            du502 (coe v15 v13) (coe v12) (coe v14) (coe v10)
                                            (coe
                                               MAlonzo.Code.Data.List.Relation.Unary.All.du196
                                               (coe (\ v21 -> coe v16 v21 v11 v13 v9)) (coe v12)
                                               (coe v19)))
                                         (coe
                                            du548 (coe v0) (coe v12) (coe v14) (coe v10) (coe v20))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name580 = "Data.List.Relation.Binary.Pointwise._.Pointwise-length"
d580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] -> T52 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d580 = erased
name606 = "Data.List.Relation.Binary.Pointwise._.tabulate⁺"
d606 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> T52
d606 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du606 v6 v9
du606 ::
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> T52
du606 v0 v1
  = case coe v0 of
      0 -> coe C60
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             C74 (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C10))
             (coe
                du606 (coe v2)
                (coe (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C16 v3))))
name622 = "Data.List.Relation.Binary.Pointwise._.tabulate⁻"
d622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  T52 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
d622 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du622 v9 v10
du622 :: T52 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
du622 v0 v1
  = case coe v0 of
      C74 v6 v7
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10 -> coe v6
             MAlonzo.Code.Data.Fin.Base.C16 v9 -> coe du622 (coe v7) (coe v9)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name658 = "Data.List.Relation.Binary.Pointwise._.++⁺"
d658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
d658 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du658 v6 v7 v10 v11
du658 :: [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
du658 v0 v1 v2 v3
  = case coe v2 of
      C60 -> coe v3
      C74 v8 v9
        -> case coe v0 of
             (:) v10 v11
               -> case coe v1 of
                    (:) v12 v13
                      -> coe C74 v8 (coe du658 (coe v11) (coe v13) (coe v9) (coe v3))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name684 = "Data.List.Relation.Binary.Pointwise._.++-cancelˡ"
d684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T52 -> T52
d684 v0 v1 v2 v3 v4 v5 v6 v7 = du684 v4 v7
du684 :: [AgdaAny] -> T52 -> T52
du684 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v1 of
             C74 v8 v9 -> coe du684 (coe v3) (coe v9)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name700 = "Data.List.Relation.Binary.Pointwise._.++-cancelʳ"
d700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T52 -> T52
d700 v0 v1 v2 v3 v4 v5 v6 v7 = du700 v5 v6 v7
du700 :: [AgdaAny] -> [AgdaAny] -> T52 -> T52
du700 v0 v1 v2
  = case coe v0 of
      []
        -> case coe v1 of
             [] -> coe C60
             (:) v3 v4 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v3 v4
        -> case coe v1 of
             [] -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             (:) v5 v6
               -> case coe v2 of
                    C74 v11 v12 -> coe C74 v11 (coe du700 (coe v4) (coe v6) (coe v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name746 = "Data.List.Relation.Binary.Pointwise._.concat⁺"
d746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [[AgdaAny]] -> [[AgdaAny]] -> T52 -> T52
d746 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du746 v6 v7 v8
du746 :: [[AgdaAny]] -> [[AgdaAny]] -> T52 -> T52
du746 v0 v1 v2
  = case coe v2 of
      C60 -> coe v2
      C74 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v1 of
                    (:) v11 v12
                      -> coe
                           du658 (coe v9) (coe v11) (coe v7)
                           (coe du746 (coe v10) (coe v12) (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name772 = "Data.List.Relation.Binary.Pointwise._.reverseAcc⁺"
d772 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
d772 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du772 v6 v7 v10 v11
du772 :: [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
du772 v0 v1 v2 v3
  = case coe v3 of
      C60 -> coe v2
      C74 v8 v9
        -> case coe v0 of
             (:) v10 v11
               -> case coe v1 of
                    (:) v12 v13
                      -> coe du772 (coe v11) (coe v13) (coe C74 v8 v2) (coe v9)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name790 = "Data.List.Relation.Binary.Pointwise._.ʳ++⁺"
d790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
d790 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du790 v6 v7 v10 v11
du790 :: [AgdaAny] -> [AgdaAny] -> T52 -> T52 -> T52
du790 v0 v1 v2 v3 = coe du772 (coe v0) (coe v1) (coe v3) (coe v2)
name800 = "Data.List.Relation.Binary.Pointwise._.reverse⁺"
d800 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> T52 -> T52
d800 v0 v1 v2 v3 v4 v5 v6 v7 = du800 v6 v7
du800 :: [AgdaAny] -> [AgdaAny] -> T52 -> T52
du800 v0 v1 = coe du772 (coe v0) (coe v1) (coe C60)
name826 = "Data.List.Relation.Binary.Pointwise._.map⁺"
d826 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T52 -> T52
d826 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du826 v10 v11 v14
du826 :: [AgdaAny] -> [AgdaAny] -> T52 -> T52
du826 v0 v1 v2
  = case coe v2 of
      C60 -> coe v2
      C74 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v1 of
                    (:) v11 v12 -> coe C74 v7 (coe du826 (coe v10) (coe v12) (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name852 = "Data.List.Relation.Binary.Pointwise._.map⁻"
d852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T52 -> T52
d852 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du852 v10 v11 v14
du852 :: [AgdaAny] -> [AgdaAny] -> T52 -> T52
du852 v0 v1 v2
  = case coe v0 of
      []
        -> case coe v1 of
             [] -> coe seq (coe v2) (coe C60)
             (:) v3 v4 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v3 v4
        -> case coe v1 of
             [] -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             (:) v5 v6
               -> case coe v2 of
                    C74 v11 v12 -> coe C74 v11 (coe du852 (coe v4) (coe v6) (coe v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name934 = "Data.List.Relation.Binary.Pointwise._.filter⁺"
d934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T52 -> T52
d934 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16
  = du934 v10 v11 v14 v15 v16
du934 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> T52 -> T52
du934 v0 v1 v2 v3 v4
  = case coe v4 of
      C60 -> coe v4
      C74 v9 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v3 of
                    (:) v13 v14
                      -> let v15 = coe v0 v11 in
                         let v16 = coe v1 v13 in
                         case coe v15 of
                           MAlonzo.Code.Relation.Nullary.C46 v17 v18
                             -> if coe v17
                                  then case coe v16 of
                                         MAlonzo.Code.Relation.Nullary.C46 v19 v20
                                           -> if coe v19
                                                then coe
                                                       C74 v9
                                                       (coe
                                                          du934 (coe v0) (coe v1) (coe v12)
                                                          (coe v14) (coe v10))
                                                else coe
                                                       seq (coe v18)
                                                       (coe
                                                          seq (coe v20)
                                                          (coe
                                                             MAlonzo.Code.Data.Empty.d10 () erased
                                                             erased))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  else (case coe v16 of
                                          MAlonzo.Code.Relation.Nullary.C46 v19 v20
                                            -> if coe v19
                                                 then coe
                                                        seq (coe v18)
                                                        (coe
                                                           seq (coe v20)
                                                           (coe
                                                              MAlonzo.Code.Data.Empty.d10 () erased
                                                              erased))
                                                 else coe
                                                        du934 (coe v0) (coe v1) (coe v12) (coe v14)
                                                        (coe v10)
                                          _ -> MAlonzo.RTE.mazUnreachableError)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1006 = "Data.List.Relation.Binary.Pointwise._.replicate⁺"
d1006 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> Integer -> T52
d1006 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1006 v8 v9
du1006 :: AgdaAny -> Integer -> T52
du1006 v0 v1
  = case coe v1 of
      0 -> coe C60
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe C74 v0 (coe du1006 (coe v0) (coe v2))
name1026 = "Data.List.Relation.Binary.Pointwise._.irrelevant"
d1026 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] ->
  [AgdaAny] -> T52 -> T52 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1026 = erased
name1040 = "Data.List.Relation.Binary.Pointwise.Pointwise-≡⇒≡"
d1040 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> T52 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1040 = erased
name1050 = "Data.List.Relation.Binary.Pointwise.≡⇒Pointwise-≡"
d1050 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T52
d1050 v0 v1 v2 v3 v4 = du1050 v2
du1050 :: [AgdaAny] -> T52
du1050 v0 = coe du196 erased (coe v0)
name1052 = "Data.List.Relation.Binary.Pointwise.Pointwise-≡↔≡"
d1052 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d1052 v0 v1 = du1052
du1052 :: MAlonzo.Code.Function.Inverse.T58
du1052
  = coe
      MAlonzo.Code.Function.Inverse.C2555
      (coe MAlonzo.Code.Function.Equality.C763 (coe (\ v0 -> v0)) erased)
      (coe
         MAlonzo.Code.Function.Equality.C763 (coe (\ v0 -> v0))
         (\ v0 v1 v2 -> coe du1050 v0))
      (coe
         MAlonzo.Code.Function.Inverse.C1525
         (coe (\ v0 -> coe du196 erased (coe v0))) erased)
name1058 = "Data.List.Relation.Binary.Pointwise.Rel"
d1058 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () -> (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d1058 = erased
name1060 = "Data.List.Relation.Binary.Pointwise.Rel≡⇒≡"
d1060 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> T52 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1060 = erased
name1062 = "Data.List.Relation.Binary.Pointwise.≡⇒Rel≡"
d1062 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T52
d1062 v0 v1 v2 v3 v4 = coe du1050 v2
name1064 = "Data.List.Relation.Binary.Pointwise.Rel↔≡"
d1064 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d1064 v0 v1 = coe du1052
name1066 = "Data.List.Relation.Binary.Pointwise.decidable-≡"
d1066 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
d1066 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Data.List.Properties.du54 v2 v3 v4
name54229 = "Data.List.Relation.Binary.Pointwise._..absurdlambda"
d54229 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> [AgdaAny] -> T52 -> MAlonzo.Code.Data.Empty.T4
d54229 = erased
name54765 = "Data.List.Relation.Binary.Pointwise._..absurdlambda"
d54765 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> [AgdaAny] -> T52 -> MAlonzo.Code.Data.Empty.T4
d54765 = erased
name120493 = "Data.List.Relation.Binary.Pointwise._..absurdlambda"
d120493 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T52 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d120493 = erased
name121849 = "Data.List.Relation.Binary.Pointwise._..absurdlambda"
d121849 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T52 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d121849 = erased
