{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Relation.Binary.Lex.Strict where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Relation.Binary.Lex.Core
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name28 = "Data.List.Relation.Binary.Lex.Strict._.Lex-<"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d28 = erased
name38 = "Data.List.Relation.Binary.Lex.Strict._._._≋_"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d38 = erased
name40 = "Data.List.Relation.Binary.Lex.Strict._._._<_"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d40 = erased
name42 = "Data.List.Relation.Binary.Lex.Strict._._.¬[]<[]"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.Empty.T4
d42 = erased
name44 = "Data.List.Relation.Binary.Lex.Strict._._.<-irreflexive"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.Empty.T4
d44 = erased
name62 = "Data.List.Relation.Binary.Lex.Strict._._.<-asymmetric"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.Empty.T4
d62 = erased
name76 = "Data.List.Relation.Binary.Lex.Strict._._._.asym"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.Empty.T4
d76 = erased
name104
  = "Data.List.Relation.Binary.Lex.Strict._._.<-antisymmetric"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d104 v0 v1 v2 v3 v4 v5 = du104
du104 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du104 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du192 v3 v4
name106 = "Data.List.Relation.Binary.Lex.Strict._._.<-transitive"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26
d106 v0 v1 v2 v3 v4 v5 = du106
du106 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26
du106 = coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du144
name108 = "Data.List.Relation.Binary.Lex.Strict._._.<-compare"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Relation.Binary.Definitions.T136
d108 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du108 v6 v7 v8 v9
du108 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Relation.Binary.Definitions.T136
du108 v0 v1 v2 v3
  = case coe v2 of
      []
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C158
                    (coe MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C60)
             (:) v4 v5
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C150
                    (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C48)
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v4 v5
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C166
                    (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C48)
             (:) v6 v7
               -> let v8 = coe v1 v4 v6 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Binary.Definitions.C150 v9
                      -> coe
                           MAlonzo.Code.Relation.Binary.Definitions.C150
                           (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C60 v9)
                    MAlonzo.Code.Relation.Binary.Definitions.C158 v10
                      -> let v12 = coe du108 (coe v0) (coe v1) (coe v5) (coe v7) in
                         case coe v12 of
                           MAlonzo.Code.Relation.Binary.Definitions.C150 v13
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Definitions.C150
                                  (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C74 v10 v13)
                           MAlonzo.Code.Relation.Binary.Definitions.C158 v14
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Definitions.C158
                                  (coe MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C74 v10 v14)
                           MAlonzo.Code.Relation.Binary.Definitions.C166 v15
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Definitions.C166
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C74
                                     (coe v0 v4 v6 v10) v15)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Binary.Definitions.C166 v11
                      -> coe
                           MAlonzo.Code.Relation.Binary.Definitions.C166
                           (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C60 v11)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name276 = "Data.List.Relation.Binary.Lex.Strict._._.<-decidable"
d276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
d276 v0 v1 v2 v3 v4 v5 = du276
du276 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
du276
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du326
      (coe
         MAlonzo.Code.Relation.Nullary.C46
         (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
         (coe MAlonzo.Code.Relation.Nullary.C26))
name278 = "Data.List.Relation.Binary.Lex.Strict._._.<-respects₂"
d278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d278 v0 v1 v2 v3 v4 v5 = du278
du278 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du278 = coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du230
name280
  = "Data.List.Relation.Binary.Lex.Strict._._.<-isStrictPartialOrder"
d280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d280 v0 v1 v2 v3 v4 v5 v6 = du280 v6
du280 ::
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du280 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C7193
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du338
         (coe MAlonzo.Code.Relation.Binary.Structures.d234 (coe v0)))
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du144
         (coe MAlonzo.Code.Relation.Binary.Structures.d234 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d240 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d238 (coe v0)))
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du230
         (coe MAlonzo.Code.Relation.Binary.Structures.d234 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d240 (coe v0)))
name318
  = "Data.List.Relation.Binary.Lex.Strict._._.<-isStrictTotalOrder"
d318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T454 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
d318 v0 v1 v2 v3 v4 v5 v6 = du318 v2 v6
du318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Structures.T454 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
du318 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C14057
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du338
         (coe MAlonzo.Code.Relation.Binary.Structures.d464 (coe v1)))
      (coe
         du106 (MAlonzo.Code.Relation.Binary.Structures.d464 (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Consequences.du596 (coe v0)
            (coe MAlonzo.Code.Relation.Binary.Structures.d468 (coe v1)))
         (MAlonzo.Code.Relation.Binary.Structures.d466 (coe v1)))
      (coe
         du108
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d36
            (coe MAlonzo.Code.Relation.Binary.Structures.d464 (coe v1)))
         (coe MAlonzo.Code.Relation.Binary.Structures.d468 (coe v1)))
name376
  = "Data.List.Relation.Binary.Lex.Strict.<-strictPartialOrder"
d376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
d376 v0 v1 v2 v3 = du376 v3
du376 ::
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
du376 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C4625
      (coe
         du280 (coe MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v0)))
name440 = "Data.List.Relation.Binary.Lex.Strict.<-strictTotalOrder"
d440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780
d440 v0 v1 v2 v3 = du440 v2 v3
du440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780
du440 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C9189
      (coe
         du318 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d802 (coe v1)))
