{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Musical.Costring where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Codata.Musical.Colist

name6 = "Codata.Musical.Costring.Costring"
d6 :: ()
d6 = erased
name8 = "Codata.Musical.Costring.toCostring"
d8 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6
d8 v0
  = coe
      MAlonzo.Code.Codata.Musical.Colist.du266 (coe ())
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
