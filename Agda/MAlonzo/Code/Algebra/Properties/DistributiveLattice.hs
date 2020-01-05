{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Properties.DistributiveLattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.Lattice
import qualified MAlonzo.Code.Algebra.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Structures

name76
  = "Algebra.Properties.DistributiveLattice._._DistributesOver_"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d76 = erased
name78
  = "Algebra.Properties.DistributiveLattice._._DistributesOverʳ_"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d78 = erased
name80
  = "Algebra.Properties.DistributiveLattice._._DistributesOverˡ_"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d80 = erased
name164
  = "Algebra.Properties.DistributiveLattice._.isOrderTheoreticLattice"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
d164 v0 v1 v2 = du164 v2
du164 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
du164 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1610
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name166
  = "Algebra.Properties.DistributiveLattice._.orderTheoreticLattice"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
d166 v0 v1 v2 = du166 v2
du166 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
du166 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1612
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name168 = "Algebra.Properties.DistributiveLattice._.poset"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186
d168 v0 v1 v2 = du168 v2
du168 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186
du168 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du138
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1430 (coe v1))))
name170 = "Algebra.Properties.DistributiveLattice._.∧-idem"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 -> AgdaAny -> AgdaAny
d170 v0 v1 v2 = du170 v2
du170 :: MAlonzo.Code.Algebra.Bundles.T1056 -> AgdaAny -> AgdaAny
du170 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1418
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name172 = "Algebra.Properties.DistributiveLattice._.∧-idempotent"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 -> AgdaAny -> AgdaAny
d172 v0 v1 v2 = du172 v2
du172 :: MAlonzo.Code.Algebra.Bundles.T1056 -> AgdaAny -> AgdaAny
du172 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1606
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name174 = "Algebra.Properties.DistributiveLattice._.∧-isBand"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T150
d174 v0 v1 v2 = du174 v2
du174 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T150
du174 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1426
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name176 = "Algebra.Properties.DistributiveLattice._.∧-isMagma"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T78
d176 v0 v1 v2 = du176 v2
du176 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T78
du176 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1422
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name178
  = "Algebra.Properties.DistributiveLattice._.∧-isOrderTheoreticJoinSemilattice"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d178 v0 v1 v2 = du178 v2
du178 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du178 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du154
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1430 (coe v1))))
name180
  = "Algebra.Properties.DistributiveLattice._.∧-isOrderTheoreticMeetSemilattice"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d180 v0 v1 v2 = du180 v2
du180 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du180 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du152
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1430 (coe v1))))
name182 = "Algebra.Properties.DistributiveLattice._.∧-isSemigroup"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T114
d182 v0 v1 v2 = du182 v2
du182 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T114
du182 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1424
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name184
  = "Algebra.Properties.DistributiveLattice._.∧-isSemilattice"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T230
d184 v0 v1 v2 = du184 v2
du184 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T230
du184 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1428
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name186
  = "Algebra.Properties.DistributiveLattice._.∧-orderTheoreticJoinSemilattice"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d186 v0 v1 v2 = du186 v2
du186 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du186 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du158
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1430 (coe v1))))
name188
  = "Algebra.Properties.DistributiveLattice._.∧-orderTheoreticMeetSemilattice"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d188 v0 v1 v2 = du188 v2
