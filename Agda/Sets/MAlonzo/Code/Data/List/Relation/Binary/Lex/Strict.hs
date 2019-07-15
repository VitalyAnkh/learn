{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Relation.Binary.Lex.Strict where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Relation.Binary.Lex.Core
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Nullary

name28 = "Data.List.Relation.Binary.Lex.Strict._.Lex-<"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d28 = erased
name38 = "Data.List.Relation.Binary.Lex.Strict._._._≋_"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d38 = erased
name40 = "Data.List.Relation.Binary.Lex.Strict._._._<_"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d40 = erased
name42 = "Data.List.Relation.Binary.Lex.Strict._._.¬[]<[]"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.Empty.T4
d42 = erased
name44 = "Data.List.Relation.Binary.Lex.Strict._._.<-irreflexive"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.Empty.T4
d44 = erased
name62 = "Data.List.Relation.Binary.Lex.Strict._._.<-asymmetric"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.Empty.T4
d62 = erased
name76 = "Data.List.Relation.Binary.Lex.Strict._._._.asym"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.Empty.T4
d76 = erased
name104
  = "Data.List.Relation.Binary.Lex.Strict._._.<-antisymmetric"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
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
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
d104 v0 v1 v2 v3 v4 v5 = du104
du104 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
du104
  = coe
      (\ v0 v1 v2 v3 v4 ->
         MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du192 v3 v4)
name106 = "Data.List.Relation.Binary.Lex.Strict._._.<-transitive"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26
d106 v0 v1 v2 v3 v4 v5 = du106
du106 ::
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26
du106 = coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du144
name108 = "Data.List.Relation.Binary.Lex.Strict._._.<-compare"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Binary.Core.T198
d108 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du108 v6 v7 v8 v9
du108 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Binary.Core.T198
du108 v0 v1 v2 v3
  = case coe v2 of
      []
        -> case coe v3 of
             []
               -> coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Relation.Binary.Core.C220 v5) erased
                    MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C58 erased
             (:) v4 v5
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Relation.Binary.Core.C212 v6)
                    (coe
                       (\ v6 v7 -> MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C48)
                       erased erased)
                    erased erased
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v4 v5
        -> case coe v3 of
             []
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Relation.Binary.Core.C228 v8) erased
                    erased
                    (coe
                       (\ v6 v7 -> MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C48)
                       erased erased)
             (:) v6 v7
               -> let v8 = coe v1 v4 v6 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Binary.Core.C212 v9
                      -> coe
                           (\ v12 v13 v14 -> MAlonzo.Code.Relation.Binary.Core.C212 v12)
                           (coe
                              (\ v12 v13 v14 v15 v16 ->
                                 MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C60 v16)
                              erased erased erased erased v9)
                           erased erased
                    MAlonzo.Code.Relation.Binary.Core.C220 v10
                      -> let v12 = du108 (coe v0) (coe v1) (coe v5) (coe v7) in
                         case coe v12 of
                           MAlonzo.Code.Relation.Binary.Core.C212 v13
                             -> coe
                                  (\ v16 v17 v18 -> MAlonzo.Code.Relation.Binary.Core.C212 v16)
                                  (coe
                                     (\ v16 v17 v18 v19 v20 v21 ->
                                        MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C74 v20 v21)
                                     erased erased erased erased v10 v13)
                                  erased erased
                           MAlonzo.Code.Relation.Binary.Core.C220 v14
                             -> coe
                                  (\ v16 v17 v18 -> MAlonzo.Code.Relation.Binary.Core.C220 v17)
                                  erased
                                  (coe
                                     (\ v16 v17 v18 v19 v20 v21 ->
                                        MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C72
                                          v20 v21)
                                     erased erased erased erased v10 v14)
                                  erased
                           MAlonzo.Code.Relation.Binary.Core.C228 v15
                             -> coe
                                  (\ v16 v17 v18 -> MAlonzo.Code.Relation.Binary.Core.C228 v18)
                                  erased erased
                                  (coe
                                     (\ v16 v17 v18 v19 v20 v21 ->
                                        MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C74 v20 v21)
                                     erased erased erased erased (coe v0 v4 v6 v10) v15)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Binary.Core.C228 v11
                      -> coe
                           (\ v12 v13 v14 -> MAlonzo.Code.Relation.Binary.Core.C228 v14)
                           erased erased
                           (coe
                              (\ v12 v13 v14 v15 v16 ->
                                 MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C60 v16)
                              erased erased erased erased v11)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name276 = "Data.List.Relation.Binary.Lex.Strict._._.<-decidable"
