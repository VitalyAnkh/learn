{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name38
  = "Relation.Binary.Construct.NaturalOrder.Left._.Commutative"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d38 = erased
name46 = "Relation.Binary.Construct.NaturalOrder.Left._.Idempotent"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d46 = erased
name82 = "Relation.Binary.Construct.NaturalOrder.Left._.Selective"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d82 = erased
name90 = "Relation.Binary.Construct.NaturalOrder.Left._.IsBand"
d90 a0 a1 a2 a3 a4 a5 = ()
name114 = "Relation.Binary.Construct.NaturalOrder.Left._.IsMagma"
d114 a0 a1 a2 a3 a4 a5 = ()
name124
  = "Relation.Binary.Construct.NaturalOrder.Left._.IsSemigroup"
d124 a0 a1 a2 a3 a4 a5 = ()
name126
  = "Relation.Binary.Construct.NaturalOrder.Left._.IsSemilattice"
d126 a0 a1 a2 a3 a4 a5 = ()
name1348 = "Relation.Binary.Construct.NaturalOrder.Left._≤_"
d1348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d1348 = erased
name1354 = "Relation.Binary.Construct.NaturalOrder.Left.reflexive"
d1354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1354 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1354 v4 v5 v6 v7 v8 v9
du1354 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1354 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
         v3 (coe v0 v3 v3) (coe v0 v3 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
            (coe v0 v3 v3) (coe v0 v3 v4) (coe v0 v3 v4)
            (let v6
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe MAlonzo.Code.Algebra.Structures.d88 (coe v1)) in
             let v7 = coe v0 v3 v4 in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v6 v7))
            (coe
               MAlonzo.Code.Algebra.Structures.d90 v1 v3 v3 v3 v4
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d34
                  (MAlonzo.Code.Algebra.Structures.d88 (coe v1)) v3)
               v5))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d36
            (MAlonzo.Code.Algebra.Structures.d88 (coe v1)) (coe v0 v3 v3) v3
            (coe v2 v3)))
name1418 = "Relation.Binary.Construct.NaturalOrder.Left.refl"
d1418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1418 v0 v1 v2 v3 v4 v5 v6 v7 = du1418 v4 v5 v6 v7
du1418 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1418 v0 v1 v2 v3 = coe v1 (coe v0 v3 v3) v3 (coe v2 v3)
name1426 = "Relation.Binary.Construct.NaturalOrder.Left.antisym"
d1426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1426 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1426 v4 v5 v6 v7 v8 v9 v10
du1426 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1426 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (coe MAlonzo.Code.Relation.Binary.Bundles.C501 v1))
         v3 (coe v0 v3 v4) v4
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe MAlonzo.Code.Relation.Binary.Bundles.C501 v1))
            (coe v0 v3 v4) (coe v0 v4 v3) v4
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (coe MAlonzo.Code.Relation.Binary.Bundles.C501 v1))
               (coe v0 v4 v3) v4 v4
               (let v7 = MAlonzo.Code.Relation.Binary.Structures.d34 (coe v1) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v7 v4))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d36 v1 v4 (coe v0 v4 v3)
                  v6))
            (coe v2 v3 v4))
         v5)
name1482 = "Relation.Binary.Construct.NaturalOrder.Left.total"
d1482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d1482 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1482 v4 v5 v6 v7 v8 v9 v10
du1482 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du1482 v0 v1 v2 v3 v4 v5 v6
  = let v7 = coe v3 v5 v6 in
    case coe v7 of
      MAlonzo.Code.Data.Sum.Base.C38 v8
        -> coe MAlonzo.Code.Data.Sum.Base.C38 (coe v1 (coe v0 v5 v6) v5 v8)
      MAlonzo.Code.Data.Sum.Base.C42 v8
        -> coe
             MAlonzo.Code.Data.Sum.Base.C42
             (coe
                v1 (coe v0 v6 v5) v6
                (coe v2 (coe v0 v6 v5) (coe v0 v5 v6) v6 (coe v4 v6 v5) v8))
      _ -> MAlonzo.RTE.mazUnreachableError
