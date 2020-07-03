{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
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

name156 = "Algebra.Solver.Ring.Simple._._*H_"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d156 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d728 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name158 = "Algebra.Solver.Ring.Simple._._*HN_"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d158 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d724 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name160 = "Algebra.Solver.Ring.Simple._._*N_"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438
d160 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d732 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name162 = "Algebra.Solver.Ring.Simple._._*NH_"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d162 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d720 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name168 = "Algebra.Solver.Ring.Simple._._*x+H_"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d168 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d706 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name170 = "Algebra.Solver.Ring.Simple._._*x+HN_"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d170 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d656 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name172 = "Algebra.Solver.Ring.Simple._._+H_"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d172 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d678 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name174 = "Algebra.Solver.Ring.Simple._._+N_"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438
d174 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d682 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name176 = "Algebra.Solver.Ring.Simple._._:*_"
d176 ::
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348
d176
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.C358
      (coe MAlonzo.Code.Algebra.Solver.Ring.C344)
name178 = "Algebra.Solver.Ring.Simple._._:+_"
d178 ::
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348
d178
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.C358
      (coe MAlonzo.Code.Algebra.Solver.Ring.C342)
name180 = "Algebra.Solver.Ring.Simple._._:-_"
d180 ::
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348
d180 v0 v1
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.C358
      (coe MAlonzo.Code.Algebra.Solver.Ring.C342) (coe v0)
      (coe MAlonzo.Code.Algebra.Solver.Ring.C376 (coe v1))
name182 = "Algebra.Solver.Ring.Simple._._⊜_"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d182 v0 v1 v2 v3 v4 = du182
du182 ::
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du182 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
name186 = "Algebra.Solver.Ring.Simple._._:×_"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348
d186 v0 v1 v2 v3 = du186 v2
du186 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348
du186 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.du396
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v0))
      v2 v3
name188 = "Algebra.Solver.Ring.Simple._._^N_"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T438
d188 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d804 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name190 = "Algebra.Solver.Ring.Simple._._≈H_"
d190 a0 a1 a2 a3 a4 a5 a6 = ()
name192 = "Algebra.Solver.Ring.Simple._._≈N_"
d192 a0 a1 a2 a3 a4 a5 a6 = ()
name194 = "Algebra.Solver.Ring.Simple._._≟H_"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Data.Maybe.Base.T22
d194 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d516 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name196 = "Algebra.Solver.Ring.Simple._._≟N_"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Data.Maybe.Base.T22
d196 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d520 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name198 = "Algebra.Solver.Ring.Simple._.*H-homo"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d198 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d1096 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name200 = "Algebra.Solver.Ring.Simple._.*HN-homo"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d200 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d1086 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name202 = "Algebra.Solver.Ring.Simple._.*N-homo"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d202 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d1106 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name204 = "Algebra.Solver.Ring.Simple._.*NH-homo"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d204 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d1074 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name206 = "Algebra.Solver.Ring.Simple._.*x+H-homo"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d206 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d1044 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name208 = "Algebra.Solver.Ring.Simple._.*x+HN≈*x+"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d208 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d914 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name210 = "Algebra.Solver.Ring.Simple._.+H-homo"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d990 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name212 = "Algebra.Solver.Ring.Simple._.+N-homo"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d212 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d1000 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name214 = "Algebra.Solver.Ring.Simple._.-H_"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d214 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d814 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name216 = "Algebra.Solver.Ring.Simple._.-H‿-homo"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d216 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d1250 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name218 = "Algebra.Solver.Ring.Simple._.-N_"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438
d218 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d818 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name220 = "Algebra.Solver.Ring.Simple._.-N‿-homo"
d220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d220 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d1258 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name222 = "Algebra.Solver.Ring.Simple._.0H"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T436
d222 v0 v1 v2 v3 v4 = du222
du222 :: MAlonzo.Code.Algebra.Solver.Ring.T436
du222 = coe MAlonzo.Code.Algebra.Solver.Ring.C442
name224 = "Algebra.Solver.Ring.Simple._.0N"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T438
d224 v0 v1 v2 v3 = du224 v2
du224 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T438
du224 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.du638
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v0))
name226 = "Algebra.Solver.Ring.Simple._.0N-homo"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d226 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d876 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name228 = "Algebra.Solver.Ring.Simple._.0≈⟦0⟧"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T482 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d228 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d888 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name230 = "Algebra.Solver.Ring.Simple._.1H"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T436
d230 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d644 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name232 = "Algebra.Solver.Ring.Simple._.1N"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T438
d232 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d648 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name234 = "Algebra.Solver.Ring.Simple._.1N-homo"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d234 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d900 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name238 = "Algebra.Solver.Ring.Simple._.HNF"
d238 a0 a1 a2 a3 a4 = ()
name240 = "Algebra.Solver.Ring.Simple._.Normal"
d240 a0 a1 a2 a3 a4 = ()
name242 = "Algebra.Solver.Ring.Simple._.Op"
d242 a0 a1 a2 a3 = ()
name244 = "Algebra.Solver.Ring.Simple._.Polynomial"
d244 a0 a1 a2 a3 a4 = ()
name250 = "Algebra.Solver.Ring.Simple._.^N-homo"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d250 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d1232 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name258 = "Algebra.Solver.Ring.Simple._.correct"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d258 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d1312 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name260 = "Algebra.Solver.Ring.Simple._.correct-con"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d260 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d1278 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name262 = "Algebra.Solver.Ring.Simple._.correct-var"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d262 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d1294 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name264 = "Algebra.Solver.Ring.Simple._.normalise"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438
d264 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d844 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name266 = "Algebra.Solver.Ring.Simple._.normalise-con"
d266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer -> AgdaAny -> MAlonzo.Code.Algebra.Solver.Ring.T438
d266 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d828 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name268 = "Algebra.Solver.Ring.Simple._.normalise-var"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438
d268 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d838 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name276 = "Algebra.Solver.Ring.Simple._.prove"
d276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 -> AgdaAny -> AgdaAny
d276 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
              (coe v2) in
    let v5
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
              (coe v2) in
    let v6
          = coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Reflection.du92
      (let v7
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d208
                 (coe v2) in
       let v8
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                 (coe v7) in
       let v9 = MAlonzo.Code.Algebra.Structures.d1290 (coe v8) in
       let v10 = MAlonzo.Code.Algebra.Structures.d1186 (coe v9) in
       let v11 = MAlonzo.Code.Algebra.Structures.d1094 (coe v10) in
       let v12 = MAlonzo.Code.Algebra.Structures.d372 (coe v11) in
       let v13 = MAlonzo.Code.Algebra.Structures.d324 (coe v12) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v13)))
      (\ v7 v8 v9 ->
         coe MAlonzo.Code.Algebra.Solver.Ring.du408 (coe v2) (coe v5) v8 v9)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.d866 (coe v0) (coe v0) (coe v1)
         (coe v1) (coe v4) (coe v2) (coe v5) (coe v6))
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.d1312 (coe v0) (coe v0) (coe v1)
         (coe v1) (coe v4) (coe v2) (coe v5) (coe v6))
