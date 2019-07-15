{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Nullary

name16 = "Relation.Binary.IsPreorder"
d16 a0 a1 a2 a3 a4 a5 = ()
data T16
  = C17 MAlonzo.Code.Relation.Binary.Core.T402
        (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
        (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name36 = "Relation.Binary.IsPreorder.isEquivalence"
d36 :: T16 -> MAlonzo.Code.Relation.Binary.Core.T402
d36 v0
  = case coe v0 of
      C17 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name38 = "Relation.Binary.IsPreorder.reflexive"
d38 :: T16 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d38 v0
  = case coe v0 of
      C17 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name40 = "Relation.Binary.IsPreorder.trans"
d40 ::
  T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d40 v0
  = case coe v0 of
      C17 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name44 = "Relation.Binary.IsPreorder.Eq.refl"
d44 :: T16 -> AgdaAny -> AgdaAny
d44 v0
  = coe (MAlonzo.Code.Relation.Binary.Core.d414 (coe (d36 (coe v0))))
name46 = "Relation.Binary.IsPreorder.Eq.reflexive"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T16 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d46 v0 v1 v2 v3 v4 v5 v6 = du46 v6
du46 ::
  T16 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du46 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d36 (coe v0))) v1)
name48 = "Relation.Binary.IsPreorder.Eq.sym"
d48 :: T16 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d48 v0
  = coe (MAlonzo.Code.Relation.Binary.Core.d416 (coe (d36 (coe v0))))
name50 = "Relation.Binary.IsPreorder.Eq.trans"
d50 ::
  T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d50 v0
  = coe (MAlonzo.Code.Relation.Binary.Core.d418 (coe (d36 (coe v0))))
name52 = "Relation.Binary.IsPreorder.refl"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T16 -> AgdaAny -> AgdaAny
d52 v0 v1 v2 v3 v4 v5 v6 v7 = du52 v6 v7
du52 :: T16 -> AgdaAny -> AgdaAny
du52 v0 v1
  = coe
      d38 v0 v1 v1
      (coe MAlonzo.Code.Relation.Binary.Core.d414 (d36 (coe v0)) v1)
name54 = "Relation.Binary.IsPreorder.∼-respˡ-≈"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d54 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du54 v6 v7 v8 v9 v10 v11
du54 ::
  T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du54 v0 v1 v2 v3 v4 v5
  = coe
      d40 v0 v3 v2 v1
      (coe
         d38 v0 v3 v2
         (coe
            MAlonzo.Code.Relation.Binary.Core.d416 (d36 (coe v0)) v2 v3 v4))
      v5
name60 = "Relation.Binary.IsPreorder.∼-respʳ-≈"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d60 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du60 v6 v7 v8 v9 v10 v11
du60 ::
  T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du60 v0 v1 v2 v3 v4 v5
  = coe d40 v0 v1 v2 v3 v5 (coe d38 v0 v2 v3 v4)
name66 = "Relation.Binary.IsPreorder.∼-resp-≈"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T16 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d66 v0 v1 v2 v3 v4 v5 v6 = du66 v6
du66 :: T16 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du66 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du60 (coe v0))) (coe (du54 (coe v0))))
name74 = "Relation.Binary.Preorder"
d74 a0 a1 a2 = ()
newtype T74 = C807 T16
name90 = "Relation.Binary.Preorder.Carrier"
d90 :: T74 -> ()
d90 = erased
name92 = "Relation.Binary.Preorder._≈_"
d92 :: T74 -> AgdaAny -> AgdaAny -> ()
d92 = erased
name94 = "Relation.Binary.Preorder._∼_"
d94 :: T74 -> AgdaAny -> AgdaAny -> ()
d94 = erased
name96 = "Relation.Binary.Preorder.isPreorder"
d96 :: T74 -> T16
d96 v0
  = case coe v0 of
      C807 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name100 = "Relation.Binary.Preorder._.isEquivalence"
d100 :: T74 -> MAlonzo.Code.Relation.Binary.Core.T402
d100 v0 = coe (d36 (coe (d96 (coe v0))))
name102 = "Relation.Binary.Preorder._.refl"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T74 -> AgdaAny -> AgdaAny
d102 v0 v1 v2 v3 = du102 v3
du102 :: T74 -> AgdaAny -> AgdaAny
du102 v0 = coe (du52 (coe (d96 (coe v0))))
name104 = "Relation.Binary.Preorder._.reflexive"
d104 :: T74 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d104 v0 = coe (d38 (coe (d96 (coe v0))))
name106 = "Relation.Binary.Preorder._.trans"
d106 ::
  T74 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d106 v0 = coe (d40 (coe (d96 (coe v0))))
name108 = "Relation.Binary.Preorder._.∼-resp-≈"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T74 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d108 v0 v1 v2 v3 = du108 v3
du108 :: T74 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du108 v0 = coe (du66 (coe (d96 (coe v0))))
name110 = "Relation.Binary.Preorder._.∼-respʳ-≈"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T74 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d110 v0 v1 v2 v3 = du110 v3
du110 ::
  T74 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du110 v0 = coe (du60 (coe (d96 (coe v0))))
name112 = "Relation.Binary.Preorder._.∼-respˡ-≈"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T74 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d112 v0 v1 v2 v3 = du112 v3
du112 ::
  T74 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du112 v0 = coe (du54 (coe (d96 (coe v0))))
name116 = "Relation.Binary.Preorder._.Eq.refl"
d116 :: T74 -> AgdaAny -> AgdaAny
d116 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d36 (coe (d96 (coe v0))))))
name118 = "Relation.Binary.Preorder._.Eq.reflexive"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T74 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d118 v0 v1 v2 v3 = du118 v3
du118 ::
  T74 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du118 v0
  = let v1 = d96 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d36 (coe v1))) v2)
name120 = "Relation.Binary.Preorder._.Eq.sym"
d120 :: T74 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d120 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d36 (coe (d96 (coe v0))))))
name122 = "Relation.Binary.Preorder._.Eq.trans"
d122 ::
  T74 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d122 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d36 (coe (d96 (coe v0))))))
name128 = "Relation.Binary.Setoid"
d128 a0 a1 = ()
newtype T128 = C1037 MAlonzo.Code.Relation.Binary.Core.T402
name140 = "Relation.Binary.Setoid.Carrier"
d140 :: T128 -> ()
d140 = erased
name142 = "Relation.Binary.Setoid._≈_"
d142 :: T128 -> AgdaAny -> AgdaAny -> ()
d142 = erased
name144 = "Relation.Binary.Setoid.isEquivalence"
d144 :: T128 -> MAlonzo.Code.Relation.Binary.Core.T402
d144 v0
  = case coe v0 of
      C1037 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name146 = "Relation.Binary.Setoid._≉_"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T128 -> AgdaAny -> AgdaAny -> ()
d146 = erased
name154 = "Relation.Binary.Setoid._.refl"
d154 :: T128 -> AgdaAny -> AgdaAny
d154 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414 (coe (d144 (coe v0))))
name156 = "Relation.Binary.Setoid._.reflexive"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T128 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d156 v0 v1 v2 = du156 v2
du156 ::
  T128 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du156 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d144 (coe v0))) v1)
name158 = "Relation.Binary.Setoid._.sym"
d158 :: T128 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d158 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416 (coe (d144 (coe v0))))
name160 = "Relation.Binary.Setoid._.trans"
d160 ::
  T128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d160 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418 (coe (d144 (coe v0))))
name162 = "Relation.Binary.Setoid.isPreorder"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T128 -> T16
d162 v0 v1 v2 = du162 v2
du162 :: T128 -> T16
du162 v0
  = coe
      (C17
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         (coe
            (\ v1 v2 v3 ->
               MAlonzo.Code.Relation.Binary.Core.du420 (coe (d144 (coe v0))) v1))
         (coe
            (MAlonzo.Code.Relation.Binary.Core.d418 (coe (d144 (coe v0))))))
name164 = "Relation.Binary.Setoid.preorder"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T128 -> T74
d164 v0 v1 v2 = du164 v2
du164 :: T128 -> T74
du164 v0
  = coe
      (\ v1 v2 v3 v4 -> C807 v4) erased erased erased (du162 (coe v0))
name174 = "Relation.Binary.IsDecEquivalence"
d174 a0 a1 a2 a3 = ()
data T174
  = C1313 MAlonzo.Code.Relation.Binary.Core.T402
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14)
name188 = "Relation.Binary.IsDecEquivalence.isEquivalence"
d188 :: T174 -> MAlonzo.Code.Relation.Binary.Core.T402
d188 v0
  = case coe v0 of
      C1313 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name190 = "Relation.Binary.IsDecEquivalence._≟_"
d190 ::
  T174 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d190 v0
  = case coe v0 of
      C1313 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name194 = "Relation.Binary.IsDecEquivalence._.refl"
d194 :: T174 -> AgdaAny -> AgdaAny
d194 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414 (coe (d188 (coe v0))))
name196 = "Relation.Binary.IsDecEquivalence._.reflexive"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T174 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d196 v0 v1 v2 v3 v4 = du196 v4
du196 ::
  T174 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du196 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v0))) v1)
name198 = "Relation.Binary.IsDecEquivalence._.sym"
d198 :: T174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d198 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416 (coe (d188 (coe v0))))
name200 = "Relation.Binary.IsDecEquivalence._.trans"
d200 ::
  T174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d200 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418 (coe (d188 (coe v0))))
name206 = "Relation.Binary.DecSetoid"
d206 a0 a1 = ()
newtype T206 = C1455 T174
name218 = "Relation.Binary.DecSetoid.Carrier"
d218 :: T206 -> ()
d218 = erased
name220 = "Relation.Binary.DecSetoid._≈_"
d220 :: T206 -> AgdaAny -> AgdaAny -> ()
d220 = erased
name222 = "Relation.Binary.DecSetoid.isDecEquivalence"
d222 :: T206 -> T174
d222 v0
  = case coe v0 of
      C1455 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name226 = "Relation.Binary.DecSetoid._._≟_"
d226 ::
  T206 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d226 v0 = coe (d190 (coe (d222 (coe v0))))
name228 = "Relation.Binary.DecSetoid._.isEquivalence"
d228 :: T206 -> MAlonzo.Code.Relation.Binary.Core.T402
d228 v0 = coe (d188 (coe (d222 (coe v0))))
name230 = "Relation.Binary.DecSetoid._.refl"
d230 :: T206 -> AgdaAny -> AgdaAny
d230 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d188 (coe (d222 (coe v0))))))
name232 = "Relation.Binary.DecSetoid._.reflexive"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T206 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d232 v0 v1 v2 = du232 v2
du232 ::
  T206 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du232 v0
  = let v1 = d222 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v1))) v2)
name234 = "Relation.Binary.DecSetoid._.sym"
d234 :: T206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d234 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d188 (coe (d222 (coe v0))))))
name236 = "Relation.Binary.DecSetoid._.trans"
d236 ::
  T206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d236 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d188 (coe (d222 (coe v0))))))
name238 = "Relation.Binary.DecSetoid.setoid"
d238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T206 -> T128
d238 v0 v1 v2 = du238 v2
du238 :: T206 -> T128
du238 v0
  = coe
      (\ v1 v2 v3 -> C1037 v3) erased erased (d188 (coe (d222 (coe v0))))
name242 = "Relation.Binary.DecSetoid._.preorder"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T206 -> T74
d242 v0 v1 v2 = du242 v2
du242 :: T206 -> T74
du242 v0 = coe (du164 (coe (du238 (coe v0))))
name256 = "Relation.Binary.IsPartialOrder"
d256 a0 a1 a2 a3 a4 a5 = ()
data T256
  = C1639 T16 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name274 = "Relation.Binary.IsPartialOrder.isPreorder"
