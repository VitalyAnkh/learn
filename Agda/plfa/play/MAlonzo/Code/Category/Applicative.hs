{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Category.Applicative where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Category.Functor

name6 = "Category.Applicative.RawApplicative"
d6 :: MAlonzo.Code.Agda.Primitive.T4 -> (() -> ()) -> ()
d6 = erased
name24 = "Category.Applicative.RawApplicative._._<$_"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d24 v0 v1 v2 v3 v4 = du24 v2 v3 v4
du24 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
du24 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v0) (coe v1)
              (coe v2) in
    coe
      (\ v4 v5 v6 v7 ->
         coe
           MAlonzo.Code.Category.Functor.d30 v3 erased erased (\ v8 -> v6) v7)
name26 = "Category.Applicative.RawApplicative._._<$>_"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d26 v0 v1 v2 v3 v4 = du26 v2 v3 v4
du26 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du26 v0 v1 v2
  = coe
      MAlonzo.Code.Category.Functor.d30
      (coe
         MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v0) (coe v1)
         (coe v2))
name28 = "Category.Applicative.RawApplicative._._<&>_"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d28 v0 v1 v2 v3 v4 = du28 v2 v3 v4
du28 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du28 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v0) (coe v1)
              (coe v2) in
    coe
      (\ v4 v5 v6 v7 ->
         coe MAlonzo.Code.Category.Functor.d30 v3 erased erased v7 v6)
name30 = "Category.Applicative.RawApplicative._._<⊛_"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d30 v0 v1 v2 = du30 v2
du30 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du30 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du96 (coe v0) v3 v4 v5 v6
      v7
name32 = "Category.Applicative.RawApplicative._._⊗_"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d32 v0 v1 v2 = du32 v2
du32 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du32 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du120 (coe v0) v3 v4 v5
      v6 v7
name34 = "Category.Applicative.RawApplicative._._⊛_"
d34 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d34 v0 = coe MAlonzo.Code.Category.Applicative.Indexed.d66 (coe v0)
name36 = "Category.Applicative.RawApplicative._._⊛>_"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d36 v0 v1 v2 = du36 v2
du36 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du36 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du108 (coe v0) v3 v4 v5
      v6 v7
name38 = "Category.Applicative.RawApplicative._.pure"
d38 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () -> MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny
d38 v0 = coe MAlonzo.Code.Category.Applicative.Indexed.d58 (coe v0)
name40 = "Category.Applicative.RawApplicative._.rawFunctor"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Category.Functor.T24
d40 v0 v1 v2 = du40 v2
du40 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Category.Functor.T24
du40 v0
  = coe MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v0)
name42 = "Category.Applicative.RawApplicative._.zip"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d42 v0 v1 v2 = du42 v2
du42 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du42 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du146 (coe v0) v3 v4 v5
name44 = "Category.Applicative.RawApplicative._.zipWith"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d44 v0 v1 v2 = du44 v2
du44 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du44 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du132 (coe v0) v4 v5 v6
      v7 v8 v9
name46 = "Category.Applicative.RawApplicativeZero"
d46 :: MAlonzo.Code.Agda.Primitive.T4 -> (() -> ()) -> ()
d46 = erased
name64 = "Category.Applicative.RawApplicativeZero._._<$_"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d64 v0 v1 v2 = du64 v2
du64 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
du64 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v0) in
    coe
      (\ v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v1) (coe v2)
                   (coe v3) in
         \ v5 v6 v7 v8 ->
           coe
             MAlonzo.Code.Category.Functor.d30 v4 erased erased (\ v9 -> v7) v8)
name66 = "Category.Applicative.RawApplicativeZero._._<$>_"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d66 v0 v1 v2 = du66 v2
du66 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du66 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Category.Functor.d30
           (coe
              MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v1) (coe v2)
              (coe v3)))
name68 = "Category.Applicative.RawApplicativeZero._._<&>_"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d68 v0 v1 v2 = du68 v2
du68 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du68 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v0) in
    coe
      (\ v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v1) (coe v2)
                   (coe v3) in
         \ v5 v6 v7 v8 ->
           coe MAlonzo.Code.Category.Functor.d30 v4 erased erased v8 v7)
name70 = "Category.Applicative.RawApplicativeZero._._<⊛_"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d70 v0 v1 v2 = du70 v2
du70 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du70 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du96
      (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v0)) v3 v4
      v5 v6 v7
name72 = "Category.Applicative.RawApplicativeZero._._⊗_"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d72 v0 v1 v2 = du72 v2
du72 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du72 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du120
      (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v0)) v3 v4
      v5 v6 v7
name74 = "Category.Applicative.RawApplicativeZero._._⊛_"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d74 v0 v1 v2 = du74 v2
du74 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du74 v0
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.d66
      (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v0))
name76 = "Category.Applicative.RawApplicativeZero._._⊛>_"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d76 v0 v1 v2 = du76 v2
du76 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du76 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du108
      (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v0)) v3 v4
      v5 v6 v7
name78 = "Category.Applicative.RawApplicativeZero._.applicative"
d78 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  MAlonzo.Code.Category.Applicative.Indexed.T38
d78 v0
  = coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v0)
name80 = "Category.Applicative.RawApplicativeZero._.pure"
d80 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () -> MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny
d80 v0
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.d58
      (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v0))
