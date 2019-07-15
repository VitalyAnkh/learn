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
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Properties.Lattice
import qualified MAlonzo.Code.Algebra.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single

name74
  = "Algebra.Properties.DistributiveLattice._._DistributesOver_"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d74 = erased
name76
  = "Algebra.Properties.DistributiveLattice._._DistributesOverʳ_"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d76 = erased
name78
  = "Algebra.Properties.DistributiveLattice._._DistributesOverˡ_"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d78 = erased
name166
  = "Algebra.Properties.DistributiveLattice._.isOrderTheoreticLattice"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T794
d166 v0 v1 v2 = du166 v2
du166 ::
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T794
du166 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1514
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name168
  = "Algebra.Properties.DistributiveLattice._.orderTheoreticLattice"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T880
d168 v0 v1 v2 = du168 v2
du168 ::
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T880
du168 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1516
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name170 = "Algebra.Properties.DistributiveLattice._.poset"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Relation.Binary.T310
d170 v0 v1 v2 = du170 v2
du170 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Relation.Binary.T310
du170 v0
  = let v1 = MAlonzo.Code.Algebra.du1028 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du134
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1334 (coe v1))))
name172 = "Algebra.Properties.DistributiveLattice._.∧-idem"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> AgdaAny -> AgdaAny
d172 v0 v1 v2 = du172 v2
du172 :: MAlonzo.Code.Algebra.T958 -> AgdaAny -> AgdaAny
du172 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1322
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name174 = "Algebra.Properties.DistributiveLattice._.∧-idempotent"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> AgdaAny -> AgdaAny
d174 v0 v1 v2 = du174 v2
du174 :: MAlonzo.Code.Algebra.T958 -> AgdaAny -> AgdaAny
du174 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1510
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name176 = "Algebra.Properties.DistributiveLattice._.∧-isBand"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T152
d176 v0 v1 v2 = du176 v2
du176 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T152
du176 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1330
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name178 = "Algebra.Properties.DistributiveLattice._.∧-isMagma"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T84
d178 v0 v1 v2 = du178 v2
du178 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T84
du178 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1326
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name180
  = "Algebra.Properties.DistributiveLattice._.∧-isOrderTheoreticJoinSemilattice"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d180 v0 v1 v2 = du180 v2
du180 ::
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du180 v0
  = let v1 = MAlonzo.Code.Algebra.du1028 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du144
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1334 (coe v1))))
name182
  = "Algebra.Properties.DistributiveLattice._.∧-isOrderTheoreticMeetSemilattice"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
d182 v0 v1 v2 = du182 v2
du182 ::
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
du182 v0
  = let v1 = MAlonzo.Code.Algebra.du1028 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du142
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1334 (coe v1))))
name184 = "Algebra.Properties.DistributiveLattice._.∧-isSemigroup"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T118
d184 v0 v1 v2 = du184 v2
du184 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T118
du184 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1328
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name186
  = "Algebra.Properties.DistributiveLattice._.∧-isSemilattice"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T190
d186 v0 v1 v2 = du186 v2
du186 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T190
du186 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1332
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name188
  = "Algebra.Properties.DistributiveLattice._.∧-orderTheoreticJoinSemilattice"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
d188 v0 v1 v2 = du188 v2
du188 ::
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
du188 v0
  = let v1 = MAlonzo.Code.Algebra.du1028 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du148
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1334 (coe v1))))
name190
  = "Algebra.Properties.DistributiveLattice._.∧-orderTheoreticMeetSemilattice"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