d274 :: T256 -> T16
d274 v0
  = case coe v0 of
      C1639 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name276 = "Relation.Binary.IsPartialOrder.antisym"
d276 :: T256 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d276 v0
  = case coe v0 of
      C1639 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name280 = "Relation.Binary.IsPartialOrder._.isEquivalence"
d280 :: T256 -> MAlonzo.Code.Relation.Binary.Core.T402
d280 v0 = coe (d36 (coe (d274 (coe v0))))
name282 = "Relation.Binary.IsPartialOrder._.refl"
d282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T256 -> AgdaAny -> AgdaAny
d282 v0 v1 v2 v3 v4 v5 v6 = du282 v6
du282 :: T256 -> AgdaAny -> AgdaAny
du282 v0 = coe (du52 (coe (d274 (coe v0))))
name284 = "Relation.Binary.IsPartialOrder._.reflexive"
d284 :: T256 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d284 v0 = coe (d38 (coe (d274 (coe v0))))
name286 = "Relation.Binary.IsPartialOrder._.trans"
d286 ::
  T256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d286 v0 = coe (d40 (coe (d274 (coe v0))))
name288 = "Relation.Binary.IsPartialOrder._.∼-resp-≈"
d288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T256 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d288 v0 v1 v2 v3 v4 v5 v6 = du288 v6
du288 :: T256 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du288 v0 = coe (du66 (coe (d274 (coe v0))))
name290 = "Relation.Binary.IsPartialOrder._.∼-respʳ-≈"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d290 v0 v1 v2 v3 v4 v5 v6 = du290 v6
du290 ::
  T256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du290 v0 = coe (du60 (coe (d274 (coe v0))))
name292 = "Relation.Binary.IsPartialOrder._.∼-respˡ-≈"
d292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d292 v0 v1 v2 v3 v4 v5 v6 = du292 v6
du292 ::
  T256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du292 v0 = coe (du54 (coe (d274 (coe v0))))
name296 = "Relation.Binary.IsPartialOrder._.Eq.refl"
d296 :: T256 -> AgdaAny -> AgdaAny
d296 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d36 (coe (d274 (coe v0))))))
name298 = "Relation.Binary.IsPartialOrder._.Eq.reflexive"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d298 v0 v1 v2 v3 v4 v5 v6 = du298 v6
du298 ::
  T256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du298 v0
  = let v1 = d274 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d36 (coe v1))) v2)
name300 = "Relation.Binary.IsPartialOrder._.Eq.sym"
d300 :: T256 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d300 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d36 (coe (d274 (coe v0))))))
name302 = "Relation.Binary.IsPartialOrder._.Eq.trans"
d302 ::
  T256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d302 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d36 (coe (d274 (coe v0))))))
name310 = "Relation.Binary.Poset"
d310 a0 a1 a2 = ()
newtype T310 = C1973 T256
name326 = "Relation.Binary.Poset.Carrier"
d326 :: T310 -> ()
d326 = erased
name328 = "Relation.Binary.Poset._≈_"
d328 :: T310 -> AgdaAny -> AgdaAny -> ()
d328 = erased
name330 = "Relation.Binary.Poset._≤_"
d330 :: T310 -> AgdaAny -> AgdaAny -> ()
d330 = erased
name332 = "Relation.Binary.Poset.isPartialOrder"
d332 :: T310 -> T256
d332 v0
  = case coe v0 of
      C1973 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name336 = "Relation.Binary.Poset._.antisym"
d336 :: T310 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d336 v0 = coe (d276 (coe (d332 (coe v0))))
name338 = "Relation.Binary.Poset._.isEquivalence"
d338 :: T310 -> MAlonzo.Code.Relation.Binary.Core.T402
d338 v0 = coe (d36 (coe (d274 (coe (d332 (coe v0))))))
name340 = "Relation.Binary.Poset._.isPreorder"
d340 :: T310 -> T16
d340 v0 = coe (d274 (coe (d332 (coe v0))))
name342 = "Relation.Binary.Poset._.refl"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T310 -> AgdaAny -> AgdaAny
d342 v0 v1 v2 v3 = du342 v3
du342 :: T310 -> AgdaAny -> AgdaAny
du342 v0
  = let v1 = d332 (coe v0) in coe (du52 (coe (d274 (coe v1))))
name344 = "Relation.Binary.Poset._.reflexive"
d344 :: T310 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d344 v0 = coe (d38 (coe (d274 (coe (d332 (coe v0))))))
name346 = "Relation.Binary.Poset._.trans"
d346 ::
  T310 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d346 v0 = coe (d40 (coe (d274 (coe (d332 (coe v0))))))
name348 = "Relation.Binary.Poset._.∼-resp-≈"
d348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T310 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d348 v0 v1 v2 v3 = du348 v3
du348 :: T310 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du348 v0
  = let v1 = d332 (coe v0) in coe (du66 (coe (d274 (coe v1))))
name350 = "Relation.Binary.Poset._.∼-respʳ-≈"
d350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T310 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d350 v0 v1 v2 v3 = du350 v3
du350 ::
  T310 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du350 v0
  = let v1 = d332 (coe v0) in coe (du60 (coe (d274 (coe v1))))
name352 = "Relation.Binary.Poset._.∼-respˡ-≈"
d352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T310 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d352 v0 v1 v2 v3 = du352 v3
du352 ::
  T310 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du352 v0
  = let v1 = d332 (coe v0) in coe (du54 (coe (d274 (coe v1))))
name356 = "Relation.Binary.Poset._.Eq.refl"
d356 :: T310 -> AgdaAny -> AgdaAny
d356 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d36 (coe (d274 (coe (d332 (coe v0))))))))
name358 = "Relation.Binary.Poset._.Eq.reflexive"
d358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T310 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d358 v0 v1 v2 v3 = du358 v3
du358 ::
  T310 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du358 v0
  = let v1 = d332 (coe v0) in
    let v2 = d274 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d36 (coe v2))) v3)
name360 = "Relation.Binary.Poset._.Eq.sym"
d360 :: T310 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d360 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d36 (coe (d274 (coe (d332 (coe v0))))))))
name362 = "Relation.Binary.Poset._.Eq.trans"
d362 ::
  T310 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d362 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d36 (coe (d274 (coe (d332 (coe v0))))))))
name364 = "Relation.Binary.Poset.preorder"
d364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T310 -> T74
d364 v0 v1 v2 v3 = du364 v3
du364 :: T310 -> T74
du364 v0
  = coe
      (\ v1 v2 v3 v4 -> C807 v4) erased erased erased
      (d274 (coe (d332 (coe v0))))
name378 = "Relation.Binary.IsDecPartialOrder"
d378 a0 a1 a2 a3 a4 a5 = ()
data T378
  = C2295 T256
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14)
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14)
name398 = "Relation.Binary.IsDecPartialOrder.isPartialOrder"
d398 :: T378 -> T256
d398 v0
  = case coe v0 of
      C2295 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name400 = "Relation.Binary.IsDecPartialOrder._≟_"
d400 ::
  T378 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d400 v0
  = case coe v0 of
      C2295 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name402 = "Relation.Binary.IsDecPartialOrder._≤?_"
d402 ::
  T378 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d402 v0
  = case coe v0 of
      C2295 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name406 = "Relation.Binary.IsDecPartialOrder.PO.antisym"
d406 :: T378 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d406 v0 = coe (d276 (coe (d398 (coe v0))))
name408 = "Relation.Binary.IsDecPartialOrder.PO.isEquivalence"
d408 :: T378 -> MAlonzo.Code.Relation.Binary.Core.T402
d408 v0 = coe (d36 (coe (d274 (coe (d398 (coe v0))))))
name410 = "Relation.Binary.IsDecPartialOrder.PO.isPreorder"
d410 :: T378 -> T16
d410 v0 = coe (d274 (coe (d398 (coe v0))))
name412 = "Relation.Binary.IsDecPartialOrder.PO.refl"
d412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T378 -> AgdaAny -> AgdaAny
d412 v0 v1 v2 v3 v4 v5 v6 = du412 v6
du412 :: T378 -> AgdaAny -> AgdaAny
du412 v0
  = let v1 = d398 (coe v0) in coe (du52 (coe (d274 (coe v1))))
name414 = "Relation.Binary.IsDecPartialOrder.PO.reflexive"
d414 :: T378 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d414 v0 = coe (d38 (coe (d274 (coe (d398 (coe v0))))))
name416 = "Relation.Binary.IsDecPartialOrder.PO.trans"
d416 ::
  T378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d416 v0 = coe (d40 (coe (d274 (coe (d398 (coe v0))))))
name418 = "Relation.Binary.IsDecPartialOrder.PO.∼-resp-≈"
d418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T378 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d418 v0 v1 v2 v3 v4 v5 v6 = du418 v6
du418 :: T378 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du418 v0
  = let v1 = d398 (coe v0) in coe (du66 (coe (d274 (coe v1))))
name420 = "Relation.Binary.IsDecPartialOrder.PO.∼-respʳ-≈"
d420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d420 v0 v1 v2 v3 v4 v5 v6 = du420 v6
du420 ::
  T378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du420 v0
  = let v1 = d398 (coe v0) in coe (du60 (coe (d274 (coe v1))))
name422 = "Relation.Binary.IsDecPartialOrder.PO.∼-respˡ-≈"
d422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d422 v0 v1 v2 v3 v4 v5 v6 = du422 v6
du422 ::
  T378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du422 v0
  = let v1 = d398 (coe v0) in coe (du54 (coe (d274 (coe v1))))
name426 = "Relation.Binary.IsDecPartialOrder.PO.Eq.refl"
d426 :: T378 -> AgdaAny -> AgdaAny
d426 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d36 (coe (d274 (coe (d398 (coe v0))))))))
name428 = "Relation.Binary.IsDecPartialOrder.PO.Eq.reflexive"
d428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T378 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d428 v0 v1 v2 v3 v4 v5 v6 = du428 v6
du428 ::
  T378 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du428 v0
  = let v1 = d398 (coe v0) in
    let v2 = d274 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d36 (coe v2))) v3)
name430 = "Relation.Binary.IsDecPartialOrder.PO.Eq.sym"
d430 :: T378 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d430 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d36 (coe (d274 (coe (d398 (coe v0))))))))
name432 = "Relation.Binary.IsDecPartialOrder.PO.Eq.trans"
d432 ::
  T378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d432 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d36 (coe (d274 (coe (d398 (coe v0))))))))
name436 = "Relation.Binary.IsDecPartialOrder.Eq.isDecEquivalence"
d436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T378 -> T174
d436 v0 v1 v2 v3 v4 v5 v6 = du436 v6
du436 :: T378 -> T174
du436 v0
  = coe
      (C1313
         (coe (d36 (coe (d274 (coe (d398 (coe v0)))))))
         (coe (d400 (coe v0))))
name440 = "Relation.Binary.IsDecPartialOrder.Eq._._≟_"
d440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T378 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d440 v0 v1 v2 v3 v4 v5 v6 = du440 v6
du440 ::
  T378 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du440 v0 = coe (d400 (coe v0))
