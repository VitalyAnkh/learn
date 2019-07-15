{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
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
name80 = "Relation.Binary.Construct.NaturalOrder.Left._.Selective"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d80 = erased
name94 = "Relation.Binary.Construct.NaturalOrder.Left._.IsBand"
d94 a0 a1 a2 a3 a4 a5 = ()
name116 = "Relation.Binary.Construct.NaturalOrder.Left._.IsMagma"
d116 a0 a1 a2 a3 a4 a5 = ()
name126
  = "Relation.Binary.Construct.NaturalOrder.Left._.IsSemigroup"
d126 a0 a1 a2 a3 a4 a5 = ()
name128
  = "Relation.Binary.Construct.NaturalOrder.Left._.IsSemilattice"
d128 a0 a1 a2 a3 a4 a5 = ()
name1256 = "Relation.Binary.Construct.NaturalOrder.Left._≤_"
d1256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d1256 = erased
name1262 = "Relation.Binary.Construct.NaturalOrder.Left.reflexive"
d1262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T84 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1262 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1262 v4 v5 v6 v7 v8 v9
du1262 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T84 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1262 v0 v1 v2 v3 v4 v5
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v1)))))
               (coe v3) (coe v0 v3 v3) (coe v0 v3 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d416
                  (MAlonzo.Code.Algebra.Structures.d92 (coe v1)) (coe v0 v3 v3) v3
                  (coe v2 v3))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v1)))))
                     (coe v0 v3 v3) (coe v0 v3 v4) (coe v0 v3 v4)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d94 v1 v3 v3 v3 v4
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d414
                           (MAlonzo.Code.Algebra.Structures.d92 (coe v1)) v3)
                        v5)
                     (let v6
                            = MAlonzo.Code.Relation.Binary.Core.d414
                                (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v1))) in
                      let v7 = coe v0 v3 v4 in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                           (coe v6 v7))))))))
name1322 = "Relation.Binary.Construct.NaturalOrder.Left.refl"
d1322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1322 v0 v1 v2 v3 v4 v5 v6 v7 = du1322 v4 v5 v6 v7
du1322 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1322 v0 v1 v2 v3 = coe v1 (coe v0 v3 v3) v3 (coe v2 v3)
name1330 = "Relation.Binary.Construct.NaturalOrder.Left.antisym"
d1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1330 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1330 v4 v5 v6 v7 v8 v9 v10
du1330 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1330 v0 v1 v2 v3 v4 v5 v6
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe (MAlonzo.Code.Relation.Binary.Core.d418 (coe v1))) (coe v3)
               (coe v0 v3 v4) (coe v4) (coe v5)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe (MAlonzo.Code.Relation.Binary.Core.d418 (coe v1)))
                     (coe v0 v3 v4) (coe v0 v4 v3) (coe v4) (coe v2 v3 v4)
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe (MAlonzo.Code.Relation.Binary.Core.d418 (coe v1)))
                           (coe v0 v4 v3) (coe v4) (coe v4)
                           (coe
                              MAlonzo.Code.Relation.Binary.Core.d416 v1 v4 (coe v0 v4 v3) v6)
                           (let v7 = MAlonzo.Code.Relation.Binary.Core.d414 (coe v1) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v7 v4))))))))))
name1382 = "Relation.Binary.Construct.NaturalOrder.Left.total"
d1382 ::
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
d1382 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1382 v4 v5 v6 v7 v8 v9 v10
du1382 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du1382 v0 v1 v2 v3 v4 v5 v6
  = let v7 = coe v3 v5 v6 in
    case coe v7 of
      MAlonzo.Code.Data.Sum.Base.C38 v8
        -> coe
             (MAlonzo.Code.Data.Sum.Base.C38 (coe v1 (coe v0 v5 v6) v5 v8))
      MAlonzo.Code.Data.Sum.Base.C42 v8
        -> coe
             (MAlonzo.Code.Data.Sum.Base.C42
                (coe
                   v1 (coe v0 v6 v5) v6
                   (coe v2 (coe v0 v6 v5) (coe v0 v5 v6) v6 (coe v4 v6 v5) v8)))
      _ -> MAlonzo.RTE.mazUnreachableError
