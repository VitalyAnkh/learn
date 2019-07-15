{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.FunctionProperties.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

name8 = "Algebra.FunctionProperties.Core.Op₁"
d8 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d8 = erased
name14 = "Algebra.FunctionProperties.Core.Op₂"
d14 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d14 = erased