name442 = "Relation.Binary.IsDecPartialOrder.Eq._.isEquivalence"
d442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T378 -> MAlonzo.Code.Relation.Binary.Core.T402
d442 v0 v1 v2 v3 v4 v5 v6 = du442 v6
du442 :: T378 -> MAlonzo.Code.Relation.Binary.Core.T402
du442 v0 = coe (d36 (coe (d274 (coe (d398 (coe v0))))))
name444 = "Relation.Binary.IsDecPartialOrder.Eq._.refl"
d444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T378 -> AgdaAny -> AgdaAny
d444 v0 v1 v2 v3 v4 v5 v6 = du444 v6
du444 :: T378 -> AgdaAny -> AgdaAny
du444 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d36 (coe (d274 (coe (d398 (coe v0))))))))
name446 = "Relation.Binary.IsDecPartialOrder.Eq._.reflexive"
d446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T378 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d446 v0 v1 v2 v3 v4 v5 v6 = du446 v6
du446 ::
  T378 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du446 v0
  = let v1 = du436 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v1))) v2)
name448 = "Relation.Binary.IsDecPartialOrder.Eq._.sym"
d448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T378 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d448 v0 v1 v2 v3 v4 v5 v6 = du448 v6
du448 :: T378 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du448 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d36 (coe (d274 (coe (d398 (coe v0))))))))
name450 = "Relation.Binary.IsDecPartialOrder.Eq._.trans"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d450 v0 v1 v2 v3 v4 v5 v6 = du450 v6
du450 ::
  T378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du450 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d36 (coe (d274 (coe (d398 (coe v0))))))))
name458 = "Relation.Binary.DecPoset"
d458 a0 a1 a2 = ()
newtype T458 = C2893 T378
name474 = "Relation.Binary.DecPoset.Carrier"
d474 :: T458 -> ()
d474 = erased
name476 = "Relation.Binary.DecPoset._≈_"
d476 :: T458 -> AgdaAny -> AgdaAny -> ()
d476 = erased
name478 = "Relation.Binary.DecPoset._≤_"
d478 :: T458 -> AgdaAny -> AgdaAny -> ()
d478 = erased
name480 = "Relation.Binary.DecPoset.isDecPartialOrder"
d480 :: T458 -> T378
d480 v0
  = case coe v0 of
      C2893 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name484 = "Relation.Binary.DecPoset.DPO._≟_"
d484 ::
  T458 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d484 v0 = coe (d400 (coe (d480 (coe v0))))
name486 = "Relation.Binary.DecPoset.DPO._≤?_"
d486 ::
  T458 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d486 v0 = coe (d402 (coe (d480 (coe v0))))
name488 = "Relation.Binary.DecPoset.DPO.antisym"
d488 :: T458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d488 v0 = coe (d276 (coe (d398 (coe (d480 (coe v0))))))
name490 = "Relation.Binary.DecPoset.DPO.isEquivalence"
d490 :: T458 -> MAlonzo.Code.Relation.Binary.Core.T402
d490 v0 = coe (d36 (coe (d274 (coe (d398 (coe (d480 (coe v0))))))))
name492 = "Relation.Binary.DecPoset.DPO.isPartialOrder"
d492 :: T458 -> T256
d492 v0 = coe (d398 (coe (d480 (coe v0))))
name494 = "Relation.Binary.DecPoset.DPO.isPreorder"
d494 :: T458 -> T16
d494 v0 = coe (d274 (coe (d398 (coe (d480 (coe v0))))))
name496 = "Relation.Binary.DecPoset.DPO.refl"
d496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T458 -> AgdaAny -> AgdaAny
d496 v0 v1 v2 v3 = du496 v3
du496 :: T458 -> AgdaAny -> AgdaAny
du496 v0
  = let v1 = d480 (coe v0) in
    let v2 = d398 (coe v1) in coe (du52 (coe (d274 (coe v2))))
name498 = "Relation.Binary.DecPoset.DPO.reflexive"
d498 :: T458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d498 v0 = coe (d38 (coe (d274 (coe (d398 (coe (d480 (coe v0))))))))
name500 = "Relation.Binary.DecPoset.DPO.trans"
d500 ::
  T458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d500 v0 = coe (d40 (coe (d274 (coe (d398 (coe (d480 (coe v0))))))))
name502 = "Relation.Binary.DecPoset.DPO.∼-resp-≈"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d502 v0 v1 v2 v3 = du502 v3
du502 :: T458 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du502 v0
  = let v1 = d480 (coe v0) in
    let v2 = d398 (coe v1) in coe (du66 (coe (d274 (coe v2))))
name504 = "Relation.Binary.DecPoset.DPO.∼-respʳ-≈"
d504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d504 v0 v1 v2 v3 = du504 v3
du504 ::
  T458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du504 v0
  = let v1 = d480 (coe v0) in
    let v2 = d398 (coe v1) in coe (du60 (coe (d274 (coe v2))))
name506 = "Relation.Binary.DecPoset.DPO.∼-respˡ-≈"
d506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d506 v0 v1 v2 v3 = du506 v3
du506 ::
  T458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du506 v0
  = let v1 = d480 (coe v0) in
    let v2 = d398 (coe v1) in coe (du54 (coe (d274 (coe v2))))
name510 = "Relation.Binary.DecPoset.DPO.Eq._≟_"
d510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d510 v0 v1 v2 v3 = du510 v3
du510 ::
  T458 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du510 v0 = let v1 = d480 (coe v0) in coe (d400 (coe v1))
name512 = "Relation.Binary.DecPoset.DPO.Eq.isDecEquivalence"
d512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T458 -> T174
d512 v0 v1 v2 v3 = du512 v3
du512 :: T458 -> T174
du512 v0 = coe (du436 (coe (d480 (coe v0))))
name514 = "Relation.Binary.DecPoset.DPO.Eq.isEquivalence"
d514 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 -> MAlonzo.Code.Relation.Binary.Core.T402
d514 v0 v1 v2 v3 = du514 v3
du514 :: T458 -> MAlonzo.Code.Relation.Binary.Core.T402
du514 v0
  = let v1 = d480 (coe v0) in
    coe (d36 (coe (d274 (coe (d398 (coe v1))))))
name516 = "Relation.Binary.DecPoset.DPO.Eq.refl"
d516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T458 -> AgdaAny -> AgdaAny
d516 v0 v1 v2 v3 = du516 v3
du516 :: T458 -> AgdaAny -> AgdaAny
du516 v0
  = let v1 = d480 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d36 (coe (d274 (coe (d398 (coe v1))))))))
name518 = "Relation.Binary.DecPoset.DPO.Eq.reflexive"
d518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d518 v0 v1 v2 v3 = du518 v3
du518 ::
  T458 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du518 v0
  = let v1 = d480 (coe v0) in
    let v2 = du436 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v2))) v3)
name520 = "Relation.Binary.DecPoset.DPO.Eq.sym"
d520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d520 v0 v1 v2 v3 = du520 v3
du520 :: T458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du520 v0
  = let v1 = d480 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d36 (coe (d274 (coe (d398 (coe v1))))))))
name522 = "Relation.Binary.DecPoset.DPO.Eq.trans"
d522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d522 v0 v1 v2 v3 = du522 v3
du522 ::
  T458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du522 v0
  = let v1 = d480 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d36 (coe (d274 (coe (d398 (coe v1))))))))
name524 = "Relation.Binary.DecPoset.poset"
d524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T458 -> T310
d524 v0 v1 v2 v3 = du524 v3
du524 :: T458 -> T310
du524 v0
  = coe
      (\ v1 v2 v3 v4 -> C1973 v4) erased erased erased
      (d398 (coe (d480 (coe v0))))
name528 = "Relation.Binary.DecPoset._.preorder"
d528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T458 -> T74
d528 v0 v1 v2 v3 = du528 v3
du528 :: T458 -> T74
du528 v0 = coe (du364 (coe (du524 (coe v0))))
name532 = "Relation.Binary.DecPoset.Eq.decSetoid"
d532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T458 -> T206
d532 v0 v1 v2 v3 = du532 v3
du532 :: T458 -> T206
du532 v0
  = coe
      (\ v1 v2 v3 -> C1455 v3) erased erased
      (du436 (coe (d480 (coe v0))))
name536 = "Relation.Binary.DecPoset.Eq._._≈_"
d536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T458 -> AgdaAny -> AgdaAny -> ()
d536 = erased
name538 = "Relation.Binary.DecPoset.Eq._._≟_"
d538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d538 v0 v1 v2 v3 = du538 v3
du538 ::
  T458 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du538 v0 = coe (d400 (coe (d480 (coe v0))))
name540 = "Relation.Binary.DecPoset.Eq._.Carrier"
d540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T458 -> ()
d540 = erased
name542 = "Relation.Binary.DecPoset.Eq._.isDecEquivalence"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T458 -> T174
d542 v0 v1 v2 v3 = du542 v3
du542 :: T458 -> T174
du542 v0 = coe (du436 (coe (d480 (coe v0))))
name544 = "Relation.Binary.DecPoset.Eq._.isEquivalence"
d544 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 -> MAlonzo.Code.Relation.Binary.Core.T402
d544 v0 v1 v2 v3 = du544 v3
du544 :: T458 -> MAlonzo.Code.Relation.Binary.Core.T402
du544 v0
  = coe (d36 (coe (d274 (coe (d398 (coe (d480 (coe v0))))))))
name546 = "Relation.Binary.DecPoset.Eq._.preorder"
d546 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T458 -> T74
d546 v0 v1 v2 v3 = du546 v3
du546 :: T458 -> T74
du546 v0
  = let v1 = du532 (coe v0) in coe (du164 (coe (du238 (coe v1))))
name548 = "Relation.Binary.DecPoset.Eq._.refl"
d548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T458 -> AgdaAny -> AgdaAny
d548 v0 v1 v2 v3 = du548 v3
du548 :: T458 -> AgdaAny -> AgdaAny
du548 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d36 (coe (d274 (coe (d398 (coe (d480 (coe v0))))))))))
name550 = "Relation.Binary.DecPoset.Eq._.reflexive"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d550 v0 v1 v2 v3 = du550 v3
du550 ::
  T458 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du550 v0
  = let v1 = du532 (coe v0) in
    let v2 = d222 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v2))) v3)
name552 = "Relation.Binary.DecPoset.Eq._.setoid"
d552 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T458 -> T128
d552 v0 v1 v2 v3 = du552 v3
du552 :: T458 -> T128
du552 v0 = coe (du238 (coe (du532 (coe v0))))
name554 = "Relation.Binary.DecPoset.Eq._.sym"
d554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d554 v0 v1 v2 v3 = du554 v3
du554 :: T458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du554 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d36 (coe (d274 (coe (d398 (coe (d480 (coe v0))))))))))
name556 = "Relation.Binary.DecPoset.Eq._.trans"
d556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d556 v0 v1 v2 v3 = du556 v3
du556 ::
  T458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du556 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d36 (coe (d274 (coe (d398 (coe (d480 (coe v0))))))))))
name570 = "Relation.Binary.IsStrictPartialOrder"
d570 a0 a1 a2 a3 a4 a5 = ()
data T570
  = C3423 MAlonzo.Code.Relation.Binary.Core.T402
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Agda.Builtin.Sigma.T14
name592 = "Relation.Binary.IsStrictPartialOrder.isEquivalence"
d592 :: T570 -> MAlonzo.Code.Relation.Binary.Core.T402
d592 v0
  = case coe v0 of
      C3423 v1 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name594 = "Relation.Binary.IsStrictPartialOrder.irrefl"
d594 ::
  T570 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d594 = erased
name596 = "Relation.Binary.IsStrictPartialOrder.trans"
d596 ::
  T570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d596 v0
  = case coe v0 of
      C3423 v1 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name598 = "Relation.Binary.IsStrictPartialOrder.<-resp-≈"
