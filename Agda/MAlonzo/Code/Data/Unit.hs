{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Unit where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Unit.Properties
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality

name4 = "Data.Unit.setoid"
d4 :: MAlonzo.Code.Relation.Binary.Bundles.T44
d4 = coe MAlonzo.Code.Data.Unit.Properties.d8
name6 = "Data.Unit.decSetoid"
d6 :: MAlonzo.Code.Relation.Binary.Bundles.T86
d6 = coe MAlonzo.Code.Data.Unit.Properties.d10
name8 = "Data.Unit.total"
d8 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> MAlonzo.Code.Data.Sum.Base.T30
d8 v0 v1 = du8
du8 :: MAlonzo.Code.Data.Sum.Base.T30
du8 = coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
name10 = "Data.Unit.poset"
d10 :: MAlonzo.Code.Relation.Binary.Bundles.T186
d10 = coe MAlonzo.Code.Data.Unit.Properties.d28
name12 = "Data.Unit.decTotalOrder"
d12 :: MAlonzo.Code.Relation.Binary.Bundles.T592
d12 = coe MAlonzo.Code.Data.Unit.Properties.d30
name14 = "Data.Unit.preorder"
d14 :: MAlonzo.Code.Relation.Binary.Bundles.T128
d14 = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du82
