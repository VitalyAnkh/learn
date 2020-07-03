{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Construct.NaturalChoice.Min where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

name90 = "Algebra.Construct.NaturalChoice.Min._.Associative"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d90 = erased
name94 = "Algebra.Construct.NaturalChoice.Min._.Commutative"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d94 = erased
name98 = "Algebra.Construct.NaturalChoice.Min._.Congruent₂"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d98 = erased
name102 = "Algebra.Construct.NaturalChoice.Min._.Idempotent"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d102 = erased
name106 = "Algebra.Construct.NaturalChoice.Min._.Identity"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d106 = erased
name120 = "Algebra.Construct.NaturalChoice.Min._.LeftIdentity"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d120 = erased
name124 = "Algebra.Construct.NaturalChoice.Min._.LeftZero"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d124 = erased
name132 = "Algebra.Construct.NaturalChoice.Min._.RightIdentity"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d132 = erased
name136 = "Algebra.Construct.NaturalChoice.Min._.RightZero"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d136 = erased
name138 = "Algebra.Construct.NaturalChoice.Min._.Selective"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d138 = erased
name140 = "Algebra.Construct.NaturalChoice.Min._.Zero"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d140 = erased
name146 = "Algebra.Construct.NaturalChoice.Min._.IsBand"
d146 a0 a1 a2 a3 a4 = ()
name170 = "Algebra.Construct.NaturalChoice.Min._.IsMagma"
d170 a0 a1 a2 a3 a4 = ()
name172 = "Algebra.Construct.NaturalChoice.Min._.IsMonoid"
d172 a0 a1 a2 a3 a4 a5 = ()
name178 = "Algebra.Construct.NaturalChoice.Min._.IsSelectiveMagma"
d178 a0 a1 a2 a3 a4 = ()
name180 = "Algebra.Construct.NaturalChoice.Min._.IsSemigroup"
d180 a0 a1 a2 a3 a4 = ()
name182 = "Algebra.Construct.NaturalChoice.Min._.IsSemilattice"
d182 a0 a1 a2 a3 a4 = ()
name1404 = "Algebra.Construct.NaturalChoice.Min._⊓_"
d1404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
d1404 v0 v1 v2 v3 v4 v5 = du1404 v3 v4 v5
du1404 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
du1404 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v2 in
    case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C38 v4 -> coe v1
      MAlonzo.Code.Data.Sum.Base.C42 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1426 = "Algebra.Construct.NaturalChoice.Min.⊓-sel"
d1426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d1426 v0 v1 v2 v3 v4 v5 = du1426 v3 v4 v5
du1426 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du1426 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v2 in
    case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C38 v4
        -> coe
             MAlonzo.Code.Data.Sum.Base.C38
             (let v5
                    = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
              let v6 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v5) in
              coe
                MAlonzo.Code.Relation.Binary.Structures.d34
                (MAlonzo.Code.Relation.Binary.Structures.d80
                   (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v6)))
                v1)
      MAlonzo.Code.Data.Sum.Base.C42 v4
        -> coe
             MAlonzo.Code.Data.Sum.Base.C42
             (let v5
                    = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
              let v6 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v5) in
              coe
                MAlonzo.Code.Relation.Binary.Structures.d34
                (MAlonzo.Code.Relation.Binary.Structures.d80
                   (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v6)))
                v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name1448 = "Algebra.Construct.NaturalChoice.Min.⊓-idem"