d190 v0 v1 v2 = du190 v2
du190 ::
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
du190 v0
  = let v1 = MAlonzo.Code.Algebra.du1028 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du146
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1334 (coe v1))))
name192 = "Algebra.Properties.DistributiveLattice._.∧-semilattice"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.T194
d192 v0 v1 v2 = du192 v2
du192 :: MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.T194
du192 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1334
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name194 = "Algebra.Properties.DistributiveLattice._.∧-∨-isLattice"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T620
d194 v0 v1 v2 = du194 v2
du194 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T620
du194 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1370
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name196 = "Algebra.Properties.DistributiveLattice._.∧-∨-lattice"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.T888
d196 v0 v1 v2 = du196 v2
du196 :: MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.T888
du196 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1372
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name198 = "Algebra.Properties.DistributiveLattice._.∨-idem"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> AgdaAny -> AgdaAny
d198 v0 v1 v2 = du198 v2
du198 :: MAlonzo.Code.Algebra.T958 -> AgdaAny -> AgdaAny
du198 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1346
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name200 = "Algebra.Properties.DistributiveLattice._.∨-idempotent"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> AgdaAny -> AgdaAny
d200 v0 v1 v2 = du200 v2
du200 :: MAlonzo.Code.Algebra.T958 -> AgdaAny -> AgdaAny
du200 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1512
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name202 = "Algebra.Properties.DistributiveLattice._.∨-isBand"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T152
d202 v0 v1 v2 = du202 v2
du202 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T152
du202 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1354
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name204 = "Algebra.Properties.DistributiveLattice._.∨-isMagma"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T84
d204 v0 v1 v2 = du204 v2
du204 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T84
du204 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1350
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name206
  = "Algebra.Properties.DistributiveLattice._.∧-isOrderTheoreticJoinSemilattice"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d206 v0 v1 v2 = du206 v2
du206 ::
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du206 v0
  = let v1 = MAlonzo.Code.Algebra.du1028 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du144
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1358 (coe v1))))
name208
  = "Algebra.Properties.DistributiveLattice._.∧-isOrderTheoreticMeetSemilattice"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
d208 v0 v1 v2 = du208 v2
du208 ::
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
du208 v0
  = let v1 = MAlonzo.Code.Algebra.du1028 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du142
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1358 (coe v1))))
name210 = "Algebra.Properties.DistributiveLattice._.∨-isSemigroup"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T118
d210 v0 v1 v2 = du210 v2
du210 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T118
du210 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1352
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name212
  = "Algebra.Properties.DistributiveLattice._.∨-isSemilattice"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T190
d212 v0 v1 v2 = du212 v2
du212 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T190
du212 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1356
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name214
  = "Algebra.Properties.DistributiveLattice._.∧-orderTheoreticJoinSemilattice"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
d214 v0 v1 v2 = du214 v2
du214 ::
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
du214 v0
  = let v1 = MAlonzo.Code.Algebra.du1028 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du148
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1358 (coe v1))))
name216
  = "Algebra.Properties.DistributiveLattice._.∧-orderTheoreticMeetSemilattice"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
d216 v0 v1 v2 = du216 v2
du216 ::
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
du216 v0
  = let v1 = MAlonzo.Code.Algebra.du1028 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du146
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1358 (coe v1))))
name218 = "Algebra.Properties.DistributiveLattice._.∨-semilattice"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.T194
d218 v0 v1 v2 = du218 v2
du218 :: MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.T194
du218 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1358
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name220
  = "Algebra.Properties.DistributiveLattice._.∨-∧-isOrderTheoreticLattice"
d220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T794
d220 v0 v1 v2 = du220 v2
du220 ::
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T794
du220 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1384
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name222
  = "Algebra.Properties.DistributiveLattice._.∨-∧-orderTheoreticLattice"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T880
d222 v0 v1 v2 = du222 v2
du222 ::
  MAlonzo.Code.Algebra.T958 ->
  MAlonzo.Code.Relation.Binary.Lattice.T880
du222 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1440
         (coe (MAlonzo.Code.Algebra.du1028 (coe v0))))