du188 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du188 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du156
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1430 (coe v1))))
name190 = "Algebra.Properties.DistributiveLattice._.∧-semilattice"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Bundles.T266
d190 v0 v1 v2 = du190 v2
du190 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Bundles.T266
du190 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1430
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name192 = "Algebra.Properties.DistributiveLattice._.∧-∨-isLattice"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T684
d192 v0 v1 v2 = du192 v2
du192 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T684
du192 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1466
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name194 = "Algebra.Properties.DistributiveLattice._.∧-∨-lattice"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Bundles.T984
d194 v0 v1 v2 = du194 v2
du194 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Bundles.T984
du194 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1468
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name196 = "Algebra.Properties.DistributiveLattice._.∨-idem"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 -> AgdaAny -> AgdaAny
d196 v0 v1 v2 = du196 v2
du196 :: MAlonzo.Code.Algebra.Bundles.T1056 -> AgdaAny -> AgdaAny
du196 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1442
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name198 = "Algebra.Properties.DistributiveLattice._.∨-idempotent"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 -> AgdaAny -> AgdaAny
d198 v0 v1 v2 = du198 v2
du198 :: MAlonzo.Code.Algebra.Bundles.T1056 -> AgdaAny -> AgdaAny
du198 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1608
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name200 = "Algebra.Properties.DistributiveLattice._.∨-isBand"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T150
d200 v0 v1 v2 = du200 v2
du200 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T150
du200 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1450
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name202 = "Algebra.Properties.DistributiveLattice._.∨-isMagma"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T78
d202 v0 v1 v2 = du202 v2
du202 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T78
du202 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1446
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name204
  = "Algebra.Properties.DistributiveLattice._.∧-isOrderTheoreticJoinSemilattice"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d204 v0 v1 v2 = du204 v2
du204 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du204 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du154
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1454 (coe v1))))
name206
  = "Algebra.Properties.DistributiveLattice._.∧-isOrderTheoreticMeetSemilattice"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d206 v0 v1 v2 = du206 v2
du206 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du206 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du152
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1454 (coe v1))))
name208 = "Algebra.Properties.DistributiveLattice._.∨-isSemigroup"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T114
d208 v0 v1 v2 = du208 v2
du208 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T114
du208 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1448
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name210
  = "Algebra.Properties.DistributiveLattice._.∨-isSemilattice"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T230
d210 v0 v1 v2 = du210 v2
du210 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T230
du210 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1452
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name212
  = "Algebra.Properties.DistributiveLattice._.∧-orderTheoreticJoinSemilattice"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d212 v0 v1 v2 = du212 v2
du212 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du212 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du158
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1454 (coe v1))))
name214
  = "Algebra.Properties.DistributiveLattice._.∧-orderTheoreticMeetSemilattice"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d214 v0 v1 v2 = du214 v2
du214 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du214 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du156
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1454 (coe v1))))
name216 = "Algebra.Properties.DistributiveLattice._.∨-semilattice"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Bundles.T266
d216 v0 v1 v2 = du216 v2
du216 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Bundles.T266
du216 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1454
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name218
  = "Algebra.Properties.DistributiveLattice._.∨-∧-isOrderTheoreticLattice"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
d218 v0 v1 v2 = du218 v2
du218 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
du218 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1480
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name220
  = "Algebra.Properties.DistributiveLattice._.∨-∧-orderTheoreticLattice"
d220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
d220 v0 v1 v2 = du220 v2
du220 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
du220 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1536
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))
name222 = "Algebra.Properties.DistributiveLattice.∨-distribˡ-∧"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d222 v0 v1 v2 v3 v4 v5 = du222 v2 v3 v4 v5
du222 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du222 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v4
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1076 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1076 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v2 v3) v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1078 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Structures.d708
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))))
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v2 v3))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1076 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v2 v3) v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1078 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v3 v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1078 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v3))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d770
                        (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0)) v1 v2 v3)
                     (let v6
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1078 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v3 v1))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1078 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1078 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d718
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))))
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v3 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d708
                                 (MAlonzo.Code.Algebra.Structures.d768
                                    (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))))
                                 v2 v1)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d708
                                 (MAlonzo.Code.Algebra.Structures.d768
                                    (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))))
                                 v3 v1))
                           (let v7
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Algebra.Structures.d706
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d768
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.d1080
                                                        (coe v0))))))) in
                            let v8
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.d1078 v0
                                      (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v2)
                                      (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v3) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v7 v8))))))))))
name230 = "Algebra.Properties.DistributiveLattice.∨-distrib-∧"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d230 v0 v1 v2 = du230 v2
du230 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du230 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du222 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d770
               (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))))))