name1428 = "Relation.Binary.Construct.NaturalOrder.Left.trans"
d1428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1428 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1428 v4 v5 v6 v7 v8 v9 v10
du1428 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1428 v0 v1 v2 v3 v4 v5 v6
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (coe
                              (MAlonzo.Code.Algebra.Structures.du106
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v1)))))))))
               (coe v2) (coe v0 v2 v3) (coe v0 v2 v4) (coe v5)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.du106
                                       (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v1)))))))))
                     (coe v0 v2 v3) (coe v0 v2 (coe v0 v3 v4)) (coe v0 v2 v4)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d94
                        (MAlonzo.Code.Algebra.Structures.d126 (coe v1)) v2 v2 v3
                        (coe v0 v3 v4)
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d414
                           (MAlonzo.Code.Algebra.Structures.d92
                              (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v1))))
                           v2)
                        v6)
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.du106
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe v1)))))))))
                           (coe v0 v2 (coe v0 v3 v4)) (coe v0 (coe v0 v2 v3) v4)
                           (coe v0 v2 v4)
                           (coe
                              MAlonzo.Code.Relation.Binary.Core.d416
                              (MAlonzo.Code.Algebra.Structures.d92
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v1))))
                              (coe v0 (coe v0 v2 v3) v4) (coe v0 v2 (coe v0 v3 v4))
                              (coe MAlonzo.Code.Algebra.Structures.d128 v1 v2 v3 v4))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.du106
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                         (coe v1)))))))))
                                 (coe v0 (coe v0 v2 v3) v4) (coe v0 v2 v4) (coe v0 v2 v4)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d94
                                    (MAlonzo.Code.Algebra.Structures.d126 (coe v1)) (coe v0 v2 v3)
                                    v2 v4 v4
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Core.d416
                                       (MAlonzo.Code.Algebra.Structures.d92
                                          (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v1))))
                                       v2 (coe v0 v2 v3) v5)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Core.d414
                                       (MAlonzo.Code.Algebra.Structures.d92
                                          (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v1))))
                                       v4))
                                 (let v7
                                        = MAlonzo.Code.Relation.Binary.Core.d414
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.d144
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.du106
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Structures.d126
                                                              (coe v1))))))) in
                                  let v8 = coe v0 v2 v4 in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                       (coe v7 v8))))))))))))
name1494 = "Relation.Binary.Construct.NaturalOrder.Left.respʳ"
d1494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1494 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1494 v4 v5 v6 v7 v8 v9 v10
du1494 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1494 v0 v1 v2 v3 v4 v5 v6
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v1)))))
               (coe v2) (coe v0 v2 v3) (coe v0 v2 v4) (coe v6)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v1)))))
                     (coe v0 v2 v3) (coe v0 v2 v4) (coe v0 v2 v4)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d94 v1 v2 v2 v3 v4
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d414
                           (MAlonzo.Code.Algebra.Structures.d92 (coe v1)) v2)
                        v5)
                     (let v7
                            = MAlonzo.Code.Relation.Binary.Core.d414
                                (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v1))) in
                      let v8 = coe v0 v2 v4 in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                           (coe v7 v8))))))))
name1556 = "Relation.Binary.Construct.NaturalOrder.Left.respˡ"
d1556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1556 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1556 v4 v5 v6 v7 v8 v9 v10
du1556 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1556 v0 v1 v2 v3 v4 v5 v6
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v1)))))
               (coe v4) (coe v3) (coe v0 v4 v2)
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d416
                  (MAlonzo.Code.Algebra.Structures.d92 (coe v1)) v3 v4 v5)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v1)))))
                     (coe v3) (coe v0 v3 v2) (coe v0 v4 v2) (coe v6)
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v1)))))
                           (coe v0 v3 v2) (coe v0 v4 v2) (coe v0 v4 v2)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d94 v1 v3 v4 v2 v2 v5
                              (coe
                                 MAlonzo.Code.Relation.Binary.Core.d414
                                 (MAlonzo.Code.Algebra.Structures.d92 (coe v1)) v2))
                           (let v7
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v1))) in
                            let v8 = coe v0 v4 v2 in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v7 v8))))))))))
