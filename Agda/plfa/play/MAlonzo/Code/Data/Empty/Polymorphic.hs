{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Empty.Polymorphic where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Level

name8 = "Data.Empty.Polymorphic.⊥"
d8 :: MAlonzo.Code.Agda.Primitive.T4 -> ()
d8 = erased
name20 = "Data.Empty.Polymorphic.⊥-elim"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Level.T8 -> ()) -> MAlonzo.Code.Level.T8 -> AgdaAny
d20 = MAlonzo.RTE.mazUnreachableError
