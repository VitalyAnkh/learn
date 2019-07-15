{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary

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
name42 = "Relation.Nullary.Negation.¬?"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d42 v0 v1 v2 = du42 v2
du42 ::
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du42 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1
        -> coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased
      MAlonzo.Code.Relation.Nullary.C26
        -> coe (MAlonzo.Code.Relation.Nullary.C22 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name62 = "Relation.Nullary.Negation._.∃⟶¬∀¬"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d62 = erased
name68 = "Relation.Nullary.Negation._.∀⟶¬∃¬"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d68 = erased
name80 = "Relation.Nullary.Negation._.¬∃⟶∀¬"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d80 = erased
name86 = "Relation.Nullary.Negation._.∀¬⟶¬∃"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d86 = erased
name92 = "Relation.Nullary.Negation._.∃¬⟶¬∀"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Empty.T4
d92 = erased
name94 = "Relation.Nullary.Negation.¬¬-map"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d94 = erased
name98 = "Relation.Nullary.Negation.Stable"
d98 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d98 = erased
name102 = "Relation.Nullary.Negation.stable"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  ((((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
     MAlonzo.Code.Data.Empty.T4) ->
    AgdaAny) ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d102 = erased
name108 = "Relation.Nullary.Negation.negated-stable"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
    MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d108 = erased
name116 = "Relation.Nullary.Negation.decidable-stable"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny
d116 v0 v1 v2 v3 = du116 v0 v2
du116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Nullary.T14 -> AgdaAny
du116 v0 v1
  = case coe v1 of
      MAlonzo.Code.Relation.Nullary.C22 v2 -> coe v2
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      _ -> MAlonzo.RTE.mazUnreachableError
name126 = "Relation.Nullary.Negation.¬-drop-Dec"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d126 v0 v1 v2 = du126 v2
du126 ::
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du126 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1
        -> coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased
      MAlonzo.Code.Relation.Nullary.C26
        -> coe (MAlonzo.Code.Relation.Nullary.C22 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name134 = "Relation.Nullary.Negation.¬¬-Monad"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Category.Monad.Indexed.T14
d134 v0 = du134
du134 :: MAlonzo.Code.Category.Monad.Indexed.T14
du134
  = coe
      (MAlonzo.Code.Category.Monad.Indexed.C15
         (coe
            (\ v0 v1 v2 v3 ->
               coe MAlonzo.Code.Data.Empty.d10 () erased erased))
         (coe
            (\ v0 v1 v2 v3 v4 v5 v6 v7 ->
               coe MAlonzo.Code.Data.Empty.d10 () erased erased)))
name148 = "Relation.Nullary.Negation.¬¬-push"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (((AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d148 = erased
name158 = "Relation.Nullary.Negation.excluded-middle"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Relation.Nullary.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d158 = erased
name164 = "Relation.Nullary.Negation.call/cc"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  ((AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d164 = erased
name180 = "Relation.Nullary.Negation.independence-of-premise"
d180 ::
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
d180 = erased
name192 = "Relation.Nullary.Negation._.helper"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d192 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du192 v2 v6 v7 v8
du192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du192 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Relation.Nullary.C22 v4
        -> coe
             (MAlonzo.Code.Data.Product.du150
                (coe (\ v5 -> v5)) (coe (\ v5 v6 v7 -> v6)) (coe v2 v4))
      MAlonzo.Code.Relation.Nullary.C26
        -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe v1)
                (coe (\ v5 -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased)))
      _ -> MAlonzo.RTE.mazUnreachableError
name198 = "Relation.Nullary.Negation.independence-of-premise-⊎"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d198 = erased
name208 = "Relation.Nullary.Negation._.helper"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Nullary.T14 -> MAlonzo.Code.Data.Sum.Base.T30
d208 v0 v1 v2 v3 v4 v5 v6 v7 = du208 v2 v6 v7
du208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Nullary.T14 -> MAlonzo.Code.Data.Sum.Base.T30
du208 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Relation.Nullary.C22 v3
        -> coe
             MAlonzo.Code.Data.Sum.Base.du74 (\ v4 v5 -> v4) (\ v4 v5 -> v4)
             (coe v1 v3)
      MAlonzo.Code.Relation.Nullary.C26
        -> coe
             (MAlonzo.Code.Data.Sum.Base.C38
                (coe (\ v4 -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased)))
      _ -> MAlonzo.RTE.mazUnreachableError
name244 = "Relation.Nullary.Negation.Excluded-Middle"
d244 :: MAlonzo.Code.Agda.Primitive.T4 -> ()
d244 = erased
name252 = "Relation.Nullary.Negation.Double-Negation-Elimination"
d252 :: MAlonzo.Code.Agda.Primitive.T4 -> ()
d252 = erased
