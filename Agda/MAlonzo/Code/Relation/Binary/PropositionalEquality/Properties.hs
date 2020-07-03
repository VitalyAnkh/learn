{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name24
  = "Relation.Binary.PropositionalEquality.Properties.trans-reflʳ"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d24 = erased
name40
  = "Relation.Binary.PropositionalEquality.Properties.trans-assoc"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d40 = erased
name48
  = "Relation.Binary.PropositionalEquality.Properties.trans-symˡ"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d48 = erased
name56
  = "Relation.Binary.PropositionalEquality.Properties.trans-symʳ"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d56 = erased
name70
  = "Relation.Binary.PropositionalEquality.Properties.trans-injectiveˡ"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d70 = erased
name84
  = "Relation.Binary.PropositionalEquality.Properties.trans-injectiveʳ"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d84 = erased
name94 = "Relation.Binary.PropositionalEquality.Properties.cong-id"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d94 = erased
name106 = "Relation.Binary.PropositionalEquality.Properties.cong-∘"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d106 = erased
name120
  = "Relation.Binary.PropositionalEquality.Properties.trans-cong"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d120 = erased
name134
  = "Relation.Binary.PropositionalEquality.Properties.cong₂-reflˡ"
d134 ::
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
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d134 = erased
name148
  = "Relation.Binary.PropositionalEquality.Properties.cong₂-reflʳ"
d148 ::
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
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d148 = erased
name170
  = "Relation.Binary.PropositionalEquality.Properties._.subst-injective"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d170 = erased
name182
  = "Relation.Binary.PropositionalEquality.Properties._.subst-subst"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d182 = erased
name188
  = "Relation.Binary.PropositionalEquality.Properties._.subst-subst-sym"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d188 = erased
name194
  = "Relation.Binary.PropositionalEquality.Properties._.subst-sym-subst"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d194 = erased
name208
  = "Relation.Binary.PropositionalEquality.Properties.subst-∘"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d208 = erased
name240
  = "Relation.Binary.PropositionalEquality.Properties.subst-application"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d240 = erased
name242
  = "Relation.Binary.PropositionalEquality.Properties.isEquivalence"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T26
d242 v0 v1 = du242
du242 :: MAlonzo.Code.Relation.Binary.Structures.T26
du242
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased
name244
  = "Relation.Binary.PropositionalEquality.Properties.isDecEquivalence"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T44
d244 v0 v1 v2 = du244 v2
du244 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T44
du244 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C1529 (coe du242) (coe v0)
name248
  = "Relation.Binary.PropositionalEquality.Properties.isPreorder"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T70
d248 v0 v1 = du248
du248 :: MAlonzo.Code.Relation.Binary.Structures.T70
du248
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113 (coe du242)
      (coe (\ v0 v1 v2 -> v2)) erased
name250 = "Relation.Binary.PropositionalEquality.Properties.setoid"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T44
d250 v0 v1 = du250
du250 :: MAlonzo.Code.Relation.Binary.Bundles.T44
du250 = coe MAlonzo.Code.Relation.Binary.Bundles.C501 (coe du242)
name254
  = "Relation.Binary.PropositionalEquality.Properties.decSetoid"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T84
d254 v0 v1 v2 = du254 v2
du254 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T84
du254 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C939 (coe du244 (coe v0))
name258
  = "Relation.Binary.PropositionalEquality.Properties.preorder"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T132
d258 v0 v1 = du258
du258 :: MAlonzo.Code.Relation.Binary.Bundles.T132
du258 = coe MAlonzo.Code.Relation.Binary.Bundles.C1509 (coe du248)
