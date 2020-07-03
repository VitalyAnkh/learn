{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
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

name164 = "Algebra.Properties.Semilattice.poset"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d164 v0 v1 v2 = du164 v2
du164 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du1990
      (coe MAlonzo.Code.Algebra.Bundles.d284 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d286 (coe v0))
name168 = "Algebra.Properties.Semilattice._._≤_"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 -> AgdaAny -> AgdaAny -> ()
d168 = erased
name174 = "Algebra.Properties.Semilattice._._≥_"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 -> AgdaAny -> AgdaAny -> ()
d174 = erased
name178
  = "Algebra.Properties.Semilattice.∧-isOrderTheoreticMeetSemilattice"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d178 v0 v1 v2 = du178 v2
du178 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du178 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C8813
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d226 (coe du164 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du1846
         (coe MAlonzo.Code.Algebra.Bundles.d284 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d286 (coe v0)))
name180
  = "Algebra.Properties.Semilattice.∧-isOrderTheoreticJoinSemilattice"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d180 v0 v1 v2 = du180 v2
du180 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du180 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C1431
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Poset.du150
         (coe du164 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du1846
         (coe MAlonzo.Code.Algebra.Bundles.d284 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d286 (coe v0)))
name182
  = "Algebra.Properties.Semilattice.∧-orderTheoreticMeetSemilattice"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d182 v0 v1 v2 = du182 v2
du182 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C11915
      (MAlonzo.Code.Algebra.Bundles.d284 (coe v0)) (coe du178 (coe v0))
name184
  = "Algebra.Properties.Semilattice.∧-orderTheoreticJoinSemilattice"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d184 v0 v1 v2 = du184 v2
du184 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du184 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C4533
      (MAlonzo.Code.Algebra.Bundles.d284 (coe v0)) (coe du180 (coe v0))
name186
  = "Algebra.Properties.Semilattice.isOrderTheoreticMeetSemilattice"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d186 v0 v1 v2 = du186 v2
du186 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du186 v0 = coe du178 (coe v0)
name188
  = "Algebra.Properties.Semilattice.isOrderTheoreticJoinSemilattice"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d188 v0 v1 v2 = du188 v2
du188 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du188 v0 = coe du180 (coe v0)
name190
  = "Algebra.Properties.Semilattice.orderTheoreticMeetSemilattice"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d190 v0 v1 v2 = du190 v2
du190 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du190 v0 = coe du182 (coe v0)
name192
  = "Algebra.Properties.Semilattice.orderTheoreticJoinSemilattice"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d192 v0 v1 v2 = du192 v2
du192 ::
  MAlonzo.Code.Algebra.Bundles.T266 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du192 v0 = coe du184 (coe v0)
