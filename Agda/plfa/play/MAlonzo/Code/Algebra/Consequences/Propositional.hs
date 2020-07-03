{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Consequences.Propositional where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Data.Sum.Base

name16 = "Algebra.Consequences.Propositional._._DistributesOverʳ_"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d16 = erased
name18 = "Algebra.Consequences.Propositional._._DistributesOverˡ_"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d18 = erased
name24 = "Algebra.Consequences.Propositional._.Associative"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d24 = erased
name28 = "Algebra.Consequences.Propositional._.Commutative"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d28 = erased
name36 = "Algebra.Consequences.Propositional._.Idempotent"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d36 = erased
name40 = "Algebra.Consequences.Propositional._.Identity"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d40 = erased
name56 = "Algebra.Consequences.Propositional._.LeftInverse"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d56 = erased
name58 = "Algebra.Consequences.Propositional._.LeftZero"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d58 = erased
name66 = "Algebra.Consequences.Propositional._.RightIdentity"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d66 = erased
name68 = "Algebra.Consequences.Propositional._.RightInverse"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d68 = erased
name70 = "Algebra.Consequences.Propositional._.RightZero"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d70 = erased
name72 = "Algebra.Consequences.Propositional._.Selective"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d72 = erased
name86
  = "Algebra.Consequences.Propositional.Base.comm+cancelʳ⇒cancelˡ"
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
  = "Algebra.Consequences.Propositional.Base.comm+cancelˡ⇒cancelʳ"
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
name94 = "Algebra.Consequences.Propositional.Base.comm+idʳ⇒idˡ"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d94 = erased
name96 = "Algebra.Consequences.Propositional.Base.comm+idˡ⇒idʳ"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d96 = erased
name98 = "Algebra.Consequences.Propositional.Base.comm+invʳ⇒invˡ"
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
name100 = "Algebra.Consequences.Propositional.Base.comm+invˡ⇒invʳ"
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
name102 = "Algebra.Consequences.Propositional.Base.comm+zeʳ⇒zeˡ"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d102 = erased
name104 = "Algebra.Consequences.Propositional.Base.comm+zeˡ⇒zeʳ"
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
  = "Algebra.Consequences.Propositional._.assoc+id+invʳ⇒invˡ-unique"
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
  = "Algebra.Consequences.Propositional._.assoc+id+invˡ⇒invʳ-unique"
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
  = "Algebra.Consequences.Propositional._.assoc+distribʳ+idʳ+invʳ⇒zeˡ"
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
  = "Algebra.Consequences.Propositional._.assoc+distribˡ+idʳ+invʳ⇒zeʳ"
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
name164 = "Algebra.Consequences.Propositional._.comm+distrˡ⇒distrʳ"
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
name166 = "Algebra.Consequences.Propositional._.comm+distrʳ⇒distrˡ"
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
name174 = "Algebra.Consequences.Propositional._.comm⇒sym[distribˡ]"
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
name182 = "Algebra.Consequences.Propositional._.sel⇒idem"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d182 = erased
name200 = "Algebra.Consequences.Propositional._.subst+comm⇒sym"
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
name218 = "Algebra.Consequences.Propositional._.wlog"
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
du218 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du388 (coe v0) erased
      (coe (\ v5 v6 v7 v8 v9 -> v9)) v1 v4