name278 = "Algebra.Solver.Ring.Simple._.sem"
d278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Algebra.Solver.Ring.T340 ->
  AgdaAny -> AgdaAny -> AgdaAny
d278 v0 v1 v2 v3 = du278 v2
du278 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  MAlonzo.Code.Algebra.Solver.Ring.T340 ->
  AgdaAny -> AgdaAny -> AgdaAny
du278 v0 = coe MAlonzo.Code.Algebra.Solver.Ring.du404 (coe v0)
name280 = "Algebra.Solver.Ring.Simple._.solve"
d280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
d280 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
              (coe v2) in
    let v5
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
              (coe v2) in
    let v6
          = coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Reflection.du116
      (let v7
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d208
                 (coe v2) in
       let v8
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                 (coe v7) in
       let v9 = MAlonzo.Code.Algebra.Structures.d1290 (coe v8) in
       let v10 = MAlonzo.Code.Algebra.Structures.d1186 (coe v9) in
       let v11 = MAlonzo.Code.Algebra.Structures.d1094 (coe v10) in
       let v12 = MAlonzo.Code.Algebra.Structures.d372 (coe v11) in
       let v13 = MAlonzo.Code.Algebra.Structures.d324 (coe v12) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v13)))
      (coe (\ v7 -> coe MAlonzo.Code.Algebra.Solver.Ring.C366))
      (\ v7 v8 v9 ->
         coe MAlonzo.Code.Algebra.Solver.Ring.du408 (coe v2) (coe v5) v8 v9)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.d866 (coe v0) (coe v0) (coe v1)
         (coe v1) (coe v4) (coe v2) (coe v5) (coe v6))
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.d1312 (coe v0) (coe v0) (coe v1)
         (coe v1) (coe v4) (coe v2) (coe v5) (coe v6))
name288 = "Algebra.Solver.Ring.Simple._.∅*x+HN-homo"
d288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d288 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d956 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name290 = "Algebra.Solver.Ring.Simple._.⟦_⟧"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d290 v0 v1 v2 v3 = du290 v2
du290 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
du290 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.du408 (coe v0)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v0))
      v2 v3
name292 = "Algebra.Solver.Ring.Simple._.⟦_⟧H"
d292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d292 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d456 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name294 = "Algebra.Solver.Ring.Simple._.⟦_⟧H-cong"
d294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T478 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d294 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d606 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name296 = "Algebra.Solver.Ring.Simple._.⟦_⟧N"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d296 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d460 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name298 = "Algebra.Solver.Ring.Simple._.⟦_⟧N-cong"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T482 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d298 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d616 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name300 = "Algebra.Solver.Ring.Simple._.⟦_⟧↓"
d300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T172 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d300 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d866 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
