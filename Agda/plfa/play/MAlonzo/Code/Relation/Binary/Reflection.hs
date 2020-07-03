{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
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
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid
import qualified MAlonzo.Code.Relation.Binary.Structures

name38 = "Relation.Binary.Reflection._._≈_"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> ()
d38 = erased
name92 = "Relation.Binary.Reflection.prove"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
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
d92 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du92 v5 v7 v8 v9 v10 v11 v12 v13 v14
du92 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du92 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0))
         (coe v1 v4 v6 v5) (coe v2 v4 v6 v5) (coe v1 v4 v7 v5)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0))
            (coe v2 v4 v6 v5) (coe v2 v4 v7 v5) (coe v1 v4 v7 v5)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0))
               (coe v2 v4 v7 v5) (coe v1 v4 v7 v5) (coe v1 v4 v7 v5)
               (let v9
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) in
                let v10 = coe v1 v4 v7 v5 in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v9 v10))
               (coe v3 v4 v7 v5))
            v8)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d36
            (MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))
            (coe v2 v4 v6 v5) (coe v1 v4 v6 v5) (coe v3 v4 v6 v5)))
name106 = "Relation.Binary.Reflection.close"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  () -> Integer -> AgdaAny -> AgdaAny
d106 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du106 v6 v11 v12
du106 ::
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny
du106 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Vec.NZ45Zary.du64 (coe v2)
      (coe
         MAlonzo.Code.Data.Vec.Base.du176 (coe v0 v1)
         (coe MAlonzo.Code.Data.Vec.Base.d510 (coe v1)))
name116 = "Relation.Binary.Reflection.solve"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
d116 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du116 v5 v6 v7 v8 v9 v10 v11 v12
du116 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
du116 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Data.Vec.NZ45Zary.du316 (coe v5)
      (coe
         (\ v8 ->
            coe
              du92 (coe v0) (coe v2) (coe v3) (coe v4) (coe v5) (coe v8)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d28
                 (coe du106 (coe v1) (coe v5) (coe v6)))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d30
                 (coe du106 (coe v1) (coe v5) (coe v6)))
              (coe
                 MAlonzo.Code.Data.Vec.NZ45Zary.du344
                 (coe MAlonzo.Code.Data.Vec.NZ45Zary.du444 (coe v5) (coe v7))
                 (coe v8))))
name132 = "Relation.Binary.Reflection.solve₁"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny
d132 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du132 v5 v6 v7 v8 v9 v10 v11
du132 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny
du132 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Equality.d38
      (MAlonzo.Code.Function.Equivalence.d36
         (coe MAlonzo.Code.Data.Vec.NZ45Zary.du194 (coe v5)))
      (\ v7 ->
         coe
           du92 (coe v0) (coe v2) (coe v3) (coe v4) (coe v5) (coe v7)
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d28
              (coe du106 (coe v1) (coe v5) (coe v6)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d30
              (coe du106 (coe v1) (coe v5) (coe v6))))
name144 = "Relation.Binary.Reflection._⊜_"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (Integer ->
   AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  Integer ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du144
du144 :: AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du144 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
