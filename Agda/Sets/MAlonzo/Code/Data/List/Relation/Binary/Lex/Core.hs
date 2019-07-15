{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Relation.Binary.Lex.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Nullary

name26 = "Data.List.Relation.Binary.Lex.Core.Lex"
d26 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T26 = C42 AgdaAny | C48 | C60 AgdaAny | C74 AgdaAny T26
name94 = "Data.List.Relation.Binary.Lex.Core._._≋_"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d94 = erased
name96 = "Data.List.Relation.Binary.Lex.Core._._<_"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d96 = erased
name106 = "Data.List.Relation.Binary.Lex.Core._.¬≤-this"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  T26 -> MAlonzo.Code.Data.Empty.T4
d106 = erased
name130 = "Data.List.Relation.Binary.Lex.Core._.¬≤-next"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (T26 -> MAlonzo.Code.Data.Empty.T4) ->
  T26 -> MAlonzo.Code.Data.Empty.T4
d130 = erased
name144 = "Data.List.Relation.Binary.Lex.Core._.transitive"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T26 -> T26 -> T26
d144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du144 v7 v8 v9 v10 v11 v12
du144 ::
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T26 -> T26 -> T26
du144 v0 v1 v2 v3 v4 v5
  = coe (du156 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))
name156 = "Data.List.Relation.Binary.Lex.Core._._.trans"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T26 -> T26 -> T26
d156 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
  = du156 v7 v8 v9 v13 v14 v15 v16 v17
du156 ::
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T26 -> T26 -> T26
du156 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v6 of
      C42 v8
        -> case coe v7 of
             C42 v9 -> coe v6
             C48 -> coe (\ v11 v12 -> C48) erased erased
             _ -> MAlonzo.RTE.mazUnreachableError
      C48 -> coe (seq (coe v7) (coe (\ v10 v11 -> C48) erased erased))
      C60 v12
        -> case coe v7 of
             C60 v17
               -> case coe v3 of
                    (:) v18 v19
                      -> case coe v4 of
                           (:) v20 v21
                             -> case coe v5 of
                                  (:) v22 v23
                                    -> coe
                                         (\ v24 v25 v26 v27 v28 -> C60 v28) erased erased erased
                                         erased (coe v2 v18 v20 v22 v12 v17)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             C74 v17 v18
               -> case coe v3 of
                    (:) v19 v20
                      -> case coe v4 of
                           (:) v21 v22
                             -> case coe v5 of
                                  (:) v23 v24
                                    -> coe
                                         (\ v25 v26 v27 v28 v29 -> C60 v29) erased erased erased
                                         erased
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d28 v1 v19 v21 v23 v17
                                            v12)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C74 v12 v13
        -> case coe v7 of
             C60 v18
               -> case coe v3 of
                    (:) v19 v20
                      -> case coe v4 of
                           (:) v21 v22
                             -> case coe v5 of
                                  (:) v23 v24
                                    -> coe
                                         (\ v25 v26 v27 v28 v29 -> C60 v29) erased erased erased
                                         erased
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d30 v1 v23 v21 v19
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Core.d416 v0 v19 v21
                                               v12)
                                            v18)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             C74 v18 v19
               -> case coe v3 of
                    (:) v20 v21
                      -> case coe v4 of
                           (:) v22 v23
                             -> case coe v5 of
                                  (:) v24 v25
                                    -> coe
                                         (\ v26 v27 v28 v29 v30 v31 -> C74 v30 v31) erased erased
                                         erased erased
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Core.d418 v0 v20 v22 v24
                                            v12 v18)
                                         (du156
                                            (coe v0) (coe v1) (coe v2) (coe v21) (coe v23) (coe v25)
                                            (coe v13) (coe v19))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name192 = "Data.List.Relation.Binary.Lex.Core._.antisymmetric"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  T26 -> T26 -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
d192 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du192 v10 v11
du192 ::
  [AgdaAny] ->
  [AgdaAny] ->
  T26 -> T26 -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
du192 v0 v1 = coe (du204 (coe v0) (coe v1))
name204 = "Data.List.Relation.Binary.Lex.Core._._.as"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  T26 -> T26 -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
d204 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du204 v12 v13 v14 v15
du204 ::
  [AgdaAny] ->
  [AgdaAny] ->
  T26 -> T26 -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
