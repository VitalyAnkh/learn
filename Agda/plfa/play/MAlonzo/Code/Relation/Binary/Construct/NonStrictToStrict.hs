{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
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
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Negation
import qualified MAlonzo.Code.Relation.Nullary.Product

name20 = "Relation.Binary.Construct.NonStrictToStrict._≉_"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d20 = erased
name26 = "Relation.Binary.Construct.NonStrictToStrict._<_"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d26 = erased
name32 = "Relation.Binary.Construct.NonStrictToStrict.<⇒≤"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d32 v0 v1 v2 v3 v4 v5 v6 v7 = du32
du32 :: MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
du32 = coe MAlonzo.Code.Agda.Builtin.Sigma.d28
name38 = "Relation.Binary.Construct.NonStrictToStrict.<⇒≉"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d38 = erased
name44 = "Relation.Binary.Construct.NonStrictToStrict.≤∧≉⇒<"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d44 v0 v1 v2 v3 v4 v5 v6 v7 = du44
du44 ::
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du44 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
name50 = "Relation.Binary.Construct.NonStrictToStrict.<⇒≱"
d50 ::
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
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d50 = erased
name64 = "Relation.Binary.Construct.NonStrictToStrict.≤⇒≯"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d64 = erased
name76 = "Relation.Binary.Construct.NonStrictToStrict.≰⇒>"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d76 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du76 v6 v7 v8 v9 v10 v11
du76 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du76 v0 v1 v2 v3 v4 v5
  = let v6 = coe v2 v3 v4 in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C38 v7
        -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      MAlonzo.Code.Data.Sum.Base.C42 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v7)
             (coe (\ v8 -> coe v5 (coe v1 v3 v4 (coe v0 v4 v3 v8))))
      _ -> MAlonzo.RTE.mazUnreachableError
name126 = "Relation.Binary.Construct.NonStrictToStrict.≮⇒≥"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny
d126 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du126 v2 v6 v7 v8 v9 v10 v11
du126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> AgdaAny
du126 v0 v1 v2 v3 v4 v5 v6
  = let v7 = coe v2 v5 v6 in
    let v8 = coe v4 v6 v5 in
    case coe v7 of
      MAlonzo.Code.Relation.Nullary.C46 v9 v10
        -> let v11
                 = case coe v8 of
                     MAlonzo.Code.Data.Sum.Base.C38 v11 -> coe v11
                     _ -> MAlonzo.RTE.mazUnreachableError in
           if coe v9
             then case coe v10 of
                    MAlonzo.Code.Relation.Nullary.C22 v12
                      -> coe v3 v6 v5 (coe v1 v5 v6 v12)
                    _ -> coe v11
             else (case coe v8 of
                     MAlonzo.Code.Data.Sum.Base.C38 v12 -> coe v12
                     MAlonzo.Code.Data.Sum.Base.C42 v12
                       -> case coe v10 of
                            MAlonzo.Code.Relation.Nullary.C26
                              -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
                            _ -> coe v11
                     _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
name196 = "Relation.Binary.Construct.NonStrictToStrict.<-irrefl"
d196 ::
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
d196 = erased
name202 = "Relation.Binary.Construct.NonStrictToStrict.<-trans"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d202 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du202 v6 v7 v8 v9 v10 v11
du202 ::
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du202 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v8 v9
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d84
                       (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v0)) v1 v2 v3 v6
                       v8)
                    (coe
                       (\ v10 ->
                          coe
                            v7
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d128 v0 v1 v2 v6
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d84
                                  (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v0)) v2 v3 v1
                                  v8
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d82
                                     (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v0)) v3 v1
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Structures.d36
                                        (MAlonzo.Code.Relation.Binary.Structures.d80
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Structures.d126
                                              (coe v0)))
                                        v1 v3 v10))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name250 = "Relation.Binary.Construct.NonStrictToStrict.<-≤-trans"
d250 ::
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
d250 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du250 v6 v7 v8 v9 v10 v11 v12 v13 v14
du250 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du250 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v9 v10
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1 v4 v5 v6 v9 v8)
             (coe
                (\ v11 ->
                   coe v10 (coe v2 v4 v5 v9 (coe v3 v5 v6 v4 (coe v0 v4 v6 v11) v8))))
      _ -> MAlonzo.RTE.mazUnreachableError
name268 = "Relation.Binary.Construct.NonStrictToStrict.≤-<-trans"
d268 ::
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
d268 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du268 v6 v7 v8 v9 v10 v11 v12 v13
du268 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du268 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v8 v9
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0 v3 v4 v5 v6 v8)
             (coe (\ v10 -> coe v9 (coe v1 v4 v5 v8 (coe v2 v4 v3 v5 v10 v6))))
      _ -> MAlonzo.RTE.mazUnreachableError
name284 = "Relation.Binary.Construct.NonStrictToStrict.<-asym"
d284 ::
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
d284 = erased
name294 = "Relation.Binary.Construct.NonStrictToStrict.<-respˡ-≈"
d294 ::
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
d294 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du294 v6 v7 v8 v9 v10 v11 v12
du294 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du294 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v7 v8
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1 v2 v3 v4 v5 v7)
             (coe (\ v9 -> coe v8 (coe v0 v3 v4 v2 v5 v9)))
      _ -> MAlonzo.RTE.mazUnreachableError
