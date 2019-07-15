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
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Properties.Poset

name134 = "Algebra.Properties.Semilattice.poset"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T194 -> MAlonzo.Code.Relation.Binary.T310
d134 v0 v1 v2 = du134 v2
du134 ::
  MAlonzo.Code.Algebra.T194 -> MAlonzo.Code.Relation.Binary.T310
du134 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du1868
         (coe (MAlonzo.Code.Algebra.d212 (coe v0)))
         (coe (MAlonzo.Code.Algebra.d214 (coe v0))))
name138 = "Algebra.Properties.Semilattice._._≤_"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T194 -> AgdaAny -> AgdaAny -> ()
d138 = erased
name142
  = "Algebra.Properties.Semilattice.∧-isOrderTheoreticMeetSemilattice"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
d142 v0 v1 v2 = du142 v2
du142 ::
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
du142 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Lattice.C3869
         (coe (MAlonzo.Code.Relation.Binary.d332 (coe (du134 (coe v0)))))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du1730
               (coe (MAlonzo.Code.Algebra.d212 (coe v0)))
               (coe (MAlonzo.Code.Algebra.d214 (coe v0))))))
name144
  = "Algebra.Properties.Semilattice.∧-isOrderTheoreticJoinSemilattice"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d144 v0 v1 v2 = du144 v2
du144 ::
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du144 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Lattice.C243
         (coe
            (MAlonzo.Code.Relation.Binary.Properties.Poset.du110
               (coe (du134 (coe v0)))))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du1730
               (coe (MAlonzo.Code.Algebra.d212 (coe v0)))
               (coe (MAlonzo.Code.Algebra.d214 (coe v0))))))
name146
  = "Algebra.Properties.Semilattice.∧-orderTheoreticMeetSemilattice"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
d146 v0 v1 v2 = du146 v2
du146 ::
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
du146 v0
  = coe
      (\ v1 v2 v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Lattice.C5835 v4 v5)
      erased erased erased (MAlonzo.Code.Algebra.d212 (coe v0))
      (du142 (coe v0))
name148
  = "Algebra.Properties.Semilattice.∧-orderTheoreticJoinSemilattice"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
d148 v0 v1 v2 = du148 v2
du148 ::
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
du148 v0
  = coe
      (\ v1 v2 v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Lattice.C2209 v4 v5)
      erased erased erased (MAlonzo.Code.Algebra.d212 (coe v0))
      (du144 (coe v0))
name150
  = "Algebra.Properties.Semilattice.isOrderTheoreticMeetSemilattice"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
d150 v0 v1 v2 = du150 v2
du150 ::
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
du150 v0 = coe (du142 (coe v0))
name152
  = "Algebra.Properties.Semilattice.isOrderTheoreticJoinSemilattice"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d152 v0 v1 v2 = du152 v2
du152 ::
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du152 v0 = coe (du144 (coe v0))
name154
  = "Algebra.Properties.Semilattice.orderTheoreticMeetSemilattice"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
d154 v0 v1 v2 = du154 v2
du154 ::
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
du154 v0 = coe (du146 (coe v0))
name156
  = "Algebra.Properties.Semilattice.orderTheoreticJoinSemilattice"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
d156 v0 v1 v2 = du156 v2
du156 ::
  MAlonzo.Code.Algebra.T194 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
du156 v0 = coe (du148 (coe v0))
