{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Char.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char

name6 = "Data.Char.Base._≈_"
d6 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 -> ()
d6 = erased
name8 = "Data.Char.Base._<_"
d8 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 -> ()
d8 = erased
name10 = "Data.Char.Base.toNat"
d10 :: MAlonzo.Code.Agda.Builtin.Char.T6 -> Integer
d10 = coe MAlonzo.Code.Agda.Builtin.Char.d28
name12 = "Data.Char.Base.fromNat"
d12 :: Integer -> MAlonzo.Code.Agda.Builtin.Char.T6
d12 = coe MAlonzo.Code.Agda.Builtin.Char.d30
