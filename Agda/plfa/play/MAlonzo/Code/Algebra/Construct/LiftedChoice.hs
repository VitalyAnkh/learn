{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Construct.LiftedChoice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid
import qualified MAlonzo.Code.Relation.Binary.Structures

name30 = "Algebra.Construct.LiftedChoice._.Lift"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d30 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du30 v7 v8 v9 v10
du30 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du30 v0 v1 v2 v3
  = let v4 = coe v0 (coe v1 v2) (coe v1 v3) in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5 -> coe v2
      MAlonzo.Code.Data.Sum.Base.C42 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name134 = "Algebra.Construct.LiftedChoice._._._◦_"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d134 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du134 v5 v8
du134 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du134 v0 v1
  = coe
      du30 (coe MAlonzo.Code.Algebra.Structures.d286 (coe v0)) (coe v1)
name136 = "Algebra.Construct.LiftedChoice._._.sel-≡"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d136 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du136 v5 v8 v9 v10
du136 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du136 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.d286 v0 (coe v1 v2) (coe v1 v3)
name158 = "Algebra.Construct.LiftedChoice._._.distrib"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d158 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du158 v5 v8 v9 v10
du158 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du158 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Structures.d286 v0 (coe v1 v2) (coe v1 v3) in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5 -> coe v5
      MAlonzo.Code.Data.Sum.Base.C42 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name192 = "Algebra.Construct.LiftedChoice._._._◦_"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d192 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du192 v5 v8
du192 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du192 v0 v1
  = coe
      du30 (coe MAlonzo.Code.Algebra.Structures.d286 (coe v0)) (coe v1)
name194 = "Algebra.Construct.LiftedChoice._._.sel"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d194 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du194 v5 v8 v10 v11 v12
du194 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du194 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Sum.Base.du82 (coe v2 (coe du192 v0 v1 v3 v4) v3)
      (coe v2 (coe du192 v0 v1 v3 v4) v4)
      (coe du136 (coe v0) (coe v1) (coe v3) (coe v4))
name200 = "Algebra.Construct.LiftedChoice._._.idem"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny) ->
  AgdaAny -> AgdaAny
d200 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du200 v5 v8 v10
du200 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny) ->
  AgdaAny -> AgdaAny
du200 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du16
      (coe du194 (coe v0) (coe v1) (coe v2))
name218 = "Algebra.Construct.LiftedChoice._._._◦_"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d218 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du218 v5 v8
du218 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du218 v0 v1
  = coe
      du30 (coe MAlonzo.Code.Algebra.Structures.d286 (coe v0)) (coe v1)
name220 = "Algebra.Construct.LiftedChoice._._.cong"
d220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d220 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
  = du220 v4 v5 v8 v10 v11 v12 v13 v14 v15 v16 v17
