{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Function.Bijection where

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
import qualified MAlonzo.Code.Function.Surjection
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.Structures

name18 = "Function.Bijection.Bijective"
d18 a0 a1 a2 a3 a4 a5 a6 = ()
data T18
  = C1235 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Function.Surjection.T18
name38 = "Function.Bijection.Bijective.injective"
d38 :: T18 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d38 v0
  = case coe v0 of
      C1235 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name40 = "Function.Bijection.Bijective.surjective"
d40 :: T18 -> MAlonzo.Code.Function.Surjection.T18
d40 v0
  = case coe v0 of
      C1235 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name44 = "Function.Bijection.Bijective._.from"
d44 :: T18 -> MAlonzo.Code.Function.Equality.T16
d44 v0
  = coe MAlonzo.Code.Function.Surjection.d38 (coe d40 (coe v0))
name46 = "Function.Bijection.Bijective._.right-inverse-of"
d46 :: T18 -> AgdaAny -> AgdaAny
d46 v0
  = coe MAlonzo.Code.Function.Surjection.d40 (coe d40 (coe v0))
name48 = "Function.Bijection.Bijective.left-inverse-of"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 -> T18 -> AgdaAny -> AgdaAny
d48 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du48 v6 v7 v8
du48 ::
  MAlonzo.Code.Function.Equality.T16 -> T18 -> AgdaAny -> AgdaAny
du48 v0 v1 v2
  = coe
      d38 v1
      (coe
         MAlonzo.Code.Function.Equality.d38
         (MAlonzo.Code.Function.Surjection.d38 (coe d40 (coe v1)))
         (coe MAlonzo.Code.Function.Equality.d38 v0 v2))
      v2
      (coe
         MAlonzo.Code.Function.Surjection.d40 (d40 (coe v1))
         (coe MAlonzo.Code.Function.Equality.d38 v0 v2))
name64 = "Function.Bijection.Bijection"
d64 a0 a1 a2 a3 a4 a5 = ()
data T64 = C3413 MAlonzo.Code.Function.Equality.T16 T18
name82 = "Function.Bijection.Bijection.to"
d82 :: T64 -> MAlonzo.Code.Function.Equality.T16
d82 v0
  = case coe v0 of
      C3413 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name84 = "Function.Bijection.Bijection.bijective"
d84 :: T64 -> T18
d84 v0
  = case coe v0 of
      C3413 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name88 = "Function.Bijection.Bijection._.from"
d88 :: T64 -> MAlonzo.Code.Function.Equality.T16
d88 v0
  = coe
      MAlonzo.Code.Function.Surjection.d38 (coe d40 (coe d84 (coe v0)))
name90 = "Function.Bijection.Bijection._.injective"
d90 :: T64 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d90 v0 = coe d38 (coe d84 (coe v0))
name92 = "Function.Bijection.Bijection._.left-inverse-of"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T64 -> AgdaAny -> AgdaAny
d92 v0 v1 v2 v3 v4 v5 v6 = du92 v6
du92 :: T64 -> AgdaAny -> AgdaAny
du92 v0 = coe du48 (coe d82 (coe v0)) (coe d84 (coe v0))
name94 = "Function.Bijection.Bijection._.right-inverse-of"
d94 :: T64 -> AgdaAny -> AgdaAny
d94 v0
  = coe
      MAlonzo.Code.Function.Surjection.d40 (coe d40 (coe d84 (coe v0)))
name96 = "Function.Bijection.Bijection._.surjective"
d96 :: T64 -> MAlonzo.Code.Function.Surjection.T18
d96 v0 = coe d40 (coe d84 (coe v0))
name98 = "Function.Bijection.Bijection.injection"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T64 -> MAlonzo.Code.Function.Injection.T88
d98 v0 v1 v2 v3 v4 v5 v6 = du98 v6
du98 :: T64 -> MAlonzo.Code.Function.Injection.T88
du98 v0
  = coe
      MAlonzo.Code.Function.Injection.C1975 (coe d82 (coe v0))
      (coe d38 (coe d84 (coe v0)))
name100 = "Function.Bijection.Bijection.surjection"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T64 -> MAlonzo.Code.Function.Surjection.T54
d100 v0 v1 v2 v3 v4 v5 v6 = du100 v6
du100 :: T64 -> MAlonzo.Code.Function.Surjection.T54
du100 v0
  = coe
      MAlonzo.Code.Function.Surjection.C1679 (coe d82 (coe v0))
      (coe d40 (coe d84 (coe v0)))
name104 = "Function.Bijection.Bijection._.equivalence"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T64 -> MAlonzo.Code.Function.Equivalence.T16
d104 v0 v1 v2 v3 v4 v5 v6 = du104 v6
du104 :: T64 -> MAlonzo.Code.Function.Equivalence.T16
du104 v0
  = coe MAlonzo.Code.Function.Surjection.du92 (coe du100 (coe v0))
name106 = "Function.Bijection.Bijection._.to-from"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T64 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d106 v0 v1 v2 v3 v4 v5 v6 = du106 v4 v5 v6
du106 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T64 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du106 v0 v1 v2
  = let v3 = coe du100 (coe v2) in
    coe
      MAlonzo.Code.Function.LeftInverse.du194 (coe v1) (coe v0)
      (coe MAlonzo.Code.Function.Surjection.du82 (coe v3))
name108 = "Function.Bijection.Bijection._.right-inverse"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T64 -> MAlonzo.Code.Function.LeftInverse.T82
d108 v0 v1 v2 v3 v4 v5 v6 = du108 v6
du108 :: T64 -> MAlonzo.Code.Function.LeftInverse.T82
du108 v0
  = coe MAlonzo.Code.Function.Surjection.du82 (coe du100 (coe v0))
name110 = "Function.Bijection.Bijection.left-inverse"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T64 -> MAlonzo.Code.Function.LeftInverse.T82
d110 v0 v1 v2 v3 v4 v5 v6 = du110 v6
du110 :: T64 -> MAlonzo.Code.Function.LeftInverse.T82
du110 v0
  = coe
      MAlonzo.Code.Function.LeftInverse.C3109 (coe d82 (coe v0))
      (coe
         MAlonzo.Code.Function.Surjection.d38 (coe d40 (coe d84 (coe v0))))
      (coe du48 (coe d82 (coe v0)) (coe d84 (coe v0)))
name114 = "Function.Bijection.Bijection._.to-from"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T64 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d114 v0 v1 v2 v3 v4 v5 v6 = du114 v4 v5 v6
du114 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T64 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du114 v0 v1 v2
  = coe
      MAlonzo.Code.Function.LeftInverse.du194 (coe v0) (coe v1)
      (coe du110 (coe v2))
name120 = "Function.Bijection._⤖_"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d120 = erased
name144 = "Function.Bijection.bijection"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) -> T64
d144 v0 v1 v2 v3 v4 v5 v6 v7 = du144 v4 v5 v6 v7
du144 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) -> T64
du144 v0 v1 v2 v3
  = coe
      C3413
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.C501
            (coe
               MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
         v0)
      (coe
         C1235 (coe v2)
         (coe
            MAlonzo.Code.Function.Surjection.C867
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.C501
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
               v1)
            (coe v3)))
