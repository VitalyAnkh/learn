{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.String.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty

name6 = "Data.String.Base._≈_"
d6 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> ()
d6 = erased
name8 = "Data.String.Base._<_"
d8 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> ()
d8 = erased
name10 = "Data.String.Base.fromChar"
d10 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d10 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d10
      (MAlonzo.Code.Agda.Builtin.List.C22
         (coe v0) (coe MAlonzo.Code.Agda.Builtin.List.C16))
name12 = "Data.String.Base.fromList⁺"
d12 ::
  MAlonzo.Code.Data.List.NonEmpty.T10 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d12 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d10
      (MAlonzo.Code.Agda.Builtin.List.C22
         (coe (MAlonzo.Code.Data.List.NonEmpty.d20 (coe v0)))
         (coe (MAlonzo.Code.Data.List.NonEmpty.d22 (coe v0))))
name14 = "Data.String.Base._++_"
d14 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d14 = coe MAlonzo.Code.Agda.Builtin.String.d12
name16 = "Data.String.Base.length"
d16 :: MAlonzo.Code.Agda.Builtin.String.T6 -> Integer
d16 v0
  = coe
      MAlonzo.Code.Data.List.Base.du258
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
name18 = "Data.String.Base.replicate"
d18 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d18 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.String.d10
      (MAlonzo.Code.Data.List.Base.du268 (coe v0) (coe v1))
name22 = "Data.String.Base.concat"
d22 ::
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d22
  = coe
      (MAlonzo.Code.Data.List.Base.du202
         (coe d14) (coe (Data.Text.pack "")))
name24 = "Data.String.Base.unlines"
d24 ::
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d24 v0
  = coe
      d22
      (MAlonzo.Code.Data.List.Base.du68
         (coe (Data.Text.pack "\n")) (coe v0))
