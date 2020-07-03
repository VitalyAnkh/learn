{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Agda.Builtin.Coinduction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

name10 = "Agda.Builtin.Coinduction.∞"
type T10 a0 a1 = MAlonzo.RTE.Infinity a0 a1
d10 a0
  = error "No term-level implementation of the INFINITY builtin."
pattern C16 a0 = MAlonzo.RTE.Sharp a0
name22 = "Agda.Builtin.Coinduction.♭"
d22 :: MAlonzo.RTE.Infinity AgdaAny AgdaAny -> AgdaAny
d22 v0
  = case coe v0 of
      C16 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
