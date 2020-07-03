{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Consequences.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Sum.Base

name16 = "Algebra.Consequences.Base.sel⇒idem"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny
d16 v0 v1 v2 v3 v4 v5 v6 = du16 v5 v6
du16 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny
du16 v0 v1
  = let v2 = coe v0 v1 v1 in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3 -> coe v3
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
