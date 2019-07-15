{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Reflection where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Data.Vec.NZ45Zary
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single

name38 = "Relation.Binary.Reflection._._≈_"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  () ->
  MAlonzo.Code.Relation.Binary.T128 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> ()
d38 = erased
name90 = "Relation.Binary.Reflection.prove"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  () ->
  MAlonzo.Code.Relation.Binary.T128 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d90 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du90 v5 v7 v8 v9 v10 v11 v12 v13 v14
du90 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du90 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))))
               (coe v1 v4 v6 v5) (coe v2 v4 v6 v5) (coe v1 v4 v7 v5)
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d416
                  (MAlonzo.Code.Relation.Binary.d144 (coe v0)) (coe v2 v4 v6 v5)
                  (coe v1 v4 v6 v5) (coe v3 v4 v6 v5))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))))
                     (coe v2 v4 v6 v5) (coe v2 v4 v7 v5) (coe v1 v4 v7 v5) (coe v8)
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))))
                           (coe v2 v4 v7 v5) (coe v1 v4 v7 v5) (coe v1 v4 v7 v5)
                           (coe v3 v4 v7 v5)
                           (let v9
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))) in
                            let v10 = coe v1 v4 v7 v5 in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v9 v10))))))))))
name104 = "Relation.Binary.Reflection.close"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  () ->
  MAlonzo.Code.Relation.Binary.T128 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  () -> Integer -> AgdaAny -> AgdaAny
d104 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du104 v6 v11 v12
du104 ::
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny
du104 v0 v1 v2
  = coe
      (MAlonzo.Code.Data.Vec.NZ45Zary.du64
         (coe v2)
         (coe
            (MAlonzo.Code.Data.Vec.Base.du170
               (coe v0 v1) (coe (MAlonzo.Code.Data.Vec.Base.d504 (coe v1))))))
name114 = "Relation.Binary.Reflection.solve"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  () ->
  MAlonzo.Code.Relation.Binary.T128 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
d114 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du114 v5 v6 v7 v8 v9 v10 v11 v12
du114 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
du114 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      (MAlonzo.Code.Data.Vec.NZ45Zary.du316
         (coe v5)
         (coe
            (\ v8 ->
               du90
                 (coe v0) (coe v2) (coe v3) (coe v4) (coe v5) (coe v8)
                 (coe
                    (MAlonzo.Code.Agda.Builtin.Sigma.d28
                       (coe (du104 (coe v1) (coe v5) (coe v6)))))
                 (coe
                    (MAlonzo.Code.Agda.Builtin.Sigma.d30
                       (coe (du104 (coe v1) (coe v5) (coe v6)))))
                 (coe
                    (MAlonzo.Code.Data.Vec.NZ45Zary.du344
                       (coe (MAlonzo.Code.Data.Vec.NZ45Zary.du444 (coe v5) (coe v7)))
                       (coe v8))))))
name130 = "Relation.Binary.Reflection.solve₁"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  () ->
  MAlonzo.Code.Relation.Binary.T128 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny
d130 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du130 v5 v6 v7 v8 v9 v10 v11
du130 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny
du130 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Equality.d38
      (MAlonzo.Code.Function.Equivalence.d36
         (coe (MAlonzo.Code.Data.Vec.NZ45Zary.du194 (coe v5))))
      (\ v7 ->
         du90
           (coe v0) (coe v2) (coe v3) (coe v4) (coe v5) (coe v7)
           (coe
              (MAlonzo.Code.Agda.Builtin.Sigma.d28
                 (coe (du104 (coe v1) (coe v5) (coe v6)))))
           (coe
              (MAlonzo.Code.Agda.Builtin.Sigma.d30
                 (coe (du104 (coe v1) (coe v5) (coe v6))))))
name142 = "Relation.Binary.Reflection._⊜_"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  () ->
  MAlonzo.Code.Relation.Binary.T128 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d142 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du142
du142 :: AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du142 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
