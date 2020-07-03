{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Sum.Function.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Function.Bijection
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Function.LeftInverse
import qualified MAlonzo.Code.Function.Surjection
import qualified MAlonzo.Code.Relation.Binary.Bundles

name36 = "Data.Sum.Function.Setoid._._⊎-⟶_"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16
d36 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du36 v12 v13
du36 ::
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16
du36 v0 v1
  = coe
      MAlonzo.Code.Function.Equality.C763 (coe du54 (coe v0) (coe v1))
      (coe du56 (coe v0) (coe v1))
name48 = "Data.Sum.Function.Setoid._._._._≈_"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> ()
d48 = erased
name52 = "Data.Sum.Function.Setoid._._._._≈_"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> ()
d52 = erased
name54 = "Data.Sum.Function.Setoid._._.fg"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Data.Sum.Base.T30
d54 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du54 v12 v13
du54 ::
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Data.Sum.Base.T30
du54 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du82
      (coe MAlonzo.Code.Function.Equality.d38 (coe v0))
      (coe MAlonzo.Code.Function.Equality.d38 (coe v1))
name56 = "Data.Sum.Function.Setoid._._.fg-cong"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T34 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T34
d56 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16
  = du56 v12 v13 v14 v15 v16
du56 ::
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T34 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T34
du56 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C64 v7
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C38 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C38 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C64
                           (coe MAlonzo.Code.Function.Equality.d40 v0 v8 v9 v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C70 v7
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C42 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C42 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C70
                           (coe MAlonzo.Code.Function.Equality.d40 v1 v8 v9 v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name78 = "Data.Sum.Function.Setoid._.inj₁ₛ"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16
d78 v0 v1 v2 v3 v4 v5 = du78
du78 :: MAlonzo.Code.Function.Equality.T16
du78
  = coe
      MAlonzo.Code.Function.Equality.C763
      (coe MAlonzo.Code.Data.Sum.Base.C38)
      (\ v0 v1 v2 ->
         coe MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C64 v2)
name80 = "Data.Sum.Function.Setoid._.inj₂ₛ"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16
d80 v0 v1 v2 v3 v4 v5 = du80
du80 :: MAlonzo.Code.Function.Equality.T16
du80
  = coe
      MAlonzo.Code.Function.Equality.C763
      (coe MAlonzo.Code.Data.Sum.Base.C42)
      (\ v0 v1 v2 ->
         coe MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C70 v2)
name88 = "Data.Sum.Function.Setoid._.[_,_]ₛ"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16
d88 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du88 v9 v10
du88 ::
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16
du88 v0 v1
  = coe
      MAlonzo.Code.Function.Equality.C763
      (coe
         MAlonzo.Code.Data.Sum.Base.du52
         (coe MAlonzo.Code.Function.Equality.d38 (coe v0))
         (coe MAlonzo.Code.Function.Equality.d38 (coe v1)))
      (coe
         (\ v2 v3 v4 ->
            case coe v4 of
              MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C64 v7
                -> case coe v2 of
                     MAlonzo.Code.Data.Sum.Base.C38 v8
                       -> case coe v3 of
                            MAlonzo.Code.Data.Sum.Base.C38 v9
                              -> coe MAlonzo.Code.Function.Equality.d40 v0 v8 v9 v7
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C70 v7
                -> case coe v2 of
                     MAlonzo.Code.Data.Sum.Base.C42 v8
                       -> case coe v3 of
                            MAlonzo.Code.Data.Sum.Base.C42 v9
                              -> coe MAlonzo.Code.Function.Equality.d40 v1 v8 v9 v7
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
name120 = "Data.Sum.Function.Setoid._.swapₛ"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16
d120 v0 v1 v2 v3 v4 v5 = du120
du120 :: MAlonzo.Code.Function.Equality.T16
du120 = coe du88 (coe du80) (coe du78)
name150 = "Data.Sum.Function.Setoid._._⊎-equivalence_"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
d150 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du150 v12 v13
du150 ::
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
du150 v0 v1
  = coe
      MAlonzo.Code.Function.Equivalence.C269
      (coe
         du36 (coe MAlonzo.Code.Function.Equivalence.d34 (coe v0))
         (coe MAlonzo.Code.Function.Equivalence.d34 (coe v1)))
      (coe
         du36 (coe MAlonzo.Code.Function.Equivalence.d36 (coe v0))
         (coe MAlonzo.Code.Function.Equivalence.d36 (coe v1)))
name160 = "Data.Sum.Function.Setoid._._⊎-injection_"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88
d160 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du160 v12 v13
du160 ::
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88
du160 v0 v1
  = coe
      MAlonzo.Code.Function.Injection.C1975
      (coe
         du36 (coe MAlonzo.Code.Function.Injection.d106 (coe v0))
         (coe MAlonzo.Code.Function.Injection.d106 (coe v1)))
      (coe (\ v2 v3 -> coe du182 (coe v0) (coe v1) (coe v2) (coe v3)))
name172 = "Data.Sum.Function.Setoid._._._._≈_"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> ()
d172 = erased
name176 = "Data.Sum.Function.Setoid._._._._≈_"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> ()
d176 = erased
name182 = "Data.Sum.Function.Setoid._._.inj"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T34 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T34
d182 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16
  = du182 v12 v13 v14 v15 v16
du182 ::
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T34 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T34
du182 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C38 v6
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C64 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C64
                           (coe MAlonzo.Code.Function.Injection.d108 v0 v5 v6 v9)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C42 v6
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C70 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C70
                           (coe MAlonzo.Code.Function.Injection.d108 v1 v5 v6 v9)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name196 = "Data.Sum.Function.Setoid._._⊎-left-inverse_"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82
d196 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du196 v12 v13
du196 ::
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82
du196 v0 v1
  = coe
      MAlonzo.Code.Function.LeftInverse.C3109
      (coe
         MAlonzo.Code.Function.Equivalence.d34
         (coe du206 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Function.Equivalence.d36
         (coe du206 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Base.du52
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C64
                 (coe MAlonzo.Code.Function.LeftInverse.d106 v0 v2)))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C70
                 (coe MAlonzo.Code.Function.LeftInverse.d106 v1 v2))))
name206 = "Data.Sum.Function.Setoid._._.eq"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.Equivalence.T16
d206 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du206 v12 v13
du206 ::
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.Equivalence.T16
du206 v0 v1
  = coe
      du150 (coe MAlonzo.Code.Function.LeftInverse.du188 (coe v0))
      (coe MAlonzo.Code.Function.LeftInverse.du188 (coe v1))
name240 = "Data.Sum.Function.Setoid._._⊎-surjection_"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54
d240 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du240 v12 v13
du240 ::
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54
du240 v0 v1
  = coe
      MAlonzo.Code.Function.Surjection.C1679
      (coe
         MAlonzo.Code.Function.LeftInverse.d104
         (coe du250 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Function.Surjection.C867
         (coe
            MAlonzo.Code.Function.LeftInverse.d102
            (coe du250 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Function.LeftInverse.d106
            (coe du250 (coe v0) (coe v1))))
name250 = "Data.Sum.Function.Setoid._._.inv"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.LeftInverse.T82
d250 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du250 v12 v13
du250 ::
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.LeftInverse.T82
du250 v0 v1
  = coe
      du196 (coe MAlonzo.Code.Function.Surjection.du82 (coe v0))
      (coe MAlonzo.Code.Function.Surjection.du82 (coe v1))
name252 = "Data.Sum.Function.Setoid._._⊎-inverse_"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58
d252 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du252 v8 v10 v12 v13
du252 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58
du252 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Inverse.C2555
      (coe
         MAlonzo.Code.Function.Surjection.d72
         (coe du262 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Function.Surjection.d38
         (coe
            MAlonzo.Code.Function.Surjection.d74
            (coe du262 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Function.Inverse.C1525
         (coe
            MAlonzo.Code.Function.LeftInverse.d106
            (coe du264 (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Function.Surjection.d40
            (coe
               MAlonzo.Code.Function.Surjection.d74
               (coe du262 (coe v0) (coe v1) (coe v2) (coe v3)))))
name262 = "Data.Sum.Function.Setoid._._.surj"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Surjection.T54
d262 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du262 v8 v10 v12 v13
du262 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Surjection.T54
du262 v0 v1 v2 v3
  = coe
      du240
      (coe
         MAlonzo.Code.Function.Bijection.du100
         (coe MAlonzo.Code.Function.Inverse.du98 (coe v0) (coe v2)))
      (coe
         MAlonzo.Code.Function.Bijection.du100
         (coe MAlonzo.Code.Function.Inverse.du98 (coe v1) (coe v3)))
name264 = "Data.Sum.Function.Setoid._._.inv"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.LeftInverse.T82
d264 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du264 v12 v13
du264 ::
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.LeftInverse.T82
du264 v0 v1
  = coe
      du196 (coe MAlonzo.Code.Function.Inverse.du90 (coe v0))
      (coe MAlonzo.Code.Function.Inverse.du90 (coe v1))
