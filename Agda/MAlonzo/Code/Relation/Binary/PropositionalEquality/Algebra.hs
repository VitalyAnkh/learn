{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.PropositionalEquality.Algebra where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties

name14 = "Relation.Binary.PropositionalEquality.Algebra.isMagma"
d14 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80
d14 v0 v1 v2 = du14
du14 :: MAlonzo.Code.Algebra.Structures.T80
du14
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du242)
      erased
name20 = "Relation.Binary.PropositionalEquality.Algebra.magma"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T30
d20 v0 v1 v2 = du20 v2
du20 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T30
du20 v0 = coe MAlonzo.Code.Algebra.Bundles.C255 v0 (coe du14)
