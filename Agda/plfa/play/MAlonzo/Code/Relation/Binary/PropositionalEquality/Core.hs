{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.PropositionalEquality.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty

name22 = "Relation.Binary.PropositionalEquality.Core._≢_"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> AgdaAny -> ()
d22 = erased
name28 = "Relation.Binary.PropositionalEquality.Core.sym"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d28 = erased
name30 = "Relation.Binary.PropositionalEquality.Core.trans"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d30 = erased
name34 = "Relation.Binary.PropositionalEquality.Core.subst"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d34 v0 v1 v2 v3 v4 v5 v6 v7 = du34 v7
du34 :: AgdaAny -> AgdaAny
du34 v0 = coe v0
name46 = "Relation.Binary.PropositionalEquality.Core.cong"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d46 = erased
name60 = "Relation.Binary.PropositionalEquality.Core.subst₂"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d60 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du60 v12
du60 :: AgdaAny -> AgdaAny
du60 v0 = coe v0
name76 = "Relation.Binary.PropositionalEquality.Core.cong-app"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d76 = erased
name90 = "Relation.Binary.PropositionalEquality.Core.cong₂"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d90 = erased
name96 = "Relation.Binary.PropositionalEquality.Core.respˡ"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d96 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du96 v8
du96 :: AgdaAny -> AgdaAny
du96 v0 = coe v0
name104 = "Relation.Binary.PropositionalEquality.Core.respʳ"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d104 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du104 v8
du104 :: AgdaAny -> AgdaAny
du104 v0 = coe v0
name112 = "Relation.Binary.PropositionalEquality.Core.resp₂"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d112 v0 v1 v2 v3 = du112
du112 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du112
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe (\ v0 v1 v2 v3 v4 -> v4))
      (coe (\ v0 v1 v2 v3 v4 -> v4))
name116 = "Relation.Binary.PropositionalEquality.Core.≢-sym"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d116 = erased
name130
  = "Relation.Binary.PropositionalEquality.Core.≡-Reasoning.begin_"
d130 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d130 = erased
name138
  = "Relation.Binary.PropositionalEquality.Core.≡-Reasoning._≡⟨⟩_"
d138 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d138 = erased
name148
  = "Relation.Binary.PropositionalEquality.Core.≡-Reasoning.step-≡"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d148 = erased
name160
  = "Relation.Binary.PropositionalEquality.Core.≡-Reasoning.step-≡˘"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d160 = erased
name168
  = "Relation.Binary.PropositionalEquality.Core.≡-Reasoning._∎"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d168 = erased
