{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Consequences where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Empty.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

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
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe (\ v2 -> coe v1 (coe v0 v2)))
      (coe (\ v2 -> coe v1 (\ v3 -> coe v0 v3 v2)))
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
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d152 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du152 v6 v8 v9 v10 v11
du152 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du152 v0 v1 v2 v3 v4
  = let v5 = coe v1 v3 v4 in
    case coe v5 of
      MAlonzo.Code.Data.Sum.Base.C38 v6
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
             (coe MAlonzo.Code.Relation.Nullary.C22 (coe v6))
      MAlonzo.Code.Data.Sum.Base.C42 v6
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du168 (coe v0 v3 v4)
             (coe v2 v3 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name212 = "Relation.Binary.Consequences._.trans∧irr⟶asym"
d212 ::
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
d212 = erased
name224 = "Relation.Binary.Consequences._.irr∧antisym⟶asym"
d224 ::
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
d224 = erased
name234 = "Relation.Binary.Consequences._.asym⟶antisym"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d234 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du234 v2
du234 :: MAlonzo.Code.Agda.Primitive.T4 -> AgdaAny
du234 v0
  = coe MAlonzo.Code.Data.Empty.Irrelevant.d10 v0 erased erased
name242 = "Relation.Binary.Consequences._.asym⟶irr"
d242 ::
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
d242 = erased
name260 = "Relation.Binary.Consequences._.tri⟶asym"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d260 = erased
name312 = "Relation.Binary.Consequences._.tri⟶irr"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d312 = erased
name372 = "Relation.Binary.Consequences._.tri⟶dec≈"
d372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d372 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du372 v6 v7 v8
du372 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du372 v0 v1 v2
  = let v3 = coe v0 v1 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Binary.Definitions.C150 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
             (coe MAlonzo.Code.Relation.Nullary.C26)
      MAlonzo.Code.Relation.Binary.Definitions.C158 v5
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
             (coe MAlonzo.Code.Relation.Nullary.C22 (coe v5))
      MAlonzo.Code.Relation.Binary.Definitions.C166 v6
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
             (coe MAlonzo.Code.Relation.Nullary.C26)
      _ -> MAlonzo.RTE.mazUnreachableError
name408 = "Relation.Binary.Consequences._.tri⟶dec<"
d408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d408 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du408 v6 v7 v8
du408 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du408 v0 v1 v2
  = let v3 = coe v0 v1 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Binary.Definitions.C150 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
             (coe MAlonzo.Code.Relation.Nullary.C22 (coe v4))
      MAlonzo.Code.Relation.Binary.Definitions.C158 v5
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
             (coe MAlonzo.Code.Relation.Nullary.C26)
      MAlonzo.Code.Relation.Binary.Definitions.C166 v6
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
             (coe MAlonzo.Code.Relation.Nullary.C26)
      _ -> MAlonzo.RTE.mazUnreachableError
name444 = "Relation.Binary.Consequences._.trans∧tri⟶respʳ≈"
d444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d444 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du444 v3 v9 v10 v12
du444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> AgdaAny
du444 v0 v1 v2 v3
  = let v4 = coe v1 v2 v3 in
    case coe v4 of
      MAlonzo.Code.Relation.Binary.Definitions.C150 v5 -> coe v5
      MAlonzo.Code.Relation.Binary.Definitions.C158 v6
        -> coe MAlonzo.Code.Data.Empty.Irrelevant.d10 v0 erased erased
      MAlonzo.Code.Relation.Binary.Definitions.C166 v7
        -> coe MAlonzo.Code.Data.Empty.Irrelevant.d10 v0 erased erased
      _ -> MAlonzo.RTE.mazUnreachableError
name528 = "Relation.Binary.Consequences._.trans∧tri⟶respˡ≈"
d528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d528 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du528 v3 v8 v9 v11
du528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> AgdaAny
du528 v0 v1 v2 v3
  = let v4 = coe v1 v3 v2 in
    case coe v4 of
      MAlonzo.Code.Relation.Binary.Definitions.C150 v5 -> coe v5
      MAlonzo.Code.Relation.Binary.Definitions.C158 v6
        -> coe MAlonzo.Code.Data.Empty.Irrelevant.d10 v0 erased erased
      MAlonzo.Code.Relation.Binary.Definitions.C166 v7
        -> coe MAlonzo.Code.Data.Empty.Irrelevant.d10 v0 erased erased
      _ -> MAlonzo.RTE.mazUnreachableError
name596 = "Relation.Binary.Consequences._.trans∧tri⟶resp≈"
d596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d596 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du596 v3 v9
du596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du596 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (\ v2 v3 v4 v5 v6 -> coe du444 (coe v0) (coe v1) v2 v4)
      (\ v2 v3 v4 v5 v6 -> coe du528 (coe v0) (coe v1) v2 v4)
name628 = "Relation.Binary.Consequences._.wlog"
d628 ::
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
d628 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du628 v6 v7 v8 v9 v10
du628 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du628 v0 v1 v2 v3 v4
  = let v5 = coe v0 v3 v4 in
    case coe v5 of
      MAlonzo.Code.Data.Sum.Base.C38 v6 -> coe v2 v3 v4 v6
      MAlonzo.Code.Data.Sum.Base.C42 v6 -> coe v1 v4 v3 (coe v2 v4 v3 v6)
      _ -> MAlonzo.RTE.mazUnreachableError
name680 = "Relation.Binary.Consequences._.dec⟶weaklyDec"
d680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22
d680 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du680 v6 v7 v8
du680 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22
du680 v0 v1 v2
  = coe MAlonzo.Code.Data.Maybe.Base.du38 (coe v0 v1 v2)
name704 = "Relation.Binary.Consequences._.map-NonEmpty"
d704 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Definitions.T316 ->
  MAlonzo.Code.Relation.Binary.Definitions.T316
d704 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du704 v8 v9
du704 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Definitions.T316 ->
  MAlonzo.Code.Relation.Binary.Definitions.T316
du704 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Definitions.C336
      (coe MAlonzo.Code.Relation.Binary.Definitions.d330 (coe v1))
      (coe MAlonzo.Code.Relation.Binary.Definitions.d332 (coe v1))
      (coe
         v0 (MAlonzo.Code.Relation.Binary.Definitions.d330 (coe v1))
         (MAlonzo.Code.Relation.Binary.Definitions.d332 (coe v1))
         (MAlonzo.Code.Relation.Binary.Definitions.d334 (coe v1)))
name726 = "Relation.Binary.Consequences._.flip-Connex"
d726 ::
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
d726 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du726 v8 v9 v10
du726 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du726 v0 v1 v2 = coe MAlonzo.Code.Data.Sum.Base.du76 (coe v0 v2 v1)
name746 = "Relation.Binary.Consequences._.dec⟶recomputable"
d746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d746 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du746 v4 v6 v7 v8
du746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du746 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Relation.Nullary.du60 (coe v0) (coe v1 v2 v3)