d598 :: T570 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d598 v0
  = case coe v0 of
      C3423 v1 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name602 = "Relation.Binary.IsStrictPartialOrder.Eq.refl"
d602 :: T570 -> AgdaAny -> AgdaAny
d602 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414 (coe (d592 (coe v0))))
name604 = "Relation.Binary.IsStrictPartialOrder.Eq.reflexive"
d604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T570 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d604 v0 v1 v2 v3 v4 v5 v6 = du604 v6
du604 ::
  T570 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du604 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d592 (coe v0))) v1)
name606 = "Relation.Binary.IsStrictPartialOrder.Eq.sym"
d606 :: T570 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d606 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416 (coe (d592 (coe v0))))
name608 = "Relation.Binary.IsStrictPartialOrder.Eq.trans"
d608 ::
  T570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d608 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418 (coe (d592 (coe v0))))
name610 = "Relation.Binary.IsStrictPartialOrder.asym"
d610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T570 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d610 = erased
name616 = "Relation.Binary.IsStrictPartialOrder.<-respʳ-≈"
d616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d616 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du616 v6 v7 v8 v9
du616 ::
  T570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du616 v0 v1 v2 v3
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (d598 (coe v0)) v1 v2 v3
name618 = "Relation.Binary.IsStrictPartialOrder.<-respˡ-≈"
d618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d618 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du618 v6 v7 v8 v9
du618 ::
  T570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du618 v0 v1 v2 v3
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (d598 (coe v0)) v1 v2 v3
name620 = "Relation.Binary.IsStrictPartialOrder.asymmetric"
d620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T570 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d620 = erased
name628 = "Relation.Binary.StrictPartialOrder"
d628 a0 a1 a2 = ()
newtype T628 = C4141 T570
name644 = "Relation.Binary.StrictPartialOrder.Carrier"
d644 :: T628 -> ()
d644 = erased
name646 = "Relation.Binary.StrictPartialOrder._≈_"
d646 :: T628 -> AgdaAny -> AgdaAny -> ()
d646 = erased
name648 = "Relation.Binary.StrictPartialOrder._<_"
d648 :: T628 -> AgdaAny -> AgdaAny -> ()
d648 = erased
name650 = "Relation.Binary.StrictPartialOrder.isStrictPartialOrder"
d650 :: T628 -> T570
d650 v0
  = case coe v0 of
      C4141 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name654 = "Relation.Binary.StrictPartialOrder._.<-resp-≈"
d654 :: T628 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d654 v0 = coe (d598 (coe (d650 (coe v0))))
name656 = "Relation.Binary.StrictPartialOrder._.<-respʳ-≈"
d656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T628 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d656 v0 v1 v2 v3 = du656 v3
du656 ::
  T628 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du656 v0
  = let v1 = d650 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (d598 (coe v1)) v2 v3 v4)
name658 = "Relation.Binary.StrictPartialOrder._.<-respˡ-≈"
d658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T628 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d658 v0 v1 v2 v3 = du658 v3
du658 ::
  T628 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du658 v0
  = let v1 = d650 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (d598 (coe v1)) v2 v3 v4)
name660 = "Relation.Binary.StrictPartialOrder._.asym"
d660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T628 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d660 = erased
name662 = "Relation.Binary.StrictPartialOrder._.asymmetric"
d662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T628 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d662 = erased
name664 = "Relation.Binary.StrictPartialOrder._.irrefl"
d664 ::
  T628 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d664 = erased
name666 = "Relation.Binary.StrictPartialOrder._.isEquivalence"
d666 :: T628 -> MAlonzo.Code.Relation.Binary.Core.T402
d666 v0 = coe (d592 (coe (d650 (coe v0))))
name668 = "Relation.Binary.StrictPartialOrder._.trans"
d668 ::
  T628 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d668 v0 = coe (d596 (coe (d650 (coe v0))))
name672 = "Relation.Binary.StrictPartialOrder._.Eq.refl"
d672 :: T628 -> AgdaAny -> AgdaAny
d672 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d592 (coe (d650 (coe v0))))))
name674 = "Relation.Binary.StrictPartialOrder._.Eq.reflexive"
d674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T628 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d674 v0 v1 v2 v3 = du674 v3
du674 ::
  T628 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du674 v0
  = let v1 = d650 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d592 (coe v1))) v2)
name676 = "Relation.Binary.StrictPartialOrder._.Eq.sym"
d676 :: T628 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d676 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d592 (coe (d650 (coe v0))))))
name678 = "Relation.Binary.StrictPartialOrder._.Eq.trans"
d678 ::
  T628 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d678 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d592 (coe (d650 (coe v0))))))
name692 = "Relation.Binary.IsDecStrictPartialOrder"
d692 a0 a1 a2 a3 a4 a5 = ()
data T692
  = C4393 T570
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14)
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14)
name712
  = "Relation.Binary.IsDecStrictPartialOrder.isStrictPartialOrder"
d712 :: T692 -> T570
d712 v0
  = case coe v0 of
      C4393 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name714 = "Relation.Binary.IsDecStrictPartialOrder._≟_"
d714 ::
  T692 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d714 v0
  = case coe v0 of
      C4393 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name716 = "Relation.Binary.IsDecStrictPartialOrder._<?_"
d716 ::
  T692 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d716 v0
  = case coe v0 of
      C4393 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name720 = "Relation.Binary.IsDecStrictPartialOrder.SPO.<-resp-≈"
d720 :: T692 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d720 v0 = coe (d598 (coe (d712 (coe v0))))
name722 = "Relation.Binary.IsDecStrictPartialOrder.SPO.<-respʳ-≈"
d722 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d722 v0 v1 v2 v3 v4 v5 v6 = du722 v6
du722 ::
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du722 v0
  = let v1 = d712 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (d598 (coe v1)) v2 v3 v4)
name724 = "Relation.Binary.IsDecStrictPartialOrder.SPO.<-respˡ-≈"
d724 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d724 v0 v1 v2 v3 v4 v5 v6 = du724 v6
du724 ::
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du724 v0
  = let v1 = d712 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (d598 (coe v1)) v2 v3 v4)
name726 = "Relation.Binary.IsDecStrictPartialOrder.SPO.asym"
d726 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T692 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d726 = erased
name728 = "Relation.Binary.IsDecStrictPartialOrder.SPO.asymmetric"
d728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T692 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d728 = erased
name730 = "Relation.Binary.IsDecStrictPartialOrder.SPO.irrefl"
d730 ::
  T692 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d730 = erased
name732
  = "Relation.Binary.IsDecStrictPartialOrder.SPO.isEquivalence"
d732 :: T692 -> MAlonzo.Code.Relation.Binary.Core.T402
d732 v0 = coe (d592 (coe (d712 (coe v0))))
name734 = "Relation.Binary.IsDecStrictPartialOrder.SPO.trans"
d734 ::
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d734 v0 = coe (d596 (coe (d712 (coe v0))))
name738 = "Relation.Binary.IsDecStrictPartialOrder.SPO.Eq.refl"
d738 :: T692 -> AgdaAny -> AgdaAny
d738 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d592 (coe (d712 (coe v0))))))
name740
  = "Relation.Binary.IsDecStrictPartialOrder.SPO.Eq.reflexive"
d740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T692 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d740 v0 v1 v2 v3 v4 v5 v6 = du740 v6
du740 ::
  T692 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du740 v0
  = let v1 = d712 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d592 (coe v1))) v2)
name742 = "Relation.Binary.IsDecStrictPartialOrder.SPO.Eq.sym"
d742 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d742 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d592 (coe (d712 (coe v0))))))
name744 = "Relation.Binary.IsDecStrictPartialOrder.SPO.Eq.trans"
d744 ::
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d744 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d592 (coe (d712 (coe v0))))))
name748
  = "Relation.Binary.IsDecStrictPartialOrder.Eq.isDecEquivalence"
d748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T692 -> T174
d748 v0 v1 v2 v3 v4 v5 v6 = du748 v6
du748 :: T692 -> T174
du748 v0
  = coe
      (C1313 (coe (d592 (coe (d712 (coe v0))))) (coe (d714 (coe v0))))
name752 = "Relation.Binary.IsDecStrictPartialOrder.Eq._._≟_"
d752 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T692 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d752 v0 v1 v2 v3 v4 v5 v6 = du752 v6
du752 ::
  T692 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du752 v0 = coe (d714 (coe v0))
name754
  = "Relation.Binary.IsDecStrictPartialOrder.Eq._.isEquivalence"
d754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T692 -> MAlonzo.Code.Relation.Binary.Core.T402
d754 v0 v1 v2 v3 v4 v5 v6 = du754 v6
du754 :: T692 -> MAlonzo.Code.Relation.Binary.Core.T402
du754 v0 = coe (d592 (coe (d712 (coe v0))))
name756 = "Relation.Binary.IsDecStrictPartialOrder.Eq._.refl"
d756 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T692 -> AgdaAny -> AgdaAny
d756 v0 v1 v2 v3 v4 v5 v6 = du756 v6
du756 :: T692 -> AgdaAny -> AgdaAny
du756 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d592 (coe (d712 (coe v0))))))
name758 = "Relation.Binary.IsDecStrictPartialOrder.Eq._.reflexive"
d758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T692 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d758 v0 v1 v2 v3 v4 v5 v6 = du758 v6
du758 ::
  T692 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du758 v0
  = let v1 = du748 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v1))) v2)
name760 = "Relation.Binary.IsDecStrictPartialOrder.Eq._.sym"
d760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d760 v0 v1 v2 v3 v4 v5 v6 = du760 v6
du760 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du760 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d592 (coe (d712 (coe v0))))))
name762 = "Relation.Binary.IsDecStrictPartialOrder.Eq._.trans"
d762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d762 v0 v1 v2 v3 v4 v5 v6 = du762 v6
du762 ::
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du762 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d592 (coe (d712 (coe v0))))))
name770 = "Relation.Binary.DecStrictPartialOrder"
d770 a0 a1 a2 = ()
newtype T770 = C4965 T692
name786 = "Relation.Binary.DecStrictPartialOrder.Carrier"
d786 :: T770 -> ()
d786 = erased
name788 = "Relation.Binary.DecStrictPartialOrder._≈_"
d788 :: T770 -> AgdaAny -> AgdaAny -> ()
d788 = erased
name790 = "Relation.Binary.DecStrictPartialOrder._<_"
d790 :: T770 -> AgdaAny -> AgdaAny -> ()
d790 = erased
name792
  = "Relation.Binary.DecStrictPartialOrder.isDecStrictPartialOrder"
d792 :: T770 -> T692
d792 v0
  = case coe v0 of
      C4965 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name796 = "Relation.Binary.DecStrictPartialOrder.DSPO._<?_"
d796 ::
  T770 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d796 v0 = coe (d716 (coe (d792 (coe v0))))
name798 = "Relation.Binary.DecStrictPartialOrder.DSPO._≟_"
d798 ::
  T770 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d798 v0 = coe (d714 (coe (d792 (coe v0))))
name800 = "Relation.Binary.DecStrictPartialOrder.DSPO.<-resp-≈"
d800 :: T770 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d800 v0 = coe (d598 (coe (d712 (coe (d792 (coe v0))))))
name802 = "Relation.Binary.DecStrictPartialOrder.DSPO.<-respʳ-≈"
d802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d802 v0 v1 v2 v3 = du802 v3
du802 ::
  T770 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du802 v0
  = let v1 = d792 (coe v0) in
    let v2 = d712 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (d598 (coe v2)) v3 v4 v5)
