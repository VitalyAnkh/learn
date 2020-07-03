{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Function.Equivalence where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.Structures

name16 = "Function.Equivalence.Equivalence"
d16 a0 a1 a2 a3 a4 a5 = ()
data T16
  = C269 MAlonzo.Code.Function.Equality.T16
         MAlonzo.Code.Function.Equality.T16
name34 = "Function.Equivalence.Equivalence.to"
d34 :: T16 -> MAlonzo.Code.Function.Equality.T16
d34 v0
  = case coe v0 of
      C269 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name36 = "Function.Equivalence.Equivalence.from"
d36 :: T16 -> MAlonzo.Code.Function.Equality.T16
d36 v0
  = case coe v0 of
      C269 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name42 = "Function.Equivalence._⇔_"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d42 = erased
name56 = "Function.Equivalence.equivalence"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T16
d56 v0 v1 v2 v3 v4 v5 = du56 v4 v5
du56 :: (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T16
du56 v0 v1
  = coe
      C269
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
name66 = "Function.Equivalence.id"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T16
d66 v0 v1 v2 = du66
du66 :: T16
du66
  = coe
      C269 (coe MAlonzo.Code.Function.Equality.du62)
      (coe MAlonzo.Code.Function.Equality.du62)
name82 = "Function.Equivalence._∘_"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T16 -> T16 -> T16
d82 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du82 v9 v10
du82 :: T16 -> T16 -> T16
du82 v0 v1
  = coe
      C269
      (coe
         MAlonzo.Code.Function.Equality.du82 (coe d34 (coe v0))
         (coe d34 (coe v1)))
      (coe
         MAlonzo.Code.Function.Equality.du82 (coe d36 (coe v1))
         (coe d36 (coe v0)))
name100 = "Function.Equivalence.sym"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T16 -> T16
d100 v0 v1 v2 v3 v4 v5 v6 = du100 v6
du100 :: T16 -> T16
du100 v0 = coe C269 (coe d36 (coe v0)) (coe d34 (coe v0))
name110 = "Function.Equivalence._._.from"
d110 :: T16 -> MAlonzo.Code.Function.Equality.T16
d110 v0 = coe d36 (coe v0)
name112 = "Function.Equivalence._._.to"
d112 :: T16 -> MAlonzo.Code.Function.Equality.T16
d112 v0 = coe d34 (coe v0)
name118 = "Function.Equivalence.setoid"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d118 v0 v1 = du118
du118 :: MAlonzo.Code.Relation.Binary.Bundles.T44
du118
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C483 (\ v0 -> coe du66)
         (\ v0 v1 v2 -> coe du100 v2)
         (coe (\ v0 v1 v2 v3 v4 -> coe du82 (coe v4) (coe v3))))
name126 = "Function.Equivalence.⇔-setoid"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d126 v0 = du126
du126 :: MAlonzo.Code.Relation.Binary.Bundles.T44
du126
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C483
         (coe (\ v0 -> coe du66)) (coe (\ v0 v1 -> coe du100))
         (coe (\ v0 v1 v2 v3 v4 -> coe du82 (coe v4) (coe v3))))
name154 = "Function.Equivalence.map"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (MAlonzo.Code.Function.Equality.T16 ->
   MAlonzo.Code.Function.Equality.T16) ->
  (MAlonzo.Code.Function.Equality.T16 ->
   MAlonzo.Code.Function.Equality.T16) ->
  T16 -> T16
d154 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du154 v12 v13 v14
du154 ::
  (MAlonzo.Code.Function.Equality.T16 ->
   MAlonzo.Code.Function.Equality.T16) ->
  (MAlonzo.Code.Function.Equality.T16 ->
   MAlonzo.Code.Function.Equality.T16) ->
  T16 -> T16
du154 v0 v1 v2
  = coe C269 (coe v0 (d34 (coe v2))) (coe v1 (d36 (coe v2)))
name168 = "Function.Equivalence._._.from"
d168 :: T16 -> MAlonzo.Code.Function.Equality.T16
d168 v0 = coe d36 (coe v0)
name170 = "Function.Equivalence._._.to"
d170 :: T16 -> MAlonzo.Code.Function.Equality.T16
d170 v0 = coe d34 (coe v0)
name208 = "Function.Equivalence.zip"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (MAlonzo.Code.Function.Equality.T16 ->
   MAlonzo.Code.Function.Equality.T16 ->
   MAlonzo.Code.Function.Equality.T16) ->
  (MAlonzo.Code.Function.Equality.T16 ->
   MAlonzo.Code.Function.Equality.T16 ->
   MAlonzo.Code.Function.Equality.T16) ->
  T16 -> T16 -> T16
d208 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
     v18 v19 v20 v21
  = du208 v18 v19 v20 v21
du208 ::
  (MAlonzo.Code.Function.Equality.T16 ->
   MAlonzo.Code.Function.Equality.T16 ->
   MAlonzo.Code.Function.Equality.T16) ->
  (MAlonzo.Code.Function.Equality.T16 ->
   MAlonzo.Code.Function.Equality.T16 ->
   MAlonzo.Code.Function.Equality.T16) ->
  T16 -> T16 -> T16
du208 v0 v1 v2 v3
  = coe
      C269 (coe v0 (d34 (coe v2)) (d34 (coe v3)))
      (coe v1 (d36 (coe v2)) (d36 (coe v3)))