d1448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 -> AgdaAny -> AgdaAny
d1448 v0 v1 v2 v3 v4 = du1448 v3 v4
du1448 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 -> AgdaAny -> AgdaAny
du1448 v0 v1
  = let v2 = coe du1426 (coe v0) (coe v1) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3 -> coe v3
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1464 = "Algebra.Construct.NaturalChoice.Min.⊓-cong"
d1464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1464 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1464 v3 v4 v5 v6 v7 v8 v9
du1464 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1464 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v3 in
    let v8
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v2 v4 in
    case coe v7 of
      MAlonzo.Code.Data.Sum.Base.C38 v9
        -> case coe v8 of
             MAlonzo.Code.Data.Sum.Base.C38 v10 -> coe v5
             MAlonzo.Code.Data.Sum.Base.C42 v10
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d128
                    (MAlonzo.Code.Relation.Binary.Structures.d348
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
                    v1 v4
                    (let v11 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
                     let v12 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v11) in
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du106
                       (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v12))
                       (coe v1) (coe v3) (coe v4) (coe v6) (coe v9))
                    (let v11 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
                     let v12 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v11) in
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du106
                       (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v12))
                       (coe v4) (coe v2) (coe v1)
                       (let v13
                              = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                        let v14
                              = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v13) in
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.d36
                          (MAlonzo.Code.Relation.Binary.Structures.d80
                             (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v14)))
                          v1 v2 v5)
                       (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v9
        -> case coe v8 of
             MAlonzo.Code.Data.Sum.Base.C38 v10
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d128
                    (MAlonzo.Code.Relation.Binary.Structures.d348
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
                    v3 v2
                    (let v11 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
                     let v12 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v11) in
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du106
                       (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v12))
                       (coe v3) (coe v1) (coe v2) (coe v5) (coe v9))
                    (let v11 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
                     let v12 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v11) in
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du106
                       (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v12))
                       (coe v2) (coe v4) (coe v3)
                       (let v13
                              = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                        let v14
                              = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v13) in
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.d36
                          (MAlonzo.Code.Relation.Binary.Structures.d80
                             (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v14)))
                          v3 v4 v6)
                       (coe v10))
             MAlonzo.Code.Data.Sum.Base.C42 v10 -> coe v6
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1546 = "Algebra.Construct.NaturalChoice.Min.⊓-comm"
d1546 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
d1546 v0 v1 v2 v3 v4 v5 = du1546 v3 v4 v5
du1546 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
du1546 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v2 in
    let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v2 v1 in
    case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Base.C38 v6
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d128
                    (MAlonzo.Code.Relation.Binary.Structures.d348
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
                    v1 v2 v5 v6
             MAlonzo.Code.Data.Sum.Base.C42 v6
               -> let v7
                        = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                  let v8 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v7) in
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.d34
                    (MAlonzo.Code.Relation.Binary.Structures.d80
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v8)))
                    v1
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Base.C38 v6
               -> let v7
                        = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                  let v8 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v7) in
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.d34
                    (MAlonzo.Code.Relation.Binary.Structures.d80
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v8)))
                    v2
             MAlonzo.Code.Data.Sum.Base.C42 v6
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d128
                    (MAlonzo.Code.Relation.Binary.Structures.d348
                       (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
                    v2 v1 v5 v6
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1580 = "Algebra.Construct.NaturalChoice.Min.⊓-assoc"
d1580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1580 v0 v1 v2 v3 v4 v5 v6 = du1580 v3 v4 v5 v6
du1580 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1580 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v2 in
    let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v3 in
    let v6
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v2 v3 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v7
        -> case coe v5 of
             MAlonzo.Code.Data.Sum.Base.C38 v8
               -> coe
                    seq (coe v6)
                    (let v9
                           = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                     let v10
                           = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v9) in
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.d34
                       (MAlonzo.Code.Relation.Binary.Structures.d80
                          (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v10)))
                       v1)
             MAlonzo.Code.Data.Sum.Base.C42 v8
               -> case coe v6 of
                    MAlonzo.Code.Data.Sum.Base.C38 v9
                      -> coe
                           MAlonzo.Code.Relation.Binary.Structures.d128
                           (MAlonzo.Code.Relation.Binary.Structures.d348
                              (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
                           v3 v1 v8
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d84
                              (MAlonzo.Code.Relation.Binary.Structures.d126
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d348
                                    (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
                              v1 v2 v3 v7 v9)
                    MAlonzo.Code.Data.Sum.Base.C42 v9
                      -> let v10
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                         let v11
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v10) in
                         coe
                           MAlonzo.Code.Relation.Binary.Structures.d34
                           (MAlonzo.Code.Relation.Binary.Structures.d80
                              (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v11)))
                           v3
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v7
        -> case coe v5 of
             MAlonzo.Code.Data.Sum.Base.C38 v8
               -> case coe v6 of
                    MAlonzo.Code.Data.Sum.Base.C38 v9
                      -> let v10
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                         let v11
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v10) in
                         coe
                           MAlonzo.Code.Relation.Binary.Structures.d34
                           (MAlonzo.Code.Relation.Binary.Structures.d80
                              (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v11)))
                           v2
                    MAlonzo.Code.Data.Sum.Base.C42 v9
                      -> coe
                           MAlonzo.Code.Relation.Binary.Structures.d128
                           (MAlonzo.Code.Relation.Binary.Structures.d348
                              (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
                           v3 v1
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d84
                              (MAlonzo.Code.Relation.Binary.Structures.d126
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d348
                                    (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
                              v3 v2 v1 v9 v7)
                           v8
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.Sum.Base.C42 v8
               -> case coe v6 of
                    MAlonzo.Code.Data.Sum.Base.C38 v9
                      -> let v10
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                         let v11
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v10) in
                         coe
                           MAlonzo.Code.Relation.Binary.Structures.d34
                           (MAlonzo.Code.Relation.Binary.Structures.d80
                              (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v11)))
                           v2
                    MAlonzo.Code.Data.Sum.Base.C42 v9
                      -> let v10
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
                         let v11
                               = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v10) in
                         coe
                           MAlonzo.Code.Relation.Binary.Structures.d34
                           (MAlonzo.Code.Relation.Binary.Structures.d80
                              (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v11)))
                           v3
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2110 = "Algebra.Construct.NaturalChoice.Min.⊓-identityˡ"
d2110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d2110 v0 v1 v2 v3 v4 v5 v6 = du2110 v3 v4 v5 v6
du2110 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du2110 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v3 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d128
             (MAlonzo.Code.Relation.Binary.Structures.d348
                (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
             v1 v3 v5 (coe v2 v3)
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> let v6
                 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
           let v7 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v6) in
           coe
             MAlonzo.Code.Relation.Binary.Structures.d34
             (MAlonzo.Code.Relation.Binary.Structures.d80
                (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v7)))
             v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2140 = "Algebra.Construct.NaturalChoice.Min.⊓-identityʳ"
