{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Consequences where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Empty.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Nullary

name36 = "Relation.Binary.Consequences._.subst⟶respˡ"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d36 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du36 v5 v6 v7 v8 v9 v10 v11
du36 ::
  (AgdaAny -> AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du36 v0 v1 v2 v3 v4 v5 v6
  = coe v1 (\ v7 -> coe v0 v7 v2) v3 v4 v5 v6
name46 = "Relation.Binary.Consequences._.subst⟶respʳ"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d46 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du46 v5 v6 v7 v8 v9 v10 v11
du46 ::
  (AgdaAny -> AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du46 v0 v1 v2 v3 v4 v5 v6 = coe v1 (coe v0 v2) v3 v4 v5 v6
name56 = "Relation.Binary.Consequences._.subst⟶resp₂"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d56 v0 v1 v2 v3 v4 v5 v6 = du56 v5 v6
du56 ::
  (AgdaAny -> AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du56 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (\ v2 -> coe v1 (coe v0 v2)))
         (coe (\ v2 -> coe v1 (\ v3 -> coe v0 v3 v2))))
name74 = "Relation.Binary.Consequences._.P-resp⟶¬P-resp"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d74 = erased
name100 = "Relation.Binary.Consequences._.total⟶refl"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d100 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du100 v6 v7 v8 v9 v10 v11
du100 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du100 v0 v1 v2 v3 v4 v5
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
        -> let v8 = coe v2 v3 v4 in
           case coe v8 of
             MAlonzo.Code.Data.Sum.Base.C38 v9 -> coe v9
             MAlonzo.Code.Data.Sum.Base.C42 v9
               -> coe v6 v3 v3 v4 v5 (coe v7 v3 v4 v3 (coe v1 v3 v4 v5) v9)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name152 = "Relation.Binary.Consequences._.total+dec⟶dec"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d152 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du152 v6 v8 v9 v10 v11
du152 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du152 v0 v1 v2 v3 v4
  = let v5 = coe v1 v3 v4 in
    case coe v5 of
      MAlonzo.Code.Data.Sum.Base.C38 v6
        -> coe (MAlonzo.Code.Relation.Nullary.C22 (coe v6))
      MAlonzo.Code.Data.Sum.Base.C42 v6
        -> let v7 = coe v2 v3 v4 in
           case coe v7 of
             MAlonzo.Code.Relation.Nullary.C22 v8
               -> coe (MAlonzo.Code.Relation.Nullary.C22 (coe v0 v3 v4 v8))
             MAlonzo.Code.Relation.Nullary.C26
               -> coe (\ v9 -> MAlonzo.Code.Relation.Nullary.C26) erased
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name250 = "Relation.Binary.Consequences._.trans∧irr⟶asym"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d250 = erased
name262 = "Relation.Binary.Consequences._.irr∧antisym⟶asym"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d262 = erased
name272 = "Relation.Binary.Consequences._.asym⟶antisym"
d272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d272 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du272 v2
du272 :: MAlonzo.Code.Agda.Primitive.T4 -> AgdaAny
du272 v0
  = coe MAlonzo.Code.Data.Empty.Irrelevant.d10 v0 erased erased
name280 = "Relation.Binary.Consequences._.asym⟶irr"
d280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d280 = erased
name298 = "Relation.Binary.Consequences._.tri⟶asym"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d298 = erased
name350 = "Relation.Binary.Consequences._.tri⟶irr"
d350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d350 = erased
name410 = "Relation.Binary.Consequences._.tri⟶dec≈"
d410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d410 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du410 v6 v7 v8
du410 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du410 v0 v1 v2
  = let v3 = coe v0 v1 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Binary.Core.C212 v4
        -> coe (\ v7 -> MAlonzo.Code.Relation.Nullary.C26) erased
      MAlonzo.Code.Relation.Binary.Core.C220 v5
        -> coe (MAlonzo.Code.Relation.Nullary.C22 (coe v5))
      MAlonzo.Code.Relation.Binary.Core.C228 v6
        -> coe (\ v7 -> MAlonzo.Code.Relation.Nullary.C26) erased
      _ -> MAlonzo.RTE.mazUnreachableError
name446 = "Relation.Binary.Consequences._.tri⟶dec<"
d446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d446 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du446 v6 v7 v8
du446 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du446 v0 v1 v2
  = let v3 = coe v0 v1 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Binary.Core.C212 v4
        -> coe (MAlonzo.Code.Relation.Nullary.C22 (coe v4))
      MAlonzo.Code.Relation.Binary.Core.C220 v5
        -> coe (\ v7 -> MAlonzo.Code.Relation.Nullary.C26) erased
      MAlonzo.Code.Relation.Binary.Core.C228 v6
        -> coe (\ v7 -> MAlonzo.Code.Relation.Nullary.C26) erased
      _ -> MAlonzo.RTE.mazUnreachableError
name482 = "Relation.Binary.Consequences._.trans∧tri⟶respʳ≈"
d482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d482 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du482 v3 v9 v10 v12
du482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny -> AgdaAny -> AgdaAny
du482 v0 v1 v2 v3
  = let v4 = coe v1 v2 v3 in
    case coe v4 of
      MAlonzo.Code.Relation.Binary.Core.C212 v5 -> coe v5
      MAlonzo.Code.Relation.Binary.Core.C220 v6
        -> coe MAlonzo.Code.Data.Empty.Irrelevant.d10 v0 erased erased
      MAlonzo.Code.Relation.Binary.Core.C228 v7
        -> coe MAlonzo.Code.Data.Empty.Irrelevant.d10 v0 erased erased
      _ -> MAlonzo.RTE.mazUnreachableError
name566 = "Relation.Binary.Consequences._.trans∧tri⟶respˡ≈"
d566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d566 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du566 v3 v8 v9 v11
du566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny -> AgdaAny -> AgdaAny
du566 v0 v1 v2 v3
  = let v4 = coe v1 v3 v2 in
    case coe v4 of
      MAlonzo.Code.Relation.Binary.Core.C212 v5 -> coe v5
      MAlonzo.Code.Relation.Binary.Core.C220 v6
        -> coe MAlonzo.Code.Data.Empty.Irrelevant.d10 v0 erased erased
      MAlonzo.Code.Relation.Binary.Core.C228 v7
        -> coe MAlonzo.Code.Data.Empty.Irrelevant.d10 v0 erased erased
      _ -> MAlonzo.RTE.mazUnreachableError
name634 = "Relation.Binary.Consequences._.trans∧tri⟶resp≈"
d634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d634 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du634 v3 v9
du634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du634 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (\ v2 v3 v4 v5 v6 -> du482 (coe v0) (coe v1) v2 v4))
         (coe (\ v2 v3 v4 v5 v6 -> du566 (coe v0) (coe v1) v2 v4)))