name804 = "Relation.Binary.DecStrictPartialOrder.DSPO.<-respˡ-≈"
d804 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d804 v0 v1 v2 v3 = du804 v3
du804 ::
  T770 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du804 v0
  = let v1 = d792 (coe v0) in
    let v2 = d712 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (d598 (coe v2)) v3 v4 v5)
name806 = "Relation.Binary.DecStrictPartialOrder.DSPO.asym"
d806 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d806 = erased
name808 = "Relation.Binary.DecStrictPartialOrder.DSPO.asymmetric"
d808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d808 = erased
name810 = "Relation.Binary.DecStrictPartialOrder.DSPO.irrefl"
d810 ::
  T770 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d810 = erased
name812
  = "Relation.Binary.DecStrictPartialOrder.DSPO.isEquivalence"
d812 :: T770 -> MAlonzo.Code.Relation.Binary.Core.T402
d812 v0 = coe (d592 (coe (d712 (coe (d792 (coe v0))))))
name814
  = "Relation.Binary.DecStrictPartialOrder.DSPO.isStrictPartialOrder"
d814 :: T770 -> T570
d814 v0 = coe (d712 (coe (d792 (coe v0))))
name816 = "Relation.Binary.DecStrictPartialOrder.DSPO.trans"
d816 ::
  T770 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d816 v0 = coe (d596 (coe (d712 (coe (d792 (coe v0))))))
name820 = "Relation.Binary.DecStrictPartialOrder.DSPO.Eq._≟_"
d820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d820 v0 v1 v2 v3 = du820 v3
du820 ::
  T770 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du820 v0 = let v1 = d792 (coe v0) in coe (d714 (coe v1))
name822
  = "Relation.Binary.DecStrictPartialOrder.DSPO.Eq.isDecEquivalence"
d822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T770 -> T174
d822 v0 v1 v2 v3 = du822 v3
du822 :: T770 -> T174
du822 v0 = coe (du748 (coe (d792 (coe v0))))
name824
  = "Relation.Binary.DecStrictPartialOrder.DSPO.Eq.isEquivalence"
d824 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 -> MAlonzo.Code.Relation.Binary.Core.T402
d824 v0 v1 v2 v3 = du824 v3
du824 :: T770 -> MAlonzo.Code.Relation.Binary.Core.T402
du824 v0
  = let v1 = d792 (coe v0) in coe (d592 (coe (d712 (coe v1))))
name826 = "Relation.Binary.DecStrictPartialOrder.DSPO.Eq.refl"
d826 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T770 -> AgdaAny -> AgdaAny
d826 v0 v1 v2 v3 = du826 v3
du826 :: T770 -> AgdaAny -> AgdaAny
du826 v0
  = let v1 = d792 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d592 (coe (d712 (coe v1))))))
name828 = "Relation.Binary.DecStrictPartialOrder.DSPO.Eq.reflexive"
d828 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d828 v0 v1 v2 v3 = du828 v3
du828 ::
  T770 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du828 v0
  = let v1 = d792 (coe v0) in
    let v2 = du748 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v2))) v3)
name830 = "Relation.Binary.DecStrictPartialOrder.DSPO.Eq.sym"
d830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d830 v0 v1 v2 v3 = du830 v3
du830 :: T770 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du830 v0
  = let v1 = d792 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d592 (coe (d712 (coe v1))))))
name832 = "Relation.Binary.DecStrictPartialOrder.DSPO.Eq.trans"
d832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d832 v0 v1 v2 v3 = du832 v3
du832 ::
  T770 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du832 v0
  = let v1 = d792 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d592 (coe (d712 (coe v1))))))
name834
  = "Relation.Binary.DecStrictPartialOrder.strictPartialOrder"
d834 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T770 -> T628
d834 v0 v1 v2 v3 = du834 v3
du834 :: T770 -> T628
du834 v0
  = coe
      (\ v1 v2 v3 v4 -> C4141 v4) erased erased erased
      (d712 (coe (d792 (coe v0))))
name838 = "Relation.Binary.DecStrictPartialOrder.Eq.decSetoid"
d838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T770 -> T206
d838 v0 v1 v2 v3 = du838 v3
du838 :: T770 -> T206
du838 v0
  = coe
      (\ v1 v2 v3 -> C1455 v3) erased erased
      (du748 (coe (d792 (coe v0))))
name842 = "Relation.Binary.DecStrictPartialOrder.Eq._._≈_"
d842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T770 -> AgdaAny -> AgdaAny -> ()
d842 = erased
name844 = "Relation.Binary.DecStrictPartialOrder.Eq._._≟_"
d844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d844 v0 v1 v2 v3 = du844 v3
du844 ::
  T770 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du844 v0 = coe (d714 (coe (d792 (coe v0))))
name846 = "Relation.Binary.DecStrictPartialOrder.Eq._.Carrier"
d846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T770 -> ()
d846 = erased
name848
  = "Relation.Binary.DecStrictPartialOrder.Eq._.isDecEquivalence"
d848 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T770 -> T174
d848 v0 v1 v2 v3 = du848 v3
du848 :: T770 -> T174
du848 v0 = coe (du748 (coe (d792 (coe v0))))
name850
  = "Relation.Binary.DecStrictPartialOrder.Eq._.isEquivalence"
d850 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 -> MAlonzo.Code.Relation.Binary.Core.T402
d850 v0 v1 v2 v3 = du850 v3
du850 :: T770 -> MAlonzo.Code.Relation.Binary.Core.T402
du850 v0 = coe (d592 (coe (d712 (coe (d792 (coe v0))))))
name852 = "Relation.Binary.DecStrictPartialOrder.Eq._.preorder"
d852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T770 -> T74
d852 v0 v1 v2 v3 = du852 v3
du852 :: T770 -> T74
du852 v0
  = let v1 = du838 (coe v0) in coe (du164 (coe (du238 (coe v1))))
name854 = "Relation.Binary.DecStrictPartialOrder.Eq._.refl"
d854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T770 -> AgdaAny -> AgdaAny
d854 v0 v1 v2 v3 = du854 v3
du854 :: T770 -> AgdaAny -> AgdaAny
du854 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d592 (coe (d712 (coe (d792 (coe v0))))))))
name856 = "Relation.Binary.DecStrictPartialOrder.Eq._.reflexive"
d856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d856 v0 v1 v2 v3 = du856 v3
du856 ::
  T770 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du856 v0
  = let v1 = du838 (coe v0) in
    let v2 = d222 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v2))) v3)
name858 = "Relation.Binary.DecStrictPartialOrder.Eq._.setoid"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T770 -> T128
d858 v0 v1 v2 v3 = du858 v3
du858 :: T770 -> T128
du858 v0 = coe (du238 (coe (du838 (coe v0))))
name860 = "Relation.Binary.DecStrictPartialOrder.Eq._.sym"
d860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d860 v0 v1 v2 v3 = du860 v3
du860 :: T770 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du860 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d592 (coe (d712 (coe (d792 (coe v0))))))))
name862 = "Relation.Binary.DecStrictPartialOrder.Eq._.trans"
d862 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T770 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d862 v0 v1 v2 v3 = du862 v3
du862 ::
  T770 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du862 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d592 (coe (d712 (coe (d792 (coe v0))))))))
name876 = "Relation.Binary.IsTotalOrder"
d876 a0 a1 a2 a3 a4 a5 = ()
data T876
  = C5461 T256 (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30)
name894 = "Relation.Binary.IsTotalOrder.isPartialOrder"
d894 :: T876 -> T256
d894 v0
  = case coe v0 of
      C5461 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name896 = "Relation.Binary.IsTotalOrder.total"
d896 ::
  T876 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d896 v0
  = case coe v0 of
      C5461 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name900 = "Relation.Binary.IsTotalOrder._.antisym"
d900 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d900 v0 = coe (d276 (coe (d894 (coe v0))))
name902 = "Relation.Binary.IsTotalOrder._.isEquivalence"
d902 :: T876 -> MAlonzo.Code.Relation.Binary.Core.T402
d902 v0 = coe (d36 (coe (d274 (coe (d894 (coe v0))))))
name904 = "Relation.Binary.IsTotalOrder._.isPreorder"
d904 :: T876 -> T16
d904 v0 = coe (d274 (coe (d894 (coe v0))))
name906 = "Relation.Binary.IsTotalOrder._.refl"
d906 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T876 -> AgdaAny -> AgdaAny
d906 v0 v1 v2 v3 v4 v5 v6 = du906 v6
du906 :: T876 -> AgdaAny -> AgdaAny
du906 v0
  = let v1 = d894 (coe v0) in coe (du52 (coe (d274 (coe v1))))
name908 = "Relation.Binary.IsTotalOrder._.reflexive"
d908 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d908 v0 = coe (d38 (coe (d274 (coe (d894 (coe v0))))))
name910 = "Relation.Binary.IsTotalOrder._.trans"
d910 ::
  T876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d910 v0 = coe (d40 (coe (d274 (coe (d894 (coe v0))))))
name912 = "Relation.Binary.IsTotalOrder._.∼-resp-≈"
d912 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T876 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d912 v0 v1 v2 v3 v4 v5 v6 = du912 v6
du912 :: T876 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du912 v0
  = let v1 = d894 (coe v0) in coe (du66 (coe (d274 (coe v1))))
name914 = "Relation.Binary.IsTotalOrder._.∼-respʳ-≈"
d914 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d914 v0 v1 v2 v3 v4 v5 v6 = du914 v6
du914 ::
  T876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du914 v0
  = let v1 = d894 (coe v0) in coe (du60 (coe (d274 (coe v1))))
name916 = "Relation.Binary.IsTotalOrder._.∼-respˡ-≈"
d916 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d916 v0 v1 v2 v3 v4 v5 v6 = du916 v6
du916 ::
  T876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du916 v0
  = let v1 = d894 (coe v0) in coe (du54 (coe (d274 (coe v1))))
name920 = "Relation.Binary.IsTotalOrder._.Eq.refl"
d920 :: T876 -> AgdaAny -> AgdaAny
d920 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d36 (coe (d274 (coe (d894 (coe v0))))))))
name922 = "Relation.Binary.IsTotalOrder._.Eq.reflexive"
d922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T876 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d922 v0 v1 v2 v3 v4 v5 v6 = du922 v6
du922 ::
  T876 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du922 v0
  = let v1 = d894 (coe v0) in
    let v2 = d274 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d36 (coe v2))) v3)
name924 = "Relation.Binary.IsTotalOrder._.Eq.sym"
d924 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d924 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d36 (coe (d274 (coe (d894 (coe v0))))))))
name926 = "Relation.Binary.IsTotalOrder._.Eq.trans"
d926 ::
  T876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d926 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d36 (coe (d274 (coe (d894 (coe v0))))))))
name934 = "Relation.Binary.TotalOrder"
d934 a0 a1 a2 = ()
newtype T934 = C5847 T876
name950 = "Relation.Binary.TotalOrder.Carrier"
d950 :: T934 -> ()
d950 = erased
name952 = "Relation.Binary.TotalOrder._≈_"
d952 :: T934 -> AgdaAny -> AgdaAny -> ()
d952 = erased
name954 = "Relation.Binary.TotalOrder._≤_"
d954 :: T934 -> AgdaAny -> AgdaAny -> ()
d954 = erased
name956 = "Relation.Binary.TotalOrder.isTotalOrder"
d956 :: T934 -> T876
d956 v0
  = case coe v0 of
      C5847 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name960 = "Relation.Binary.TotalOrder._.antisym"
