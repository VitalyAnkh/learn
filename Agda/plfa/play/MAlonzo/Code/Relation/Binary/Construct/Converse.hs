{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Construct.Converse where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name20 = "Relation.Binary.Construct.Converse._.refl"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d20 v0 v1 v2 v3 v4 v5 = du20 v4 v5
du20 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du20 v0 v1 = coe v0 v1
name24 = "Relation.Binary.Construct.Converse._.sym"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d24 v0 v1 v2 v3 v4 v5 v6 = du24 v4 v5 v6
du24 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du24 v0 v1 v2 = coe v0 v2 v1
name28 = "Relation.Binary.Construct.Converse._.trans"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d28 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du28 v4 v5 v6 v7 v8 v9
du28 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du28 v0 v1 v2 v3 v4 v5 = coe v0 v3 v2 v1 v5 v4
name32 = "Relation.Binary.Construct.Converse._.asym"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d32 = erased
name36 = "Relation.Binary.Construct.Converse._.total"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d36 v0 v1 v2 v3 v4 v5 v6 = du36 v4 v5 v6
du36 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du36 v0 v1 v2 = coe v0 v2 v1
name48 = "Relation.Binary.Construct.Converse._.resp"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d48 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du48 v6 v7 v8 v9 v10
du48 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du48 v0 v1 v2 v3 v4 = coe v1 v2 v3 (coe v0 v3 v2 v4)
name58 = "Relation.Binary.Construct.Converse._.max"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d58 v0 v1 v2 v3 v4 v5 = du58 v5
du58 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du58 v0 = coe v0
name64 = "Relation.Binary.Construct.Converse._.min"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d64 v0 v1 v2 v3 v4 v5 = du64 v5
du64 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du64 v0 = coe v0
name84 = "Relation.Binary.Construct.Converse._.reflexive"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d84 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du84 v6 v7 v8 v9 v10
du84 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du84 v0 v1 v2 v3 v4 = coe v1 v3 v2 (coe v0 v2 v3 v4)
name90 = "Relation.Binary.Construct.Converse._.irrefl"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d90 = erased
name100 = "Relation.Binary.Construct.Converse._.antisym"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d100 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du100 v6 v7 v8 v9 v10
du100 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du100 v0 v1 v2 v3 v4 = coe v0 v1 v2 v4 v3
name104 = "Relation.Binary.Construct.Converse._.compare"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
d104 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du104 v6 v7 v8
du104 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
du104 v0 v1 v2
  = let v3 = coe v0 v1 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Binary.Definitions.C150 v4
        -> coe MAlonzo.Code.Relation.Binary.Definitions.C166 v4
      MAlonzo.Code.Relation.Binary.Definitions.C158 v5
        -> coe MAlonzo.Code.Relation.Binary.Definitions.C158 v5
      MAlonzo.Code.Relation.Binary.Definitions.C166 v6
        -> coe MAlonzo.Code.Relation.Binary.Definitions.C150 v6
      _ -> MAlonzo.RTE.mazUnreachableError
name168 = "Relation.Binary.Construct.Converse._.resp₂"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d168 v0 v1 v2 v3 v4 v5 v6 = du168 v6
du168 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du168 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name190 = "Relation.Binary.Construct.Converse._.dec"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d190 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du190 v6 v7 v8
du190 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du190 v0 v1 v2 = coe v0 v2 v1
name206 = "Relation.Binary.Construct.Converse._.isEquivalence"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
d206 v0 v1 v2 v3 v4 = du206 v4
du206 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
du206 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C483
      (coe MAlonzo.Code.Relation.Binary.Structures.d34 (coe v0))
      (coe
         (\ v1 v2 ->
            coe MAlonzo.Code.Relation.Binary.Structures.d36 v0 v2 v1))
      (coe
         (\ v1 v2 v3 v4 v5 ->
            coe MAlonzo.Code.Relation.Binary.Structures.d38 v0 v3 v2 v1 v5 v4))
name226 = "Relation.Binary.Construct.Converse._.isDecEquivalence"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
d226 v0 v1 v2 v3 v4 = du226 v4
du226 ::
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
du226 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C1529
      (coe
         du206 (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v0)))
      (coe
         (\ v1 v2 ->
            coe MAlonzo.Code.Relation.Binary.Structures.d52 v0 v2 v1))
name266 = "Relation.Binary.Construct.Converse._.isPreorder"
d266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d266 v0 v1 v2 v3 v4 v5 v6 = du266 v6
du266 ::
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du266 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0))
      (coe
         du84
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d36
            (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0)))
         (coe MAlonzo.Code.Relation.Binary.Structures.d82 (coe v0)))
      (coe
         (\ v1 v2 v3 v4 v5 ->
            coe MAlonzo.Code.Relation.Binary.Structures.d84 v0 v3 v2 v1 v5 v4))