name224 = "Algebra.Properties.DistributiveLattice.∨-distribˡ-∧"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d224 v0 v1 v2 v3 v4 v5 = du224 v2 v3 v4 v5
du224 ::
  MAlonzo.Code.Algebra.T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du224 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))))))
               (coe
                  MAlonzo.Code.Algebra.d978 v0 v1
                  (coe MAlonzo.Code.Algebra.d980 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.d978 v0
                  (coe MAlonzo.Code.Algebra.d980 v0 v2 v3) v1)
               (coe
                  MAlonzo.Code.Algebra.d980 v0
                  (coe MAlonzo.Code.Algebra.d978 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.d978 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Structures.d644
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe (MAlonzo.Code.Algebra.d982 (coe v0))))
                  v1 (coe MAlonzo.Code.Algebra.d980 v0 v2 v3))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d642
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d978 v0
                        (coe MAlonzo.Code.Algebra.d980 v0 v2 v3) v1)
                     (coe
                        MAlonzo.Code.Algebra.d980 v0
                        (coe MAlonzo.Code.Algebra.d978 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.d978 v0 v3 v1))
                     (coe
                        MAlonzo.Code.Algebra.d980 v0
                        (coe MAlonzo.Code.Algebra.d978 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.d978 v0 v1 v3))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d704
                        (MAlonzo.Code.Algebra.d982 (coe v0)) v1 v2 v3)
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d642
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d702
                                             (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d980 v0
                              (coe MAlonzo.Code.Algebra.d978 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.d978 v0 v3 v1))
                           (coe
                              MAlonzo.Code.Algebra.d980 v0
                              (coe MAlonzo.Code.Algebra.d978 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.d978 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.d980 v0
                              (coe MAlonzo.Code.Algebra.d978 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.d978 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d654
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe (MAlonzo.Code.Algebra.d982 (coe v0))))
                              (coe MAlonzo.Code.Algebra.d978 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.d978 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.d978 v0 v3 v1)
                              (coe MAlonzo.Code.Algebra.d978 v0 v1 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d644
                                 (MAlonzo.Code.Algebra.Structures.d702
                                    (coe (MAlonzo.Code.Algebra.d982 (coe v0))))
                                 v2 v1)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d644
                                 (MAlonzo.Code.Algebra.Structures.d702
                                    (coe (MAlonzo.Code.Algebra.d982 (coe v0))))
                                 v3 v1))
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Algebra.Structures.d642
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d702
                                                  (coe (MAlonzo.Code.Algebra.d982 (coe v0))))))) in
                            let v5
                                  = coe
                                      MAlonzo.Code.Algebra.d980 v0
                                      (coe MAlonzo.Code.Algebra.d978 v0 v1 v2)
                                      (coe MAlonzo.Code.Algebra.d978 v0 v1 v3) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v4 v5))))))))))
name232 = "Algebra.Properties.DistributiveLattice.∨-distrib-∧"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d232 v0 v1 v2 = du232 v2
du232 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du232 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du224 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d704
               (coe (MAlonzo.Code.Algebra.d982 (coe v0))))))
