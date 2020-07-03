{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Nullary.Negation where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name26 = "Relation.Nullary.Negation.contradiction"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> MAlonzo.Code.Data.Empty.T4) -> AgdaAny
d26 v0 v1 v2 v3 v4 v5 = du26 v2
du26 :: MAlonzo.Code.Agda.Primitive.T4 -> AgdaAny
du26 v0 = coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
name32 = "Relation.Nullary.Negation.contraposition"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d32 = erased
name44 = "Relation.Nullary.Negation.¬-reflects"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Bool ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d44 v0 v1 v2 v3 = du44 v3
du44 ::
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du44 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1
        -> coe MAlonzo.Code.Relation.Nullary.C26
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Relation.Nullary.C22 erased
      _ -> MAlonzo.RTE.mazUnreachableError
name52 = "Relation.Nullary.Negation.¬?"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
d52 v0 v1 v2 = du52 v2
du52 ::
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
du52 v0
  = coe
      MAlonzo.Code.Relation.Nullary.C46
      (coe
         MAlonzo.Code.Data.Bool.Base.d22
         (coe MAlonzo.Code.Relation.Nullary.d42 (coe v0)))
      (coe du44 (coe MAlonzo.Code.Relation.Nullary.d44 (coe v0)))
name70 = "Relation.Nullary.Negation._.∃⟶¬∀¬"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d70 = erased
name76 = "Relation.Nullary.Negation._.∀⟶¬∃¬"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d76 = erased
name88 = "Relation.Nullary.Negation._.¬∃⟶∀¬"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d88 = erased
name94 = "Relation.Nullary.Negation._.∀¬⟶¬∃"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d94 = erased
name100 = "Relation.Nullary.Negation._.∃¬⟶¬∀"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Empty.T4
d100 = erased
name102 = "Relation.Nullary.Negation.¬¬-map"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d102 = erased
name106 = "Relation.Nullary.Negation.Stable"
d106 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d106 = erased
name110 = "Relation.Nullary.Negation.stable"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  ((((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
     MAlonzo.Code.Data.Empty.T4) ->
    AgdaAny) ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d110 = erased
name116 = "Relation.Nullary.Negation.negated-stable"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
    MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d116 = erased
name124 = "Relation.Nullary.Negation.decidable-stable"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny
d124 v0 v1 v2 v3 = du124 v0 v2
du124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Nullary.T32 -> AgdaAny
du124 v0 v1
  = case coe v1 of
      MAlonzo.Code.Relation.Nullary.C46 v2 v3
        -> if coe v2
             then case coe v3 of
                    MAlonzo.Code.Relation.Nullary.C22 v4 -> coe v4
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v3) (coe MAlonzo.Code.Data.Empty.d10 v0 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name134 = "Relation.Nullary.Negation.¬-drop-Dec"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
d134 v0 v1 v2 = du134 v2
du134 ::
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
du134 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
      (coe (\ v1 v2 -> coe v1 (\ v3 -> coe v3 v2))) (coe du52 (coe v0))
name140 = "Relation.Nullary.Negation.¬¬-Monad"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Category.Monad.Indexed.T32
d140 v0 = du140
du140 :: MAlonzo.Code.Category.Monad.Indexed.T32
du140
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C459
      (coe
         (\ v0 v1 v2 v3 ->
            coe MAlonzo.Code.Data.Empty.d10 () erased erased))
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 v7 ->
            coe MAlonzo.Code.Data.Empty.d10 () erased erased))
name154 = "Relation.Nullary.Negation.¬¬-push"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (((AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d154 = erased
name164 = "Relation.Nullary.Negation.excluded-middle"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Relation.Nullary.T32 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d164 = erased
name170 = "Relation.Nullary.Negation.call/cc"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  ((AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d170 = erased
name186 = "Relation.Nullary.Negation.independence-of-premise"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d186 = erased
name198 = "Relation.Nullary.Negation._.helper"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d198 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du198 v2 v6 v7 v8
du198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du198 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Relation.Nullary.C46 v4 v5
        -> if coe v4
             then case coe v5 of
                    MAlonzo.Code.Relation.Nullary.C22 v6
                      -> coe
                           MAlonzo.Code.Data.Product.du148 (coe (\ v7 -> v7))
                           (coe (\ v7 v8 v9 -> v8)) (coe v2 v6)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v5)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1)
                       (coe (\ v6 -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased)))
      _ -> MAlonzo.RTE.mazUnreachableError
name204 = "Relation.Nullary.Negation.independence-of-premise-⊎"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d204 = erased
name214 = "Relation.Nullary.Negation._.helper"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Nullary.T32 -> MAlonzo.Code.Data.Sum.Base.T30
d214 v0 v1 v2 v3 v4 v5 v6 v7 = du214 v2 v6 v7
du214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Nullary.T32 -> MAlonzo.Code.Data.Sum.Base.T30
du214 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Relation.Nullary.C46 v3 v4
        -> if coe v3
             then case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C22 v5
                      -> coe
                           MAlonzo.Code.Data.Sum.Base.du82 (\ v6 v7 -> v6) (\ v6 v7 -> v6)
                           (coe v1 v5)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.Data.Sum.Base.C38
                       (coe (\ v5 -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased)))
      _ -> MAlonzo.RTE.mazUnreachableError
name250 = "Relation.Nullary.Negation.Excluded-Middle"
d250 :: MAlonzo.Code.Agda.Primitive.T4 -> ()
d250 = erased
name258 = "Relation.Nullary.Negation.Double-Negation-Elimination"
d258 :: MAlonzo.Code.Agda.Primitive.T4 -> ()
d258 = erased