name302 = "Relation.Binary.Construct.Converse._.isPartialOrder"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d302 v0 v1 v2 v3 v4 v5 v6 = du302 v6
du302 ::
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du302 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865
      (coe
         du266 (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v0)))
      (coe
         (\ v1 v2 v3 v4 ->
            coe MAlonzo.Code.Relation.Binary.Structures.d128 v0 v1 v2 v4 v3))
name342 = "Relation.Binary.Construct.Converse._.isTotalOrder"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T340 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
d342 v0 v1 v2 v3 v4 v5 v6 = du342 v6
du342 ::
  MAlonzo.Code.Relation.Binary.Structures.T340 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
du342 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C11665
      (coe
         du302 (coe MAlonzo.Code.Relation.Binary.Structures.d348 (coe v0)))
      (coe
         (\ v1 v2 ->
            coe MAlonzo.Code.Relation.Binary.Structures.d350 v0 v2 v1))
name386 = "Relation.Binary.Construct.Converse._.isDecTotalOrder"
d386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T388 ->
  MAlonzo.Code.Relation.Binary.Structures.T388
d386 v0 v1 v2 v3 v4 v5 v6 = du386 v6
du386 ::
  MAlonzo.Code.Relation.Binary.Structures.T388 ->
  MAlonzo.Code.Relation.Binary.Structures.T388
du386 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C12739
      (coe
         du342 (coe MAlonzo.Code.Relation.Binary.Structures.d398 (coe v0)))
      (coe MAlonzo.Code.Relation.Binary.Structures.d400 (coe v0))
      (coe
         (\ v1 v2 ->
            coe MAlonzo.Code.Relation.Binary.Structures.d402 v0 v2 v1))
name444
  = "Relation.Binary.Construct.Converse._.isStrictPartialOrder"
d444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d444 v0 v1 v2 v3 v4 v5 v6 = du444 v6
du444 ::
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du444 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C7193
      (MAlonzo.Code.Relation.Binary.Structures.d234 (coe v0))
      (\ v1 v2 v3 v4 v5 ->
         coe MAlonzo.Code.Relation.Binary.Structures.d238 v0 v3 v2 v1 v5 v4)
      (coe
         du168 (coe MAlonzo.Code.Relation.Binary.Structures.d240 (coe v0)))
name482 = "Relation.Binary.Construct.Converse._.isStrictTotalOrder"
d482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T454 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
d482 v0 v1 v2 v3 v4 v5 v6 = du482 v6
du482 ::
  MAlonzo.Code.Relation.Binary.Structures.T454 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
du482 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C14057
      (coe MAlonzo.Code.Relation.Binary.Structures.d464 (coe v0))
      (coe
         (\ v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d466 v0 v3 v2 v1 v5 v4))
      (coe
         du104 (coe MAlonzo.Code.Relation.Binary.Structures.d468 (coe v0)))
name542 = "Relation.Binary.Construct.Converse._.setoid"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d542 v0 v1 v2 = du542 v2
du542 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
du542 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe du206 (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)))
name572 = "Relation.Binary.Construct.Converse._.decSetoid"
d572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84
d572 v0 v1 v2 = du572 v2
du572 ::
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84
du572 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C939
      (coe
         du226 (coe MAlonzo.Code.Relation.Binary.Bundles.d100 (coe v0)))
name618 = "Relation.Binary.Construct.Converse._.preorder"
d618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d618 v0 v1 v2 v3 = du618 v3
du618 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du618 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509
      (coe
         du266 (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)))
name674 = "Relation.Binary.Construct.Converse._.poset"
d674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d674 v0 v1 v2 v3 = du674 v3
du674 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du674 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365
      (coe
         du302 (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
name736 = "Relation.Binary.Construct.Converse._.totalOrder"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574
d736 v0 v1 v2 v3 = du736 v3
du736 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574
du736 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C6779
      (coe
         du342 (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
name804 = "Relation.Binary.Construct.Converse._.decTotalOrder"
d804 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
d804 v0 v1 v2 v3 = du804 v3
du804 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
du804 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C7777
      (coe
         du386 (coe MAlonzo.Code.Relation.Binary.Bundles.d680 (coe v0)))
name890 = "Relation.Binary.Construct.Converse._.strictPartialOrder"
d890 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
d890 v0 v1 v2 v3 = du890 v3
du890 ::
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
du890 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C4625
      (coe
         du444 (coe MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v0)))
name948 = "Relation.Binary.Construct.Converse._.strictTotalOrder"
d948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780
d948 v0 v1 v2 v3 = du948 v3
du948 ::
  MAlonzo.Code.Relation.Binary.Bundles.T780 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780
du948 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C9189
      (coe
         du482 (coe MAlonzo.Code.Relation.Binary.Bundles.d802 (coe v0)))
