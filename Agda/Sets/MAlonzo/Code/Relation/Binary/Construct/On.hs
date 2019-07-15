{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Construct.On where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Nullary

name30 = "Relation.Binary.Construct.On._.implies"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d30 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du30 v4 v9 v10 v11
du30 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du30 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name38 = "Relation.Binary.Construct.On._.reflexive"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d38 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du38 v4 v7 v8
du38 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du38 v0 v1 v2 = coe v1 (coe v0 v2)
name50 = "Relation.Binary.Construct.On._.irreflexive"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d50 = erased
name58 = "Relation.Binary.Construct.On._.symmetric"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d58 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du58 v4 v7 v8 v9
du58 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du58 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name66 = "Relation.Binary.Construct.On._.transitive"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d66 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du66 v4 v7 v8 v9 v10
du66 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du66 v0 v1 v2 v3 v4 = coe v1 (coe v0 v2) (coe v0 v3) (coe v0 v4)
name78 = "Relation.Binary.Construct.On._.antisymmetric"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d78 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du78 v4 v9 v10 v11
du78 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du78 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name86 = "Relation.Binary.Construct.On._.asymmetric"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d86 = erased
name98 = "Relation.Binary.Construct.On._.respects"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d98 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du98 v4 v9 v10 v11
du98 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du98 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name110 = "Relation.Binary.Construct.On._.respects₂"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du110 v4 v9
du110 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du110 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
        -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe (\ v4 v5 v6 -> coe v2 (coe v0 v4) (coe v0 v5) (coe v0 v6)))
                (coe (\ v4 v5 v6 -> coe v3 (coe v0 v4) (coe v0 v5) (coe v0 v6))))
      _ -> MAlonzo.RTE.mazUnreachableError
name132 = "Relation.Binary.Construct.On._.decidable"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d132 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du132 v4 v7 v8 v9
du132 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du132 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name144 = "Relation.Binary.Construct.On._.total"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du144 v4 v7 v8 v9
du144 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du144 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name160 = "Relation.Binary.Construct.On._.trichotomous"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198
d160 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du160 v4 v9 v10 v11
du160 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T198
du160 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
name172 = "Relation.Binary.Construct.On._.isEquivalence"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d172 v0 v1 v2 v3 v4 v5 v6 v7 = du172 v4 v7
du172 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Relation.Binary.Core.T402
du172 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Core.C5081
         (coe
            (\ v2 ->
               coe MAlonzo.Code.Relation.Binary.Core.d414 v1 (coe v0 v2)))
         (coe
            (du58
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.Core.d416 (coe v1)))))
         (coe
            (du66
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.Core.d418 (coe v1))))))
name200 = "Relation.Binary.Construct.On._.isPreorder"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  MAlonzo.Code.Relation.Binary.T16
d200 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du200 v4 v9
du200 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  MAlonzo.Code.Relation.Binary.T16
du200 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C17
         (coe
            (du172 (coe v0) (coe (MAlonzo.Code.Relation.Binary.d36 (coe v1)))))
         (coe
            (du30 (coe v0) (coe (MAlonzo.Code.Relation.Binary.d38 (coe v1)))))
         (coe
            (du66 (coe v0) (coe (MAlonzo.Code.Relation.Binary.d40 (coe v1))))))
name242 = "Relation.Binary.Construct.On._.isDecEquivalence"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T174 ->
  MAlonzo.Code.Relation.Binary.T174
d242 v0 v1 v2 v3 v4 v5 v6 v7 = du242 v4 v7
du242 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.T174 ->
  MAlonzo.Code.Relation.Binary.T174
du242 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C1313
         (coe
            (du172
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d188 (coe v1)))))
         (coe
            (du132
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d190 (coe v1))))))
name274 = "Relation.Binary.Construct.On._.isPartialOrder"
d274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T256 ->
  MAlonzo.Code.Relation.Binary.T256
d274 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du274 v4 v9
du274 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.T256 ->
  MAlonzo.Code.Relation.Binary.T256
du274 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C1639
         (coe
            (du200
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1)))))
         (coe
            (du78
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d276 (coe v1))))))
name324 = "Relation.Binary.Construct.On._.isDecPartialOrder"
d324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T378 ->
  MAlonzo.Code.Relation.Binary.T378
d324 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du324 v4 v9
du324 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.T378 ->
  MAlonzo.Code.Relation.Binary.T378
du324 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C2295
         (coe
            (du274
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d398 (coe v1)))))
         (coe
            (du132
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d400 (coe v1)))))
         (coe
            (du132
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d402 (coe v1))))))
name382 = "Relation.Binary.Construct.On._.isStrictPartialOrder"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T570 ->
  MAlonzo.Code.Relation.Binary.T570
d382 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du382 v4 v9
du382 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.T570 ->
  MAlonzo.Code.Relation.Binary.T570
du382 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C3423 v2 v4 v5)
      (du172 (coe v0) (coe (MAlonzo.Code.Relation.Binary.d592 (coe v1))))
      erased
      (du66 (coe v0) (coe (MAlonzo.Code.Relation.Binary.d596 (coe v1))))
      (du110 (coe v0) (coe (MAlonzo.Code.Relation.Binary.d598 (coe v1))))
