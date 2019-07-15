{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.String where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Data.Vec.Base

name6 = "Data.String.toVec"
d6 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Data.Vec.Base.T24
d6 v0
  = coe
      (MAlonzo.Code.Data.Vec.Base.du646
         (coe MAlonzo.Code.Agda.Builtin.String.d8 v0))