d276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T14
d276 v0 v1 v2 v3 v4 v5 = du276
du276 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T14
du276
  = coe
      (MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du284
         (coe (\ v0 -> MAlonzo.Code.Relation.Nullary.C26) erased))
name278 = "Data.List.Relation.Binary.Lex.Strict._._.<-respects₂"
d278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d278 v0 v1 v2 v3 v4 v5 = du278
du278 ::
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du278 = coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du230
name280
  = "Data.List.Relation.Binary.Lex.Strict._._.<-isStrictPartialOrder"
d280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T570 ->
  MAlonzo.Code.Relation.Binary.T570
d280 v0 v1 v2 v3 v4 v5 v6 = du280 v6
du280 ::
  MAlonzo.Code.Relation.Binary.T570 ->
  MAlonzo.Code.Relation.Binary.T570
du280 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C3423 v1 v3 v4)
      (MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du382
         (coe (MAlonzo.Code.Relation.Binary.d592 (coe v0))))
      erased
      (MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du144
         (coe (MAlonzo.Code.Relation.Binary.d592 (coe v0)))
         (coe (MAlonzo.Code.Relation.Binary.d598 (coe v0)))
         (coe (MAlonzo.Code.Relation.Binary.d596 (coe v0))))
      (MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du230
         (coe (MAlonzo.Code.Relation.Binary.d592 (coe v0)))
         (coe (MAlonzo.Code.Relation.Binary.d598 (coe v0))))
name316
  = "Data.List.Relation.Binary.Lex.Strict._._.<-isStrictTotalOrder"
d316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T1202 ->
  MAlonzo.Code.Relation.Binary.T1202
d316 v0 v1 v2 v3 v4 v5 v6 = du316 v2 v6
du316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T1202 ->
  MAlonzo.Code.Relation.Binary.T1202
du316 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C7321
         (coe
            (MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du382
               (coe (MAlonzo.Code.Relation.Binary.d1222 (coe v1)))))
         (coe
            du106 (MAlonzo.Code.Relation.Binary.d1222 (coe v1))
            (MAlonzo.Code.Relation.Binary.du1252 (coe v0) (coe v1))
            (MAlonzo.Code.Relation.Binary.d1224 (coe v1)))
         (coe
            (du108
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d416
                     (coe (MAlonzo.Code.Relation.Binary.d1222 (coe v1)))))
               (coe (MAlonzo.Code.Relation.Binary.d1226 (coe v1))))))
name370
  = "Data.List.Relation.Binary.Lex.Strict.<-strictPartialOrder"
d370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T628 ->
  MAlonzo.Code.Relation.Binary.T628
d370 v0 v1 v2 v3 = du370 v3
du370 ::
  MAlonzo.Code.Relation.Binary.T628 ->
  MAlonzo.Code.Relation.Binary.T628
du370 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C4141 v4) erased
      erased erased
      (du280 (coe (MAlonzo.Code.Relation.Binary.d650 (coe v0))))
name420 = "Data.List.Relation.Binary.Lex.Strict.<-strictTotalOrder"
d420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T1268 ->
  MAlonzo.Code.Relation.Binary.T1268
d420 v0 v1 v2 v3 = du420 v2 v3
du420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T1268 ->
  MAlonzo.Code.Relation.Binary.T1268
du420 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C8495 v5) erased
      erased erased
      (du316
         (coe v0) (coe (MAlonzo.Code.Relation.Binary.d1290 (coe v1))))