name1618 = "Relation.Binary.Construct.NaturalOrder.Left.resp₂"
d1618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T84 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1618 v0 v1 v2 v3 v4 v5 = du1618 v4 v5
du1618 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T84 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1618 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1494 (coe v0) (coe v1))) (coe (du1556 (coe v0) (coe v1))))
name1622 = "Relation.Binary.Construct.NaturalOrder.Left.dec"
d1622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d1622 v0 v1 v2 v3 v4 v5 v6 v7 = du1622 v4 v5 v6 v7
du1622 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du1622 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
name1696 = "Relation.Binary.Construct.NaturalOrder.Left._.x∙y≤x"
d1696 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  AgdaAny -> AgdaAny -> AgdaAny
d1696 v0 v1 v2 v3 v4 v5 v6 v7 = du1696 v4 v5 v6 v7
du1696 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  AgdaAny -> AgdaAny -> AgdaAny
du1696 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v4 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du106
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5)))))))))
               (coe v0 v2 v3) (coe v0 (coe v0 v2 v2) v3)
               (coe v0 (coe v0 v2 v3) v2)
               (coe
                  MAlonzo.Code.Algebra.Structures.d94
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d160
                           (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1))))))
                  v2 (coe v0 v2 v2) v3 v3
                  (coe
                     MAlonzo.Code.Relation.Binary.Core.d416
                     (MAlonzo.Code.Algebra.Structures.d92
                        (coe
                           (MAlonzo.Code.Algebra.Structures.d126
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d160
                                    (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1))))))))
                     (coe v0 v2 v2) v2
                     (coe
                        MAlonzo.Code.Algebra.Structures.d162
                        (MAlonzo.Code.Algebra.Structures.d198 (coe v1)) v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Core.d414
                     (MAlonzo.Code.Algebra.Structures.d92
                        (coe
                           (MAlonzo.Code.Algebra.Structures.d126
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d160
                                    (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1))))))))
                     v3))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v4 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
                                  let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du106
                                       (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5)))))))))
                     (coe v0 (coe v0 v2 v2) v3) (coe v0 v2 (coe v0 v2 v3))
                     (coe v0 (coe v0 v2 v3) v2)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d128
                        (MAlonzo.Code.Algebra.Structures.d160
                           (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1))))
                        v2 v2 v3)
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v4 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
                                        let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du106
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe v5)))))))))
                           (coe v0 v2 (coe v0 v2 v3)) (coe v0 (coe v0 v2 v3) v2)
                           (coe v0 (coe v0 v2 v3) v2)
                           (coe MAlonzo.Code.Algebra.Structures.d200 v1 v2 (coe v0 v2 v3))
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v4
                                                   = MAlonzo.Code.Algebra.Structures.d198
                                                       (coe v1) in
                                             let v5
                                                   = MAlonzo.Code.Algebra.Structures.d160
                                                       (coe v4) in
                                             coe
                                               (MAlonzo.Code.Algebra.Structures.du106
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d126
                                                        (coe v5))))))) in
                            let v5 = coe v0 (coe v0 v2 v3) v2 in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v4 v5))))))))))
name1706 = "Relation.Binary.Construct.NaturalOrder.Left._.x∙y≤y"
d1706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  AgdaAny -> AgdaAny -> AgdaAny
d1706 v0 v1 v2 v3 v4 v5 v6 v7 = du1706 v4 v5 v6 v7
du1706 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  AgdaAny -> AgdaAny -> AgdaAny
du1706 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v4 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du106
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5)))))))))
               (coe v0 v2 v3) (coe v0 v2 (coe v0 v3 v3))
               (coe v0 (coe v0 v2 v3) v3)
               (coe
                  MAlonzo.Code.Algebra.Structures.d94
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d160
                           (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1))))))
                  v2 v2 v3 (coe v0 v3 v3)
                  (coe
                     MAlonzo.Code.Relation.Binary.Core.d414
                     (MAlonzo.Code.Algebra.Structures.d92
                        (coe
                           (MAlonzo.Code.Algebra.Structures.d126
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d160
                                    (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1))))))))
                     v2)
                  (coe
                     MAlonzo.Code.Relation.Binary.Core.d416
                     (MAlonzo.Code.Algebra.Structures.d92
                        (coe
                           (MAlonzo.Code.Algebra.Structures.d126
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d160
                                    (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1))))))))
                     (coe v0 v3 v3) v3
                     (coe
                        MAlonzo.Code.Algebra.Structures.d162
                        (MAlonzo.Code.Algebra.Structures.d198 (coe v1)) v3)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v4 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
                                  let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du106
                                       (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5)))))))))
                     (coe v0 v2 (coe v0 v3 v3)) (coe v0 (coe v0 v2 v3) v3)
                     (coe v0 (coe v0 v2 v3) v3)
                     (coe
                        MAlonzo.Code.Relation.Binary.Core.d416
                        (MAlonzo.Code.Algebra.Structures.d92
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d126
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d160
                                       (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1))))))))
                        (coe v0 (coe v0 v2 v3) v3) (coe v0 v2 (coe v0 v3 v3))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d128
                           (MAlonzo.Code.Algebra.Structures.d160
                              (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1))))
                           v2 v3 v3))
                     (let v4
                            = MAlonzo.Code.Relation.Binary.Core.d414
                                (coe
                                   (MAlonzo.Code.Relation.Binary.d144
                                      (let v4 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
                                       let v5 = MAlonzo.Code.Algebra.Structures.d160 (coe v4) in
                                       coe
                                         (MAlonzo.Code.Algebra.Structures.du106
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d126
                                                  (coe v5))))))) in
                      let v5 = coe v0 (coe v0 v2 v3) v3 in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                           (coe v4 v5))))))))