d2140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d2140 v0 v1 v2 v3 v4 v5 v6 = du2140 v3 v4 v5 v6
du2140 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du2140 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v3 v1 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> let v6
                 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
           let v7 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v6) in
           coe
             MAlonzo.Code.Relation.Binary.Structures.d34
             (MAlonzo.Code.Relation.Binary.Structures.d80
                (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v7)))
             v3
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d128
             (MAlonzo.Code.Relation.Binary.Structures.d348
                (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
             v1 v3 v5 (coe v2 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name2170 = "Algebra.Construct.NaturalChoice.Min.⊓-identity"
d2170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2170 v0 v1 v2 v3 v4 v5 = du2170 v3 v4 v5
du2170 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du2170 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du2110 (coe v0) (coe v1) (coe v2))
      (coe du2140 (coe v0) (coe v1) (coe v2))
name2176 = "Algebra.Construct.NaturalChoice.Min.⊓-zeroˡ"
d2176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d2176 v0 v1 v2 v3 v4 v5 v6 = du2176 v3 v4 v5 v6
du2176 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du2176 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v3 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> let v6
                 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
           let v7 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v6) in
           coe
             MAlonzo.Code.Relation.Binary.Structures.d34
             (MAlonzo.Code.Relation.Binary.Structures.d80
                (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v7)))
             v1
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d128
             (MAlonzo.Code.Relation.Binary.Structures.d348
                (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
             v3 v1 v5 (coe v2 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name2206 = "Algebra.Construct.NaturalChoice.Min.⊓-zeroʳ"
d2206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d2206 v0 v1 v2 v3 v4 v5 v6 = du2206 v3 v4 v5 v6
du2206 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du2206 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v3 v1 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d128
             (MAlonzo.Code.Relation.Binary.Structures.d348
                (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
             v3 v1 v5 (coe v2 v3)
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> let v6
                 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
           let v7 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v6) in
           coe
             MAlonzo.Code.Relation.Binary.Structures.d34
             (MAlonzo.Code.Relation.Binary.Structures.d80
                (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v7)))
             v1
      _ -> MAlonzo.RTE.mazUnreachableError
name2236 = "Algebra.Construct.NaturalChoice.Min.⊓-zero"
d2236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2236 v0 v1 v2 v3 v4 v5 = du2236 v3 v4 v5
du2236 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du2236 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du2176 (coe v0) (coe v1) (coe v2))
      (coe du2206 (coe v0) (coe v1) (coe v2))
name2240 = "Algebra.Construct.NaturalChoice.Min.⊓-isMagma"
d2240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T80
d2240 v0 v1 v2 v3 = du2240 v3
du2240 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T80
du2240 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d348
               (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))))
      (coe du1464 (coe v0))
name2242 = "Algebra.Construct.NaturalChoice.Min.⊓-isSemigroup"
d2242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T116
d2242 v0 v1 v2 v3 = du2242 v3
du2242 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T116
du2242 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C1721 (coe du2240 (coe v0))
      (coe du1580 (coe v0))