name506 = "Data.List.Relation.Binary.Lex.Strict._.Lex-≤"
d506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d506 = erased
name512 = "Data.List.Relation.Binary.Lex.Strict._.≤-reflexive"
d512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26
d512 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du512 v6 v7 v8
du512 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26
du512 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C58
        -> coe (MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C42 erased)
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C72 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v1 of
                    (:) v11 v12
                      -> coe
                           (\ v13 v14 v15 v16 v17 v18 ->
                              MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C74 v17 v18)
                           erased erased erased erased v7 (du512 (coe v10) (coe v12) (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name534 = "Data.List.Relation.Binary.Lex.Strict._._._≋_"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d534 = erased
name536 = "Data.List.Relation.Binary.Lex.Strict._._._≤_"
d536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d536 = erased
name538
  = "Data.List.Relation.Binary.Lex.Strict._._.≤-antisymmetric"
d538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
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
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
d538 v0 v1 v2 v3 v4 v5 = du538
du538 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50
du538
  = coe
      (\ v0 v1 v2 v3 v4 ->
         MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du192 v3 v4)
name540 = "Data.List.Relation.Binary.Lex.Strict._._.≤-transitive"
d540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26
d540 v0 v1 v2 v3 v4 v5 = du540
du540 ::
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26
du540 = coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du144
name542 = "Data.List.Relation.Binary.Lex.Strict._._.≤-total"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30
d542 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du542 v6 v7 v8 v9
du542 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30
du542 v0 v1 v2 v3
  = case coe v2 of
      []
        -> case coe v3 of
             []
               -> coe
                    (MAlonzo.Code.Data.Sum.Base.C38
                       (coe (MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C42 erased)))
             (:) v4 v5
               -> coe
                    (MAlonzo.Code.Data.Sum.Base.C38
                       (coe
                          (\ v6 v7 -> MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C48)
                          erased erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v4 v5
        -> case coe v3 of
             []
               -> coe
                    (MAlonzo.Code.Data.Sum.Base.C42
                       (coe
                          (\ v6 v7 -> MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C48)
                          erased erased))
             (:) v6 v7
               -> let v8 = coe v1 v4 v6 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Binary.Core.C212 v9
                      -> coe
                           (MAlonzo.Code.Data.Sum.Base.C38
                              (coe
                                 (\ v12 v13 v14 v15 v16 ->
                                    MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C60 v16)
                                 erased erased erased erased v9))
                    MAlonzo.Code.Relation.Binary.Core.C220 v10
                      -> let v12 = du542 (coe v0) (coe v1) (coe v5) (coe v7) in
                         case coe v12 of
                           MAlonzo.Code.Data.Sum.Base.C38 v13
                             -> coe
                                  (MAlonzo.Code.Data.Sum.Base.C38
                                     (coe
                                        (\ v14 v15 v16 v17 v18 v19 ->
                                           MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C74
                                             v18 v19)
                                        erased erased erased erased v10 v13))
                           MAlonzo.Code.Data.Sum.Base.C42 v13
                             -> coe
                                  (MAlonzo.Code.Data.Sum.Base.C42
                                     (coe
                                        (\ v14 v15 v16 v17 v18 v19 ->
                                           MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C74
                                             v18 v19)
                                        erased erased erased erased (coe v0 v4 v6 v10) v13))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Binary.Core.C228 v11
                      -> coe
                           (MAlonzo.Code.Data.Sum.Base.C42
                              (coe
                                 (\ v12 v13 v14 v15 v16 ->
                                    MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C60 v16)
                                 erased erased erased erased v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name646 = "Data.List.Relation.Binary.Lex.Strict._._.≤-decidable"
d646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T14
d646 v0 v1 v2 v3 v4 v5 = du646
du646 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T14
du646
  = coe
      (MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du284
         (coe (MAlonzo.Code.Relation.Nullary.C22 erased)))
name648 = "Data.List.Relation.Binary.Lex.Strict._._.≤-respects₂"
d648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d648 v0 v1 v2 v3 v4 v5 = du648
du648 ::
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du648 = coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du230
name650 = "Data.List.Relation.Binary.Lex.Strict._._.≤-isPreorder"
d650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.T16
d650 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du650 v6 v7 v8
du650 ::
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.T16
du650 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.C17
         (coe
            (MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du382 (coe v0)))
         (coe du512)
         (coe
            (MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du144
               (coe v0) (coe v2) (coe v1))))
name658
  = "Data.List.Relation.Binary.Lex.Strict._._.≤-isPartialOrder"
d658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T570 ->
  MAlonzo.Code.Relation.Binary.T256
d658 v0 v1 v2 v3 v4 v5 v6 = du658 v6
du658 ::
  MAlonzo.Code.Relation.Binary.T570 ->
  MAlonzo.Code.Relation.Binary.T256
du658 v0
  = coe
      (MAlonzo.Code.Relation.Binary.C1639
         (coe
            (du650
               (coe (MAlonzo.Code.Relation.Binary.d592 (coe v0)))
               (coe (MAlonzo.Code.Relation.Binary.d596 (coe v0)))
               (coe (MAlonzo.Code.Relation.Binary.d598 (coe v0)))))
         (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du192))
name694 = "Data.List.Relation.Binary.Lex.Strict._._.≤-isTotalOrder"
d694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T1202 ->
  MAlonzo.Code.Relation.Binary.T876
d694 v0 v1 v2 v3 v4 v5 v6 = du694 v2 v6
du694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T1202 ->
  MAlonzo.Code.Relation.Binary.T876
du694 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C5461
         (coe
            (du658
               (coe (MAlonzo.Code.Relation.Binary.du1254 (coe v0) (coe v1)))))
         (coe
            (du542
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d416
                     (coe (MAlonzo.Code.Relation.Binary.d1222 (coe v1)))))
               (coe (MAlonzo.Code.Relation.Binary.d1226 (coe v1))))))
name742
  = "Data.List.Relation.Binary.Lex.Strict._._.≤-isDecTotalOrder"
d742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T1202 ->
  MAlonzo.Code.Relation.Binary.T1010
d742 v0 v1 v2 v3 v4 v5 v6 = du742 v2 v6
du742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T1202 ->
  MAlonzo.Code.Relation.Binary.T1010
du742 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C6205
         (coe (du694 (coe v0) (coe v1)))
         (coe
            (MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du286
               (coe (MAlonzo.Code.Relation.Binary.du1228 (coe v1)))))
         (coe
            du646 (MAlonzo.Code.Relation.Binary.du1228 (coe v1))
            (MAlonzo.Code.Relation.Binary.du1230 (coe v1))))
name796 = "Data.List.Relation.Binary.Lex.Strict.≤-preorder"
d796 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  MAlonzo.Code.Relation.Binary.T74
d796 v0 v1 v2 v3 = du796 v3
du796 ::
  MAlonzo.Code.Relation.Binary.T74 ->
  MAlonzo.Code.Relation.Binary.T74
du796 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C807 v4) erased
      erased erased
      (du650
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d96 (coe v0)))))
         (coe
            (MAlonzo.Code.Relation.Binary.d40
               (coe (MAlonzo.Code.Relation.Binary.d96 (coe v0)))))
         (coe
            (MAlonzo.Code.Relation.Binary.du66
               (coe (MAlonzo.Code.Relation.Binary.d96 (coe v0))))))