name1718
  = "Relation.Binary.Construct.NaturalOrder.Left._.∙-presʳ-≤"
d1718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1718 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1718 v4 v5 v6 v7 v8 v9 v10
du1718 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1718 v0 v1 v2 v3 v4 v5 v6
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v7 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
                            let v8 = MAlonzo.Code.Algebra.Structures.d160 (coe v7) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du106
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v8)))))))))
               (coe v4) (coe v0 v4 v3) (coe v0 v4 (coe v0 v2 v3)) (coe v6)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v7 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
                                  let v8 = MAlonzo.Code.Algebra.Structures.d160 (coe v7) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du106
                                       (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v8)))))))))
                     (coe v0 v4 v3) (coe v0 (coe v0 v4 v2) v3)
                     (coe v0 v4 (coe v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d94
                        (MAlonzo.Code.Algebra.Structures.d126
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d160
                                 (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1))))))
                        v4 (coe v0 v4 v2) v3 v3 v5
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d414
                           (MAlonzo.Code.Algebra.Structures.d92
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d126
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d160
                                          (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1))))))))
                           v3))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v7 = MAlonzo.Code.Algebra.Structures.d198 (coe v1) in
                                        let v8 = MAlonzo.Code.Algebra.Structures.d160 (coe v7) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du106
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe v8)))))))))
                           (coe v0 (coe v0 v4 v2) v3) (coe v0 v4 (coe v0 v2 v3))
                           (coe v0 v4 (coe v0 v2 v3))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d128
                              (MAlonzo.Code.Algebra.Structures.d160
                                 (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1))))
                              v4 v2 v3)
                           (let v7
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v7
                                                   = MAlonzo.Code.Algebra.Structures.d198
                                                       (coe v1) in
                                             let v8
                                                   = MAlonzo.Code.Algebra.Structures.d160
                                                       (coe v7) in
                                             coe
                                               (MAlonzo.Code.Algebra.Structures.du106
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d126
                                                        (coe v8))))))) in
                            let v8 = coe v0 v4 (coe v0 v2 v3) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v7 v8))))))))))
name1730 = "Relation.Binary.Construct.NaturalOrder.Left._.infimum"
d1730 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1730 v0 v1 v2 v3 v4 v5 v6 v7 = du1730 v4 v5 v6 v7
du1730 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1730 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1696 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            (MAlonzo.Code.Agda.Builtin.Sigma.C32
               (coe (du1706 (coe v0) (coe v1) (coe v2) (coe v3)))
               (coe (du1718 (coe v0) (coe v1) (coe v2) (coe v3))))))
name1736 = "Relation.Binary.Construct.NaturalOrder.Left.isPreorder"
d1736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152 ->
  MAlonzo.Code.Relation.Binary.T16
d1736 v0 v1 v2 v3 v4 v5 = du1736 v4 v5
du1736 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152 ->
  MAlonzo.Code.Relation.Binary.T16
du1736 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C17
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe (MAlonzo.Code.Algebra.Structures.d160 (coe v1)))))))
         (coe
            (du1262
               (coe v0)
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe (MAlonzo.Code.Algebra.Structures.d160 (coe v1)))))
               (coe (MAlonzo.Code.Algebra.Structures.d162 (coe v1)))))
         (coe
            (du1428
               (coe v0) (coe (MAlonzo.Code.Algebra.Structures.d160 (coe v1))))))
name1768
  = "Relation.Binary.Construct.NaturalOrder.Left.isPartialOrder"
