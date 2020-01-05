{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Bool.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Primitive

name10 = "Data.Bool.Base._≤_"
d10 a0 a1 = ()
data T10 = C12 | C16
name18 = "Data.Bool.Base._<_"
d18 a0 a1 = ()
data T18 = C20
name22 = "Data.Bool.Base.not"
d22 :: Bool -> Bool
d22 v0
  = if coe v0
      then coe MAlonzo.Code.Agda.Builtin.Bool.C8
      else coe MAlonzo.Code.Agda.Builtin.Bool.C10
name24 = "Data.Bool.Base._∧_"
d24 :: Bool -> Bool -> Bool
d24 v0 v1 = if coe v0 then coe v1 else coe v0
name30 = "Data.Bool.Base._∨_"
d30 :: Bool -> Bool -> Bool
d30 v0 v1 = if coe v0 then coe v0 else coe v1
name36 = "Data.Bool.Base._xor_"
d36 :: Bool -> Bool -> Bool
d36 v0 v1 = if coe v0 then coe (d22 (coe v1)) else coe v1
name42 = "Data.Bool.Base.if_then_else_"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Bool -> AgdaAny -> AgdaAny -> AgdaAny
d42 v0 v1 v2 v3 v4 = du42 v2 v3 v4
du42 :: Bool -> AgdaAny -> AgdaAny -> AgdaAny
du42 v0 v1 v2 = if coe v0 then coe v1 else coe v2
name52 = "Data.Bool.Base.T"
d52 :: Bool -> ()
d52 = erased