du204 v0 v1 v2 v3
  = case coe v2 of
      C42 v4
        -> coe
             (seq
                (coe v3)
                (coe MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C58))
      C60 v8
        -> coe
             (seq (coe v3) (coe MAlonzo.Code.Data.Empty.d10 () erased erased))
      C74 v8 v9
        -> case coe v3 of
             C60 v14 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             C74 v14 v15
               -> case coe v0 of
                    (:) v16 v17
                      -> case coe v1 of
                           (:) v18 v19
                             -> coe
                                  (\ v20 v21 v22 v23 v24 v25 ->
                                     MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C72 v24 v25)
                                  erased erased erased erased v8
                                  (du204 (coe v17) (coe v19) (coe v9) (coe v15))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name230 = "Data.List.Relation.Binary.Lex.Core._.respects₂"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d230 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du230 v7 v8
du230 ::
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du230 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
        -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe (du250 (coe v0) (coe v2))) (coe (du268 (coe v0) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name250 = "Data.List.Relation.Binary.Lex.Core._._.resp¹"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 -> T26 -> T26
d250 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du250 v7 v8 v10 v11 v12 v13 v14
du250 ::
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 -> T26 -> T26
du250 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C58 -> coe v6
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C72 v11 v12
        -> case coe v6 of
             C48 -> coe (\ v15 v16 -> C48) erased erased
             C60 v17
               -> case coe v2 of
                    (:) v18 v19
                      -> case coe v3 of
                           (:) v20 v21
                             -> case coe v4 of
                                  (:) v22 v23
                                    -> coe
                                         (\ v24 v25 v26 v27 v28 -> C60 v28) erased erased erased
                                         erased (coe v1 v18 v20 v22 v11 v17)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             C74 v17 v18
               -> case coe v2 of
                    (:) v19 v20
                      -> case coe v3 of
                           (:) v21 v22
                             -> case coe v4 of
                                  (:) v23 v24
                                    -> coe
                                         (\ v25 v26 v27 v28 v29 v30 -> C74 v29 v30) erased erased
                                         erased erased
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Core.d418 v0 v19 v21 v23
                                            v17 v11)
                                         (du250
                                            (coe v0) (coe v1) (coe v20) (coe v22) (coe v24)
                                            (coe v12) (coe v18))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name268 = "Data.List.Relation.Binary.Lex.Core._._.resp²"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 -> T26 -> T26
d268 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du268 v7 v9 v10 v11 v12 v13 v14
du268 ::
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 -> T26 -> T26
du268 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C58 -> coe v6
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C72 v11 v12
        -> case coe v6 of
             C60 v17
               -> case coe v2 of
                    (:) v18 v19
                      -> case coe v3 of
                           (:) v20 v21
                             -> case coe v4 of
                                  (:) v22 v23
                                    -> coe
                                         (\ v24 v25 v26 v27 v28 -> C60 v28) erased erased erased
                                         erased (coe v1 v18 v20 v22 v11 v17)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             C74 v17 v18
               -> case coe v2 of
                    (:) v19 v20
                      -> case coe v3 of
                           (:) v21 v22
                             -> case coe v4 of
                                  (:) v23 v24
                                    -> coe
                                         (\ v25 v26 v27 v28 v29 v30 -> C74 v29 v30) erased erased
                                         erased erased
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Core.d418 v0 v23 v21 v19
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Core.d416 v0 v21 v23
                                               v11)
                                            v17)
                                         (du268
                                            (coe v0) (coe v1) (coe v20) (coe v22) (coe v24)
                                            (coe v12) (coe v18))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name284 = "Data.List.Relation.Binary.Lex.Core._.decidable"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T14
d284 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du284 v7 v8 v9 v10 v11
du284 ::
  MAlonzo.Code.Relation.Nullary.T14 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T14
