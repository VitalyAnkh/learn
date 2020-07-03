{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Qplfa.Qpart1.Induction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality

name14 = "plfa.part1.Induction.+-assoc"
d14 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d14 = erased
name28 = "plfa.part1.Induction.+-identityʳ"
d28 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d28 = erased
name36 = "plfa.part1.Induction.+-suc"
d36 :: Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d36 = erased
name48 = "plfa.part1.Induction.+-comm"
d48 :: Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d48 = erased
