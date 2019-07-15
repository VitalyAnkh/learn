{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Solver.Ring.Simple where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Solver.Ring
import qualified MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Reflection
import qualified MAlonzo.Code.Relation.Nullary

name144 = "Algebra.Solver.Ring.Simple._._*H_"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418
d144 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d710
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name146 = "Algebra.Solver.Ring.Simple._._*HN_"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418
d146 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d706
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name148 = "Algebra.Solver.Ring.Simple._._*N_"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420
d148 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d714
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name150 = "Algebra.Solver.Ring.Simple._._*NH_"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418
d150 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d702
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name156 = "Algebra.Solver.Ring.Simple._._*x+H_"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418
d156 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d688
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name158 = "Algebra.Solver.Ring.Simple._._*x+HN_"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418
d158 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d638
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name160 = "Algebra.Solver.Ring.Simple._._+H_"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418
d160 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d660
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name162 = "Algebra.Solver.Ring.Simple._._+N_"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420
d162 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d664
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name164 = "Algebra.Solver.Ring.Simple._._:*_"
d164 ::
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Algebra.Solver.Ring.T330
d164
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.C340
         (coe MAlonzo.Code.Algebra.Solver.Ring.C326))
name166 = "Algebra.Solver.Ring.Simple._._:+_"
d166 ::
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Algebra.Solver.Ring.T330
d166
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.C340
         (coe MAlonzo.Code.Algebra.Solver.Ring.C324))
name168 = "Algebra.Solver.Ring.Simple._._:-_"
d168 ::
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Algebra.Solver.Ring.T330
d168 v0 v1
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.C340
         (coe MAlonzo.Code.Algebra.Solver.Ring.C324) (coe v0)
         (coe (MAlonzo.Code.Algebra.Solver.Ring.C358 (coe v1))))
name170 = "Algebra.Solver.Ring.Simple._._⊜_"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d170 v0 v1 v2 v3 v4 = du170
du170 ::
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du170 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
name174 = "Algebra.Solver.Ring.Simple._._:×_"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Algebra.Solver.Ring.T330
d174 v0 v1 v2 v3 = du174 v2
du174 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Algebra.Solver.Ring.T330
du174 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Algebra.Solver.Ring.du378
           (coe
              (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
                 (coe v0)))
           v2 v3)
name176 = "Algebra.Solver.Ring.Simple._._^N_"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T420
d176 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d786
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name178 = "Algebra.Solver.Ring.Simple._._≈H_"
d178 a0 a1 a2 a3 a4 a5 a6 = ()
name180 = "Algebra.Solver.Ring.Simple._._≈N_"
d180 a0 a1 a2 a3 a4 a5 a6 = ()
name182 = "Algebra.Solver.Ring.Simple._._≟H_"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Data.Maybe.Base.T22
d182 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d498
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name184 = "Algebra.Solver.Ring.Simple._._≟N_"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Data.Maybe.Base.T22
d184 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d502
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name186 = "Algebra.Solver.Ring.Simple._.*H-homo"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d186 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d1078
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name188 = "Algebra.Solver.Ring.Simple._.*HN-homo"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d188 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d1068
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name190 = "Algebra.Solver.Ring.Simple._.*N-homo"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d190 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d1088
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name192 = "Algebra.Solver.Ring.Simple._.*NH-homo"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d192 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d1056
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name194 = "Algebra.Solver.Ring.Simple._.*x+H-homo"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d194 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d1026
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name196 = "Algebra.Solver.Ring.Simple._.*x+HN≈*x+"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d196 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d896
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name198 = "Algebra.Solver.Ring.Simple._.+H-homo"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d198 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d972
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name200 = "Algebra.Solver.Ring.Simple._.+N-homo"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d200 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d982
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name202 = "Algebra.Solver.Ring.Simple._.-H_"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418
d202 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d796
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name204 = "Algebra.Solver.Ring.Simple._.-H‿-homo"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d204 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d1232
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name206 = "Algebra.Solver.Ring.Simple._.-N_"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420
d206 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d800
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name208 = "Algebra.Solver.Ring.Simple._.-N‿-homo"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d208 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d1240
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name210 = "Algebra.Solver.Ring.Simple._.0H"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T418
d210 v0 v1 v2 v3 v4 = du210
du210 :: MAlonzo.Code.Algebra.Solver.Ring.T418
du210 = coe (\ v0 -> MAlonzo.Code.Algebra.Solver.Ring.C424) erased
name212 = "Algebra.Solver.Ring.Simple._.0N"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T420
d212 v0 v1 v2 v3 = du212 v2
du212 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T420
du212 v0
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.du620
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v0))))
name214 = "Algebra.Solver.Ring.Simple._.0N-homo"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d214 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d858
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name216 = "Algebra.Solver.Ring.Simple._.0≈⟦0⟧"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T464 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d216 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d870
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name218 = "Algebra.Solver.Ring.Simple._.1H"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T418
d218 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d626
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name220 = "Algebra.Solver.Ring.Simple._.1N"
d220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T420
d220 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d630
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name222 = "Algebra.Solver.Ring.Simple._.1N-homo"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d222 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d882
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name226 = "Algebra.Solver.Ring.Simple._.HNF"
d226 a0 a1 a2 a3 a4 = ()
name228 = "Algebra.Solver.Ring.Simple._.Normal"
d228 a0 a1 a2 a3 a4 = ()
name230 = "Algebra.Solver.Ring.Simple._.Op"
d230 a0 a1 a2 a3 = ()
name232 = "Algebra.Solver.Ring.Simple._.Polynomial"
d232 a0 a1 a2 a3 a4 = ()
name238 = "Algebra.Solver.Ring.Simple._.^N-homo"
d238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d238 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d1214
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name246 = "Algebra.Solver.Ring.Simple._.correct"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d246 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d1294
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name248 = "Algebra.Solver.Ring.Simple._.correct-con"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d248 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d1260
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name250 = "Algebra.Solver.Ring.Simple._.correct-var"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d250 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d1276
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name252 = "Algebra.Solver.Ring.Simple._.normalise"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420
d252 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d826
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name254 = "Algebra.Solver.Ring.Simple._.normalise-con"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer -> AgdaAny -> MAlonzo.Code.Algebra.Solver.Ring.T420
d254 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d810
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name256 = "Algebra.Solver.Ring.Simple._.normalise-var"
d256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420
d256 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d820
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name264 = "Algebra.Solver.Ring.Simple._.prove"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 -> AgdaAny -> AgdaAny
d264 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
              (coe v2) in
    let v5
          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
              (coe v2) in
    let v6
          = MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.Reflection.du90
         (let v7
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                    (coe v2) in
          let v8
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                    (coe v2) in
          let v9
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                    (coe v2) in
          let v10
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                    (coe v2) in
          let v11
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                    (coe v2) in
          let v12
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                    (coe v11) in
          let v13
                = MAlonzo.Code.Algebra.Structures.du1298
                    (coe v7) (coe v8) (coe v9) (coe v10) (coe v12) in
          let v14 = MAlonzo.Code.Algebra.Structures.d1106 (coe v13) in
          let v15 = MAlonzo.Code.Algebra.Structures.d1018 (coe v14) in
          let v16 = MAlonzo.Code.Algebra.Structures.d326 (coe v15) in
          coe
            (MAlonzo.Code.Algebra.Structures.du106
               (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v16)))))
         (coe
            (\ v7 v8 v9 ->
               MAlonzo.Code.Algebra.Solver.Ring.du390 (coe v2) (coe v5) v8 v9))
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.d848
               (coe v0) (coe v0) (coe v1) (coe v4) (coe v2) (coe v5) (coe v6)))
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.d1294
               (coe v0) (coe v0) (coe v1) (coe v4) (coe v2) (coe v5) (coe v6))))