name232 = "Algebra.Properties.DistributiveLattice.∧-distribˡ-∨"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d232 v0 v1 v2 v3 v4 v5 = du232 v2 v3 v4 v5
du232 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du232 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v4
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1078 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1076 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
               (coe
                  (MAlonzo.Code.Algebra.Structures.du742
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d768
                           (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0)))))
                     (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d36
                        (MAlonzo.Code.Algebra.Structures.d706
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v2))
                        v1
                        (let v5 = MAlonzo.Code.Algebra.Bundles.d1080 (coe v0) in
                         let v6 = MAlonzo.Code.Algebra.Structures.d768 (coe v5) in
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d30
                           (MAlonzo.Code.Algebra.Structures.d720 (coe v6)) v1 v2))))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1078 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1078 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v1))
                        (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1076 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                     (coe
                        (MAlonzo.Code.Algebra.Structures.du742
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0)))))
                           (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v1))
                           (coe
                              (MAlonzo.Code.Algebra.Structures.du738
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d768
                                       (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0)))))
                                 (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v1 v2)
                                 (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d708
                                    (MAlonzo.Code.Algebra.Structures.d768
                                       (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))))
                                    v1 v2)))))
                     (let v6
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1078 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v1))
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d1078 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1076 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d716
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))))
                              v1 (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3))
                           (let v7
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v7)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d1078 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v1)
                                       (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d1076 v0 v2
                                       (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d1076 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v2)
                                    (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.du738
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d768
                                             (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0)))))
                                       (coe v1)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d1078 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v1)
                                          (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d1076 v0 v2
                                          (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d36
                                          (MAlonzo.Code.Algebra.Structures.d706
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d768
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Bundles.d1080
                                                         (coe v0))))))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d1076 v0 v2
                                             (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d1078 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v1)
                                             (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3))
                                          (du222 (coe v0) (coe v2) (coe v1) (coe v3)))))
                                 (let v8
                                        = MAlonzo.Code.Relation.Binary.Bundles.du80
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v0))))) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Structures.d24
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                   (coe v8)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d1076 v0 v2
                                             (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3)))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d1078 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d1076 v0 v1
                                             (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d1076 v0 v2
                                             (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3)))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d1076 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v2)
                                          (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.du742
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d768
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Bundles.d1080
                                                         (coe v0)))))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d1076 v0 v2
                                                (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                                             (coe v1)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d1076 v0 v1
                                                (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Structures.d36
                                                (MAlonzo.Code.Algebra.Structures.d706
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d768
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Bundles.d1080
                                                               (coe v0))))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d1076 v0 v1
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                                                v1
                                                (let v9
                                                       = MAlonzo.Code.Algebra.Bundles.d1080
                                                           (coe v0) in
                                                 let v10
                                                       = MAlonzo.Code.Algebra.Structures.d768
                                                           (coe v9) in
                                                 coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d28
                                                   (MAlonzo.Code.Algebra.Structures.d720 (coe v10))
                                                   v1 v3))))
                                       (let v9
                                              = MAlonzo.Code.Relation.Binary.Bundles.du80
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1050
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1128
                                                              (coe v0))))) in
                                        coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Structures.d24
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                         (coe v9)))))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d1078 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d1076 v0 v1
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d1076 v0 v2
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3)))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d1076 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v2)
                                                (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d1076 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v2)
                                                (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Structures.d36
                                                (MAlonzo.Code.Algebra.Structures.d706
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d768
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Bundles.d1080
                                                               (coe v0))))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d1076 v0
                                                   (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v2)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d1078 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d1076 v0 v1
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                                                         v3))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d1076 v0 v2
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                                                         v3)))
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d770
                                                   (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))
                                                   (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3)
                                                   v1 v2))
                                             (let v10
                                                    = MAlonzo.Code.Relation.Binary.Structures.d34
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Structures.d706
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.Structures.d768
                                                                    (coe
                                                                       (MAlonzo.Code.Algebra.Bundles.d1080
                                                                          (coe v0))))))) in
                                              let v11
                                                    = coe
                                                        MAlonzo.Code.Algebra.Bundles.d1076 v0
                                                        (coe
                                                           MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                                                           v2)
                                                        (coe
                                                           MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                                                           v3) in
                                              coe
                                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                                   (coe v10 v11))))))))))))))))
