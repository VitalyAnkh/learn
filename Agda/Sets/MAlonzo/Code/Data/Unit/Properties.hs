{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Unit.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Unit.Base
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Nullary

name6 = "Data.Unit.Properties._≟_"
d6 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Relation.Nullary.T14
d6 v0 v1 = du6
du6 :: MAlonzo.Code.Relation.Nullary.T14
du6 = coe (MAlonzo.Code.Relation.Nullary.C22 erased)
name8 = "Data.Unit.Properties.≡-setoid"
d8 :: MAlonzo.Code.Relation.Binary.T128
d8 = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66
name10 = "Data.Unit.Properties.≡-decSetoid"
d10 :: MAlonzo.Code.Relation.Binary.T206
d10
  = coe
      (MAlonzo.Code.Relation.Binary.PropositionalEquality.du70
         (coe (\ v0 v1 -> MAlonzo.Code.Relation.Nullary.C22 erased)))
name12 = "Data.Unit.Properties.≤-reflexive"
d12 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Unit.Base.T10
d12 = erased
name14 = "Data.Unit.Properties.≤-trans"
d14 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Data.Unit.Base.T10 ->
  MAlonzo.Code.Data.Unit.Base.T10 -> MAlonzo.Code.Data.Unit.Base.T10
d14 = erased
name16 = "Data.Unit.Properties.≤-antisym"
d16 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Data.Unit.Base.T10 ->
  MAlonzo.Code.Data.Unit.Base.T10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d16 = erased
name18 = "Data.Unit.Properties.≤-total"
d18 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> MAlonzo.Code.Data.Sum.Base.T30
d18 v0 v1 = du18
du18 :: MAlonzo.Code.Data.Sum.Base.T30
du18 = coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
name20 = "Data.Unit.Properties._≤?_"
d20 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Relation.Nullary.T14
d20 v0 v1 = du20
du20 :: MAlonzo.Code.Relation.Nullary.T14
du20 = coe (MAlonzo.Code.Relation.Nullary.C22 erased)
name22 = "Data.Unit.Properties.≤-isPreorder"
d22 :: MAlonzo.Code.Relation.Binary.T16
d22
  = coe
      (MAlonzo.Code.Relation.Binary.C17
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         erased erased)
name24 = "Data.Unit.Properties.≤-isPartialOrder"
d24 :: MAlonzo.Code.Relation.Binary.T256
d24 = coe (MAlonzo.Code.Relation.Binary.C1639 (coe d22) erased)
name26 = "Data.Unit.Properties.≤-isTotalOrder"
d26 :: MAlonzo.Code.Relation.Binary.T876
d26
  = coe
      (MAlonzo.Code.Relation.Binary.C5461
         (coe d24) (coe (\ v0 v1 -> MAlonzo.Code.Data.Sum.Base.C38 erased)))
name28 = "Data.Unit.Properties.≤-isDecTotalOrder"
d28 :: MAlonzo.Code.Relation.Binary.T1010
d28
  = coe
      (MAlonzo.Code.Relation.Binary.C6205
         (coe d26)
         (coe (\ v0 v1 -> MAlonzo.Code.Relation.Nullary.C22 erased))
         (coe (\ v0 v1 -> MAlonzo.Code.Relation.Nullary.C22 erased)))
name30 = "Data.Unit.Properties.≤-poset"
d30 :: MAlonzo.Code.Relation.Binary.T310
d30
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1973 v3) erased
      erased erased d24
name32 = "Data.Unit.Properties.≤-decTotalOrder"
d32 :: MAlonzo.Code.Relation.Binary.T1084
d32
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C6763 v3) erased
      erased erased d28