du284 v0 v1 v2 v3 v4
  = let v5
          = case coe v3 of
              []
                -> coe
                     (seq
                        (coe v4)
                        (coe
                           (MAlonzo.Code.Relation.Nullary.C22
                              (coe (\ v5 v6 -> C48) erased erased))))
              (:) v5 v6
                -> case coe v4 of
                     [] -> coe (\ v7 -> MAlonzo.Code.Relation.Nullary.C26) erased
                     (:) v7 v8
                       -> let v9 = coe v2 v5 v7 in
                          case coe v9 of
                            MAlonzo.Code.Relation.Nullary.C22 v10
                              -> coe
                                   (MAlonzo.Code.Relation.Nullary.C22
                                      (coe
                                         (\ v11 v12 v13 v14 v15 -> C60 v15) erased erased erased
                                         erased v10))
                            MAlonzo.Code.Relation.Nullary.C26
                              -> let v11 = coe v1 v5 v7 in
                                 case coe v11 of
                                   MAlonzo.Code.Relation.Nullary.C22 v12
                                     -> let v13
                                              = du284
                                                  (coe v0) (coe v1) (coe v2) (coe v6) (coe v8) in
                                        case coe v13 of
                                          MAlonzo.Code.Relation.Nullary.C22 v14
                                            -> coe
                                                 (MAlonzo.Code.Relation.Nullary.C22
                                                    (coe
                                                       (\ v15 v16 v17 v18 v19 v20 -> C74 v19 v20)
                                                       erased erased erased erased v12 v14))
                                          MAlonzo.Code.Relation.Nullary.C26
                                            -> coe
                                                 (\ v15 -> MAlonzo.Code.Relation.Nullary.C26) erased
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   MAlonzo.Code.Relation.Nullary.C26
                                     -> coe (\ v13 -> MAlonzo.Code.Relation.Nullary.C26) erased
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError in
    case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v6
        -> case coe v3 of
             []
               -> case coe v4 of
                    [] -> coe (MAlonzo.Code.Relation.Nullary.C22 (coe (C42 (coe v6))))
                    _ -> coe v5
             (:) v7 v8
               -> case coe v4 of
                    [] -> coe (\ v9 -> MAlonzo.Code.Relation.Nullary.C26) erased
                    (:) v9 v10
                      -> let v11 = coe v2 v7 v9 in
                         case coe v11 of
                           MAlonzo.Code.Relation.Nullary.C22 v12
                             -> coe
                                  (MAlonzo.Code.Relation.Nullary.C22
                                     (coe
                                        (\ v13 v14 v15 v16 v17 -> C60 v17) erased erased erased
                                        erased v12))
                           MAlonzo.Code.Relation.Nullary.C26
                             -> let v13 = coe v1 v7 v9 in
                                case coe v13 of
                                  MAlonzo.Code.Relation.Nullary.C22 v14
                                    -> let v15
                                             = du284
                                                 (coe v0) (coe v1) (coe v2) (coe v8) (coe v10) in
                                       case coe v15 of
                                         MAlonzo.Code.Relation.Nullary.C22 v16
                                           -> coe
                                                (MAlonzo.Code.Relation.Nullary.C22
                                                   (coe
                                                      (\ v17 v18 v19 v20 v21 v22 -> C74 v21 v22)
                                                      erased erased erased erased v14 v16))
                                         MAlonzo.Code.Relation.Nullary.C26
                                           -> coe
                                                (\ v17 -> MAlonzo.Code.Relation.Nullary.C26) erased
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  MAlonzo.Code.Relation.Nullary.C26
                                    -> coe (\ v15 -> MAlonzo.Code.Relation.Nullary.C26) erased
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Relation.Nullary.C26
        -> case coe v3 of
             []
               -> case coe v4 of
                    [] -> coe (\ v7 -> MAlonzo.Code.Relation.Nullary.C26) erased
                    _ -> coe v5
             (:) v7 v8
               -> case coe v4 of
                    [] -> coe (\ v9 -> MAlonzo.Code.Relation.Nullary.C26) erased
                    (:) v9 v10
                      -> let v11 = coe v2 v7 v9 in
                         case coe v11 of
                           MAlonzo.Code.Relation.Nullary.C22 v12
                             -> coe
                                  (MAlonzo.Code.Relation.Nullary.C22
                                     (coe
                                        (\ v13 v14 v15 v16 v17 -> C60 v17) erased erased erased
                                        erased v12))
                           MAlonzo.Code.Relation.Nullary.C26
                             -> let v13 = coe v1 v7 v9 in
                                case coe v13 of
                                  MAlonzo.Code.Relation.Nullary.C22 v14
                                    -> let v15
                                             = du284
                                                 (coe
                                                    (\ v15 -> MAlonzo.Code.Relation.Nullary.C26)
                                                    erased)
                                                 (coe v1) (coe v2) (coe v8) (coe v10) in
                                       case coe v15 of
                                         MAlonzo.Code.Relation.Nullary.C22 v16
                                           -> coe
                                                (MAlonzo.Code.Relation.Nullary.C22
                                                   (coe
                                                      (\ v17 v18 v19 v20 v21 v22 -> C74 v21 v22)
                                                      erased erased erased erased v14 v16))
                                         MAlonzo.Code.Relation.Nullary.C26
                                           -> coe
                                                (\ v17 -> MAlonzo.Code.Relation.Nullary.C26) erased
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  MAlonzo.Code.Relation.Nullary.C26
                                    -> coe (\ v15 -> MAlonzo.Code.Relation.Nullary.C26) erased
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name68511 = "Data.List.Relation.Binary.Lex.Core._..absurdlambda"
d68511 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> [AgdaAny] -> T26 -> MAlonzo.Code.Data.Empty.T4
d68511 = erased