name1528 = "Relation.Binary.Construct.NaturalOrder.Left.trans"
d1528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T116 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1528 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1528 v4 v5 v6 v7 v8 v9 v10
du1528 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T116 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1528 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (coe
               MAlonzo.Code.Algebra.Structures.du104
               (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))))
         v2 (coe v0 v2 v3) (coe v0 v2 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe
                  MAlonzo.Code.Algebra.Structures.du104
                  (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))))
            (coe v0 v2 v3) (coe v0 v2 (coe v0 v3 v4)) (coe v0 v2 v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (coe
                     MAlonzo.Code.Algebra.Structures.du104
                     (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))))
               (coe v0 v2 (coe v0 v3 v4)) (coe v0 (coe v0 v2 v3) v4)
               (coe v0 v2 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (coe
                        MAlonzo.Code.Algebra.Structures.du104
                        (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1))))
                  (coe v0 (coe v0 v2 v3) v4) (coe v0 v2 v4) (coe v0 v2 v4)
                  (let v7
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d60
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du104
                                   (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1)))) in
                   let v8 = coe v0 v2 v4 in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v7 v8))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d90
                     (MAlonzo.Code.Algebra.Structures.d124 (coe v1)) (coe v0 v2 v3) v2
                     v4 v4
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d36
                        (MAlonzo.Code.Algebra.Structures.d88
                           (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1)))
                        v2 (coe v0 v2 v3) v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d34
                        (MAlonzo.Code.Algebra.Structures.d88
                           (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1)))
                        v4)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d36
                  (MAlonzo.Code.Algebra.Structures.d88
                     (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1)))
                  (coe v0 (coe v0 v2 v3) v4) (coe v0 v2 (coe v0 v3 v4))
                  (coe MAlonzo.Code.Algebra.Structures.d126 v1 v2 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Structures.d90
               (MAlonzo.Code.Algebra.Structures.d124 (coe v1)) v2 v2 v3
               (coe v0 v3 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d34
                  (MAlonzo.Code.Algebra.Structures.d88
                     (coe MAlonzo.Code.Algebra.Structures.d124 (coe v1)))
                  v2)
               v6))
         v5)
name1598 = "Relation.Binary.Construct.NaturalOrder.Left.respʳ"
d1598 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1598 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1598 v4 v5 v6 v7 v8 v9 v10
du1598 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1598 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
         v2 (coe v0 v2 v3) (coe v0 v2 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
            (coe v0 v2 v3) (coe v0 v2 v4) (coe v0 v2 v4)
            (let v7
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe MAlonzo.Code.Algebra.Structures.d88 (coe v1)) in
             let v8 = coe v0 v2 v4 in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v7 v8))
            (coe
               MAlonzo.Code.Algebra.Structures.d90 v1 v2 v2 v3 v4
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d34
                  (MAlonzo.Code.Algebra.Structures.d88 (coe v1)) v2)
               v5))
         v6)
name1664 = "Relation.Binary.Construct.NaturalOrder.Left.respˡ"
d1664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1664 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1664 v4 v5 v6 v7 v8 v9 v10
du1664 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1664 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
         v4 v3 (coe v0 v4 v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
            v3 (coe v0 v3 v2) (coe v0 v4 v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (coe MAlonzo.Code.Algebra.Structures.du104 (coe v1)))
               (coe v0 v3 v2) (coe v0 v4 v2) (coe v0 v4 v2)
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe MAlonzo.Code.Algebra.Structures.d88 (coe v1)) in
                let v8 = coe v0 v4 v2 in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v7 v8))
               (coe
                  MAlonzo.Code.Algebra.Structures.d90 v1 v3 v4 v2 v2 v5
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d34
                     (MAlonzo.Code.Algebra.Structures.d88 (coe v1)) v2)))
            v6)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d36
            (MAlonzo.Code.Algebra.Structures.d88 (coe v1)) v3 v4 v5))
name1730 = "Relation.Binary.Construct.NaturalOrder.Left.resp₂"
d1730 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1730 v0 v1 v2 v3 v4 v5 = du1730 v4 v5
du1730 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T80 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1730 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du1598 (coe v0) (coe v1))
      (coe du1664 (coe v0) (coe v1))