name528 = "Data.List.Relation.Binary.Lex.Strict._.Lex-≤"
d528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d528 = erased
name534 = "Data.List.Relation.Binary.Lex.Strict._.≤-reflexive"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26
d534 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du534 v6 v7 v8
du534 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26
du534 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C60
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C42
             (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C74 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v1 of
                    (:) v11 v12
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C74 v7
                           (coe du534 (coe v10) (coe v12) (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name556 = "Data.List.Relation.Binary.Lex.Strict._._._≋_"
d556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d556 = erased
name558 = "Data.List.Relation.Binary.Lex.Strict._._._≤_"
d558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d558 = erased
name560
  = "Data.List.Relation.Binary.Lex.Strict._._.≤-antisymmetric"
d560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d560 v0 v1 v2 v3 v4 v5 = du560
du560 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du560 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du192 v3 v4
name562 = "Data.List.Relation.Binary.Lex.Strict._._.≤-transitive"
d562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26
d562 v0 v1 v2 v3 v4 v5 = du562
du562 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26
du562 = coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du144
name564 = "Data.List.Relation.Binary.Lex.Strict._._.≤-total"
d564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30
d564 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du564 v6 v7 v8 v9
du564 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30
du564 v0 v1 v2 v3
  = case coe v2 of
      []
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C38
                    (coe
                       MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C42
                       (coe MAlonzo.Code.Agda.Builtin.Unit.C8))
             (:) v4 v5
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C38
                    (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C48)
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v4 v5
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C42
                    (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C48)
             (:) v6 v7
               -> let v8 = coe v1 v4 v6 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Binary.Definitions.C150 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Base.C38
                           (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C60 v9)
                    MAlonzo.Code.Relation.Binary.Definitions.C158 v10
                      -> let v12 = coe du564 (coe v0) (coe v1) (coe v5) (coe v7) in
                         case coe v12 of
                           MAlonzo.Code.Data.Sum.Base.C38 v13
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C38
                                  (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C74 v10 v13)
                           MAlonzo.Code.Data.Sum.Base.C42 v13
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C42
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C74
                                     (coe v0 v4 v6 v10) v13)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Binary.Definitions.C166 v11
                      -> coe
                           MAlonzo.Code.Data.Sum.Base.C42
                           (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C60 v11)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name668 = "Data.List.Relation.Binary.Lex.Strict._._.≤-decidable"
d668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
d668 v0 v1 v2 v3 v4 v5 = du668
du668 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
du668
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du326
      (coe
         MAlonzo.Code.Relation.Nullary.C46
         (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
         (coe
            MAlonzo.Code.Relation.Nullary.C22
            (coe MAlonzo.Code.Agda.Builtin.Unit.C8)))
name670 = "Data.List.Relation.Binary.Lex.Strict._._.≤-respects₂"
d670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d670 v0 v1 v2 v3 v4 v5 = du670
du670 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du670 = coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du230
name672 = "Data.List.Relation.Binary.Lex.Strict._._.≤-isPreorder"
d672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d672 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du672 v6 v7 v8
du672 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du672 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du338 (coe v0))
      (coe du534)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du144 (coe v0)
         (coe v2) (coe v1))
name680
  = "Data.List.Relation.Binary.Lex.Strict._._.≤-isPartialOrder"
d680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d680 v0 v1 v2 v3 v4 v5 v6 = du680 v6
du680 ::
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du680 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865
      (coe
         du672 (coe MAlonzo.Code.Relation.Binary.Structures.d234 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d238 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d240 (coe v0)))
      (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.du192)
name718 = "Data.List.Relation.Binary.Lex.Strict._._.≤-isTotalOrder"
d718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T454 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
d718 v0 v1 v2 v3 v4 v5 v6 = du718 v2 v6
du718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Structures.T454 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
du718 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C11665
      (coe
         du680
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du492 (coe v0) (coe v1)))
      (coe
         du564
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d36
            (coe MAlonzo.Code.Relation.Binary.Structures.d464 (coe v1)))
         (coe MAlonzo.Code.Relation.Binary.Structures.d468 (coe v1)))
name770
  = "Data.List.Relation.Binary.Lex.Strict._._.≤-isDecTotalOrder"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T454 ->
  MAlonzo.Code.Relation.Binary.Structures.T388
d770 v0 v1 v2 v3 v4 v5 v6 = du770 v2 v6
du770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Structures.T454 ->
  MAlonzo.Code.Relation.Binary.Structures.T388
du770 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C12739
      (coe du718 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du310
         (coe MAlonzo.Code.Relation.Binary.Structures.du470 (coe v1)))
      (coe
         du668 (coe MAlonzo.Code.Relation.Binary.Structures.du470 (coe v1))
         (coe MAlonzo.Code.Relation.Binary.Structures.du472 (coe v1)))
name828 = "Data.List.Relation.Binary.Lex.Strict.≤-preorder"
d828 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d828 v0 v1 v2 v3 = du828 v3
du828 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du828 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509
      (coe
         du672
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d80
            (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d84
            (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du112
            (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0))))
name890 = "Data.List.Relation.Binary.Lex.Strict.≤-partialOrder"
d890 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d890 v0 v1 v2 v3 = du890 v3
du890 ::
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du890 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365
      (coe
         du680 (coe MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v0)))
name954 = "Data.List.Relation.Binary.Lex.Strict.≤-decTotalOrder"
d954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
d954 v0 v1 v2 v3 = du954 v2 v3
du954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
du954 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C7777
      (coe
         du770 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Bundles.d802 (coe v1)))
name33603
  = "Data.List.Relation.Binary.Lex.Strict._._..absurdlambda"
d33603 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.Empty.T4
d33603 = erased
name33989
  = "Data.List.Relation.Binary.Lex.Strict._._..absurdlambda"
d33989 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.Empty.T4
d33989 = erased
name34713
  = "Data.List.Relation.Binary.Lex.Strict._._..absurdlambda"
d34713 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T26 ->
  MAlonzo.Code.Data.Empty.T4
d34713 = erased
name34961
  = "Data.List.Relation.Binary.Lex.Strict._._..absurdlambda"
d34961 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 ->
  MAlonzo.Code.Data.Empty.T4
d34961 = erased
