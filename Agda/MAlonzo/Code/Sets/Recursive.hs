{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Sets.Recursive where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

name4 = "Sets.Recursive.ℕ"
d4 = ()
data T4 = C6 | C8 T4
name10 = "Sets.Recursive.ℕ⁺"
d10 = ()
data T10 = C12 | C14 T10 | C16 T10
name18 = "Sets.Recursive.ℕ₂"
d18 = ()
data T18 = C20 | C22 T10
name24 = "Sets.Recursive.BinTree"
d24 = ()
data T24 = C26 | C28 T24 T24