name666 = "Relation.Binary.Consequences._.wlog"
d666 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d666 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du666 v6 v7 v8 v9 v10
du666 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du666 v0 v1 v2 v3 v4
  = let v5 = coe v0 v3 v4 in
    case coe v5 of
      MAlonzo.Code.Data.Sum.Base.C38 v6 -> coe v2 v3 v4 v6
      MAlonzo.Code.Data.Sum.Base.C42 v6 -> coe v1 v4 v3 (coe v2 v4 v3 v6)
      _ -> MAlonzo.RTE.mazUnreachableError
name718 = "Relation.Binary.Consequences._.dec⟶weaklyDec"
d718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22
d718 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du718 v6 v7 v8
du718 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22
du718 v0 v1 v2
  = let v3 = coe v0 v1 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Nullary.C22 v4
        -> coe (MAlonzo.Code.Data.Maybe.Base.C28 (coe v4))
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Data.Maybe.Base.C30
      _ -> MAlonzo.RTE.mazUnreachableError
name760 = "Relation.Binary.Consequences._.map-NonEmpty"
d760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Core.T372 ->
  MAlonzo.Code.Relation.Binary.Core.T372
d760 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du760 v8 v9
du760 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Core.T372 ->
  MAlonzo.Code.Relation.Binary.Core.T372
du760 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Core.C392
         (coe (MAlonzo.Code.Relation.Binary.Core.d386 (coe v1)))
         (coe (MAlonzo.Code.Relation.Binary.Core.d388 (coe v1)))
         (coe
            v0 (MAlonzo.Code.Relation.Binary.Core.d386 (coe v1))
            (MAlonzo.Code.Relation.Binary.Core.d388 (coe v1))
            (MAlonzo.Code.Relation.Binary.Core.d390 (coe v1))))
name782 = "Relation.Binary.Consequences._.flip-Connex"
d782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d782 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du782 v8 v9 v10
du782 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du782 v0 v1 v2
  = coe (MAlonzo.Code.Data.Sum.Base.du68 (coe v0 v2 v1))
name802 = "Relation.Binary.Consequences._.dec⟶recomputable"
d802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d802 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du802 v4 v6 v7 v8
du802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du802 v0 v1 v2 v3
  = coe
      (\ v4 ->
         MAlonzo.Code.Relation.Nullary.du32 (coe v0) (coe v1 v2 v3))