name234 = "Algebra.Properties.DistributiveLattice.∧-distribˡ-∨"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d234 v0 v1 v2 v3 v4 v5 = du234 v2 v3 v4 v5
du234 ::
  MAlonzo.Code.Algebra.T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du234 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))))))
               (coe
                  MAlonzo.Code.Algebra.d980 v0 v1
                  (coe MAlonzo.Code.Algebra.d978 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.d980 v0
                  (coe
                     MAlonzo.Code.Algebra.d980 v0 v1
                     (coe MAlonzo.Code.Algebra.d978 v0 v1 v2))
                  (coe MAlonzo.Code.Algebra.d978 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.d978 v0
                  (coe MAlonzo.Code.Algebra.d980 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
               (coe
                  (MAlonzo.Code.Algebra.Structures.du676
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d702
                           (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))
                     (coe MAlonzo.Code.Algebra.d978 v0 v2 v3) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.d980 v0 v1
                        (coe MAlonzo.Code.Algebra.d978 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Relation.Binary.Core.d416
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe (MAlonzo.Code.Algebra.d982 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.d980 v0 v1
                           (coe MAlonzo.Code.Algebra.d978 v0 v1 v2))
                        v1
                        (let v4 = MAlonzo.Code.Algebra.d982 (coe v0) in
                         let v5 = MAlonzo.Code.Algebra.Structures.d702 (coe v4) in
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d30
                           (MAlonzo.Code.Algebra.Structures.d656 (coe v5)) v1 v2))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d642
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d980 v0
                        (coe
                           MAlonzo.Code.Algebra.d980 v0 v1
                           (coe MAlonzo.Code.Algebra.d978 v0 v1 v2))
                        (coe MAlonzo.Code.Algebra.d978 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.d980 v0
                        (coe
                           MAlonzo.Code.Algebra.d980 v0 v1
                           (coe MAlonzo.Code.Algebra.d978 v0 v2 v1))
                        (coe MAlonzo.Code.Algebra.d978 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.d978 v0
                        (coe MAlonzo.Code.Algebra.d980 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                     (coe
                        (MAlonzo.Code.Algebra.Structures.du676
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))
                           (coe MAlonzo.Code.Algebra.d978 v0 v2 v3)
                           (coe
                              MAlonzo.Code.Algebra.d980 v0 v1
                              (coe MAlonzo.Code.Algebra.d978 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.d980 v0 v1
                              (coe MAlonzo.Code.Algebra.d978 v0 v2 v1))
                           (coe
                              (MAlonzo.Code.Algebra.Structures.du672
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))
                                 (coe v1) (coe MAlonzo.Code.Algebra.d978 v0 v1 v2)
                                 (coe MAlonzo.Code.Algebra.d978 v0 v2 v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d644
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe (MAlonzo.Code.Algebra.d982 (coe v0))))
                                    v1 v2)))))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d642
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d702
                                             (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d980 v0
                              (coe
                                 MAlonzo.Code.Algebra.d980 v0 v1
                                 (coe MAlonzo.Code.Algebra.d978 v0 v2 v1))
                              (coe MAlonzo.Code.Algebra.d978 v0 v2 v3))
                           (coe
                              MAlonzo.Code.Algebra.d980 v0 v1
                              (coe
                                 MAlonzo.Code.Algebra.d980 v0
                                 (coe MAlonzo.Code.Algebra.d978 v0 v2 v1)
                                 (coe MAlonzo.Code.Algebra.d978 v0 v2 v3)))
                           (coe
                              MAlonzo.Code.Algebra.d978 v0
                              (coe MAlonzo.Code.Algebra.d980 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d652
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe (MAlonzo.Code.Algebra.d982 (coe v0))))
                              v1 (coe MAlonzo.Code.Algebra.d978 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.d978 v0 v2 v3))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d642
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d702
                                                   (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d980 v0 v1
                                    (coe
                                       MAlonzo.Code.Algebra.d980 v0
                                       (coe MAlonzo.Code.Algebra.d978 v0 v2 v1)
                                       (coe MAlonzo.Code.Algebra.d978 v0 v2 v3)))
                                 (coe
                                    MAlonzo.Code.Algebra.d980 v0 v1
                                    (coe
                                       MAlonzo.Code.Algebra.d978 v0 v2
                                       (coe MAlonzo.Code.Algebra.d980 v0 v1 v3)))
                                 (coe
                                    MAlonzo.Code.Algebra.d978 v0
                                    (coe MAlonzo.Code.Algebra.d980 v0 v1 v2)
                                    (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.du672
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d702
                                             (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))
                                       (coe v1)
                                       (coe
                                          MAlonzo.Code.Algebra.d980 v0
                                          (coe MAlonzo.Code.Algebra.d978 v0 v2 v1)
                                          (coe MAlonzo.Code.Algebra.d978 v0 v2 v3))
                                       (coe
                                          MAlonzo.Code.Algebra.d978 v0 v2
                                          (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Core.d416
                                          (MAlonzo.Code.Algebra.Structures.d642
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d702
                                                   (coe (MAlonzo.Code.Algebra.d982 (coe v0))))))
                                          (coe
                                             MAlonzo.Code.Algebra.d978 v0 v2
                                             (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                          (coe
                                             MAlonzo.Code.Algebra.d980 v0
                                             (coe MAlonzo.Code.Algebra.d978 v0 v2 v1)
                                             (coe MAlonzo.Code.Algebra.d978 v0 v2 v3))
                                          (du224 (coe v0) (coe v2) (coe v1) (coe v3)))))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Core.d418
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d642
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d702
                                                         (coe
                                                            (MAlonzo.Code.Algebra.d982
                                                               (coe v0)))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.d980 v0 v1
                                          (coe
                                             MAlonzo.Code.Algebra.d978 v0 v2
                                             (coe MAlonzo.Code.Algebra.d980 v0 v1 v3)))
                                       (coe
                                          MAlonzo.Code.Algebra.d980 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d978 v0 v1
                                             (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                          (coe
                                             MAlonzo.Code.Algebra.d978 v0 v2
                                             (coe MAlonzo.Code.Algebra.d980 v0 v1 v3)))
                                       (coe
                                          MAlonzo.Code.Algebra.d978 v0
                                          (coe MAlonzo.Code.Algebra.d980 v0 v1 v2)
                                          (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.du676
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d702
                                                   (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))
                                             (coe
                                                MAlonzo.Code.Algebra.d978 v0 v2
                                                (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                             (coe v1)
                                             (coe
                                                MAlonzo.Code.Algebra.d978 v0 v1
                                                (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Core.d416
                                                (MAlonzo.Code.Algebra.Structures.d642
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d702
                                                         (coe
                                                            (MAlonzo.Code.Algebra.d982 (coe v0))))))
                                                (coe
                                                   MAlonzo.Code.Algebra.d978 v0 v1
                                                   (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                                v1
                                                (let v4 = MAlonzo.Code.Algebra.d982 (coe v0) in
                                                 let v5
                                                       = MAlonzo.Code.Algebra.Structures.d702
                                                           (coe v4) in
                                                 coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d28
                                                   (MAlonzo.Code.Algebra.Structures.d656 (coe v5))
                                                   v1 v3))))
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Core.d418
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d642
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d702
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.d982
                                                                     (coe v0)))))))))
                                             (coe
                                                MAlonzo.Code.Algebra.d980 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d978 v0 v1
                                                   (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                                (coe
                                                   MAlonzo.Code.Algebra.d978 v0 v2
                                                   (coe MAlonzo.Code.Algebra.d980 v0 v1 v3)))
                                             (coe
                                                MAlonzo.Code.Algebra.d978 v0
                                                (coe MAlonzo.Code.Algebra.d980 v0 v1 v2)
                                                (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                             (coe
                                                MAlonzo.Code.Algebra.d978 v0
                                                (coe MAlonzo.Code.Algebra.d980 v0 v1 v2)
                                                (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Core.d416
                                                (MAlonzo.Code.Algebra.Structures.d642
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d702
                                                         (coe
                                                            (MAlonzo.Code.Algebra.d982 (coe v0))))))
                                                (coe
                                                   MAlonzo.Code.Algebra.d978 v0
                                                   (coe MAlonzo.Code.Algebra.d980 v0 v1 v2)
                                                   (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                                (coe
                                                   MAlonzo.Code.Algebra.d980 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d978 v0 v1
                                                      (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d978 v0 v2
                                                      (coe MAlonzo.Code.Algebra.d980 v0 v1 v3)))
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d704
                                                   (MAlonzo.Code.Algebra.d982 (coe v0))
                                                   (coe MAlonzo.Code.Algebra.d980 v0 v1 v3) v1 v2))
                                             (let v4
                                                    = MAlonzo.Code.Relation.Binary.Core.d414
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Structures.d642
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.Structures.d702
                                                                    (coe
                                                                       (MAlonzo.Code.Algebra.d982
                                                                          (coe v0))))))) in
                                              let v5
                                                    = coe
                                                        MAlonzo.Code.Algebra.d978 v0
                                                        (coe MAlonzo.Code.Algebra.d980 v0 v1 v2)
                                                        (coe MAlonzo.Code.Algebra.d980 v0 v1 v3) in
                                              coe
                                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                                   (coe v4 v5))))))))))))))))
