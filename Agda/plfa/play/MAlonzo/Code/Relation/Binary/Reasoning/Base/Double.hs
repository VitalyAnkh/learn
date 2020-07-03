{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Reasoning.Base.Double where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name56 = "Relation.Binary.Reasoning.Base.Double._IsRelatedTo_"
d56 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T56 = C64 AgdaAny | C68 AgdaAny
name74 = "Relation.Binary.Reasoning.Base.Double.IsEquality"
d74 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T74 = C82
name90 = "Relation.Binary.Reasoning.Base.Double.IsEquality?"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny -> AgdaAny -> T56 -> MAlonzo.Code.Relation.Nullary.T32
d90 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du90 v9
du90 :: T56 -> MAlonzo.Code.Relation.Nullary.T32
du90 v0
  = case coe v0 of
      C64 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
             (coe MAlonzo.Code.Relation.Nullary.C26)
      C68 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
             (coe MAlonzo.Code.Relation.Nullary.C22 (coe C82))
      _ -> MAlonzo.RTE.mazUnreachableError
name100 = "Relation.Binary.Reasoning.Base.Double.extractEquality"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny -> AgdaAny -> T56 -> T74 -> AgdaAny
d100 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du100 v9 v10
du100 :: T56 -> T74 -> AgdaAny
du100 v0 v1
  = coe
      seq (coe v1)
      (case coe v0 of
         C68 v2 -> coe v2
         _ -> MAlonzo.RTE.mazUnreachableError)
name110 = "Relation.Binary.Reasoning.Base.Double.begin_"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny -> AgdaAny -> T56 -> AgdaAny
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du110 v6 v7 v8 v9
du110 ::
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny -> AgdaAny -> T56 -> AgdaAny
du110 v0 v1 v2 v3
  = case coe v3 of
      C64 v4 -> coe v4
      C68 v4
        -> coe MAlonzo.Code.Relation.Binary.Structures.d82 v0 v1 v2 v4
      _ -> MAlonzo.RTE.mazUnreachableError
name124 = "Relation.Binary.Reasoning.Base.Double.begin-equality_"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny -> AgdaAny -> T56 -> AgdaAny -> AgdaAny
d124 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du124 v9
du124 :: T56 -> AgdaAny
du124 v0
  = coe
      du100 (coe v0)
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du36
         (coe du90 (coe v0)))
name136 = "Relation.Binary.Reasoning.Base.Double.step-∼"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T56 -> AgdaAny -> T56
d136 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du136 v6 v7 v8 v9 v10 v11
du136 ::
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T56 -> AgdaAny -> T56
du136 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C64 v6
        -> coe
             C64
             (coe MAlonzo.Code.Relation.Binary.Structures.d84 v0 v1 v2 v3 v5 v6)
      C68 v6
        -> coe
             C64
             (coe
                MAlonzo.Code.Relation.Binary.Structures.du106 (coe v0) (coe v1)
                (coe v2) (coe v3) (coe v6) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name156 = "Relation.Binary.Reasoning.Base.Double.step-≈"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T56 -> AgdaAny -> T56
d156 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du156 v6 v7 v8 v9 v10 v11
du156 ::
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T56 -> AgdaAny -> T56
du156 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C64 v6
        -> coe
             C64
             (coe
                MAlonzo.Code.Relation.Binary.Structures.du100 (coe v0) (coe v3)
                (coe v2) (coe v1)
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d36
                   (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0)) v1 v2 v5)
                (coe v6))
      C68 v6
        -> coe
             C68
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d38
                (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0)) v1 v2 v3 v5
                v6)
      _ -> MAlonzo.RTE.mazUnreachableError
name176 = "Relation.Binary.Reasoning.Base.Double.step-≈˘"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T56 -> AgdaAny -> T56
d176 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du176 v6 v7 v8 v9 v10 v11
du176 ::
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T56 -> AgdaAny -> T56
du176 v0 v1 v2 v3 v4 v5
  = coe
      du156 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d36
         (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0)) v2 v1 v5)
name190 = "Relation.Binary.Reasoning.Base.Double.step-≡"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> T56 -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T56
d190 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du190 v10
du190 :: T56 -> T56
du190 v0 = coe v0
name214 = "Relation.Binary.Reasoning.Base.Double.step-≡˘"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> T56 -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T56
d214 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du214 v10
du214 :: T56 -> T56
du214 v0 = coe v0
name226 = "Relation.Binary.Reasoning.Base.Double._≡⟨⟩_"
d226 :: T56 -> T56
d226 v0 = coe v0
name234 = "Relation.Binary.Reasoning.Base.Double._∎"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 -> AgdaAny -> T56
d234 v0 v1 v2 v3 v4 v5 v6 v7 = du234 v6 v7
du234 ::
  MAlonzo.Code.Relation.Binary.Structures.T70 -> AgdaAny -> T56
du234 v0 v1
  = coe
      C68
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d34
         (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0)) v1)
name1519 = "Relation.Binary.Reasoning.Base.Double..absurdlambda"
d1519 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T74 -> MAlonzo.Code.Data.Empty.T4
d1519 = erased