name430 = "Relation.Binary.Construct.On._.isTotalOrder"
d430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T876 ->
  MAlonzo.Code.Relation.Binary.T876
d430 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du430 v4 v9
du430 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.T876 ->
  MAlonzo.Code.Relation.Binary.T876
du430 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C5461
         (coe
            (du274
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d894 (coe v1)))))
         (coe
            (du144
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d896 (coe v1))))))
name484 = "Relation.Binary.Construct.On._.isDecTotalOrder"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T1010 ->
  MAlonzo.Code.Relation.Binary.T1010
d484 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du484 v4 v9
du484 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.T1010 ->
  MAlonzo.Code.Relation.Binary.T1010
du484 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C6205
         (coe
            (du430
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d1030 (coe v1)))))
         (coe
            (du132
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d1032 (coe v1)))))
         (coe
            (du132
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d1034 (coe v1))))))
name550 = "Relation.Binary.Construct.On._.isStrictTotalOrder"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T1202 ->
  MAlonzo.Code.Relation.Binary.T1202
d550 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du550 v4 v9
du550 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.T1202 ->
  MAlonzo.Code.Relation.Binary.T1202
du550 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C7321
         (coe
            (du172
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d1222 (coe v1)))))
         (coe
            (du66
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d1224 (coe v1)))))
         (coe
            (du160
               (coe v0) (coe (MAlonzo.Code.Relation.Binary.d1226 (coe v1))))))
name614 = "Relation.Binary.Construct.On.preorder"
d614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.T74 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T74
d614 v0 v1 v2 v3 v4 v5 v6 = du614 v5 v6
du614 ::
  MAlonzo.Code.Relation.Binary.T74 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T74
du614 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C807 v5) erased
      erased erased
      (du200 (coe v1) (coe (MAlonzo.Code.Relation.Binary.d96 (coe v0))))
name630 = "Relation.Binary.Construct.On.setoid"
d630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.T128 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T128
d630 v0 v1 v2 v3 v4 v5 = du630 v4 v5
du630 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T128
du630 v0 v1
  = coe
      (\ v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C1037 v4) erased erased
      (du172 (coe v1) (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))))
name646 = "Relation.Binary.Construct.On.decSetoid"
d646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.T206 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T206
d646 v0 v1 v2 v3 v4 v5 = du646 v4 v5
du646 ::
  MAlonzo.Code.Relation.Binary.T206 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T206
du646 v0 v1
  = coe
      (\ v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C1455 v4) erased erased
      (du242 (coe v1) (coe (MAlonzo.Code.Relation.Binary.d222 (coe v0))))
name664 = "Relation.Binary.Construct.On.poset"
d664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.T310 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T310
d664 v0 v1 v2 v3 v4 v5 v6 = du664 v5 v6
du664 ::
  MAlonzo.Code.Relation.Binary.T310 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T310
du664 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C1973 v5) erased
      erased erased
      (du274 (coe v1) (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0))))
name682 = "Relation.Binary.Construct.On.decPoset"
d682 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.T458 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T458
d682 v0 v1 v2 v3 v4 v5 v6 = du682 v5 v6
du682 ::
  MAlonzo.Code.Relation.Binary.T458 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T458
du682 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C2893 v5) erased
      erased erased
      (du324 (coe v1) (coe (MAlonzo.Code.Relation.Binary.d480 (coe v0))))
name700 = "Relation.Binary.Construct.On.strictPartialOrder"
d700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.T628 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T628
d700 v0 v1 v2 v3 v4 v5 v6 = du700 v5 v6
du700 ::
  MAlonzo.Code.Relation.Binary.T628 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T628
du700 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C4141 v5) erased
      erased erased
      (du382 (coe v1) (coe (MAlonzo.Code.Relation.Binary.d650 (coe v0))))
name718 = "Relation.Binary.Construct.On.totalOrder"
d718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.T934 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T934
d718 v0 v1 v2 v3 v4 v5 v6 = du718 v5 v6
du718 ::
  MAlonzo.Code.Relation.Binary.T934 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T934
du718 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C5847 v5) erased
      erased erased
      (du430 (coe v1) (coe (MAlonzo.Code.Relation.Binary.d956 (coe v0))))
name736 = "Relation.Binary.Construct.On.decTotalOrder"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.T1084 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T1084
d736 v0 v1 v2 v3 v4 v5 v6 = du736 v5 v6
du736 ::
  MAlonzo.Code.Relation.Binary.T1084 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T1084
du736 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C6763 v5) erased
      erased erased
      (du484
         (coe v1) (coe (MAlonzo.Code.Relation.Binary.d1106 (coe v0))))
name754 = "Relation.Binary.Construct.On.strictTotalOrder"
d754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.T1268 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T1268
d754 v0 v1 v2 v3 v4 v5 v6 = du754 v5 v6
du754 ::
  MAlonzo.Code.Relation.Binary.T1268 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Binary.T1268
du754 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C8495 v5) erased
      erased erased
      (du550
         (coe v1) (coe (MAlonzo.Code.Relation.Binary.d1290 (coe v0))))
