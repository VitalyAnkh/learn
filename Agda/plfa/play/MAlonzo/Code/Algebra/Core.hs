{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

name6 = "Algebra.Core.Op₁"
d6 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d6 = erased
name12 = "Algebra.Core.Op₂"
d12 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d12 = erased
name20 = "Algebra.Core.Opₗ"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d20 = erased
name30 = "Algebra.Core.Opᵣ"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d30 = erased