name266 = "Algebra.Solver.Ring.Simple._.sem"
d266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Algebra.Solver.Ring.T322 ->
  AgdaAny -> AgdaAny -> AgdaAny
d266 v0 v1 v2 v3 = du266 v2
du266 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.T322 ->
  AgdaAny -> AgdaAny -> AgdaAny
du266 v0 = coe (MAlonzo.Code.Algebra.Solver.Ring.du386 (coe v0))
name268 = "Algebra.Solver.Ring.Simple._.solve"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
d268 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
              (coe v2) in
    let v5
          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
              (coe v2) in
    let v6
          = MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.Reflection.du114
         (let v7
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                    (coe v2) in
          let v8
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                    (coe v2) in
          let v9
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                    (coe v2) in
          let v10
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                    (coe v2) in
          let v11
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                    (coe v2) in
          let v12
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                    (coe v11) in
          let v13
                = MAlonzo.Code.Algebra.Structures.du1298
                    (coe v7) (coe v8) (coe v9) (coe v10) (coe v12) in
          let v14 = MAlonzo.Code.Algebra.Structures.d1106 (coe v13) in
          let v15 = MAlonzo.Code.Algebra.Structures.d1018 (coe v14) in
          let v16 = MAlonzo.Code.Algebra.Structures.d326 (coe v15) in
          coe
            (MAlonzo.Code.Algebra.Structures.du106
               (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v16)))))
         (coe (\ v7 -> MAlonzo.Code.Algebra.Solver.Ring.C348))
         (coe
            (\ v7 v8 v9 ->
               MAlonzo.Code.Algebra.Solver.Ring.du390 (coe v2) (coe v5) v8 v9))
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.d848
               (coe v0) (coe v0) (coe v1) (coe v4) (coe v2) (coe v5) (coe v6)))
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.d1294
               (coe v0) (coe v0) (coe v1) (coe v4) (coe v2) (coe v5) (coe v6))))
name276 = "Algebra.Solver.Ring.Simple._.∅*x+HN-homo"
d276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d276 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d938
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name278 = "Algebra.Solver.Ring.Simple._.⟦_⟧"
d278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d278 v0 v1 v2 v3 = du278 v2
du278 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
du278 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Algebra.Solver.Ring.du390
           (coe v0)
           (coe
              (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
                 (coe v0)))
           v2 v3)
name280 = "Algebra.Solver.Ring.Simple._.⟦_⟧H"
d280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d280 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d438
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name282 = "Algebra.Solver.Ring.Simple._.⟦_⟧H-cong"
d282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T418 ->
  MAlonzo.Code.Algebra.Solver.Ring.T460 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d282 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d588
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name284 = "Algebra.Solver.Ring.Simple._.⟦_⟧N"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d284 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d442
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name286 = "Algebra.Solver.Ring.Simple._.⟦_⟧N-cong"
d286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T420 ->
  MAlonzo.Code.Algebra.Solver.Ring.T464 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d286 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d598
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
name288 = "Algebra.Solver.Ring.Simple._.⟦_⟧↓"
d288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T330 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d288 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.d848
         (coe v0) (coe v0) (coe v1)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du314
               (coe v2)))
         (coe v2)
         (coe
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du668
               (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.Consequences.du718 (coe v3))))