name160 = "Function.Bijection.id"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T64
d160 v0 v1 v2 = du160 v2
du160 :: MAlonzo.Code.Relation.Binary.Bundles.T44 -> T64
du160 v0
  = coe
      C3413 (coe MAlonzo.Code.Function.Equality.du62)
      (coe
         C1235
         (coe
            MAlonzo.Code.Function.Injection.d108
            (coe MAlonzo.Code.Function.Injection.du152))
         (coe
            MAlonzo.Code.Function.Surjection.d74
            (coe MAlonzo.Code.Function.Surjection.du168 (coe v0))))
name182 = "Function.Bijection._∘_"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T64 -> T64 -> T64
d182 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du182 v8 v9 v10
du182 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T64 -> T64 -> T64
du182 v0 v1 v2
  = coe
      C3413
      (coe
         MAlonzo.Code.Function.Equality.du82 (coe d82 (coe v1))
         (coe d82 (coe v2)))
      (coe
         C1235
         (coe
            (\ v3 v4 v5 ->
               coe
                 d38 (d84 (coe v2)) v3 v4
                 (coe
                    d38 (d84 (coe v1))
                    (coe MAlonzo.Code.Function.Equality.d38 (d82 (coe v2)) v3)
                    (coe MAlonzo.Code.Function.Equality.d38 (d82 (coe v2)) v4) v5)))
         (coe
            MAlonzo.Code.Function.Surjection.d74
            (coe
               MAlonzo.Code.Function.Surjection.du196 (coe v0)
               (coe du100 (coe v1)) (coe du100 (coe v2)))))