d960 :: T934 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d960 v0 = coe (d276 (coe (d894 (coe (d956 (coe v0))))))
name962 = "Relation.Binary.TotalOrder._.isEquivalence"
d962 :: T934 -> MAlonzo.Code.Relation.Binary.Core.T402
d962 v0 = coe (d36 (coe (d274 (coe (d894 (coe (d956 (coe v0))))))))
name964 = "Relation.Binary.TotalOrder._.isPartialOrder"
d964 :: T934 -> T256
d964 v0 = coe (d894 (coe (d956 (coe v0))))
name966 = "Relation.Binary.TotalOrder._.isPreorder"
d966 :: T934 -> T16
d966 v0 = coe (d274 (coe (d894 (coe (d956 (coe v0))))))
name968 = "Relation.Binary.TotalOrder._.refl"
d968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T934 -> AgdaAny -> AgdaAny
d968 v0 v1 v2 v3 = du968 v3
du968 :: T934 -> AgdaAny -> AgdaAny
du968 v0
  = let v1 = d956 (coe v0) in
    let v2 = d894 (coe v1) in coe (du52 (coe (d274 (coe v2))))
name970 = "Relation.Binary.TotalOrder._.reflexive"
d970 :: T934 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d970 v0 = coe (d38 (coe (d274 (coe (d894 (coe (d956 (coe v0))))))))
name972 = "Relation.Binary.TotalOrder._.total"
d972 ::
  T934 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d972 v0 = coe (d896 (coe (d956 (coe v0))))
name974 = "Relation.Binary.TotalOrder._.trans"
d974 ::
  T934 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d974 v0 = coe (d40 (coe (d274 (coe (d894 (coe (d956 (coe v0))))))))
name976 = "Relation.Binary.TotalOrder._.∼-resp-≈"
d976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T934 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d976 v0 v1 v2 v3 = du976 v3
du976 :: T934 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du976 v0
  = let v1 = d956 (coe v0) in
    let v2 = d894 (coe v1) in coe (du66 (coe (d274 (coe v2))))
name978 = "Relation.Binary.TotalOrder._.∼-respʳ-≈"
d978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T934 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d978 v0 v1 v2 v3 = du978 v3
du978 ::
  T934 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du978 v0
  = let v1 = d956 (coe v0) in
    let v2 = d894 (coe v1) in coe (du60 (coe (d274 (coe v2))))
name980 = "Relation.Binary.TotalOrder._.∼-respˡ-≈"
d980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T934 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d980 v0 v1 v2 v3 = du980 v3
du980 ::
  T934 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du980 v0
  = let v1 = d956 (coe v0) in
    let v2 = d894 (coe v1) in coe (du54 (coe (d274 (coe v2))))
name984 = "Relation.Binary.TotalOrder._.Eq.refl"
d984 :: T934 -> AgdaAny -> AgdaAny
d984 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d36 (coe (d274 (coe (d894 (coe (d956 (coe v0))))))))))
name986 = "Relation.Binary.TotalOrder._.Eq.reflexive"
d986 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T934 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d986 v0 v1 v2 v3 = du986 v3
du986 ::
  T934 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du986 v0
  = let v1 = d956 (coe v0) in
    let v2 = d894 (coe v1) in
    let v3 = d274 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d36 (coe v3))) v4)
name988 = "Relation.Binary.TotalOrder._.Eq.sym"
d988 :: T934 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d988 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d36 (coe (d274 (coe (d894 (coe (d956 (coe v0))))))))))
name990 = "Relation.Binary.TotalOrder._.Eq.trans"
d990 ::
  T934 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d990 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d36 (coe (d274 (coe (d894 (coe (d956 (coe v0))))))))))
name992 = "Relation.Binary.TotalOrder.poset"
d992 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T934 -> T310
d992 v0 v1 v2 v3 = du992 v3
du992 :: T934 -> T310
du992 v0
  = coe
      (\ v1 v2 v3 v4 -> C1973 v4) erased erased erased
      (d894 (coe (d956 (coe v0))))
name996 = "Relation.Binary.TotalOrder._.preorder"
d996 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T934 -> T74
d996 v0 v1 v2 v3 = du996 v3
du996 :: T934 -> T74
du996 v0 = coe (du364 (coe (du992 (coe v0))))
name1010 = "Relation.Binary.IsDecTotalOrder"
d1010 a0 a1 a2 a3 a4 a5 = ()
data T1010
  = C6205 T876
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14)
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14)
name1030 = "Relation.Binary.IsDecTotalOrder.isTotalOrder"
d1030 :: T1010 -> T876
d1030 v0
  = case coe v0 of
      C6205 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1032 = "Relation.Binary.IsDecTotalOrder._≟_"
d1032 ::
  T1010 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1032 v0
  = case coe v0 of
      C6205 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1034 = "Relation.Binary.IsDecTotalOrder._≤?_"
d1034 ::
  T1010 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1034 v0
  = case coe v0 of
      C6205 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1038 = "Relation.Binary.IsDecTotalOrder._.antisym"
d1038 ::
  T1010 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1038 v0 = coe (d276 (coe (d894 (coe (d1030 (coe v0))))))
name1040 = "Relation.Binary.IsDecTotalOrder._.isEquivalence"
d1040 :: T1010 -> MAlonzo.Code.Relation.Binary.Core.T402
d1040 v0
  = coe (d36 (coe (d274 (coe (d894 (coe (d1030 (coe v0))))))))
name1042 = "Relation.Binary.IsDecTotalOrder._.isPartialOrder"
d1042 :: T1010 -> T256
d1042 v0 = coe (d894 (coe (d1030 (coe v0))))
name1044 = "Relation.Binary.IsDecTotalOrder._.isPreorder"
d1044 :: T1010 -> T16
d1044 v0 = coe (d274 (coe (d894 (coe (d1030 (coe v0))))))
name1046 = "Relation.Binary.IsDecTotalOrder._.refl"
d1046 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T1010 -> AgdaAny -> AgdaAny
d1046 v0 v1 v2 v3 v4 v5 v6 = du1046 v6
du1046 :: T1010 -> AgdaAny -> AgdaAny
du1046 v0
  = let v1 = d1030 (coe v0) in
    let v2 = d894 (coe v1) in coe (du52 (coe (d274 (coe v2))))
name1048 = "Relation.Binary.IsDecTotalOrder._.reflexive"
d1048 :: T1010 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1048 v0
  = coe (d38 (coe (d274 (coe (d894 (coe (d1030 (coe v0))))))))
name1050 = "Relation.Binary.IsDecTotalOrder._.total"
d1050 ::
  T1010 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d1050 v0 = coe (d896 (coe (d1030 (coe v0))))
name1052 = "Relation.Binary.IsDecTotalOrder._.trans"
d1052 ::
  T1010 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1052 v0
  = coe (d40 (coe (d274 (coe (d894 (coe (d1030 (coe v0))))))))
name1054 = "Relation.Binary.IsDecTotalOrder._.∼-resp-≈"
d1054 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1010 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1054 v0 v1 v2 v3 v4 v5 v6 = du1054 v6
du1054 :: T1010 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1054 v0
  = let v1 = d1030 (coe v0) in
    let v2 = d894 (coe v1) in coe (du66 (coe (d274 (coe v2))))
name1056 = "Relation.Binary.IsDecTotalOrder._.∼-respʳ-≈"
d1056 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1010 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1056 v0 v1 v2 v3 v4 v5 v6 = du1056 v6
du1056 ::
  T1010 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1056 v0
  = let v1 = d1030 (coe v0) in
    let v2 = d894 (coe v1) in coe (du60 (coe (d274 (coe v2))))
name1058 = "Relation.Binary.IsDecTotalOrder._.∼-respˡ-≈"
d1058 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1010 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1058 v0 v1 v2 v3 v4 v5 v6 = du1058 v6
du1058 ::
  T1010 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1058 v0
  = let v1 = d1030 (coe v0) in
    let v2 = d894 (coe v1) in coe (du54 (coe (d274 (coe v2))))
name1062 = "Relation.Binary.IsDecTotalOrder.Eq.isDecEquivalence"
d1062 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T1010 -> T174
d1062 v0 v1 v2 v3 v4 v5 v6 = du1062 v6
du1062 :: T1010 -> T174
du1062 v0
  = coe
      (C1313
         (coe (d36 (coe (d274 (coe (d894 (coe (d1030 (coe v0)))))))))
         (coe (d1032 (coe v0))))
name1066 = "Relation.Binary.IsDecTotalOrder.Eq._._≟_"
d1066 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1010 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1066 v0 v1 v2 v3 v4 v5 v6 = du1066 v6
du1066 ::
  T1010 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du1066 v0 = coe (d1032 (coe v0))
name1068 = "Relation.Binary.IsDecTotalOrder.Eq._.isEquivalence"
d1068 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1010 -> MAlonzo.Code.Relation.Binary.Core.T402
d1068 v0 v1 v2 v3 v4 v5 v6 = du1068 v6
du1068 :: T1010 -> MAlonzo.Code.Relation.Binary.Core.T402
du1068 v0
  = coe (d36 (coe (d274 (coe (d894 (coe (d1030 (coe v0))))))))
name1070 = "Relation.Binary.IsDecTotalOrder.Eq._.refl"
d1070 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T1010 -> AgdaAny -> AgdaAny
d1070 v0 v1 v2 v3 v4 v5 v6 = du1070 v6
du1070 :: T1010 -> AgdaAny -> AgdaAny
du1070 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d36 (coe (d274 (coe (d894 (coe (d1030 (coe v0))))))))))
name1072 = "Relation.Binary.IsDecTotalOrder.Eq._.reflexive"
d1072 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1010 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1072 v0 v1 v2 v3 v4 v5 v6 = du1072 v6
du1072 ::
  T1010 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1072 v0
  = let v1 = du1062 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v1))) v2)
name1074 = "Relation.Binary.IsDecTotalOrder.Eq._.sym"
d1074 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1010 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1074 v0 v1 v2 v3 v4 v5 v6 = du1074 v6
du1074 :: T1010 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1074 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d36 (coe (d274 (coe (d894 (coe (d1030 (coe v0))))))))))
name1076 = "Relation.Binary.IsDecTotalOrder.Eq._.trans"
d1076 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1010 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1076 v0 v1 v2 v3 v4 v5 v6 = du1076 v6
du1076 ::
  T1010 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1076 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d36 (coe (d274 (coe (d894 (coe (d1030 (coe v0))))))))))
name1084 = "Relation.Binary.DecTotalOrder"
d1084 a0 a1 a2 = ()
newtype T1084 = C6763 T1010
name1100 = "Relation.Binary.DecTotalOrder.Carrier"
d1100 :: T1084 -> ()
d1100 = erased
name1102 = "Relation.Binary.DecTotalOrder._≈_"
d1102 :: T1084 -> AgdaAny -> AgdaAny -> ()
d1102 = erased
name1104 = "Relation.Binary.DecTotalOrder._≤_"
d1104 :: T1084 -> AgdaAny -> AgdaAny -> ()
d1104 = erased
name1106 = "Relation.Binary.DecTotalOrder.isDecTotalOrder"
d1106 :: T1084 -> T1010
d1106 v0
  = case coe v0 of
      C6763 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1110 = "Relation.Binary.DecTotalOrder.DTO._≟_"
d1110 ::
  T1084 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1110 v0 = coe (d1032 (coe (d1106 (coe v0))))
name1112 = "Relation.Binary.DecTotalOrder.DTO._≤?_"
d1112 ::
  T1084 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1112 v0 = coe (d1034 (coe (d1106 (coe v0))))
