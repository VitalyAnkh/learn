{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Function.Surjection where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Function.LeftInverse
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.Structures

name18 = "Function.Surjection.Surjective"
d18 a0 a1 a2 a3 a4 a5 a6 = ()
data T18
  = C867 MAlonzo.Code.Function.Equality.T16 (AgdaAny -> AgdaAny)
name38 = "Function.Surjection.Surjective.from"
d38 :: T18 -> MAlonzo.Code.Function.Equality.T16
d38 v0
  = case coe v0 of
      C867 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name40 = "Function.Surjection.Surjective.right-inverse-of"
d40 :: T18 -> AgdaAny -> AgdaAny
d40 v0
  = case coe v0 of
      C867 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name54 = "Function.Surjection.Surjection"
d54 a0 a1 a2 a3 a4 a5 = ()
data T54 = C1679 MAlonzo.Code.Function.Equality.T16 T18
name72 = "Function.Surjection.Surjection.to"
d72 :: T54 -> MAlonzo.Code.Function.Equality.T16
d72 v0
  = case coe v0 of
      C1679 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name74 = "Function.Surjection.Surjection.surjective"
d74 :: T54 -> T18
d74 v0
  = case coe v0 of
      C1679 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name78 = "Function.Surjection.Surjection._.from"
d78 :: T54 -> MAlonzo.Code.Function.Equality.T16
d78 v0 = coe d38 (coe d74 (coe v0))
name80 = "Function.Surjection.Surjection._.right-inverse-of"
d80 :: T54 -> AgdaAny -> AgdaAny
d80 v0 = coe d40 (coe d74 (coe v0))
name82 = "Function.Surjection.Surjection.right-inverse"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T54 -> MAlonzo.Code.Function.LeftInverse.T82
d82 v0 v1 v2 v3 v4 v5 v6 = du82 v6
du82 :: T54 -> MAlonzo.Code.Function.LeftInverse.T82
du82 v0
  = coe
      MAlonzo.Code.Function.LeftInverse.C3109
      (coe d38 (coe d74 (coe v0))) (coe d72 (coe v0))
      (coe d40 (coe d74 (coe v0)))
name86 = "Function.Surjection.Surjection._.to-from"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T54 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d86 v0 v1 v2 v3 v4 v5 v6 = du86 v4 v5 v6
du86 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T54 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du86 v0 v1 v2
  = coe
      MAlonzo.Code.Function.LeftInverse.du194 (coe v1) (coe v0)
      (coe du82 (coe v2))
name88 = "Function.Surjection.Surjection.injective"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T54 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d88 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du88 v5 v6 v7 v8
du88 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T54 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du88 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.LeftInverse.du178 (coe v0)
      (coe du82 (coe v1)) (coe v2) (coe v3)
name90 = "Function.Surjection.Surjection.injection"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T54 -> MAlonzo.Code.Function.Injection.T88
d90 v0 v1 v2 v3 v4 v5 v6 = du90 v5 v6
du90 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T54 -> MAlonzo.Code.Function.Injection.T88
du90 v0 v1
  = coe
      MAlonzo.Code.Function.LeftInverse.du186 (coe v0)
      (coe du82 (coe v1))
name92 = "Function.Surjection.Surjection.equivalence"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T54 -> MAlonzo.Code.Function.Equivalence.T16
d92 v0 v1 v2 v3 v4 v5 v6 = du92 v6
du92 :: T54 -> MAlonzo.Code.Function.Equivalence.T16
du92 v0
  = coe
      MAlonzo.Code.Function.Equivalence.C269 (coe d72 (coe v0))
      (coe d38 (coe d74 (coe v0)))
name106 = "Function.Surjection.fromRightInverse"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.LeftInverse.T82 -> T54
d106 v0 v1 v2 v3 v4 v5 v6 = du106 v6
du106 :: MAlonzo.Code.Function.LeftInverse.T82 -> T54
du106 v0
  = coe
      C1679 (coe MAlonzo.Code.Function.LeftInverse.d104 (coe v0))
      (coe
         C867 (coe MAlonzo.Code.Function.LeftInverse.d102 (coe v0))
         (coe MAlonzo.Code.Function.LeftInverse.d106 (coe v0)))
name134 = "Function.Surjection._↠_"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d134 = erased
name154 = "Function.Surjection.surjection"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) -> T54
d154 v0 v1 v2 v3 v4 v5 v6 = du154 v4 v5 v6
du154 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) -> T54
du154 v0 v1 v2
  = coe
      C1679
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.C501
            (coe
               MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
         v0)
      (coe
         C867
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.C501
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
            v1)
         (coe v2))
name168 = "Function.Surjection.id"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T54
d168 v0 v1 v2 = du168 v2
du168 :: MAlonzo.Code.Relation.Binary.Bundles.T44 -> T54
du168 v0
  = coe
      C1679 (coe MAlonzo.Code.Function.Equality.du62)
      (coe
         C867
         (coe MAlonzo.Code.Function.LeftInverse.d102 (coe du176 (coe v0)))
         (coe MAlonzo.Code.Function.LeftInverse.d106 (coe du176 (coe v0))))
name176 = "Function.Surjection._.id′"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.LeftInverse.T82
d176 v0 v1 v2 = du176 v2
du176 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.LeftInverse.T82
du176 v0 = coe MAlonzo.Code.Function.LeftInverse.du258 (coe v0)
name196 = "Function.Surjection._∘_"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T54 -> T54 -> T54
d196 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du196 v8 v9 v10
du196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T54 -> T54 -> T54
du196 v0 v1 v2
  = coe
      C1679
      (coe
         MAlonzo.Code.Function.Equality.du82 (coe d72 (coe v1))
         (coe d72 (coe v2)))
      (coe
         C867
         (coe
            MAlonzo.Code.Function.LeftInverse.d102
            (coe du206 (coe v0) (coe v1) (coe v2)))
         (coe
            MAlonzo.Code.Function.LeftInverse.d106
            (coe du206 (coe v0) (coe v1) (coe v2))))
name206 = "Function.Surjection._.g∘f"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T54 -> T54 -> MAlonzo.Code.Function.LeftInverse.T82
d206 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du206 v8 v9 v10
du206 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T54 -> T54 -> MAlonzo.Code.Function.LeftInverse.T82
du206 v0 v1 v2
  = coe
      MAlonzo.Code.Function.LeftInverse.du282 (coe v0)
      (coe du82 (coe v2)) (coe du82 (coe v1))