name1734 = "Relation.Binary.Construct.NaturalOrder.Left.dec"
d1734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d1734 v0 v1 v2 v3 v4 v5 v6 v7 = du1734 v4 v5 v6 v7
du1734 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du1734 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
name1812 = "Relation.Binary.Construct.NaturalOrder.Left._.x∙y≤x"
d1812 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> AgdaAny
d1812 v0 v1 v2 v3 v4 v5 v6 v7 = du1812 v4 v5 v6 v7
du1812 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> AgdaAny
du1812 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
             let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du104
               (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))))
         (coe v0 v2 v3) (coe v0 (coe v0 v2 v2) v3)
         (coe v0 (coe v0 v2 v3) v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du104
                  (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))))
            (coe v0 (coe v0 v2 v2) v3) (coe v0 v2 (coe v0 v2 v3))
            (coe v0 (coe v0 v2 v3) v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                   let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du104
                     (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))))
               (coe v0 v2 (coe v0 v2 v3)) (coe v0 (coe v0 v2 v3) v2)
               (coe v0 (coe v0 v2 v3) v2)
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                              let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                              coe
                                MAlonzo.Code.Algebra.Structures.du104
                                (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5)))) in
                let v5 = coe v0 (coe v0 v2 v3) v2 in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v4 v5))
               (coe MAlonzo.Code.Algebra.Structures.d242 v1 v2 (coe v0 v2 v3)))
            (coe
               MAlonzo.Code.Algebra.Structures.d126
               (MAlonzo.Code.Algebra.Structures.d160
                  (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))
               v2 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Structures.d90
            (MAlonzo.Code.Algebra.Structures.d124
               (coe
                  MAlonzo.Code.Algebra.Structures.d160
                  (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1))))
            v2 (coe v0 v2 v2) v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d36
               (MAlonzo.Code.Algebra.Structures.d88
                  (coe
                     MAlonzo.Code.Algebra.Structures.d124
                     (coe
                        MAlonzo.Code.Algebra.Structures.d160
                        (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
               (coe v0 v2 v2) v2
               (coe
                  MAlonzo.Code.Algebra.Structures.d162
                  (MAlonzo.Code.Algebra.Structures.d240 (coe v1)) v2))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d34
               (MAlonzo.Code.Algebra.Structures.d88
                  (coe
                     MAlonzo.Code.Algebra.Structures.d124
                     (coe
                        MAlonzo.Code.Algebra.Structures.d160
                        (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
               v3)))
name1822 = "Relation.Binary.Construct.NaturalOrder.Left._.x∙y≤y"
d1822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> AgdaAny
d1822 v0 v1 v2 v3 v4 v5 v6 v7 = du1822 v4 v5 v6 v7
du1822 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> AgdaAny
du1822 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
             let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du104
               (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))))
         (coe v0 v2 v3) (coe v0 v2 (coe v0 v3 v3))
         (coe v0 (coe v0 v2 v3) v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du104
                  (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))))
            (coe v0 v2 (coe v0 v3 v3)) (coe v0 (coe v0 v2 v3) v3)
            (coe v0 (coe v0 v2 v3) v3)
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d60
                          (let v4 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                           let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du104
                             (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5)))) in
             let v5 = coe v0 (coe v0 v2 v3) v3 in
             coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
               (coe v4 v5))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d36
               (MAlonzo.Code.Algebra.Structures.d88
                  (coe
                     MAlonzo.Code.Algebra.Structures.d124
                     (coe
                        MAlonzo.Code.Algebra.Structures.d160
                        (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
               (coe v0 (coe v0 v2 v3) v3) (coe v0 v2 (coe v0 v3 v3))
               (coe
                  MAlonzo.Code.Algebra.Structures.d126
                  (MAlonzo.Code.Algebra.Structures.d160
                     (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))
                  v2 v3 v3)))
         (coe
            MAlonzo.Code.Algebra.Structures.d90
            (MAlonzo.Code.Algebra.Structures.d124
               (coe
                  MAlonzo.Code.Algebra.Structures.d160
                  (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1))))
            v2 v2 v3 (coe v0 v3 v3)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d34
               (MAlonzo.Code.Algebra.Structures.d88
                  (coe
                     MAlonzo.Code.Algebra.Structures.d124
                     (coe
                        MAlonzo.Code.Algebra.Structures.d160
                        (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
               v2)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d36
               (MAlonzo.Code.Algebra.Structures.d88
                  (coe
                     MAlonzo.Code.Algebra.Structures.d124
                     (coe
                        MAlonzo.Code.Algebra.Structures.d160
                        (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
               (coe v0 v3 v3) v3
               (coe
                  MAlonzo.Code.Algebra.Structures.d162
                  (MAlonzo.Code.Algebra.Structures.d240 (coe v1)) v3))))
name1834
  = "Relation.Binary.Construct.NaturalOrder.Left._.∙-presʳ-≤"
d1834 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1834 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1834 v4 v5 v6 v7 v8 v9 v10
du1834 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1834 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du74
            (let v7 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
             let v8 = MAlonzo.Code.Algebra.Structures.d160 (coe v7) in
             coe
               MAlonzo.Code.Algebra.Structures.du104
               (coe MAlonzo.Code.Algebra.Structures.d124 (coe v8))))
         v4 (coe v0 v4 v3) (coe v0 v4 (coe v0 v2 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v7 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                let v8 = MAlonzo.Code.Algebra.Structures.d160 (coe v7) in
                coe
                  MAlonzo.Code.Algebra.Structures.du104
                  (coe MAlonzo.Code.Algebra.Structures.d124 (coe v8))))
            (coe v0 v4 v3) (coe v0 (coe v0 v4 v2) v3)
            (coe v0 v4 (coe v0 v2 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v7 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                   let v8 = MAlonzo.Code.Algebra.Structures.d160 (coe v7) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du104
                     (coe MAlonzo.Code.Algebra.Structures.d124 (coe v8))))
               (coe v0 (coe v0 v4 v2) v3) (coe v0 v4 (coe v0 v2 v3))
               (coe v0 v4 (coe v0 v2 v3))
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d60
                             (let v7 = MAlonzo.Code.Algebra.Structures.d240 (coe v1) in
                              let v8 = MAlonzo.Code.Algebra.Structures.d160 (coe v7) in
                              coe
                                MAlonzo.Code.Algebra.Structures.du104
                                (coe MAlonzo.Code.Algebra.Structures.d124 (coe v8)))) in
                let v8 = coe v0 v4 (coe v0 v2 v3) in
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                  (coe v7 v8))
               (coe
                  MAlonzo.Code.Algebra.Structures.d126
                  (MAlonzo.Code.Algebra.Structures.d160
                     (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))
                  v4 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d90
               (MAlonzo.Code.Algebra.Structures.d124
                  (coe
                     MAlonzo.Code.Algebra.Structures.d160
                     (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1))))
               v4 (coe v0 v4 v2) v3 v3 v5
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d34
                  (MAlonzo.Code.Algebra.Structures.d88
                     (coe
                        MAlonzo.Code.Algebra.Structures.d124
                        (coe
                           MAlonzo.Code.Algebra.Structures.d160
                           (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
                  v3)))
         v6)
name1846 = "Relation.Binary.Construct.NaturalOrder.Left._.infimum"
d1846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1846 v0 v1 v2 v3 v4 v5 v6 v7 = du1846 v4 v5 v6 v7
du1846 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1846 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1812 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe du1822 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe du1834 (coe v0) (coe v1) (coe v2) (coe v3)))
name1852 = "Relation.Binary.Construct.NaturalOrder.Left.isPreorder"
d1852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d1852 v0 v1 v2 v3 v4 v5 = du1852 v4 v5
du1852 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du1852 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d160 (coe v1))))
      (coe
         du1354 (coe v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d160 (coe v1)))
         (coe MAlonzo.Code.Algebra.Structures.d162 (coe v1)))
      (coe
         du1528 (coe v0)
         (coe MAlonzo.Code.Algebra.Structures.d160 (coe v1)))