name1114 = "Relation.Binary.DecTotalOrder.DTO.antisym"
d1114 ::
  T1084 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1114 v0
  = coe (d276 (coe (d894 (coe (d1030 (coe (d1106 (coe v0))))))))
name1116 = "Relation.Binary.DecTotalOrder.DTO.isEquivalence"
d1116 :: T1084 -> MAlonzo.Code.Relation.Binary.Core.T402
d1116 v0
  = coe
      (d36
         (coe (d274 (coe (d894 (coe (d1030 (coe (d1106 (coe v0))))))))))
name1118 = "Relation.Binary.DecTotalOrder.DTO.isPartialOrder"
d1118 :: T1084 -> T256
d1118 v0 = coe (d894 (coe (d1030 (coe (d1106 (coe v0))))))
name1120 = "Relation.Binary.DecTotalOrder.DTO.isPreorder"
d1120 :: T1084 -> T16
d1120 v0
  = coe (d274 (coe (d894 (coe (d1030 (coe (d1106 (coe v0))))))))
name1122 = "Relation.Binary.DecTotalOrder.DTO.isTotalOrder"
d1122 :: T1084 -> T876
d1122 v0 = coe (d1030 (coe (d1106 (coe v0))))
name1124 = "Relation.Binary.DecTotalOrder.DTO.refl"
d1124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> AgdaAny -> AgdaAny
d1124 v0 v1 v2 v3 = du1124 v3
du1124 :: T1084 -> AgdaAny -> AgdaAny
du1124 v0
  = let v1 = d1106 (coe v0) in
    let v2 = d1030 (coe v1) in
    let v3 = d894 (coe v2) in coe (du52 (coe (d274 (coe v3))))
name1126 = "Relation.Binary.DecTotalOrder.DTO.reflexive"
d1126 :: T1084 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1126 v0
  = coe
      (d38
         (coe (d274 (coe (d894 (coe (d1030 (coe (d1106 (coe v0))))))))))
name1128 = "Relation.Binary.DecTotalOrder.DTO.total"
d1128 ::
  T1084 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d1128 v0 = coe (d896 (coe (d1030 (coe (d1106 (coe v0))))))
name1130 = "Relation.Binary.DecTotalOrder.DTO.trans"
d1130 ::
  T1084 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1130 v0
  = coe
      (d40
         (coe (d274 (coe (d894 (coe (d1030 (coe (d1106 (coe v0))))))))))
name1132 = "Relation.Binary.DecTotalOrder.DTO.∼-resp-≈"
d1132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1132 v0 v1 v2 v3 = du1132 v3
du1132 :: T1084 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1132 v0
  = let v1 = d1106 (coe v0) in
    let v2 = d1030 (coe v1) in
    let v3 = d894 (coe v2) in coe (du66 (coe (d274 (coe v3))))
name1134 = "Relation.Binary.DecTotalOrder.DTO.∼-respʳ-≈"
d1134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1134 v0 v1 v2 v3 = du1134 v3
du1134 ::
  T1084 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1134 v0
  = let v1 = d1106 (coe v0) in
    let v2 = d1030 (coe v1) in
    let v3 = d894 (coe v2) in coe (du60 (coe (d274 (coe v3))))
name1136 = "Relation.Binary.DecTotalOrder.DTO.∼-respˡ-≈"
d1136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1136 v0 v1 v2 v3 = du1136 v3
du1136 ::
  T1084 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1136 v0
  = let v1 = d1106 (coe v0) in
    let v2 = d1030 (coe v1) in
    let v3 = d894 (coe v2) in coe (du54 (coe (d274 (coe v3))))
name1140 = "Relation.Binary.DecTotalOrder.DTO.Eq._≟_"
d1140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1140 v0 v1 v2 v3 = du1140 v3
du1140 ::
  T1084 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du1140 v0 = let v1 = d1106 (coe v0) in coe (d1032 (coe v1))
name1142 = "Relation.Binary.DecTotalOrder.DTO.Eq.isDecEquivalence"
d1142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> T174
d1142 v0 v1 v2 v3 = du1142 v3
du1142 :: T1084 -> T174
du1142 v0 = coe (du1062 (coe (d1106 (coe v0))))
name1144 = "Relation.Binary.DecTotalOrder.DTO.Eq.isEquivalence"
d1144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 -> MAlonzo.Code.Relation.Binary.Core.T402
d1144 v0 v1 v2 v3 = du1144 v3
du1144 :: T1084 -> MAlonzo.Code.Relation.Binary.Core.T402
du1144 v0
  = let v1 = d1106 (coe v0) in
    coe (d36 (coe (d274 (coe (d894 (coe (d1030 (coe v1))))))))
name1146 = "Relation.Binary.DecTotalOrder.DTO.Eq.refl"
d1146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> AgdaAny -> AgdaAny
d1146 v0 v1 v2 v3 = du1146 v3
du1146 :: T1084 -> AgdaAny -> AgdaAny
du1146 v0
  = let v1 = d1106 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d36 (coe (d274 (coe (d894 (coe (d1030 (coe v1))))))))))
name1148 = "Relation.Binary.DecTotalOrder.DTO.Eq.reflexive"
d1148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1148 v0 v1 v2 v3 = du1148 v3
du1148 ::
  T1084 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1148 v0
  = let v1 = d1106 (coe v0) in
    let v2 = du1062 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v2))) v3)
name1150 = "Relation.Binary.DecTotalOrder.DTO.Eq.sym"
d1150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1150 v0 v1 v2 v3 = du1150 v3
du1150 :: T1084 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1150 v0
  = let v1 = d1106 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d36 (coe (d274 (coe (d894 (coe (d1030 (coe v1))))))))))
name1152 = "Relation.Binary.DecTotalOrder.DTO.Eq.trans"
d1152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1152 v0 v1 v2 v3 = du1152 v3
du1152 ::
  T1084 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1152 v0
  = let v1 = d1106 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d36 (coe (d274 (coe (d894 (coe (d1030 (coe v1))))))))))
name1154 = "Relation.Binary.DecTotalOrder.totalOrder"
d1154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> T934
d1154 v0 v1 v2 v3 = du1154 v3
du1154 :: T1084 -> T934
du1154 v0
  = coe
      (\ v1 v2 v3 v4 -> C5847 v4) erased erased erased
      (d1030 (coe (d1106 (coe v0))))
name1158 = "Relation.Binary.DecTotalOrder._.poset"
d1158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> T310
d1158 v0 v1 v2 v3 = du1158 v3
du1158 :: T1084 -> T310
du1158 v0 = coe (du992 (coe (du1154 (coe v0))))
name1160 = "Relation.Binary.DecTotalOrder._.preorder"
d1160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> T74
d1160 v0 v1 v2 v3 = du1160 v3
du1160 :: T1084 -> T74
du1160 v0
  = let v1 = du1154 (coe v0) in coe (du364 (coe (du992 (coe v1))))
name1164 = "Relation.Binary.DecTotalOrder.Eq.decSetoid"
d1164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> T206
d1164 v0 v1 v2 v3 = du1164 v3
du1164 :: T1084 -> T206
du1164 v0
  = coe
      (\ v1 v2 v3 -> C1455 v3) erased erased
      (du1062 (coe (d1106 (coe v0))))
name1168 = "Relation.Binary.DecTotalOrder.Eq._._≈_"
d1168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> AgdaAny -> AgdaAny -> ()
d1168 = erased
name1170 = "Relation.Binary.DecTotalOrder.Eq._._≟_"
d1170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1170 v0 v1 v2 v3 = du1170 v3
du1170 ::
  T1084 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du1170 v0 = coe (d1032 (coe (d1106 (coe v0))))
name1172 = "Relation.Binary.DecTotalOrder.Eq._.Carrier"
d1172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> ()
d1172 = erased
name1174 = "Relation.Binary.DecTotalOrder.Eq._.isDecEquivalence"
d1174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> T174
d1174 v0 v1 v2 v3 = du1174 v3
du1174 :: T1084 -> T174
du1174 v0 = coe (du1062 (coe (d1106 (coe v0))))
name1176 = "Relation.Binary.DecTotalOrder.Eq._.isEquivalence"
d1176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 -> MAlonzo.Code.Relation.Binary.Core.T402
d1176 v0 v1 v2 v3 = du1176 v3
du1176 :: T1084 -> MAlonzo.Code.Relation.Binary.Core.T402
du1176 v0
  = coe
      (d36
         (coe (d274 (coe (d894 (coe (d1030 (coe (d1106 (coe v0))))))))))
name1178 = "Relation.Binary.DecTotalOrder.Eq._.preorder"
d1178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> T74
d1178 v0 v1 v2 v3 = du1178 v3
du1178 :: T1084 -> T74
du1178 v0
  = let v1 = du1164 (coe v0) in coe (du164 (coe (du238 (coe v1))))
name1180 = "Relation.Binary.DecTotalOrder.Eq._.refl"
d1180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> AgdaAny -> AgdaAny
d1180 v0 v1 v2 v3 = du1180 v3
du1180 :: T1084 -> AgdaAny -> AgdaAny
du1180 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (d36
               (coe (d274 (coe (d894 (coe (d1030 (coe (d1106 (coe v0))))))))))))
name1182 = "Relation.Binary.DecTotalOrder.Eq._.reflexive"
d1182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1182 v0 v1 v2 v3 = du1182 v3
du1182 ::
  T1084 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1182 v0
  = let v1 = du1164 (coe v0) in
    let v2 = d222 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v2))) v3)
name1184 = "Relation.Binary.DecTotalOrder.Eq._.setoid"
d1184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1084 -> T128
d1184 v0 v1 v2 v3 = du1184 v3
du1184 :: T1084 -> T128
du1184 v0 = coe (du238 (coe (du1164 (coe v0))))
name1186 = "Relation.Binary.DecTotalOrder.Eq._.sym"
d1186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1186 v0 v1 v2 v3 = du1186 v3
du1186 :: T1084 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1186 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (d36
               (coe (d274 (coe (d894 (coe (d1030 (coe (d1106 (coe v0))))))))))))
name1188 = "Relation.Binary.DecTotalOrder.Eq._.trans"
d1188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1084 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1188 v0 v1 v2 v3 = du1188 v3
du1188 ::
  T1084 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1188 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (d36
               (coe (d274 (coe (d894 (coe (d1030 (coe (d1106 (coe v0))))))))))))
name1202 = "Relation.Binary.IsStrictTotalOrder"
d1202 a0 a1 a2 a3 a4 a5 = ()
data T1202
  = C7321 MAlonzo.Code.Relation.Binary.Core.T402
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198)
name1222 = "Relation.Binary.IsStrictTotalOrder.isEquivalence"
d1222 :: T1202 -> MAlonzo.Code.Relation.Binary.Core.T402
d1222 v0
  = case coe v0 of
      C7321 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1224 = "Relation.Binary.IsStrictTotalOrder.trans"
d1224 ::
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1224 v0
  = case coe v0 of
      C7321 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1226 = "Relation.Binary.IsStrictTotalOrder.compare"
d1226 ::
  T1202 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198
d1226 v0
  = case coe v0 of
      C7321 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1228 = "Relation.Binary.IsStrictTotalOrder._≟_"
d1228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1202 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1228 v0 v1 v2 v3 v4 v5 v6 = du1228 v6
du1228 ::
  T1202 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du1228 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Consequences.du410
         (coe (d1226 (coe v0))))
name1230 = "Relation.Binary.IsStrictTotalOrder._<?_"
d1230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1202 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1230 v0 v1 v2 v3 v4 v5 v6 = du1230 v6
du1230 ::
  T1202 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du1230 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Consequences.du446
         (coe (d1226 (coe v0))))