name242 = "Algebra.Properties.DistributiveLattice.∧-distribʳ-∨"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d242 v0 v1 v2 v3 v4 v5 = du242 v2 v3 v4 v5
du242 ::
  MAlonzo.Code.Algebra.T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du242 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))))))
               (coe
                  MAlonzo.Code.Algebra.d980 v0
                  (coe MAlonzo.Code.Algebra.d978 v0 v2 v3) v1)
               (coe
                  MAlonzo.Code.Algebra.d980 v0 v1
                  (coe MAlonzo.Code.Algebra.d978 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.d978 v0
                  (coe MAlonzo.Code.Algebra.d980 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.d980 v0 v3 v1))
               (coe
                  MAlonzo.Code.Algebra.Structures.d650
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe (MAlonzo.Code.Algebra.d982 (coe v0))))
                  (coe MAlonzo.Code.Algebra.d978 v0 v2 v3) v1)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d642
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d980 v0 v1
                        (coe MAlonzo.Code.Algebra.d978 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.d978 v0
                        (coe MAlonzo.Code.Algebra.d980 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                     (coe
                        MAlonzo.Code.Algebra.d978 v0
                        (coe MAlonzo.Code.Algebra.d980 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.d980 v0 v3 v1))
                     (coe (du234 (coe v0) (coe v1) (coe v2) (coe v3)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d642
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d702
                                             (coe (MAlonzo.Code.Algebra.d982 (coe v0)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d978 v0
                              (coe MAlonzo.Code.Algebra.d980 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.d980 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.d978 v0
                              (coe MAlonzo.Code.Algebra.d980 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.d980 v0 v3 v1))
                           (coe
                              MAlonzo.Code.Algebra.d978 v0
                              (coe MAlonzo.Code.Algebra.d980 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.d980 v0 v3 v1))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d648
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe (MAlonzo.Code.Algebra.d982 (coe v0))))
                              (coe MAlonzo.Code.Algebra.d980 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.d980 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.d980 v0 v1 v3)
                              (coe MAlonzo.Code.Algebra.d980 v0 v3 v1)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d650
                                 (MAlonzo.Code.Algebra.Structures.d702
                                    (coe (MAlonzo.Code.Algebra.d982 (coe v0))))
                                 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d650
                                 (MAlonzo.Code.Algebra.Structures.d702
                                    (coe (MAlonzo.Code.Algebra.d982 (coe v0))))
                                 v1 v3))
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Algebra.Structures.d642
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d702
                                                  (coe (MAlonzo.Code.Algebra.d982 (coe v0))))))) in
                            let v5
                                  = coe
                                      MAlonzo.Code.Algebra.d978 v0
                                      (coe MAlonzo.Code.Algebra.d980 v0 v2 v1)
                                      (coe MAlonzo.Code.Algebra.d980 v0 v3 v1) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v4 v5))))))))))