name1886
  = "Relation.Binary.Construct.NaturalOrder.Left.isPartialOrder"
d1886 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d1886 v0 v1 v2 v3 v4 v5 = du1886 v4 v5
du1886 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du1886 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865
      (coe
         du1852 (coe v0)
         (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))
      (coe
         du1426 (coe v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d88
            (coe
               MAlonzo.Code.Algebra.Structures.d124
               (coe
                  MAlonzo.Code.Algebra.Structures.d160
                  (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1)))))
         (coe MAlonzo.Code.Algebra.Structures.d242 (coe v1)))
name1928
  = "Relation.Binary.Construct.NaturalOrder.Left.isDecPartialOrder"
d1928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T162
d1928 v0 v1 v2 v3 v4 v5 v6 = du1928 v4 v5 v6
du1928 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T162
du1928 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C5875
      (coe du1886 (coe v0) (coe v1)) (coe v2)
      (coe du1734 (coe v0) (coe v2))
name1934
  = "Relation.Binary.Construct.NaturalOrder.Left.isTotalOrder"
d1934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Binary.Structures.T340
d1934 v0 v1 v2 v3 v4 v5 v6 = du1934 v4 v5 v6
du1934 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Binary.Structures.T340
du1934 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C11665
      (coe du1886 (coe v0) (coe v1))
      (coe
         du1482 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d36
            (coe
               MAlonzo.Code.Algebra.Structures.d88
               (coe
                  MAlonzo.Code.Algebra.Structures.d124
                  (coe
                     MAlonzo.Code.Algebra.Structures.d160
                     (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1))))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d38
            (coe
               MAlonzo.Code.Algebra.Structures.d88
               (coe
                  MAlonzo.Code.Algebra.Structures.d124
                  (coe
                     MAlonzo.Code.Algebra.Structures.d160
                     (coe MAlonzo.Code.Algebra.Structures.d240 (coe v1))))))
         (coe v2) (coe MAlonzo.Code.Algebra.Structures.d242 (coe v1)))