name1232 = "Relation.Binary.IsStrictTotalOrder.isDecEquivalence"
d1232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T1202 -> T174
d1232 v0 v1 v2 v3 v4 v5 v6 = du1232 v6
du1232 :: T1202 -> T174
du1232 v0
  = coe (C1313 (coe (d1222 (coe v0))) (coe (du1228 (coe v0))))
name1236 = "Relation.Binary.IsStrictTotalOrder.Eq._≟_"
d1236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1202 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1236 v0 v1 v2 v3 v4 v5 v6 = du1236 v6
du1236 ::
  T1202 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du1236 v0 = coe (du1228 (coe v0))
name1238 = "Relation.Binary.IsStrictTotalOrder.Eq.isEquivalence"
d1238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1202 -> MAlonzo.Code.Relation.Binary.Core.T402
d1238 v0 v1 v2 v3 v4 v5 v6 = du1238 v6
du1238 :: T1202 -> MAlonzo.Code.Relation.Binary.Core.T402
du1238 v0 = coe (d1222 (coe v0))
name1240 = "Relation.Binary.IsStrictTotalOrder.Eq.refl"
d1240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T1202 -> AgdaAny -> AgdaAny
d1240 v0 v1 v2 v3 v4 v5 v6 = du1240 v6
du1240 :: T1202 -> AgdaAny -> AgdaAny
du1240 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414 (coe (d1222 (coe v0))))
name1242 = "Relation.Binary.IsStrictTotalOrder.Eq.reflexive"
d1242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1202 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1242 v0 v1 v2 v3 v4 v5 v6 = du1242 v6
du1242 ::
  T1202 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1242 v0
  = let v1 = du1232 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v1))) v2)
name1244 = "Relation.Binary.IsStrictTotalOrder.Eq.sym"
d1244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1244 v0 v1 v2 v3 v4 v5 v6 = du1244 v6
du1244 :: T1202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1244 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416 (coe (d1222 (coe v0))))
name1246 = "Relation.Binary.IsStrictTotalOrder.Eq.trans"
d1246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1246 v0 v1 v2 v3 v4 v5 v6 = du1246 v6
du1246 ::
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1246 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418 (coe (d1222 (coe v0))))
name1248 = "Relation.Binary.IsStrictTotalOrder.<-respˡ-≈"
d1248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1248 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1248 v2 v6 v7 v9
du1248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1248 v0 v1 v2 v3
  = coe
      (\ v4 v5 ->
         MAlonzo.Code.Relation.Binary.Consequences.du566
           (coe v0) (coe (d1226 (coe v1))) (coe v2) (coe v3))
name1250 = "Relation.Binary.IsStrictTotalOrder.<-respʳ-≈"
d1250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1250 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1250 v2 v6 v7 v9
du1250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1250 v0 v1 v2 v3
  = coe
      (\ v4 v5 ->
         MAlonzo.Code.Relation.Binary.Consequences.du482
           (coe v0) (coe (d1226 (coe v1))) (coe v2) (coe v3))
name1252 = "Relation.Binary.IsStrictTotalOrder.<-resp-≈"
d1252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1202 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1252 v0 v1 v2 v3 v4 v5 v6 = du1252 v2 v6
du1252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1202 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1252 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (\ v2 v3 v4 -> du1250 (coe v0) (coe v1) v2 v4))
         (coe (\ v2 v3 v4 -> du1248 (coe v0) (coe v1) v2 v4)))
name1254
  = "Relation.Binary.IsStrictTotalOrder.isStrictPartialOrder"
d1254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> T1202 -> T570
d1254 v0 v1 v2 v3 v4 v5 v6 = du1254 v2 v6
du1254 :: MAlonzo.Code.Agda.Primitive.T4 -> T1202 -> T570
du1254 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> C3423 v2 v4 v5) (d1222 (coe v1)) erased
      (d1224 (coe v1)) (du1252 (coe v0) (coe v1))
name1258 = "Relation.Binary.IsStrictTotalOrder._.asym"
d1258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1202 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d1258 = erased
name1260 = "Relation.Binary.IsStrictTotalOrder._.irrefl"
d1260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  T1202 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d1260 = erased
name1268 = "Relation.Binary.StrictTotalOrder"
d1268 a0 a1 a2 = ()
newtype T1268 = C8495 T1202
name1284 = "Relation.Binary.StrictTotalOrder.Carrier"
d1284 :: T1268 -> ()
d1284 = erased
name1286 = "Relation.Binary.StrictTotalOrder._≈_"
d1286 :: T1268 -> AgdaAny -> AgdaAny -> ()
d1286 = erased
name1288 = "Relation.Binary.StrictTotalOrder._<_"
d1288 :: T1268 -> AgdaAny -> AgdaAny -> ()
d1288 = erased
name1290 = "Relation.Binary.StrictTotalOrder.isStrictTotalOrder"
d1290 :: T1268 -> T1202
d1290 v0
  = case coe v0 of
      C8495 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1294 = "Relation.Binary.StrictTotalOrder._._<?_"
d1294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1294 v0 v1 v2 v3 = du1294 v3
du1294 ::
  T1268 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du1294 v0 = coe (du1230 (coe (d1290 (coe v0))))
name1296 = "Relation.Binary.StrictTotalOrder._._≟_"
d1296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1296 v0 v1 v2 v3 = du1296 v3
du1296 ::
  T1268 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du1296 v0 = coe (du1228 (coe (d1290 (coe v0))))
name1298 = "Relation.Binary.StrictTotalOrder._.<-resp-≈"
d1298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1298 v0 v1 v2 v3 = du1298 v2 v3
du1298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1298 v0 v1 = coe (du1252 (coe v0) (coe (d1290 (coe v1))))
name1300 = "Relation.Binary.StrictTotalOrder._.<-respʳ-≈"
d1300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1300 v0 v1 v2 v3 = du1300 v2 v3
du1300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1300 v0 v1
  = coe (\ v2 v3 v4 -> du1250 (coe v0) (coe (d1290 (coe v1))) v2 v4)
name1302 = "Relation.Binary.StrictTotalOrder._.<-respˡ-≈"
d1302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1302 v0 v1 v2 v3 = du1302 v2 v3
du1302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1302 v0 v1
  = coe (\ v2 v3 v4 -> du1248 (coe v0) (coe (d1290 (coe v1))) v2 v4)
name1304 = "Relation.Binary.StrictTotalOrder._.asym"
d1304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d1304 = erased
name1306 = "Relation.Binary.StrictTotalOrder._.compare"
d1306 ::
  T1268 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198
d1306 v0 = coe (d1226 (coe (d1290 (coe v0))))
name1308 = "Relation.Binary.StrictTotalOrder._.irrefl"
d1308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d1308 = erased
name1310 = "Relation.Binary.StrictTotalOrder._.isDecEquivalence"
d1310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1268 -> T174
d1310 v0 v1 v2 v3 = du1310 v3
du1310 :: T1268 -> T174
du1310 v0 = coe (du1232 (coe (d1290 (coe v0))))
name1312 = "Relation.Binary.StrictTotalOrder._.isEquivalence"
d1312 :: T1268 -> MAlonzo.Code.Relation.Binary.Core.T402
d1312 v0 = coe (d1222 (coe (d1290 (coe v0))))
name1314
  = "Relation.Binary.StrictTotalOrder._.isStrictPartialOrder"
d1314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1268 -> T570
d1314 v0 v1 v2 v3 = du1314 v2 v3
du1314 :: MAlonzo.Code.Agda.Primitive.T4 -> T1268 -> T570
du1314 v0 v1 = coe (du1254 (coe v0) (coe (d1290 (coe v1))))
name1316 = "Relation.Binary.StrictTotalOrder._.trans"
d1316 ::
  T1268 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1316 v0 = coe (d1224 (coe (d1290 (coe v0))))
name1318 = "Relation.Binary.StrictTotalOrder.strictPartialOrder"
d1318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1268 -> T628
d1318 v0 v1 v2 v3 = du1318 v2 v3
du1318 :: MAlonzo.Code.Agda.Primitive.T4 -> T1268 -> T628
du1318 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> C4141 v5) erased erased erased
      (du1254 (coe v0) (coe (d1290 (coe v1))))
name1320 = "Relation.Binary.StrictTotalOrder.decSetoid"
d1320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1268 -> T206
d1320 v0 v1 v2 v3 = du1320 v3
du1320 :: T1268 -> T206
du1320 v0
  = coe
      (\ v1 v2 v3 -> C1455 v3) erased erased
      (du1232 (coe (d1290 (coe v0))))
name1324 = "Relation.Binary.StrictTotalOrder.Eq._≈_"
d1324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1268 -> AgdaAny -> AgdaAny -> ()
d1324 = erased
name1326 = "Relation.Binary.StrictTotalOrder.Eq._≟_"
d1326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1326 v0 v1 v2 v3 = du1326 v3
du1326 ::
  T1268 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du1326 v0 = coe (du1228 (coe (d1290 (coe v0))))
name1328 = "Relation.Binary.StrictTotalOrder.Eq.Carrier"
d1328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1268 -> ()
d1328 = erased
name1330 = "Relation.Binary.StrictTotalOrder.Eq.isDecEquivalence"
d1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1268 -> T174
d1330 v0 v1 v2 v3 = du1330 v3
du1330 :: T1268 -> T174
du1330 v0 = coe (du1232 (coe (d1290 (coe v0))))
name1332 = "Relation.Binary.StrictTotalOrder.Eq.isEquivalence"
d1332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 -> MAlonzo.Code.Relation.Binary.Core.T402
d1332 v0 v1 v2 v3 = du1332 v3
du1332 :: T1268 -> MAlonzo.Code.Relation.Binary.Core.T402
du1332 v0 = coe (d1222 (coe (d1290 (coe v0))))
name1334 = "Relation.Binary.StrictTotalOrder.Eq.preorder"
d1334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1268 -> T74
d1334 v0 v1 v2 v3 = du1334 v3
du1334 :: T1268 -> T74
du1334 v0
  = let v1 = du1320 (coe v0) in coe (du164 (coe (du238 (coe v1))))
name1336 = "Relation.Binary.StrictTotalOrder.Eq.refl"
d1336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1268 -> AgdaAny -> AgdaAny
d1336 v0 v1 v2 v3 = du1336 v3
du1336 :: T1268 -> AgdaAny -> AgdaAny
du1336 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe (d1222 (coe (d1290 (coe v0))))))
name1338 = "Relation.Binary.StrictTotalOrder.Eq.reflexive"
d1338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1338 v0 v1 v2 v3 = du1338 v3
du1338 ::
  T1268 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1338 v0
  = let v1 = du1320 (coe v0) in
    let v2 = d222 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420 (coe (d188 (coe v2))) v3)
name1340 = "Relation.Binary.StrictTotalOrder.Eq.setoid"
d1340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1268 -> T128
d1340 v0 v1 v2 v3 = du1340 v3
du1340 :: T1268 -> T128
du1340 v0 = coe (du238 (coe (du1320 (coe v0))))
name1342 = "Relation.Binary.StrictTotalOrder.Eq.sym"
d1342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1342 v0 v1 v2 v3 = du1342 v3
du1342 :: T1268 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1342 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe (d1222 (coe (d1290 (coe v0))))))
name1344 = "Relation.Binary.StrictTotalOrder.Eq.trans"
d1344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1268 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1344 v0 v1 v2 v3 = du1344 v3
du1344 ::
  T1268 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1344 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe (d1222 (coe (d1290 (coe v0))))))