name250 = "Algebra.Properties.DistributiveLattice.∧-distrib-∨"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d250 v0 v1 v2 = du250 v2
du250 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du250 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du234 (coe v0))) (coe (du242 (coe v0))))
name252
  = "Algebra.Properties.DistributiveLattice.∧-∨-isDistributiveLattice"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T692
d252 v0 v1 v2 = du252 v2
du252 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.Structures.T692
du252 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C6793
         (coe
            (MAlonzo.Code.Algebra.Properties.Lattice.du1370
               (coe (MAlonzo.Code.Algebra.du1028 (coe v0)))))
         (coe (du242 (coe v0))))
name254
  = "Algebra.Properties.DistributiveLattice.∧-∨-distributiveLattice"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.T958
d254 v0 v1 v2 = du254 v2
du254 :: MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Algebra.T958
du254 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> MAlonzo.Code.Algebra.C3833 v3 v4 v5) erased
      erased (MAlonzo.Code.Algebra.d980 (coe v0))
      (MAlonzo.Code.Algebra.d978 (coe v0)) (du252 (coe v0))
name262 = "Algebra.Properties.DistributiveLattice.replace-equality"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.T958
d262 v0 v1 v2 v3 v4 = du262 v2 v4
du262 ::
  MAlonzo.Code.Algebra.T958 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.T958
du262 v0 v1
  = coe
      (\ v2 v3 v4 v5 v6 -> MAlonzo.Code.Algebra.C3833 v4 v5 v6) erased
      erased (MAlonzo.Code.Algebra.d978 (coe v0))
      (MAlonzo.Code.Algebra.d980 (coe v0))
      (MAlonzo.Code.Algebra.Structures.C6793
         (coe
            (MAlonzo.Code.Algebra.d912
               (coe
                  (MAlonzo.Code.Algebra.Properties.Lattice.du1448
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v0))) (coe v1)))))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.d978 v0
                          (coe MAlonzo.Code.Algebra.d980 v0 v3 v4) v2)
                       (coe
                          MAlonzo.Code.Algebra.d980 v0
                          (coe MAlonzo.Code.Algebra.d978 v0 v3 v2)
                          (coe MAlonzo.Code.Algebra.d978 v0 v4 v2))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d704
                    (MAlonzo.Code.Algebra.d982 (coe v0)) v2 v3 v4))))
name288 = "Algebra.Properties.DistributiveLattice.∨-∧-distribˡ"
d288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d288 v0 v1 v2 = du288 v2
du288 ::
  MAlonzo.Code.Algebra.T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du288 v0 = coe (du224 (coe v0))
name290 = "Algebra.Properties.DistributiveLattice.∨-∧-distrib"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d290 v0 v1 v2 = du290 v2
du290 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du290 v0 = coe (du232 (coe v0))
name292 = "Algebra.Properties.DistributiveLattice.∧-∨-distribˡ"
d292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d292 v0 v1 v2 = du292 v2
du292 ::
  MAlonzo.Code.Algebra.T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du292 v0 = coe (du234 (coe v0))
name294 = "Algebra.Properties.DistributiveLattice.∧-∨-distribʳ"
d294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d294 v0 v1 v2 = du294 v2
du294 ::
  MAlonzo.Code.Algebra.T958 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du294 v0 = coe (du242 (coe v0))
name296 = "Algebra.Properties.DistributiveLattice.∧-∨-distrib"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d296 v0 v1 v2 = du296 v2
du296 ::
  MAlonzo.Code.Algebra.T958 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du296 v0 = coe (du250 (coe v0))