name240 = "Algebra.Properties.DistributiveLattice.∧-distribʳ-∨"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d240 v0 v1 v2 v3 v4 v5 = du240 v2 v3 v4 v5
du240 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du240 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v4
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1078 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3) v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d1076 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v3 v1))
               (coe
                  MAlonzo.Code.Algebra.Structures.d714
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))))
                  (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3) v1)
               (let v5
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1078 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1076 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d1076 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v3 v1))
                     (coe (du232 (coe v0) (coe v1) (coe v2) (coe v3)))
                     (let v6
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1076 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1076 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v3 v1))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d1076 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v3 v1))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d712
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))))
                              (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v1 v3)
                              (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v3 v1)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d714
                                 (MAlonzo.Code.Algebra.Structures.d768
                                    (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))))
                                 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d714
                                 (MAlonzo.Code.Algebra.Structures.d768
                                    (coe (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0))))
                                 v1 v3))
                           (let v7
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Algebra.Structures.d706
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d768
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.d1080
                                                        (coe v0))))))) in
                            let v8
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.d1076 v0
                                      (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v2 v1)
                                      (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v3 v1) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v7 v8))))))))))
name248 = "Algebra.Properties.DistributiveLattice.∧-distrib-∨"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d248 v0 v1 v2 = du248 v2
du248 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du248 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du232 (coe v0))) (coe (du240 (coe v0))))
name250
  = "Algebra.Properties.DistributiveLattice.∧-∨-isDistributiveLattice"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T758
d250 v0 v1 v2 = du250 v2
du250 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Structures.T758
du250 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C7119
         (coe
            (MAlonzo.Code.Algebra.Properties.Lattice.du1466
               (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0)))))
         (coe (du240 (coe v0))))
name252
  = "Algebra.Properties.DistributiveLattice.∧-∨-distributiveLattice"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Bundles.T1056
d252 v0 v1 v2 = du252 v2
du252 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Algebra.Bundles.T1056
du252 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> MAlonzo.Code.Algebra.Bundles.C4191 v3 v4 v5)
      erased erased (MAlonzo.Code.Algebra.Bundles.d1078 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d1076 (coe v0)) (du250 (coe v0))
name260 = "Algebra.Properties.DistributiveLattice.replace-equality"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.Bundles.T1056
d260 v0 v1 v2 v3 v4 = du260 v2 v4
du260 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.Bundles.T1056
du260 v0 v1
  = coe
      (\ v2 v3 v4 v5 v6 -> MAlonzo.Code.Algebra.Bundles.C4191 v4 v5 v6)
      erased erased (MAlonzo.Code.Algebra.Bundles.d1076 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d1078 (coe v0))
      (MAlonzo.Code.Algebra.Structures.C7119
         (coe
            (MAlonzo.Code.Algebra.Bundles.d1008
               (coe
                  (MAlonzo.Code.Algebra.Properties.Lattice.du1544
                     (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v0))) (coe v1)))))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d1076 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d1078 v0 v3 v4) v2)
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d1078 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v3 v2)
                          (coe MAlonzo.Code.Algebra.Bundles.d1076 v0 v4 v2))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d770
                    (MAlonzo.Code.Algebra.Bundles.d1080 (coe v0)) v2 v3 v4))))
name286 = "Algebra.Properties.DistributiveLattice.∨-∧-distribˡ"
d286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d286 v0 v1 v2 = du286 v2
du286 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du286 v0 = coe (du222 (coe v0))
name288 = "Algebra.Properties.DistributiveLattice.∨-∧-distrib"
d288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d288 v0 v1 v2 = du288 v2
du288 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du288 v0 = coe (du230 (coe v0))
name290 = "Algebra.Properties.DistributiveLattice.∧-∨-distribˡ"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d290 v0 v1 v2 = du290 v2
du290 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du290 v0 = coe (du232 (coe v0))
name292 = "Algebra.Properties.DistributiveLattice.∧-∨-distribʳ"
d292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d292 v0 v1 v2 = du292 v2
du292 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du292 v0 = coe (du240 (coe v0))
name294 = "Algebra.Properties.DistributiveLattice.∧-∨-distrib"
d294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d294 v0 v1 v2 = du294 v2
du294 ::
  MAlonzo.Code.Algebra.Bundles.T1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du294 v0 = coe (du248 (coe v0))
