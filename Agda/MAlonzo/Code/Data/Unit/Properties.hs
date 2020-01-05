{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Unit.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Unit.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name6 = "Data.Unit.Properties._≟_"
d6 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Relation.Nullary.T32
d6 v0 v1 = du6
du6 :: MAlonzo.Code.Relation.Nullary.T32
du6
  = coe
      (MAlonzo.Code.Relation.Nullary.C46
         (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
         (coe (MAlonzo.Code.Relation.Nullary.C22 erased)))
name8 = "Data.Unit.Properties.≡-setoid"
d8 :: MAlonzo.Code.Relation.Binary.Bundles.T44
d8 = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du74
name10 = "Data.Unit.Properties.≡-decSetoid"
d10 :: MAlonzo.Code.Relation.Binary.Bundles.T86
d10
  = coe
      (MAlonzo.Code.Relation.Binary.PropositionalEquality.du78
         (coe
            (\ v0 v1 ->
               MAlonzo.Code.Relation.Nullary.C46
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                 (coe (MAlonzo.Code.Relation.Nullary.C22 erased)))))
name12 = "Data.Unit.Properties.≡-total"
d12 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> MAlonzo.Code.Data.Sum.Base.T30
d12 v0 v1 = du12
du12 :: MAlonzo.Code.Data.Sum.Base.T30
du12 = coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
name14 = "Data.Unit.Properties.≡-antisym"
d14 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d14 = erased
name18 = "Data.Unit.Properties.≡-isPreorder"
d18 :: MAlonzo.Code.Relation.Binary.Structures.T70
d18
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C753
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         (coe (\ v0 v1 v2 -> v2)) erased)
name22 = "Data.Unit.Properties.≡-isPartialOrder"
d22 :: MAlonzo.Code.Relation.Binary.Structures.T118
d22
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C1589
         (coe d18) (coe (\ v0 v1 v2 v3 -> v2)))
name24 = "Data.Unit.Properties.≡-isTotalOrder"
d24 :: MAlonzo.Code.Relation.Binary.Structures.T340
d24
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C3913
         (coe d22) (coe (\ v0 v1 -> MAlonzo.Code.Data.Sum.Base.C38 erased)))
name26 = "Data.Unit.Properties.≡-isDecTotalOrder"
d26 :: MAlonzo.Code.Relation.Binary.Structures.T388
d26
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C4345
         (coe d24)
         (coe
            (\ v0 v1 ->
               MAlonzo.Code.Relation.Nullary.C46
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                 (coe (MAlonzo.Code.Relation.Nullary.C22 erased))))
         (coe
            (\ v0 v1 ->
               MAlonzo.Code.Relation.Nullary.C46
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                 (coe (MAlonzo.Code.Relation.Nullary.C22 erased)))))
name28 = "Data.Unit.Properties.≡-poset"
d28 :: MAlonzo.Code.Relation.Binary.Bundles.T186
d28
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C807 v3)
      erased erased erased d22
name30 = "Data.Unit.Properties.≡-decTotalOrder"
d30 :: MAlonzo.Code.Relation.Binary.Bundles.T592
d30
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C2791 v3)
      erased erased erased d26
name32 = "Data.Unit.Properties.≤-reflexive"
d32 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Unit.Base.T10
d32 = erased
name34 = "Data.Unit.Properties.≤-trans"
d34 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Data.Unit.Base.T10 ->
  MAlonzo.Code.Data.Unit.Base.T10 -> MAlonzo.Code.Data.Unit.Base.T10
d34 = erased
name36 = "Data.Unit.Properties.≤-antisym"
d36 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Data.Unit.Base.T10 ->
  MAlonzo.Code.Data.Unit.Base.T10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d36 = erased
name38 = "Data.Unit.Properties.≤-total"
d38 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> MAlonzo.Code.Data.Sum.Base.T30
d38 v0 v1 = du38
du38 :: MAlonzo.Code.Data.Sum.Base.T30
du38 = coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
name40 = "Data.Unit.Properties._≤?_"
d40 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Relation.Nullary.T32
d40 v0 v1 = du40
du40 :: MAlonzo.Code.Relation.Nullary.T32
du40
  = coe
      (MAlonzo.Code.Relation.Nullary.C46
         (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
         (coe (MAlonzo.Code.Relation.Nullary.C22 erased)))
name42 = "Data.Unit.Properties.≤-isPreorder"
d42 :: MAlonzo.Code.Relation.Binary.Structures.T70
d42
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C753
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         erased erased)
name44 = "Data.Unit.Properties.≤-isPartialOrder"
d44 :: MAlonzo.Code.Relation.Binary.Structures.T118
d44
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C1589 (coe d42) erased)
name46 = "Data.Unit.Properties.≤-isTotalOrder"
d46 :: MAlonzo.Code.Relation.Binary.Structures.T340
d46
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C3913
         (coe d44) (coe (\ v0 v1 -> MAlonzo.Code.Data.Sum.Base.C38 erased)))
name48 = "Data.Unit.Properties.≤-isDecTotalOrder"
d48 :: MAlonzo.Code.Relation.Binary.Structures.T388
d48
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C4345
         (coe d46)
         (coe
            (\ v0 v1 ->
               MAlonzo.Code.Relation.Nullary.C46
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                 (coe (MAlonzo.Code.Relation.Nullary.C22 erased))))
         (coe
            (\ v0 v1 ->
               MAlonzo.Code.Relation.Nullary.C46
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                 (coe (MAlonzo.Code.Relation.Nullary.C22 erased)))))
name50 = "Data.Unit.Properties.≤-poset"
d50 :: MAlonzo.Code.Relation.Binary.Bundles.T186
d50
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C807 v3)
      erased erased erased d44
name52 = "Data.Unit.Properties.≤-decTotalOrder"
d52 :: MAlonzo.Code.Relation.Binary.Bundles.T592
d52
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C2791 v3)
      erased erased erased d48
