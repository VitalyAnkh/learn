{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Unit.Polymorphic.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Level

name10 = "Data.Unit.Polymorphic.Base.⊤"
d10 :: MAlonzo.Code.Agda.Primitive.T4 -> ()
d10 = erased
name16 = "Data.Unit.Polymorphic.Base.tt"
d16 :: MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Level.T8
d16 v0 = du16
du16 :: MAlonzo.Code.Level.T8
du16
  = coe
      MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