name844 = "Data.List.Relation.Binary.Lex.Strict.≤-partialOrder"
d844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T628 ->
  MAlonzo.Code.Relation.Binary.T310
d844 v0 v1 v2 v3 = du844 v3
du844 ::
  MAlonzo.Code.Relation.Binary.T628 ->
  MAlonzo.Code.Relation.Binary.T310
du844 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C1973 v4) erased
      erased erased
      (du658 (coe (MAlonzo.Code.Relation.Binary.d650 (coe v0))))
name894 = "Data.List.Relation.Binary.Lex.Strict.≤-decTotalOrder"
d894 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T1268 ->
  MAlonzo.Code.Relation.Binary.T1084
d894 v0 v1 v2 v3 = du894 v2 v3
du894 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T1268 ->
  MAlonzo.Code.Relation.Binary.T1084
du894 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C6763 v5) erased
      erased erased
      (du742
         (coe v0) (coe (MAlonzo.Code.Relation.Binary.d1290 (coe v1))))
name25769
  = "Data.List.Relation.Binary.Lex.Strict._._..absurdlambda"
d25769 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 ->
  MAlonzo.Code.Data.Empty.T4
d25769 = erased
name26119
  = "Data.List.Relation.Binary.Lex.Strict._._..absurdlambda"
d26119 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.Empty.T4
d26119 = erased
name26759
  = "Data.List.Relation.Binary.Lex.Strict._._..absurdlambda"
d26759 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.Empty.T4
d26759 = erased
name26987
  = "Data.List.Relation.Binary.Lex.Strict._._..absurdlambda"
d26987 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T50 ->
  MAlonzo.Code.Data.Empty.T4
d26987 = erased