d1768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  MAlonzo.Code.Relation.Binary.T256
d1768 v0 v1 v2 v3 v4 v5 = du1768 v4 v5
du1768 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  MAlonzo.Code.Relation.Binary.T256
du1768 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.C1639
         (coe
            (du1736
               (coe v0) (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1)))))
         (coe
            (du1330
               (coe v0)
               (coe
                  (MAlonzo.Code.Algebra.Structures.d92
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d126
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d160
                                 (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1)))))))))
               (coe (MAlonzo.Code.Algebra.Structures.d200 (coe v1))))))
name1808
  = "Relation.Binary.Construct.NaturalOrder.Left.isDecPartialOrder"
d1808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T378
d1808 v0 v1 v2 v3 v4 v5 v6 = du1808 v4 v5 v6
du1808 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T378
du1808 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.C2295
         (coe (du1768 (coe v0) (coe v1))) (coe v2)
         (coe (du1622 (coe v0) (coe v2))))
name1814
  = "Relation.Binary.Construct.NaturalOrder.Left.isTotalOrder"
d1814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Binary.T876
d1814 v0 v1 v2 v3 v4 v5 v6 = du1814 v4 v5 v6
du1814 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Binary.T876
du1814 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.C5461
         (coe (du1768 (coe v0) (coe v1)))
         (coe
            (du1382
               (coe v0)
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d416
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d92
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d126
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d160
                                       (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1)))))))))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d92
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d126
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d160
                                       (coe (MAlonzo.Code.Algebra.Structures.d198 (coe v1)))))))))))
               (coe v2) (coe (MAlonzo.Code.Algebra.Structures.d200 (coe v1))))))
name1856
  = "Relation.Binary.Construct.NaturalOrder.Left.isDecTotalOrder"
d1856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T1010
d1856 v0 v1 v2 v3 v4 v5 v6 v7 = du1856 v4 v5 v6 v7
du1856 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T1010
du1856 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.C6205
         (coe (du1814 (coe v0) (coe v1) (coe v2))) (coe v3)
         (coe (du1622 (coe v0) (coe v3))))
name1864 = "Relation.Binary.Construct.NaturalOrder.Left.preorder"
d1864 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152 ->
  MAlonzo.Code.Relation.Binary.T74
d1864 v0 v1 v2 v3 v4 v5 = du1864 v4 v5
du1864 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T152 ->
  MAlonzo.Code.Relation.Binary.T74
du1864 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C807 v5) erased
      erased erased (du1736 (coe v0) (coe v1))
name1868 = "Relation.Binary.Construct.NaturalOrder.Left.poset"
d1868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  MAlonzo.Code.Relation.Binary.T310
d1868 v0 v1 v2 v3 v4 v5 = du1868 v4 v5
du1868 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  MAlonzo.Code.Relation.Binary.T310
du1868 v0 v1
  = coe
      (\ v2 v3 v4 v5 -> MAlonzo.Code.Relation.Binary.C1973 v5) erased
      erased erased (du1768 (coe v0) (coe v1))
name1872 = "Relation.Binary.Construct.NaturalOrder.Left.decPoset"
d1872 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T458
d1872 v0 v1 v2 v3 v4 v5 v6 = du1872 v4 v5 v6
du1872 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T458
du1872 v0 v1 v2
  = coe
      (\ v3 v4 v5 v6 -> MAlonzo.Code.Relation.Binary.C2893 v6) erased
      erased erased (du1808 (coe v0) (coe v1) (coe v2))
name1878 = "Relation.Binary.Construct.NaturalOrder.Left.totalOrder"
d1878 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Binary.T934
d1878 v0 v1 v2 v3 v4 v5 v6 = du1878 v4 v5 v6
du1878 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Relation.Binary.T934
du1878 v0 v1 v2
  = coe
      (\ v3 v4 v5 v6 -> MAlonzo.Code.Relation.Binary.C5847 v6) erased
      erased erased (du1814 (coe v0) (coe v1) (coe v2))
name1884
  = "Relation.Binary.Construct.NaturalOrder.Left.decTotalOrder"
d1884 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T1084
d1884 v0 v1 v2 v3 v4 v5 v6 v7 = du1884 v4 v5 v6 v7
du1884 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T190 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T1084
du1884 v0 v1 v2 v3
  = coe
      (\ v4 v5 v6 v7 -> MAlonzo.Code.Relation.Binary.C6763 v7) erased
      erased erased (du1856 (coe v0) (coe v1) (coe v2) (coe v3))
