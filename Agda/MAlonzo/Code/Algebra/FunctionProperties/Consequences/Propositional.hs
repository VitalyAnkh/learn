{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.FunctionProperties.Consequences.Propositional where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.FunctionProperties.Consequences
import qualified MAlonzo.Code.Data.Sum.Base

name18
  = "Algebra.FunctionProperties.Consequences.Propositional._._DistributesOverʳ_"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d18 = erased
name20
  = "Algebra.FunctionProperties.Consequences.Propositional._._DistributesOverˡ_"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d20 = erased
name26
  = "Algebra.FunctionProperties.Consequences.Propositional._.Associative"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d26 = erased
name30
  = "Algebra.FunctionProperties.Consequences.Propositional._.Commutative"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d30 = erased
name38
  = "Algebra.FunctionProperties.Consequences.Propositional._.Idempotent"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d38 = erased
name42
  = "Algebra.FunctionProperties.Consequences.Propositional._.Identity"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d42 = erased
name56
  = "Algebra.FunctionProperties.Consequences.Propositional._.LeftInverse"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d56 = erased
name58
  = "Algebra.FunctionProperties.Consequences.Propositional._.LeftZero"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d58 = erased
name66
  = "Algebra.FunctionProperties.Consequences.Propositional._.RightIdentity"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d66 = erased
name68
  = "Algebra.FunctionProperties.Consequences.Propositional._.RightInverse"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d68 = erased
name70
  = "Algebra.FunctionProperties.Consequences.Propositional._.RightZero"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d70 = erased
name72
  = "Algebra.FunctionProperties.Consequences.Propositional._.Selective"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d72 = erased
name86
  = "Algebra.FunctionProperties.Consequences.Propositional.FP⇒.comm+cancelʳ⇒cancelˡ"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d86 = erased
name88
  = "Algebra.FunctionProperties.Consequences.Propositional.FP⇒.comm+cancelˡ⇒cancelʳ"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d88 = erased
name94
  = "Algebra.FunctionProperties.Consequences.Propositional.FP⇒.comm+idʳ⇒idˡ"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d94 = erased
name96
  = "Algebra.FunctionProperties.Consequences.Propositional.FP⇒.comm+idˡ⇒idʳ"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d96 = erased
name98
  = "Algebra.FunctionProperties.Consequences.Propositional.FP⇒.comm+invʳ⇒invˡ"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d98 = erased
name100
  = "Algebra.FunctionProperties.Consequences.Propositional.FP⇒.comm+invˡ⇒invʳ"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d100 = erased
name102
  = "Algebra.FunctionProperties.Consequences.Propositional.FP⇒.comm+zeʳ⇒zeˡ"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d102 = erased
name104
  = "Algebra.FunctionProperties.Consequences.Propositional.FP⇒.comm+zeˡ⇒zeʳ"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d104 = erased
name130
  = "Algebra.FunctionProperties.Consequences.Propositional._.assoc+id+invʳ⇒invˡ-unique"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d130 = erased
name136
  = "Algebra.FunctionProperties.Consequences.Propositional._.assoc+id+invˡ⇒invʳ-unique"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d136 = erased
name150
  = "Algebra.FunctionProperties.Consequences.Propositional._.assoc+distribʳ+idʳ+invʳ⇒zeˡ"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d150 = erased
name152
  = "Algebra.FunctionProperties.Consequences.Propositional._.assoc+distribˡ+idʳ+invʳ⇒zeʳ"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d152 = erased
name164
  = "Algebra.FunctionProperties.Consequences.Propositional._.comm+distrˡ⇒distrʳ"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d164 = erased
name166
  = "Algebra.FunctionProperties.Consequences.Propositional._.comm+distrʳ⇒distrˡ"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d166 = erased
name174
  = "Algebra.FunctionProperties.Consequences.Propositional._.comm⇒sym[distribˡ]"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d174 = erased
name182
  = "Algebra.FunctionProperties.Consequences.Propositional._.sel⇒idem"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d182 = erased
name200
  = "Algebra.FunctionProperties.Consequences.Propositional._.subst+comm⇒sym"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d200 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du200 v8
du200 :: AgdaAny -> AgdaAny
du200 v0 = coe v0
name218
  = "Algebra.FunctionProperties.Consequences.Propositional._.wlog"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d218 v0 v1 v2 v3 v4 = du218 v4
du218 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du218 v0
  = coe
      (\ v1 v2 v3 v4 ->
         MAlonzo.Code.Algebra.FunctionProperties.Consequences.du386
           (coe v0) erased (coe (\ v5 v6 v7 v8 v9 -> v9)) v1 v4)
