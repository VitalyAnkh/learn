{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Nullary

name20 = "Relation.Binary.Construct.NonStrictToStrict._<_"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d20 = erased
name26 = "Relation.Binary.Construct.NonStrictToStrict.<⇒≤"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d26 v0 v1 v2 v3 v4 v5 v6 v7 = du26
du26 :: MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
du26 = coe MAlonzo.Code.Agda.Builtin.Sigma.d28
name28 = "Relation.Binary.Construct.NonStrictToStrict.<-irrefl"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d28 = erased
name34 = "Relation.Binary.Construct.NonStrictToStrict.<-trans"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d34 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du34 v6 v7 v8 v9 v10 v11
du34 ::
  MAlonzo.Code.Relation.Binary.T256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du34 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v8 v9
               -> coe
                    (MAlonzo.Code.Agda.Builtin.Sigma.C32
                       (coe
                          MAlonzo.Code.Relation.Binary.d40
                          (MAlonzo.Code.Relation.Binary.d274 (coe v0)) v1 v2 v3 v6 v8)
                       (coe
                          (\ v10 ->
                             coe
                               v7
                               (coe
                                  MAlonzo.Code.Relation.Binary.d276 v0 v1 v2 v6
                                  (coe
                                     MAlonzo.Code.Relation.Binary.d40
                                     (MAlonzo.Code.Relation.Binary.d274 (coe v0)) v2 v3 v1 v8
                                     (coe
                                        MAlonzo.Code.Relation.Binary.d38
                                        (MAlonzo.Code.Relation.Binary.d274 (coe v0)) v3 v1
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Core.d416
                                           (MAlonzo.Code.Relation.Binary.d36
                                              (coe (MAlonzo.Code.Relation.Binary.d274 (coe v0))))
                                           v1 v3 v10)))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name80 = "Relation.Binary.Construct.NonStrictToStrict.<-≤-trans"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d80 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du80 v6 v7 v8 v9 v10 v11 v12 v13 v14
du80 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du80 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v9 v10
        -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe v1 v4 v5 v6 v9 v8)
                (coe
                   (\ v11 ->
                      coe
                        v10 (coe v2 v4 v5 v9 (coe v3 v5 v6 v4 (coe v0 v4 v6 v11) v8)))))
      _ -> MAlonzo.RTE.mazUnreachableError
name98 = "Relation.Binary.Construct.NonStrictToStrict.≤-<-trans"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d98 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du98 v6 v7 v8 v9 v10 v11 v12 v13
du98 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du98 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v8 v9
        -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe v0 v3 v4 v5 v6 v8)
                (coe (\ v10 -> coe v9 (coe v1 v4 v5 v8 (coe v2 v4 v3 v5 v10 v6)))))
      _ -> MAlonzo.RTE.mazUnreachableError
name114 = "Relation.Binary.Construct.NonStrictToStrict.<-asym"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d114 = erased
name124 = "Relation.Binary.Construct.NonStrictToStrict.<-respˡ-≈"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d124 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du124 v6 v7 v8 v9 v10 v11 v12
du124 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du124 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v7 v8
        -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe v1 v2 v3 v4 v5 v7)
                (coe (\ v9 -> coe v8 (coe v0 v3 v4 v2 v5 v9))))
      _ -> MAlonzo.RTE.mazUnreachableError
name138 = "Relation.Binary.Construct.NonStrictToStrict.<-respʳ-≈"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d138 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du138 v6 v7 v8 v9 v10 v11 v12 v13
du138 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du138 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v8 v9
        -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe v2 v3 v4 v5 v6 v8)
                (coe (\ v10 -> coe v9 (coe v1 v3 v5 v4 v10 (coe v0 v4 v5 v6)))))
      _ -> MAlonzo.RTE.mazUnreachableError
name160 = "Relation.Binary.Construct.NonStrictToStrict.<-resp-≈"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d160 v0 v1 v2 v3 v4 v5 v6 v7 = du160 v6 v7
du160 ::
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du160 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
        -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe
                   (du138
                      (coe (MAlonzo.Code.Relation.Binary.Core.d416 (coe v0)))
                      (coe (MAlonzo.Code.Relation.Binary.Core.d418 (coe v0))) (coe v2)))
                (coe
                   (du124
                      (coe (MAlonzo.Code.Relation.Binary.Core.d418 (coe v0))) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name182
  = "Relation.Binary.Construct.NonStrictToStrict.<-trichotomous"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198
d182 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du182 v7 v9 v10 v11
du182 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198
du182 v0 v1 v2 v3
  = let v4 = coe v0 v2 v3 in
    case coe v4 of
      MAlonzo.Code.Relation.Nullary.C22 v5
        -> coe
             (\ v6 v7 v8 -> MAlonzo.Code.Relation.Binary.Core.C220 v7) erased v5
             erased
      MAlonzo.Code.Relation.Nullary.C26
        -> let v6 = coe v1 v2 v3 in
           case coe v6 of
             MAlonzo.Code.Data.Sum.Base.C38 v7
               -> coe
                    (\ v8 v9 v10 -> MAlonzo.Code.Relation.Binary.Core.C212 v8)
                    (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v7) erased) erased erased
             MAlonzo.Code.Data.Sum.Base.C42 v7
               -> coe
                    (\ v8 v9 v10 -> MAlonzo.Code.Relation.Binary.Core.C228 v10) erased
                    erased (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v7) erased)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name264 = "Relation.Binary.Construct.NonStrictToStrict.<-decidable"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d264 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du264 v6 v7 v8 v9