name306 = "Relation.Binary.Construct.NonStrictToStrict.<-respʳ-≈"
d306 ::
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
d306 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du306 v6 v7 v8 v9 v10 v11 v12 v13
du306 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du306 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v8 v9
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2 v3 v4 v5 v6 v8)
             (coe (\ v10 -> coe v9 (coe v1 v3 v5 v4 v10 (coe v0 v4 v5 v6))))
      _ -> MAlonzo.RTE.mazUnreachableError
name322 = "Relation.Binary.Construct.NonStrictToStrict.<-resp-≈"
d322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d322 v0 v1 v2 v3 v4 v5 v6 v7 = du322 v6 v7
du322 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du322 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe
                du306 (coe MAlonzo.Code.Relation.Binary.Structures.d36 (coe v0))
                (coe MAlonzo.Code.Relation.Binary.Structures.d38 (coe v0))
                (coe v2))
             (coe
                du294 (coe MAlonzo.Code.Relation.Binary.Structures.d38 (coe v0))
                (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name346
  = "Relation.Binary.Construct.NonStrictToStrict.<-trichotomous"
d346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
d346 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du346 v7 v9 v10 v11
du346 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
du346 v0 v1 v2 v3
  = let v4 = coe v0 v2 v3 in
    case coe v4 of
      MAlonzo.Code.Relation.Nullary.C46 v5 v6
        -> if coe v5
             then case coe v6 of
                    MAlonzo.Code.Relation.Nullary.C22 v7
                      -> coe MAlonzo.Code.Relation.Binary.Definitions.C158 v7
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v6)
                    (let v7 = coe v1 v2 v3 in
                     case coe v7 of
                       MAlonzo.Code.Data.Sum.Base.C38 v8
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C150
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v8) erased)
                       MAlonzo.Code.Data.Sum.Base.C42 v8
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C166
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v8) erased)
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
name428 = "Relation.Binary.Construct.NonStrictToStrict.<-decidable"
d428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d428 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du428 v6 v7 v8 v9
du428 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du428 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Product.du30 (coe v1 v2 v3)
      (coe MAlonzo.Code.Relation.Nullary.Negation.du52 (coe v0 v2 v3))
name438
  = "Relation.Binary.Construct.NonStrictToStrict.<-isStrictPartialOrder"
d438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d438 v0 v1 v2 v3 v4 v5 v6 = du438 v6
du438 ::
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du438 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C7193
      (MAlonzo.Code.Relation.Binary.Structures.d80
         (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v0)))
      (coe du202 (coe v0))
      (coe
         du322
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d80
            (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du112
            (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v0))))
name478
  = "Relation.Binary.Construct.NonStrictToStrict.<-isStrictTotalOrder₁"
d478 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T340 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
d478 v0 v1 v2 v3 v4 v5 v6 v7 = du478 v6 v7
du478 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T340 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
du478 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C14057
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1))))
      (coe
         du202 (coe MAlonzo.Code.Relation.Binary.Structures.d348 (coe v1)))
      (coe
         du346 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d350 (coe v1)))
name524
  = "Relation.Binary.Construct.NonStrictToStrict.<-isStrictTotalOrder₂"
d524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T388 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
d524 v0 v1 v2 v3 v4 v5 v6 = du524 v6
du524 ::
  MAlonzo.Code.Relation.Binary.Structures.T388 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
du524 v0
  = coe
      du478 (coe MAlonzo.Code.Relation.Binary.Structures.d400 (coe v0))
      (coe MAlonzo.Code.Relation.Binary.Structures.d398 (coe v0))
name582 = "Relation.Binary.Construct.NonStrictToStrict.irrefl"
d582 ::
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
d582 = erased
name584 = "Relation.Binary.Construct.NonStrictToStrict.trans"
d584 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d584 v0 v1 v2 v3 v4 v5 = du584
du584 ::
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du584 = coe du202
name586
  = "Relation.Binary.Construct.NonStrictToStrict.antisym⟶asym"
d586 ::
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
d586 = erased
name588 = "Relation.Binary.Construct.NonStrictToStrict.decidable"
d588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d588 v0 v1 v2 v3 v4 v5 = du588
du588 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du588 = coe du428
name590
  = "Relation.Binary.Construct.NonStrictToStrict.trichotomous"
d590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
d590 v0 v1 v2 v3 v4 v5 = du590
du590 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
du590 v0 v1 v2 v3 v4 v5 = coe du346 v1 v3 v4 v5
name592
  = "Relation.Binary.Construct.NonStrictToStrict.isPartialOrder⟶isStrictPartialOrder"
d592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d592 v0 v1 v2 v3 v4 v5 = du592
du592 ::
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du592 = coe du438
name594
  = "Relation.Binary.Construct.NonStrictToStrict.isTotalOrder⟶isStrictTotalOrder"
d594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T340 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
d594 v0 v1 v2 v3 v4 v5 = du594
du594 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T340 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
du594 = coe du478
name596
  = "Relation.Binary.Construct.NonStrictToStrict.isDecTotalOrder⟶isStrictTotalOrder"
d596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T388 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
d596 v0 v1 v2 v3 v4 v5 = du596
du596 ::
  MAlonzo.Code.Relation.Binary.Structures.T388 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
du596 = coe du524
