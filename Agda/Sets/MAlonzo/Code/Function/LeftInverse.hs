{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single

name16 = "Function.LeftInverse._LeftInverseOf_"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 -> ()
d16 = erased
name64 = "Function.LeftInverse._RightInverseOf_"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 -> ()
d64 = erased
name82 = "Function.LeftInverse.LeftInverse"
d82 a0 a1 a2 a3 a4 a5 = ()
data T82
  = C521 MAlonzo.Code.Function.Equality.T16
         MAlonzo.Code.Function.Equality.T16 (AgdaAny -> AgdaAny)
name102 = "Function.LeftInverse.LeftInverse.to"
d102 :: T82 -> MAlonzo.Code.Function.Equality.T16
d102 v0
  = case coe v0 of
      C521 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name104 = "Function.LeftInverse.LeftInverse.from"
d104 :: T82 -> MAlonzo.Code.Function.Equality.T16
d104 v0
  = case coe v0 of
      C521 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name106 = "Function.LeftInverse.LeftInverse.left-inverse-of"
d106 :: T82 -> AgdaAny -> AgdaAny
d106 v0
  = case coe v0 of
      C521 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name110 = "Function.LeftInverse.LeftInverse.F._≈_"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T82 -> AgdaAny -> AgdaAny -> ()
d110 = erased
name132 = "Function.LeftInverse.LeftInverse.T._≈_"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T82 -> AgdaAny -> AgdaAny -> ()
d132 = erased
name176 = "Function.LeftInverse.LeftInverse.injective"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T82 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d176 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du176 v4 v6 v7 v8 v9
du176 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  T82 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du176 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))))
               (coe v2)
               (coe
                  MAlonzo.Code.Function.Equality.d38 (d104 (coe v1))
                  (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v2))
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d416
                  (MAlonzo.Code.Relation.Binary.d144 (coe v0))
                  (coe
                     MAlonzo.Code.Function.Equality.d38 (d104 (coe v1))
                     (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v2))
                  v2 (coe d106 v1 v2))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))))
                     (coe
                        MAlonzo.Code.Function.Equality.d38 (d104 (coe v1))
                        (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v2))
                     (coe
                        MAlonzo.Code.Function.Equality.d38 (d104 (coe v1))
                        (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v3))
                     (coe v3)
                     (coe
                        MAlonzo.Code.Function.Equality.d40 (d104 (coe v1))
                        (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v2)
                        (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v3) v4)
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))))
                           (coe
                              MAlonzo.Code.Function.Equality.d38 (d104 (coe v1))
                              (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v1)) v3))
                           (coe v3) (coe v3) (coe d106 v1 v3)
                           (let v5
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v5 v3))))))))))
name184 = "Function.LeftInverse.LeftInverse.injection"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T82 -> MAlonzo.Code.Function.Injection.T88
d184 v0 v1 v2 v3 v4 v5 v6 = du184 v4 v6
du184 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  T82 -> MAlonzo.Code.Function.Injection.T88
du184 v0 v1
  = coe
      (MAlonzo.Code.Function.Injection.C429
         (coe (d102 (coe v1))) (coe (du176 (coe v0) (coe v1))))
name186 = "Function.LeftInverse.LeftInverse.equivalence"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T82 -> MAlonzo.Code.Function.Equivalence.T16
d186 v0 v1 v2 v3 v4 v5 v6 = du186 v6
du186 :: T82 -> MAlonzo.Code.Function.Equivalence.T16
du186 v0
  = coe
      (MAlonzo.Code.Function.Equivalence.C1
         (coe (d102 (coe v0))) (coe (d104 (coe v0))))
name192 = "Function.LeftInverse.LeftInverse.to-from"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T82 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d192 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du192 v4 v5 v6 v7 v8 v9
du192 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T82 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du192 v0 v1 v2 v3 v4 v5
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))))
               (coe MAlonzo.Code.Function.Equality.d38 (d104 (coe v2)) v4)
               (coe
                  MAlonzo.Code.Function.Equality.d38 (d104 (coe v2))
                  (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3))
               (coe v3)
               (coe
                  MAlonzo.Code.Function.Equality.d40 (d104 (coe v2)) v4
                  (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3)
                  (coe
                     MAlonzo.Code.Relation.Binary.Core.d416
                     (MAlonzo.Code.Relation.Binary.d144 (coe v1))
                     (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3) v4 v5))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))))
                     (coe
                        MAlonzo.Code.Function.Equality.d38 (d104 (coe v2))
                        (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3))
                     (coe v3) (coe v3) (coe d106 v2 v3)
                     (let v6
                            = MAlonzo.Code.Relation.Binary.Core.d414
                                (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                           (coe v6 v3))))))))
name212 = "Function.LeftInverse.RightInverse"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> ()
d212 = erased
name222 = "Function.LeftInverse._↞_"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d222 = erased
name242 = "Function.LeftInverse.leftInverse"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) -> T82
d242 v0 v1 v2 v3 v4 v5 v6 = du242 v4 v5 v6
du242 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) -> T82
du242 v0 v1 v2
  = coe
      (C521
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du126
            (coe
               (\ v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C1037 v5) erased erased
               (MAlonzo.Code.Relation.Binary.Core.C5081 erased erased erased))
            v0)
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du126
            (coe
               (\ v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C1037 v5) erased erased
               (MAlonzo.Code.Relation.Binary.Core.C5081 erased erased erased))
            v1)
         (coe v2))
name256 = "Function.LeftInverse.id"
d256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 -> T82
d256 v0 v1 v2 = du256 v2
du256 :: MAlonzo.Code.Relation.Binary.T128 -> T82
du256 v0
  = coe
      (C521
         (coe MAlonzo.Code.Function.Equality.du62)
         (coe MAlonzo.Code.Function.Equality.du62)
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Relation.Binary.d144 (coe v0))
                 (coe
                    MAlonzo.Code.Function.Equality.d38
                    MAlonzo.Code.Function.Equality.du62
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       MAlonzo.Code.Function.Equality.du62 v1)))))
name280 = "Function.LeftInverse._∘_"
d280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> T82 -> T82 -> T82
d280 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du280 v6 v9 v10
du280 :: MAlonzo.Code.Relation.Binary.T128 -> T82 -> T82 -> T82
du280 v0 v1 v2
  = coe
      (C521
         (coe
            (MAlonzo.Code.Function.Equality.du82
               (coe (d102 (coe v1))) (coe (d102 (coe v2)))))
         (coe
            (MAlonzo.Code.Function.Equality.du82
               (coe (d104 (coe v2))) (coe (d104 (coe v1)))))
         (coe
            (\ v3 ->
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                 (coe
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                       (coe
                          (MAlonzo.Code.Relation.Binary.Core.d418
                             (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))))
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
                       (coe v3)
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
                             (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3)))
                       (coe
                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                             (coe
                                (MAlonzo.Code.Relation.Binary.Core.d418
                                   (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))))
                             (coe
                                MAlonzo.Code.Function.Equality.d38 (d104 (coe v2))
                                (coe MAlonzo.Code.Function.Equality.d38 (d102 (coe v2)) v3))
                             (coe v3) (coe v3) (coe d106 v2 v3)
                             (let v4
                                    = MAlonzo.Code.Relation.Binary.Core.d414
                                        (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))) in
                              coe
                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                   (coe v4 v3))))))))))
