{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Properties.Semilattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Properties.Poset

name138 = "Algebra.Properties.Semilattice.poset"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186
d138 v0 v1 v2 = du138 v2
du138 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186
du138 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du1990
         (coe (MAlonzo.Code.Algebra.Bundles.d284 (coe v0)))
         (coe (MAlonzo.Code.Algebra.Bundles.d286 (coe v0))))
name142 = "Algebra.Properties.Semilattice._._≤_"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 -> AgdaAny -> AgdaAny -> ()
d142 = erased
name148 = "Algebra.Properties.Semilattice._._≥_"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 -> AgdaAny -> AgdaAny -> ()
d148 = erased
name152
  = "Algebra.Properties.Semilattice.∧-isOrderTheoreticMeetSemilattice"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d152 v0 v1 v2 = du152 v2
du152 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du152 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Lattice.C3919
         (coe
            (MAlonzo.Code.Relation.Binary.Bundles.d208 (coe (du138 (coe v0)))))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du1846
               (coe (MAlonzo.Code.Algebra.Bundles.d284 (coe v0)))
               (coe (MAlonzo.Code.Algebra.Bundles.d286 (coe v0))))))
name154
  = "Algebra.Properties.Semilattice.∧-isOrderTheoreticJoinSemilattice"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d154 v0 v1 v2 = du154 v2
du154 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du154 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Lattice.C243
         (coe
            (MAlonzo.Code.Relation.Binary.Properties.Poset.du138
               (coe (du138 (coe v0)))))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du1846
               (coe (MAlonzo.Code.Algebra.Bundles.d284 (coe v0)))
               (coe (MAlonzo.Code.Algebra.Bundles.d286 (coe v0))))))
name156
  = "Algebra.Properties.Semilattice.∧-orderTheoreticMeetSemilattice"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d156 v0 v1 v2 = du156 v2
du156 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du156 v0
  = coe
      (\ v1 v2 v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Lattice.C5901 v4 v5)
      erased erased erased (MAlonzo.Code.Algebra.Bundles.d284 (coe v0))
      (du152 (coe v0))
name158
  = "Algebra.Properties.Semilattice.∧-orderTheoreticJoinSemilattice"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d158 v0 v1 v2 = du158 v2
du158 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du158 v0
  = coe
      (\ v1 v2 v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Lattice.C2225 v4 v5)
      erased erased erased (MAlonzo.Code.Algebra.Bundles.d284 (coe v0))
      (du154 (coe v0))
name160
  = "Algebra.Properties.Semilattice.isOrderTheoreticMeetSemilattice"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d160 v0 v1 v2 = du160 v2
du160 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du160 v0 = coe (du152 (coe v0))
name162
  = "Algebra.Properties.Semilattice.isOrderTheoreticJoinSemilattice"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d162 v0 v1 v2 = du162 v2
du162 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du162 v0 = coe (du154 (coe v0))
name164
  = "Algebra.Properties.Semilattice.orderTheoreticMeetSemilattice"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d164 v0 v1 v2 = du164 v2
du164 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du164 v0 = coe (du156 (coe v0))
name166
  = "Algebra.Properties.Semilattice.orderTheoreticJoinSemilattice"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d166 v0 v1 v2 = du166 v2
du166 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du166 v0 = coe (du158 (coe v0))