name82 = "Category.Applicative.RawApplicativeZero._.rawFunctor"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Category.Functor.T24
d82 v0 v1 v2 = du82 v2
du82 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Category.Functor.T24
du82 v0
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du72
      (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v0))
name84 = "Category.Applicative.RawApplicativeZero._.zip"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d84 v0 v1 v2 = du84 v2
du84 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du84 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du146
      (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v0)) v3 v4
      v5
name86 = "Category.Applicative.RawApplicativeZero._.zipWith"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d86 v0 v1 v2 = du86 v2
du86 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du86 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.du132
      (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v0)) v4 v5
      v6 v7 v8 v9
name88 = "Category.Applicative.RawApplicativeZero._.∅"
d88 ::
  MAlonzo.Code.Category.Applicative.Indexed.T156 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny
d88 v0
  = coe MAlonzo.Code.Category.Applicative.Indexed.d176 (coe v0)
name90 = "Category.Applicative.RawAlternative"
d90 :: MAlonzo.Code.Agda.Primitive.T4 -> (() -> ()) -> ()
d90 = erased
name108 = "Category.Applicative.RawAlternative._._<$_"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d108 v0 v1 v2 = du108 v2
du108 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
du108 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0) in
    let v2 = MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v1) in
    coe
      (\ v3 v4 ->
         let v5
               = coe
                   MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v2) (coe v3)
                   (coe v4) in
         \ v6 v7 v8 v9 ->
           coe
             MAlonzo.Code.Category.Functor.d30 v5 erased erased (\ v10 -> v8)
             v9)
name110 = "Category.Applicative.RawAlternative._._<$>_"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d110 v0 v1 v2 = du110 v2
du110 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du110 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0) in
    let v2 = MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Category.Functor.d30
           (coe
              MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v2) (coe v3)
              (coe v4)))
name112 = "Category.Applicative.RawAlternative._._<&>_"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d112 v0 v1 v2 = du112 v2
du112 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du112 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0) in
    let v2 = MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v1) in
    coe
      (\ v3 v4 ->
         let v5
               = coe
                   MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v2) (coe v3)
                   (coe v4) in
         \ v6 v7 v8 v9 ->
           coe MAlonzo.Code.Category.Functor.d30 v5 erased erased v9 v8)
name114 = "Category.Applicative.RawAlternative._._<⊛_"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d114 v0 v1 v2 = du114 v2
du114 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du114 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0) in
    \ v2 v3 v4 v5 v6 v7 v8 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du96
        (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v1)) v4 v5
        v6 v7 v8
name116 = "Category.Applicative.RawAlternative._._∣_"
d116 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d116 v0
  = coe MAlonzo.Code.Category.Applicative.Indexed.d230 (coe v0)
name118 = "Category.Applicative.RawAlternative._._⊗_"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d118 v0 v1 v2 = du118 v2
du118 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du118 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0) in
    \ v2 v3 v4 v5 v6 v7 v8 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du120
        (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v1)) v4 v5
        v6 v7 v8
name120 = "Category.Applicative.RawAlternative._._⊛_"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d120 v0 v1 v2 = du120 v2
du120 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du120 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0) in
    coe
      MAlonzo.Code.Category.Applicative.Indexed.d66
      (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v1))
name122 = "Category.Applicative.RawAlternative._._⊛>_"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d122 v0 v1 v2 = du122 v2
du122 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du122 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0) in
    \ v2 v3 v4 v5 v6 v7 v8 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du108
        (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v1)) v4 v5
        v6 v7 v8
name124 = "Category.Applicative.RawAlternative._.applicative"
d124 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  MAlonzo.Code.Category.Applicative.Indexed.T38
d124 v0
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.d170
      (coe MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0))
name126 = "Category.Applicative.RawAlternative._.applicativeZero"
d126 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  MAlonzo.Code.Category.Applicative.Indexed.T156
d126 v0
  = coe MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0)
name128 = "Category.Applicative.RawAlternative._.pure"
d128 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () -> MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny
d128 v0
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.d58
      (coe
         MAlonzo.Code.Category.Applicative.Indexed.d170
         (coe MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0)))
name130 = "Category.Applicative.RawAlternative._.rawFunctor"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Category.Functor.T24
d130 v0 v1 v2 = du130 v2
du130 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Category.Functor.T24
du130 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0) in
    coe
      MAlonzo.Code.Category.Applicative.Indexed.du72
      (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v1))
name132 = "Category.Applicative.RawAlternative._.zip"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d132 v0 v1 v2 = du132 v2
du132 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du132 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0) in
    \ v2 v3 v4 v5 v6 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du146
        (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v1)) v4 v5
        v6
name134 = "Category.Applicative.RawAlternative._.zipWith"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d134 v0 v1 v2 = du134 v2
du134 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du134 v0
  = let v1
          = MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0) in
    \ v2 v3 v4 v5 v6 v7 v8 v9 v10 ->
      coe
        MAlonzo.Code.Category.Applicative.Indexed.du132
        (coe MAlonzo.Code.Category.Applicative.Indexed.d170 (coe v1)) v5 v6
        v7 v8 v9 v10
name136 = "Category.Applicative.RawAlternative._.∅"
d136 ::
  MAlonzo.Code.Category.Applicative.Indexed.T210 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny
d136 v0
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.d176
      (coe MAlonzo.Code.Category.Applicative.Indexed.d224 (coe v0))