name2244 = "Algebra.Construct.NaturalChoice.Min.⊓-isBand"
d2244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T152
d2244 v0 v1 v2 v3 = du2244 v3
du2244 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T152
du2244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C2175 (coe du2242 (coe v0))
      (coe du1448 (coe v0))
name2246 = "Algebra.Construct.NaturalChoice.Min.⊓-isSemilattice"
d2246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T232
d2246 v0 v1 v2 v3 = du2246 v3
du2246 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T232
du2246 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C3189 (coe du2244 (coe v0))
      (coe du1546 (coe v0))
name2250 = "Algebra.Construct.NaturalChoice.Min.⊓-isMonoid"
d2250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Structures.T314
d2250 v0 v1 v2 v3 v4 v5 = du2250 v3 v4 v5
du2250 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Structures.T314
du2250 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C4201 (coe du2242 (coe v0))
      (coe du2170 (coe v0) (coe v1) (coe v2))
name2254 = "Algebra.Construct.NaturalChoice.Min.⊓-isSelectiveMagma"
d2254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T276
d2254 v0 v1 v2 v3 = du2254 v3
du2254 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Structures.T276
du2254 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C3745 (coe du2240 (coe v0))
      (coe du1426 (coe v0))
name2256 = "Algebra.Construct.NaturalChoice.Min.⊓-magma"
d2256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T30
d2256 v0 v1 v2 v3 = du2256 v3
du2256 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T30
du2256 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C255 (coe du1404 (coe v0))
      (coe du2240 (coe v0))
name2258 = "Algebra.Construct.NaturalChoice.Min.⊓-semigroup"
d2258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T80
d2258 v0 v1 v2 v3 = du2258 v3
du2258 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T80
du2258 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C877 (coe du1404 (coe v0))
      (coe du2242 (coe v0))
name2260 = "Algebra.Construct.NaturalChoice.Min.⊓-band"
d2260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T138
d2260 v0 v1 v2 v3 = du2260 v3
du2260 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T138
du2260 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C1567 (coe du1404 (coe v0))
      (coe du2244 (coe v0))
name2262 = "Algebra.Construct.NaturalChoice.Min.⊓-semilattice"
d2262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T266
d2262 v0 v1 v2 v3 = du2262 v3
du2262 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T266
du2262 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C3011 (coe du1404 (coe v0))
      (coe du2246 (coe v0))
name2266 = "Algebra.Construct.NaturalChoice.Min.⊓-monoid"
d2266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T422
d2266 v0 v1 v2 v3 v4 v5 = du2266 v3 v4 v5
du2266 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T422
du2266 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C4689 (coe du1404 (coe v0)) v1
      (coe du2250 (coe v0) (coe v1) (coe v2))
name2270 = "Algebra.Construct.NaturalChoice.Min.⊓-selectiveMagma"
d2270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T336
d2270 v0 v1 v2 v3 = du2270 v3
du2270 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Algebra.Bundles.T336
du2270 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C3765 (coe du1404 (coe v0))
      (coe du2254 (coe v0))
name2276 = "Algebra.Construct.NaturalChoice.Min.x⊓y≈y⇒y≤x"
d2276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2276 v0 v1 v2 v3 v4 v5 v6 = du2276 v3 v4 v5 v6
du2276 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2276 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v2 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d82
             (MAlonzo.Code.Relation.Binary.Structures.d126
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d348
                   (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
             v2 v1
             (let v6
                    = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
              let v7 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v6) in
              coe
                MAlonzo.Code.Relation.Binary.Structures.d36
                (MAlonzo.Code.Relation.Binary.Structures.d80
                   (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v7)))
                v1 v2 v3)
      MAlonzo.Code.Data.Sum.Base.C42 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name2306 = "Algebra.Construct.NaturalChoice.Min.x⊓y≈x⇒x≤y"
d2306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2306 v0 v1 v2 v3 v4 v5 v6 = du2306 v3 v4 v5 v6
du2306 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2306 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d350
              (MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) v1 v2 in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5 -> coe v5
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d82
             (MAlonzo.Code.Relation.Binary.Structures.d126
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d348
                   (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
             v1 v2
             (let v6
                    = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
              let v7 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v6) in
              coe
                MAlonzo.Code.Relation.Binary.Structures.d36
                (MAlonzo.Code.Relation.Binary.Structures.d80
                   (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v7)))
                v2 v1 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
