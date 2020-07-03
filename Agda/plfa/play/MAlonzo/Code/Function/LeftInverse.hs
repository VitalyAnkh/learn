{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Function.LeftInverse where

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
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid
import qualified MAlonzo.Code.Relation.Binary.Structures

name16 = "Function.LeftInverse._LeftInverseOf_"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 -> ()
d16 = erased
name64 = "Function.LeftInverse._RightInverseOf_"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 -> ()
d64 = erased
name82 = "Function.LeftInverse.LeftInverse"
d82 a0 a1 a2 a3 a4 a5 = ()
data T82
  = C3109 MAlonzo.Code.Function.Equality.T16
          MAlonzo.Code.Function.Equality.T16 (AgdaAny -> AgdaAny)
name102 = "Function.LeftInverse.LeftInverse.to"
d102 :: T82 -> MAlonzo.Code.Function.Equality.T16
d102 v0
  = case coe v0 of
      C3109 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name104 = "Function.LeftInverse.LeftInverse.from"
d104 :: T82 -> MAlonzo.Code.Function.Equality.T16
d104 v0
  = case coe v0 of
      C3109 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name106 = "Function.LeftInverse.LeftInverse.left-inverse-of"
d106 :: T82 -> AgdaAny -> AgdaAny
d106 v0
  = case coe v0 of
      C3109 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name110 = "Function.LeftInverse.LeftInverse.F._≈_"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T82 -> AgdaAny -> AgdaAny -> ()
d110 = erased
name132 = "Function.LeftInverse.LeftInverse.T._≈_"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T82 -> AgdaAny -> AgdaAny -> ()
d132 = erased
name178 = "Function.LeftInverse.LeftInverse.injective"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T82 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d178 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du178 v4 v6 v7 v8 v9
du178 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T82 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du178 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0)) v2
         (coe
            MAlonzo.Code.Function.Equality.d38 (d104 (coe v1))
            (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v2))
         v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0))
            (coe
               MAlonzo.Code.Function.Equality.d38 (d104 (coe v1))
               (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v2))
            (coe
               MAlonzo.Code.Function.Equality.d38 (d104 (coe v1))
               (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v3))
            v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0))
               (coe
                  MAlonzo.Code.Function.Equality.d38 (d104 (coe v1))
                  (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v3))
               v3 v3
               (let v5
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v5 v3))
               (coe d106 v1 v3))
            (coe
               MAlonzo.Code.Function.Equality.d40 (d104 (coe v1))
               (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v2)
               (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v3) v4))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d36
            (MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))
            (coe
               MAlonzo.Code.Function.Equality.d38 (d104 (coe v1))
               (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v2))
            v2 (coe d106 v1 v2)))
name186 = "Function.LeftInverse.LeftInverse.injection"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T82 -> MAlonzo.Code.Function.Injection.T88
d186 v0 v1 v2 v3 v4 v5 v6 = du186 v4 v6
du186 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T82 -> MAlonzo.Code.Function.Injection.T88
du186 v0 v1
  = coe
      MAlonzo.Code.Function.Injection.C1975 (coe d102 (coe v1))
      (coe du178 (coe v0) (coe v1))
name188 = "Function.LeftInverse.LeftInverse.equivalence"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T82 -> MAlonzo.Code.Function.Equivalence.T16
d188 v0 v1 v2 v3 v4 v5 v6 = du188 v6
du188 :: T82 -> MAlonzo.Code.Function.Equivalence.T16
du188 v0
  = coe
      MAlonzo.Code.Function.Equivalence.C269 (coe d102 (coe v0))
      (coe d104 (coe v0))
name194 = "Function.LeftInverse.LeftInverse.to-from"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T82 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d194 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du194 v4 v5 v6 v7 v8 v9
du194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  T82 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du194 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0))
         (coe MAlonzo.Code.Function.Equality.d38 (d104 (coe v2)) v4)
         (coe
            MAlonzo.Code.Function.Equality.d38 (d104 (coe v2))
            (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3))
         v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0))
            (coe
               MAlonzo.Code.Function.Equality.d38 (d104 (coe v2))
               (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3))
            v3 v3
            (let v6
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v6 v3))
            (coe d106 v2 v3))
         (coe
            MAlonzo.Code.Function.Equality.d40 (d104 (coe v2)) v4
            (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d36
               (MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v1))
               (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3) v4
               v5)))
name214 = "Function.LeftInverse.RightInverse"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> ()
d214 = erased
name224 = "Function.LeftInverse._↞_"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d224 = erased
name244 = "Function.LeftInverse.leftInverse"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) -> T82
d244 v0 v1 v2 v3 v4 v5 v6 = du244 v4 v5 v6
du244 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) -> T82
du244 v0 v1 v2
  = coe
      C3109
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.C501
            (coe
               MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
         v0)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.C501
            (coe
               MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
         v1)
      (coe v2)
name258 = "Function.LeftInverse.id"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T82
d258 v0 v1 v2 = du258 v2
du258 :: MAlonzo.Code.Relation.Binary.Bundles.T44 -> T82
du258 v0
  = coe
      C3109 (coe MAlonzo.Code.Function.Equality.du62)
      (coe MAlonzo.Code.Function.Equality.du62)
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))
              (coe
                 MAlonzo.Code.Function.Equality.d38
                 (coe MAlonzo.Code.Function.Equality.du62)
                 (coe
                    MAlonzo.Code.Function.Equality.d38
                    (coe MAlonzo.Code.Function.Equality.du62) v1))))
name282 = "Function.LeftInverse._∘_"
d282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T82 -> T82 -> T82
d282 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du282 v6 v9 v10
du282 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T82 -> T82 -> T82
du282 v0 v1 v2
  = coe
      C3109
      (coe
         MAlonzo.Code.Function.Equality.du82 (coe d102 (coe v1))
         (coe d102 (coe v2)))
      (coe
         MAlonzo.Code.Function.Equality.du82 (coe d104 (coe v2))
         (coe d104 (coe v1)))
      (coe
         (\ v3 ->
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                 (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0))
                 (coe
                    MAlonzo.Code.Function.Equality.d38 (d104 (coe v2))
                    (coe
                       MAlonzo.Code.Function.Equality.d38 (d104 (coe v1))
                       (coe
                          MAlonzo.Code.Function.Equality.d38 (d102 (coe v1))
                          (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3))))
                 (coe
                    MAlonzo.Code.Function.Equality.d38 (d104 (coe v2))
                    (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3))
                 v3
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                    (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0))
                    (coe
                       MAlonzo.Code.Function.Equality.d38 (d104 (coe v2))
                       (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3))
                    v3 v3
                    (let v4
                           = MAlonzo.Code.Relation.Binary.Structures.d34
                               (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) in
                     coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                       (coe v4 v3))
                    (coe d106 v2 v3))
                 (coe
                    MAlonzo.Code.Function.Equality.d40 (d104 (coe v2))
                    (coe
                       MAlonzo.Code.Function.Equality.d38 (d104 (coe v1))
                       (coe
                          MAlonzo.Code.Function.Equality.d38 (d102 (coe v1))
                          (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3)))
                    (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3)
                    (coe
                       d106 v1
                       (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3))))))