du220 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du220 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = let v11
          = coe
              MAlonzo.Code.Algebra.Structures.d286 v1 (coe v2 v5) (coe v2 v7) in
    let v12
          = coe
              MAlonzo.Code.Algebra.Structures.d286 v1 (coe v2 v6) (coe v2 v8) in
    case coe v11 of
      MAlonzo.Code.Data.Sum.Base.C38 v13
        -> case coe v12 of
             MAlonzo.Code.Data.Sum.Base.C38 v14 -> coe v9
             MAlonzo.Code.Data.Sum.Base.C42 v14
               -> coe
                    v3 v5 v8
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.du74
                             (coe
                                MAlonzo.Code.Algebra.Structures.du104
                                (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
                          (coe v2 v5) (coe v0 (coe v2 v5) (coe v2 v7)) (coe v2 v8)
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.du74
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du104
                                   (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
                             (coe v0 (coe v2 v5) (coe v2 v7)) (coe v0 (coe v2 v6) (coe v2 v8))
                             (coe v2 v8)
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.du74
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.du104
                                      (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
                                (coe v0 (coe v2 v6) (coe v2 v8)) (coe v2 v8) (coe v2 v8)
                                (let v15
                                       = MAlonzo.Code.Relation.Binary.Structures.d34
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d88
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d284 (coe v1))) in
                                 let v16 = coe v2 v8 in
                                 coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                   (coe v15 v16))
                                v14)
                             (coe
                                MAlonzo.Code.Algebra.Structures.d90
                                (MAlonzo.Code.Algebra.Structures.d284 (coe v1)) (coe v2 v5)
                                (coe v2 v6) (coe v2 v7) (coe v2 v8) (coe v4 v5 v6 v9)
                                (coe v4 v7 v8 v10)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d36
                             (MAlonzo.Code.Algebra.Structures.d88
                                (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1)))
                             (coe v0 (coe v2 v5) (coe v2 v7)) (coe v2 v5) v13)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v13
        -> case coe v12 of
             MAlonzo.Code.Data.Sum.Base.C38 v14
               -> coe
                    v3 v7 v6
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.du74
                             (coe
                                MAlonzo.Code.Algebra.Structures.du104
                                (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
                          (coe v2 v7) (coe v0 (coe v2 v5) (coe v2 v7)) (coe v2 v6)
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.du74
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du104
                                   (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
                             (coe v0 (coe v2 v5) (coe v2 v7)) (coe v0 (coe v2 v6) (coe v2 v8))
                             (coe v2 v6)
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.du74
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.du104
                                      (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
                                (coe v0 (coe v2 v6) (coe v2 v8)) (coe v2 v6) (coe v2 v6)
                                (let v15
                                       = MAlonzo.Code.Relation.Binary.Structures.d34
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d88
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d284 (coe v1))) in
                                 let v16 = coe v2 v6 in
                                 coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                   (coe v15 v16))
                                v14)
                             (coe
                                MAlonzo.Code.Algebra.Structures.d90
                                (MAlonzo.Code.Algebra.Structures.d284 (coe v1)) (coe v2 v5)
                                (coe v2 v6) (coe v2 v7) (coe v2 v8) (coe v4 v5 v6 v9)
                                (coe v4 v7 v8 v10)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d36
                             (MAlonzo.Code.Algebra.Structures.d88
                                (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1)))
                             (coe v0 (coe v2 v5) (coe v2 v7)) (coe v2 v7) v13)))
             MAlonzo.Code.Data.Sum.Base.C42 v14 -> coe v10
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name312 = "Algebra.Construct.LiftedChoice._._.assoc"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d312 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du312 v4 v5 v8 v10 v11 v12 v13 v14
du312 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du312 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      v3 (coe du218 v1 v2 (coe du218 v1 v2 v5 v6) v7)
      (coe du218 v1 v2 v5 (coe du218 v1 v2 v6 v7))
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe
                  MAlonzo.Code.Algebra.Structures.du104
                  (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
            (coe v2 (coe du218 v1 v2 (coe du218 v1 v2 v5 v6) v7))
            (coe v0 (coe v2 (coe du218 v1 v2 v5 v6)) (coe v2 v7))
            (coe v2 (coe du218 v1 v2 v5 (coe du218 v1 v2 v6 v7)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (coe
                     MAlonzo.Code.Algebra.Structures.du104
                     (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
               (coe v0 (coe v2 (coe du218 v1 v2 v5 v6)) (coe v2 v7))
               (coe v0 (coe v0 (coe v2 v5) (coe v2 v6)) (coe v2 v7))
               (coe v2 (coe du218 v1 v2 v5 (coe du218 v1 v2 v6 v7)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (coe
                        MAlonzo.Code.Algebra.Structures.du104
                        (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
                  (coe v0 (coe v0 (coe v2 v5) (coe v2 v6)) (coe v2 v7))
                  (coe v0 (coe v2 v5) (coe v0 (coe v2 v6) (coe v2 v7)))
                  (coe v2 (coe du218 v1 v2 v5 (coe du218 v1 v2 v6 v7)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.du74
                        (coe
                           MAlonzo.Code.Algebra.Structures.du104
                           (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
                     (coe v0 (coe v2 v5) (coe v0 (coe v2 v6) (coe v2 v7)))
                     (coe v0 (coe v2 v5) (coe v2 (coe du218 v1 v2 v6 v7)))
                     (coe v2 (coe du218 v1 v2 v5 (coe du218 v1 v2 v6 v7)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.du74
                           (coe
                              MAlonzo.Code.Algebra.Structures.du104
                              (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
                        (coe v0 (coe v2 v5) (coe v2 (coe du218 v1 v2 v6 v7)))
                        (coe v2 (coe du218 v1 v2 v5 (coe du218 v1 v2 v6 v7)))
                        (coe v2 (coe du218 v1 v2 v5 (coe du218 v1 v2 v6 v7)))
                        (let v8
                               = MAlonzo.Code.Relation.Binary.Structures.d34
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d88
                                      (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))) in
                         let v9 = coe v2 (coe du218 v1 v2 v5 (coe du218 v1 v2 v6 v7)) in
                         coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                           (coe v8 v9))
                        (coe du158 (coe v1) (coe v2) (coe v5) (coe du218 v1 v2 v6 v7)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.du106
                        (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1)) (coe v2 v5)
                        (coe v0 (coe v2 v6) (coe v2 v7)) (coe v2 (coe du134 v1 v2 v6 v7))
                        (coe du158 (coe v1) (coe v2) (coe v6) (coe v7))))
                  (coe v4 (coe v2 v5) (coe v2 v6) (coe v2 v7)))
               (coe
                  MAlonzo.Code.Algebra.Structures.du110
                  (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1)) (coe v2 v7)
                  (coe v0 (coe v2 v5) (coe v2 v6)) (coe v2 (coe du134 v1 v2 v5 v6))
                  (coe du158 (coe v1) (coe v2) (coe v5) (coe v6))))
            (coe du158 (coe v1) (coe v2) (coe du218 v1 v2 v5 v6) (coe v7))))
name322 = "Algebra.Construct.LiftedChoice._._.comm"
d322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d322 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du322 v4 v5 v8 v10 v11 v12 v13
du322 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du322 v0 v1 v2 v3 v4 v5 v6
  = coe
      v3 (coe du218 v1 v2 v5 v6) (coe du218 v1 v2 v6 v5)
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe
                  MAlonzo.Code.Algebra.Structures.du104
                  (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
            (coe v2 (coe du218 v1 v2 v5 v6)) (coe v0 (coe v2 v5) (coe v2 v6))
            (coe v2 (coe du218 v1 v2 v6 v5))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (coe
                     MAlonzo.Code.Algebra.Structures.du104
                     (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
               (coe v0 (coe v2 v5) (coe v2 v6)) (coe v0 (coe v2 v6) (coe v2 v5))
               (coe v2 (coe du218 v1 v2 v6 v5))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (coe
                        MAlonzo.Code.Algebra.Structures.du104
                        (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))))
                  (coe v0 (coe v2 v6) (coe v2 v5)) (coe v2 (coe du218 v1 v2 v6 v5))
                  (coe v2 (coe du218 v1 v2 v6 v5))
                  (let v7
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Algebra.Structures.d88
                                (coe MAlonzo.Code.Algebra.Structures.d284 (coe v1))) in
                   let v8 = coe v2 (coe du218 v1 v2 v6 v5) in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v7 v8))
                  (coe du158 (coe v1) (coe v2) (coe v6) (coe v5)))
               (coe v4 (coe v2 v5) (coe v2 v6)))
            (coe du158 (coe v1) (coe v2) (coe v5) (coe v6))))
name362 = "Algebra.Construct.LiftedChoice._._._◦_"
d362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  AgdaAny -> AgdaAny -> AgdaAny
d362 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du362 v5 v9
du362 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du362 v0 v1
  = coe
      du30 (coe MAlonzo.Code.Algebra.Structures.d286 (coe v0)) (coe v1)
name364 = "Algebra.Construct.LiftedChoice._._.isMagma"
d364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Algebra.Structures.T80
d364 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du364 v4 v5 v9 v10 v11 v12
du364 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Algebra.Structures.T80
du364 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.C423 (coe v5)
      (coe du220 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
name370 = "Algebra.Construct.LiftedChoice._._.isSemigroup"
d370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T116
d370 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du370 v4 v5 v9 v10 v11 v12 v13
du370 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T116
du370 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Structures.C1721
      (coe du364 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))
      (coe du312 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))
name378 = "Algebra.Construct.LiftedChoice._._.isBand"
d378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152
d378 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du378 v4 v5 v9 v10 v11 v12 v13
du378 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152
du378 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Structures.C2175
      (coe
         du370 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
         (coe v6))
      (coe
         du200 (coe v1) (coe v2)
         (\ v7 v8 v9 ->
            coe MAlonzo.Code.Relation.Binary.Structures.du40 (coe v5) v7))
name382 = "Algebra.Construct.LiftedChoice._._.isSemilattice"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232
d382 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du382 v4 v5 v9 v10 v11 v12 v13 v14
du382 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232
du382 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Algebra.Structures.C3189
      (coe
         du378 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
         (coe v6))
      (coe du322 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7))
name392 = "Algebra.Construct.LiftedChoice._._.isSelectiveMagma"
d392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Algebra.Structures.T276
d392 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du392 v4 v5 v9 v10 v11 v12
du392 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Algebra.Structures.T276
du392 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.C3745
      (coe du364 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))
      (coe
         du194 (coe v1) (coe v2)
         (\ v6 v7 v8 ->
            coe MAlonzo.Code.Relation.Binary.Structures.du40 (coe v5) v6))