name1978
  = "Relation.Binary.Construct.NaturalOrder.Left.isDecTotalOrder"
d1978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T388
d1978 v0 v1 v2 v3 v4 v5 v6 v7 = du1978 v4 v5 v6 v7
du1978 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T388
du1978 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C12739
      (coe du1934 (coe v0) (coe v1) (coe v2)) (coe v3)
      (coe du1734 (coe v0) (coe v3))
name1986 = "Relation.Binary.Construct.NaturalOrder.Left.preorder"
d1986 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d1986 v0 v1 v2 v3 v4 v5 = du1986 v4 v5
du1986 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du1986 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509
      (coe du1852 (coe v0) (coe v1))
name1990 = "Relation.Binary.Construct.NaturalOrder.Left.poset"
d1990 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d1990 v0 v1 v2 v3 v4 v5 = du1990 v4 v5
du1990 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du1990 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365
      (coe du1886 (coe v0) (coe v1))
name1994 = "Relation.Binary.Construct.NaturalOrder.Left.decPoset"
d1994 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T282
d1994 v0 v1 v2 v3 v4 v5 v6 = du1994 v4 v5 v6
du1994 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T282
du1994 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C3319
      (coe du1928 (coe v0) (coe v1) (coe v2))
name2000 = "Relation.Binary.Construct.NaturalOrder.Left.totalOrder"
d2000 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Binary.Bundles.T574
d2000 v0 v1 v2 v3 v4 v5 v6 = du2000 v4 v5 v6
du2000 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Binary.Bundles.T574
du2000 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C6779
      (coe du1934 (coe v0) (coe v1) (coe v2))
name2006
  = "Relation.Binary.Construct.NaturalOrder.Left.decTotalOrder"
d2006 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
d2006 v0 v1 v2 v3 v4 v5 v6 v7 = du2006 v4 v5 v6 v7
du2006 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T232 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
du2006 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C7777
      (coe du1978 (coe v0) (coe v1) (coe v2) (coe v3))
