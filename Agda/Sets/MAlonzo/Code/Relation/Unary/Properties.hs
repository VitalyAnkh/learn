{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Unary.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Negation
import qualified MAlonzo.Code.Relation.Nullary.Product
import qualified MAlonzo.Code.Relation.Nullary.Sum

name20 = "Relation.Unary.Properties.∅?"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d20 v0 v1 v2 = du20
du20 :: MAlonzo.Code.Relation.Nullary.T14
du20 = coe (\ v0 -> MAlonzo.Code.Relation.Nullary.C26) erased
name22 = "Relation.Unary.Properties.∅-Empty"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4 -> MAlonzo.Code.Data.Empty.T4
d22 = erased
name26 = "Relation.Unary.Properties.∁∅-Universal"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4 -> MAlonzo.Code.Data.Empty.T4
d26 = erased
name32 = "Relation.Unary.Properties.U?"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d32 v0 v1 v2 = du32
du32 :: MAlonzo.Code.Relation.Nullary.T14
du32 = coe (MAlonzo.Code.Relation.Nullary.C22 erased)
name34 = "Relation.Unary.Properties.U-Universal"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T6
d34 = erased
name38 = "Relation.Unary.Properties.∁U-Empty"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Unit.T6 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d38 = erased
name46 = "Relation.Unary.Properties.∅-⊆"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> AgdaAny -> MAlonzo.Code.Data.Empty.T4 -> AgdaAny
d46 = MAlonzo.RTE.mazUnreachableError
name52 = "Relation.Unary.Properties.⊆-U"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T6
d52 = erased
name56 = "Relation.Unary.Properties.⊆-refl"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d56 v0 v1 v2 v3 v4 v5 = du56 v5
du56 :: AgdaAny -> AgdaAny
du56 v0 = coe v0
name60 = "Relation.Unary.Properties.⊆-trans"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d60 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du60 v6 v7 v8 v9
du60 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du60 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
name68 = "Relation.Unary.Properties.⊂-asym"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d68 = erased
name74 = "Relation.Unary.Properties.∁?"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d74 v0 v1 v2 v3 v4 v5 = du74 v4 v5
du74 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du74 v0 v1
  = coe (MAlonzo.Code.Relation.Nullary.Negation.du42 (coe v0 v1))
name84 = "Relation.Unary.Properties._∪?_"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d84 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du84 v6 v7 v8
du84 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du84 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Nullary.Sum.du28 (coe v0 v2) (coe v1 v2))
name96 = "Relation.Unary.Properties._∩?_"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d96 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du96 v6 v7 v8
du96 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du96 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Nullary.Product.du14
         (coe v0 v2) (coe v1 v2))
name97 = "Relation.Unary.Properties..absurdlambda"
d97 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4 -> MAlonzo.Code.Data.Empty.T4
d97 = erased
name108 = "Relation.Unary.Properties._×?_"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d108 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du108 v8 v9 v10
du108 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du108 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> coe
             (MAlonzo.Code.Relation.Nullary.Product.du14
                (coe v0 v3) (coe v1 v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name122 = "Relation.Unary.Properties._⊙?_"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d122 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du122 v8 v9 v10
du122 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du122 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> coe
             (MAlonzo.Code.Relation.Nullary.Sum.du28 (coe v0 v3) (coe v1 v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name136 = "Relation.Unary.Properties._⊎?_"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Relation.Nullary.T14
d136 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du136 v7 v8 v9
du136 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Relation.Nullary.T14
du136 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3 -> coe v0 v3
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe v1 v3
      _ -> MAlonzo.RTE.mazUnreachableError
name152 = "Relation.Unary.Properties._~?"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d152 v0 v1 v2 v3 v4 v5 v6 v7 = du152 v6 v7
du152 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du152 v0 v1 = coe v0 (MAlonzo.Code.Data.Product.du252 (coe v1))