name406 = "Algebra.Construct.LiftedChoice._._._◦_"
d406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d406 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du406 v5 v10
du406 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du406 v0 v1
  = coe
      du30 (coe MAlonzo.Code.Algebra.Structures.d286 (coe v0)) (coe v1)
name420 = "Algebra.Construct.LiftedChoice._._.preservesᵒ"
d420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
d420 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du420 v5 v10 v11 v12 v13 v14 v15
du420 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
du420 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C38 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Algebra.Structures.d286 v0 (coe v1 v4) (coe v1 v5) in
           case coe v8 of
             MAlonzo.Code.Data.Sum.Base.C38 v9 -> coe v7
             MAlonzo.Code.Data.Sum.Base.C42 v9 -> coe v2 v4 v5 v7 v9
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Algebra.Structures.d286 v0 (coe v1 v4) (coe v1 v5) in
           case coe v8 of
             MAlonzo.Code.Data.Sum.Base.C38 v9 -> coe v3 v4 v5 v7 v9
             MAlonzo.Code.Data.Sum.Base.C42 v9 -> coe v7
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name502 = "Algebra.Construct.LiftedChoice._._.preservesʳ"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d502 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du502 v5 v10 v11 v12 v13 v14
du502 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du502 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Algebra.Structures.d286 v0 (coe v1 v3) (coe v1 v4) in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C38 v7 -> coe v2 v3 v4 v5 v7
      MAlonzo.Code.Data.Sum.Base.C42 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name540 = "Algebra.Construct.LiftedChoice._._.preservesᵇ"
d540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d540 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du540 v5 v10 v11 v12 v13 v14
du540 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du540 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Algebra.Structures.d286 v0 (coe v1 v2) (coe v1 v3) in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C38 v7 -> coe v4
      MAlonzo.Code.Data.Sum.Base.C42 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name582 = "Algebra.Construct.LiftedChoice._._.forcesᵇ"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T276 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d582 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du582 v5 v10 v11 v12 v13 v14 v15
du582 ::
  MAlonzo.Code.Algebra.Structures.T276 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du582 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Algebra.Structures.d286 v0 (coe v1 v4) (coe v1 v5) in
    case coe v7 of
      MAlonzo.Code.Data.Sum.Base.C38 v8
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v6) (coe v2 v4 v5 v6 v8)
      MAlonzo.Code.Data.Sum.Base.C42 v8
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v3 v4 v5 v6 v8) (coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