du264 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du264 v0 v1 v2 v3
  = let v4 = coe v0 v2 v3 in
    let v5 = coe v1 v2 v3 in
    case coe v4 of
      MAlonzo.Code.Relation.Nullary.C22 v6
        -> coe (\ v7 -> MAlonzo.Code.Relation.Nullary.C26) erased
      MAlonzo.Code.Relation.Nullary.C26
        -> case coe v5 of
             MAlonzo.Code.Relation.Nullary.C22 v7
               -> coe
                    (MAlonzo.Code.Relation.Nullary.C22
                       (coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v7) erased)))
             MAlonzo.Code.Relation.Nullary.C26
               -> coe (\ v8 -> MAlonzo.Code.Relation.Nullary.C26) erased
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name312
  = "Relation.Binary.Construct.NonStrictToStrict.<-isStrictPartialOrder"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T256 ->
  MAlonzo.Code.Relation.Binary.T570
d312 v0 v1 v2 v3 v4 v5 v6 = du312 v6
du312 ::
  MAlonzo.Code.Relation.Binary.T256 ->
  MAlonzo.Code.Relation.Binary.T570
du312 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C3423 v1 v3 v4)
      (MAlonzo.Code.Relation.Binary.d36
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v0))))
      erased (du34 (coe v0))
      (du160
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d274 (coe v0)))))
         (coe
            (MAlonzo.Code.Relation.Binary.du66
               (coe (MAlonzo.Code.Relation.Binary.d274 (coe v0))))))
name350
  = "Relation.Binary.Construct.NonStrictToStrict.<-isStrictTotalOrder₁"
d350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T876 ->
  MAlonzo.Code.Relation.Binary.T1202
d350 v0 v1 v2 v3 v4 v5 v6 v7 = du350 v6 v7
du350 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T876 ->
  MAlonzo.Code.Relation.Binary.T1202
du350 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C7321
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (MAlonzo.Code.Relation.Binary.d894 (coe v1)))))))
         (coe (du34 (coe (MAlonzo.Code.Relation.Binary.d894 (coe v1)))))
         (coe
            (du182
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d896 (coe v1))))))
name394
  = "Relation.Binary.Construct.NonStrictToStrict.<-isStrictTotalOrder₂"
d394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T1010 ->
  MAlonzo.Code.Relation.Binary.T1202
d394 v0 v1 v2 v3 v4 v5 v6 = du394 v6
du394 ::
  MAlonzo.Code.Relation.Binary.T1010 ->
  MAlonzo.Code.Relation.Binary.T1202
du394 v0
  = coe
      (du350
         (coe (MAlonzo.Code.Relation.Binary.d1032 (coe v0)))
         (coe (MAlonzo.Code.Relation.Binary.d1030 (coe v0))))
name448 = "Relation.Binary.Construct.NonStrictToStrict.irrefl"
d448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d448 = erased
name450 = "Relation.Binary.Construct.NonStrictToStrict.trans"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d450 v0 v1 v2 v3 v4 v5 = du450
du450 ::
  MAlonzo.Code.Relation.Binary.T256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du450 = coe du34
name452
  = "Relation.Binary.Construct.NonStrictToStrict.antisym⟶asym"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d452 = erased
name454 = "Relation.Binary.Construct.NonStrictToStrict.decidable"
d454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d454 v0 v1 v2 v3 v4 v5 = du454
du454 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du454 = coe du264
name456
  = "Relation.Binary.Construct.NonStrictToStrict.trichotomous"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198
d456 v0 v1 v2 v3 v4 v5 = du456
du456 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198
du456 = coe (\ v0 v1 v2 v3 v4 v5 -> du182 v1 v3 v4 v5)
name458
  = "Relation.Binary.Construct.NonStrictToStrict.isPartialOrder⟶isStrictPartialOrder"
d458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T256 ->
  MAlonzo.Code.Relation.Binary.T570
d458 v0 v1 v2 v3 v4 v5 = du458
du458 ::
  MAlonzo.Code.Relation.Binary.T256 ->
  MAlonzo.Code.Relation.Binary.T570
du458 = coe du312
name460
  = "Relation.Binary.Construct.NonStrictToStrict.isTotalOrder⟶isStrictTotalOrder"
d460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T876 ->
  MAlonzo.Code.Relation.Binary.T1202
d460 v0 v1 v2 v3 v4 v5 = du460
du460 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T876 ->
  MAlonzo.Code.Relation.Binary.T1202
du460 = coe du350
name462
  = "Relation.Binary.Construct.NonStrictToStrict.isDecTotalOrder⟶isStrictTotalOrder"
d462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T1010 ->
  MAlonzo.Code.Relation.Binary.T1202
d462 v0 v1 v2 v3 v4 v5 = du462
du462 ::
  MAlonzo.Code.Relation.Binary.T1010 ->
  MAlonzo.Code.Relation.Binary.T1202
du462 = coe du394
