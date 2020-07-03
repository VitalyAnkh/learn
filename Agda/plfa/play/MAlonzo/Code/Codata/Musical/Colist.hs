{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Musical.Colist where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Size
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Category.Functor
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Codata.Colist
import qualified MAlonzo.Code.Codata.Musical.Conat
import qualified MAlonzo.Code.Codata.Thunk
import qualified MAlonzo.Code.Data.BoundedVec.Inefficient
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.NonEmpty
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Data.Vec.Bounded.Base
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.FromRel
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Negation
import qualified MAlonzo.Code.Relation.Nullary.Reflects

data AgdaColist a    = Nil | Cons a (MAlonzo.RTE.Inf (AgdaColist a))
type AgdaColist' l a = AgdaColist a
name12 = "Codata.Musical.Colist.¬¬Monad._._<$_"
d12 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
  AgdaAny ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d12 = erased
name14 = "Codata.Musical.Colist.¬¬Monad._._<$>_"
d14 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d14 = erased
name16 = "Codata.Musical.Colist.¬¬Monad._._<&>_"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d16 = erased
name18 = "Codata.Musical.Colist.¬¬Monad._._<=<_"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  (AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d18 = erased
name20 = "Codata.Musical.Colist.¬¬Monad._._<⊛_"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d20 = erased
name22 = "Codata.Musical.Colist.¬¬Monad._._=<<_"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  (AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d22 = erased
name24 = "Codata.Musical.Colist.¬¬Monad._._>=>_"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  (AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d24 = erased
name26 = "Codata.Musical.Colist.¬¬Monad._._>>_"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d26 = erased
name28 = "Codata.Musical.Colist.¬¬Monad._._>>=_"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d28 = erased
name30 = "Codata.Musical.Colist.¬¬Monad._._⊗_"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d30 = erased
name32 = "Codata.Musical.Colist.¬¬Monad._._⊛_"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  (((AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d32 = erased
name34 = "Codata.Musical.Colist.¬¬Monad._._⊛>_"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d34 = erased
name36 = "Codata.Musical.Colist.¬¬Monad._.join"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  ((((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
     MAlonzo.Code.Data.Empty.T4) ->
    MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d36 = erased
name38 = "Codata.Musical.Colist.¬¬Monad._.pure"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d38 = erased
name40 = "Codata.Musical.Colist.¬¬Monad._.rawFunctor"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Category.Functor.T24
d40 v0 = du40
du40 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Category.Functor.T24
du40
  = let v0 = coe MAlonzo.Code.Relation.Nullary.Negation.du140 in
    coe
      MAlonzo.Code.Category.Applicative.Indexed.du72
      (coe MAlonzo.Code.Category.Monad.Indexed.du122 (coe v0))
name42 = "Codata.Musical.Colist.¬¬Monad._.rawIApplicative"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Category.Applicative.Indexed.T38
d42 v0 = du42
du42 :: MAlonzo.Code.Category.Applicative.Indexed.T38
du42
  = let v0 = coe MAlonzo.Code.Relation.Nullary.Negation.du140 in
    coe MAlonzo.Code.Category.Monad.Indexed.du122 (coe v0)
name44 = "Codata.Musical.Colist.¬¬Monad._.return"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d44 = erased
name46 = "Codata.Musical.Colist.¬¬Monad._.zip"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d46 = erased
name48 = "Codata.Musical.Colist.¬¬Monad._.zipWith"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d48 = erased
name54 = "Codata.Musical.Colist.Colist"
d54 a0 a1 = ()
type T54 a0 a1 = AgdaColist' a0 a1
pattern C60 = Nil
pattern C66 a0 a1 = Cons a0 a1
check60 :: forall xa. forall xA. T54 xa xA
check60 = Nil
check66 ::
  forall xa.
    forall xA. xA -> MAlonzo.RTE.Infinity xa (T54 xa xA) -> T54 xa xA
check66 = Cons
cover54 :: AgdaColist' a1 a2 -> ()
cover54 x
  = case x of
      Nil -> ()
      Cons _ _ -> ()
name82 = "Codata.Musical.Colist.Colist-injective.∷-injectiveˡ"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d82 = erased
name92 = "Codata.Musical.Colist.Colist-injective.∷-injectiveʳ"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d92 = erased
name102 = "Codata.Musical.Colist.Any"
d102 a0 a1 a2 a3 a4 = ()
data T102 = C118 AgdaAny | C126 T102
name148 = "Codata.Musical.Colist._.here-injective"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d148 = erased
name158 = "Codata.Musical.Colist._.there-injective"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T102 ->
  T102 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d158 = erased
name168 = "Codata.Musical.Colist.All"
d168 a0 a1 a2 a3 a4 = ()
data T168 = C178 | C188 AgdaAny (MAlonzo.RTE.Infinity AgdaAny T168)
name212 = "Codata.Musical.Colist.All-injective.∷-injectiveˡ"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny T168 ->
  MAlonzo.RTE.Infinity AgdaAny T168 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d212 = erased
name226 = "Codata.Musical.Colist.All-injective.∷-injectiveʳ"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny T168 ->
  MAlonzo.RTE.Infinity AgdaAny T168 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d226 = erased
name232 = "Codata.Musical.Colist.null"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T54 AgdaAny AgdaAny -> Bool
d232 v0 v1 v2 = du232 v2
du232 :: T54 AgdaAny AgdaAny -> Bool
du232 v0
  = case coe v0 of
      C60 -> coe MAlonzo.Code.Agda.Builtin.Bool.C10
      C66 v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C8
      _ -> MAlonzo.RTE.mazUnreachableError
name238 = "Codata.Musical.Colist.length"
d238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T54 AgdaAny AgdaAny -> MAlonzo.Code.Codata.Musical.Conat.T6
d238 v0 v1 v2 = du238 v0 v2
du238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Codata.Musical.Conat.T6
du238 v0 v1
  = case coe v1 of
      C60 -> coe MAlonzo.Code.Codata.Musical.Conat.C8
      C66 v2 v3
        -> coe
             MAlonzo.Code.Codata.Musical.Conat.C12
             (coe du9249 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name252 = "Codata.Musical.Colist.map"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny
d252 v0 v1 v2 v3 v4 v5 = du252 v0 v1 v4 v5
du252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) -> T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny
du252 v0 v1 v2 v3
  = case coe v3 of
      C60 -> coe v3
      C66 v4 v5
        -> coe
             C66 (coe v2 v4) (coe du9907 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name266 = "Codata.Musical.Colist.fromList"
d266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> T54 AgdaAny AgdaAny
d266 v0 v1 v2 = du266 v0 v2
du266 ::
  MAlonzo.Code.Agda.Primitive.T4 -> [AgdaAny] -> T54 AgdaAny AgdaAny
du266 v0 v1
  = case coe v1 of
      [] -> coe C60
      (:) v2 v3 -> coe C66 (coe v2) (coe du10637 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name278 = "Codata.Musical.Colist.take"
d278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Data.Vec.Bounded.Base.T118
d278 v0 v1 v2 v3 = du278 v2 v3
du278 ::
  Integer ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Data.Vec.Bounded.Base.T118
du278 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Vec.Bounded.Base.C136 (0 :: Integer)
             (coe MAlonzo.Code.Data.Vec.Base.C28)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C60
               -> coe
                    MAlonzo.Code.Data.Vec.Bounded.Base.C136 (0 :: Integer)
                    (coe MAlonzo.Code.Data.Vec.Base.C28)
             C66 v3 v4
               -> coe
                    MAlonzo.Code.Data.Vec.Bounded.Base.du308 (coe v3)
                    (coe
                       du278 (coe v2)
                       (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4)))
             _ -> MAlonzo.RTE.mazUnreachableError
name294 = "Codata.Musical.Colist.replicate"
d294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Codata.Musical.Conat.T6 ->
  AgdaAny -> T54 AgdaAny AgdaAny
d294 v0 v1 v2 v3 = du294 v0 v2 v3
du294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Codata.Musical.Conat.T6 ->
  AgdaAny -> T54 AgdaAny AgdaAny
du294 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Codata.Musical.Conat.C8 -> coe C60
      MAlonzo.Code.Codata.Musical.Conat.C12 v3
        -> coe C66 (coe v2) (coe du11765 (coe v0) (coe v3) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name306 = "Codata.Musical.Colist.lookup"
d306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> T54 AgdaAny AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22
d306 v0 v1 v2 v3 = du306 v2 v3
du306 ::
  Integer -> T54 AgdaAny AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22
du306 v0 v1
  = case coe v1 of
      C60 -> coe MAlonzo.Code.Data.Maybe.Base.C26
      C66 v2 v3
        -> case coe v0 of
             0 -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v2)
             _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    du306 (coe v4)
                    (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name324 = "Codata.Musical.Colist._++_"
d324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny
d324 v0 v1 v2 v3 = du324 v0 v2 v3
du324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny
du324 v0 v1 v2
  = case coe v1 of
      C60 -> coe v2
      C66 v3 v4
        -> coe C66 (coe v3) (coe du12847 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name338 = "Codata.Musical.Colist._⋎_"
d338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny
d338 v0 v1 v2 v3 = du338 v0 v2 v3
du338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny
du338 v0 v1 v2
  = case coe v1 of
      C60 -> coe v2
      C66 v3 v4
        -> coe C66 (coe v3) (coe du13425 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name352 = "Codata.Musical.Colist.concat"
d352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny MAlonzo.Code.Data.List.NonEmpty.T22 ->
  T54 AgdaAny AgdaAny
d352 v0 v1 v2 = du352 v0 v2
du352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny MAlonzo.Code.Data.List.NonEmpty.T22 ->
  T54 AgdaAny AgdaAny
du352 v0 v1
  = case coe v1 of
      C60 -> coe v1
      C66 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Data.List.NonEmpty.C34 v4 v5
               -> case coe v5 of
                    [] -> coe C66 (coe v4) (coe du14055 (coe v0) (coe v3))
                    (:) v6 v7
                      -> coe
                           C66 (coe v4) (coe du14469 (coe v0) (coe v6) (coe v7) (coe v3))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name370 = "Codata.Musical.Colist.[_]"
d370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> T54 AgdaAny AgdaAny
d370 v0 v1 v2 = du370 v2
du370 :: AgdaAny -> T54 AgdaAny AgdaAny
du370 v0 = coe C66 (coe v0) (coe du15005)
name390 = "Codata.Musical.Colist.Any-map"
d390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Function.Inverse.T58
d390 v0 v1 v2 v3 v4 v5 v6 v7 = du390 v7
du390 :: T54 AgdaAny AgdaAny -> MAlonzo.Code.Function.Inverse.T58
du390 v0
  = coe
      MAlonzo.Code.Function.Inverse.du156 (coe du404 (coe v0))
      (coe du420 (coe v0)) erased erased
name404 = "Codata.Musical.Colist._.to"
d404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T102 -> T102
d404 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du404 v8 v9
du404 :: T54 AgdaAny AgdaAny -> T102 -> T102
du404 v0 v1
  = case coe v0 of
      C66 v2 v3
        -> case coe v1 of
             C118 v6 -> coe C118 v6
             C126 v6
               -> coe
                    C126
                    (coe
                       du404 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))
                       (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name420 = "Codata.Musical.Colist._.from"
d420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T102 -> T102
d420 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du420 v8 v9
du420 :: T54 AgdaAny AgdaAny -> T102 -> T102
du420 v0 v1
  = case coe v1 of
      C118 v4 -> coe C118 v4
      C126 v4
        -> case coe v0 of
             C66 v5 v6
               -> coe
                    C126
                    (coe
                       du420 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6))
                       (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name430 = "Codata.Musical.Colist._.from∘to"
d430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T102 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d430 = erased
name448 = "Codata.Musical.Colist._.to∘from"
d448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T102 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d448 = erased
name466 = "Codata.Musical.Colist.Any-⋎"
d466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Function.Inverse.T58
d466 v0 v1 v2 v3 v4 v5 = du466 v0 v1 v4 v5
du466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Function.Inverse.T58
du466 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Inverse.C2555
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.C501
            (coe
               MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
         (coe du478 (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.C501
            (coe
               MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
         (coe du524 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe MAlonzo.Code.Function.Inverse.C1525 erased erased)
name478 = "Codata.Musical.Colist._.to"
d478 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T102 -> MAlonzo.Code.Data.Sum.Base.T30
d478 v0 v1 v2 v3 v4 v5 v6 = du478 v4 v5 v6
du478 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T102 -> MAlonzo.Code.Data.Sum.Base.T30
du478 v0 v1 v2
  = case coe v0 of
      C60 -> coe MAlonzo.Code.Data.Sum.Base.C42 (coe v2)
      C66 v3 v4
        -> case coe v2 of
             C118 v7 -> coe MAlonzo.Code.Data.Sum.Base.C38 (coe C118 v7)
             C126 v7
               -> coe
                    MAlonzo.Code.Data.Sum.Base.du66
                    (coe MAlonzo.Code.Data.Sum.Base.C42)
                    (\ v8 -> coe MAlonzo.Code.Data.Sum.Base.C38 (coe C126 v8))
                    (coe
                       du478 (coe v1)
                       (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4)) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name498 = "Codata.Musical.Colist._.from-left"
d498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T102 -> T102
d498 v0 v1 v2 v3 v4 v5 v6 = du498 v0 v1 v4 v5 v6
du498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T102 -> T102
du498 v0 v1 v2 v3 v4
  = case coe v4 of
      C118 v7 -> coe C118 v7
      C126 v7
        -> case coe v2 of
             C66 v8 v9
               -> coe
                    C126
                    (coe
                       du504 (coe v0) (coe v1) (coe v3)
                       (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v9)) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name504 = "Codata.Musical.Colist._.from-right"
d504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T102 -> T102
d504 v0 v1 v2 v3 v4 v5 v6 = du504 v0 v1 v4 v5 v6
du504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T102 -> T102
du504 v0 v1 v2 v3 v4
  = case coe v2 of
      C60 -> coe v4
      C66 v5 v6
        -> coe
             C126
             (coe
                du498 (coe v0) (coe v1) (coe v3)
                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6)) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name524 = "Codata.Musical.Colist._.from"
d524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30 -> T102
d524 v0 v1 v2 v3 v4 v5 = du524 v0 v1 v4 v5
du524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30 -> T102
du524 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Sum.Base.du52
      (coe du498 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du504 (coe v0) (coe v1) (coe v2) (coe v3))
name534 = "Codata.Musical.Colist._.from∘to"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T102 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d534 = erased
name578 = "Codata.Musical.Colist._.to∘from-left"
d578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T102 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d578 = erased
name586 = "Codata.Musical.Colist._.to∘from-right"
d586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T102 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d586 = erased
name618 = "Codata.Musical.Colist._.to∘from"
d618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d618 = erased
name632 = "Codata.Musical.Colist._≈_"
d632 a0 a1 a2 a3 = ()
data T632 = C638 | C648 (MAlonzo.RTE.Infinity AgdaAny T632)
name652 = "Codata.Musical.Colist.setoid"
d652 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T44
d652 v0 v1 = du652 v0
du652 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
du652 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C483 (coe du660 (coe v0))
         (coe du666 (coe v0)) (coe du672 (coe v0)))
name660 = "Codata.Musical.Colist._.refl"
d660 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T54 AgdaAny AgdaAny -> T632
d660 v0 v1 v2 = du660 v0 v2
du660 ::
  MAlonzo.Code.Agda.Primitive.T4 -> T54 AgdaAny AgdaAny -> T632
du660 v0 v1
  = case coe v1 of
      C60 -> coe C638
      C66 v2 v3 -> coe C648 (coe du44729 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name666 = "Codata.Musical.Colist._.sym"
d666 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T632
d666 v0 v1 v2 v3 v4 = du666 v0 v2 v3 v4
du666 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T632
du666 v0 v1 v2 v3
  = case coe v3 of
      C638 -> coe v3
      C648 v7
        -> case coe v1 of
             C66 v8 v9
               -> case coe v2 of
                    C66 v10 v11
                      -> coe C648 (coe du45497 (coe v0) (coe v9) (coe v11) (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name672 = "Codata.Musical.Colist._.trans"
d672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T632 -> T632
d672 v0 v1 v2 v3 v4 v5 v6 = du672 v0 v2 v3 v4 v5 v6
du672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T632 -> T632
du672 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C638 -> coe seq (coe v5) (coe v4)
      C648 v9
        -> case coe v1 of
             C66 v10 v11
               -> case coe v2 of
                    C66 v12 v13
                      -> case coe v5 of
                           C648 v17
                             -> case coe v3 of
                                  C66 v18 v19
                                    -> coe
                                         C648
                                         (coe
                                            du47307 (coe v0) (coe v11) (coe v13) (coe v9) (coe v19)
                                            (coe v17))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name688 = "Codata.Musical.Colist.≈-Reasoning.R._IsRelatedTo_"
d688 a0 a1 a2 a3 = ()
name690 = "Codata.Musical.Colist.≈-Reasoning.R._∎"
d690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d690 v0 v1 = du690 v0
du690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du690 v0
  = let v1 = coe du652 (coe v0) in
    let v2
          = MAlonzo.Code.Relation.Binary.Structures.d34
              (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v1)) in
    coe
      (\ v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
           (coe v2 v3))
name692 = "Codata.Musical.Colist.≈-Reasoning.R._∎⟨_⟩"
d692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d692 v0 v1 v2 v3 = du692 v3
du692 ::
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du692 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32 (coe v0)
name694 = "Codata.Musical.Colist.≈-Reasoning.R._≡⟨⟩_"
d694 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d694 v0 = coe v0
name696 = "Codata.Musical.Colist.≈-Reasoning.R.begin_"
d696 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 -> T632
d696 = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
name700 = "Codata.Musical.Colist.≈-Reasoning.R.step-≈"
d700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d700 v0 v1 = du700 v0
du700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du700 v0
  = let v1 = coe du652 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
      (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v1))
name702 = "Codata.Musical.Colist.≈-Reasoning.R.step-≈˘"
d702 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d702 v0 v1 = du702 v0
du702 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du702 v0
  = let v1 = coe du652 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
      (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v1))
name704 = "Codata.Musical.Colist.≈-Reasoning.R.step-≡"
d704 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d704 v0 v1 v2 v3 v4 v5 v6 = du704 v5
du704 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du704 v0 = coe v0
name706 = "Codata.Musical.Colist.≈-Reasoning.R.step-≡˘"
d706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d706 v0 v1 v2 v3 v4 v5 v6 = du706 v5
du706 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du706 v0 = coe v0
name722 = "Codata.Musical.Colist.map-cong"
d722 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T632
d722 v0 v1 v2 v3 v4 v5 v6 v7 = du722 v0 v1 v4 v5 v6 v7
du722 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T632
du722 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C638 -> coe v5
      C648 v9
        -> case coe v3 of
             C66 v10 v11
               -> case coe v4 of
                    C66 v12 v13
                      -> coe
                           C648
                           (coe
                              du50361 (coe v0) (coe v1) (coe v2) (coe v11) (coe v13) (coe v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name750 = "Codata.Musical.Colist.Any-resp"
d750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T632 -> T102 -> T102
d750 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du750 v6 v7 v8 v9 v10
du750 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T632 -> T102 -> T102
du750 v0 v1 v2 v3 v4
  = case coe v3 of
      C648 v8
        -> case coe v0 of
             C66 v9 v10
               -> case coe v1 of
                    C66 v11 v12
                      -> case coe v4 of
                           C118 v15 -> coe C118 (coe v2 v9 v15)
                           C126 v15
                             -> coe
                                  C126
                                  (coe
                                     du750 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v10))
                                     (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v12))
                                     (coe v2)
                                     (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v8))
                                     (coe v15))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name784 = "Codata.Musical.Colist.Any-cong"
d784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Function.Inverse.T58) ->
  T632 -> MAlonzo.Code.Function.Inverse.T58
d784 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du784 v0 v6 v7 v8 v9
du784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Function.Inverse.T58) ->
  T632 -> MAlonzo.Code.Function.Inverse.T58
du784 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Inverse.C2555
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.C501
            (coe
               MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
         (coe
            du750 (coe v1) (coe v2)
            (coe
               (\ v5 ->
                  MAlonzo.Code.Function.Equality.d38
                    (coe MAlonzo.Code.Function.Inverse.d78 (coe v3 v5))))
            (coe v4)))
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.C501
            (coe
               MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
         (coe du820 (coe v0) (coe v3) (coe v1) (coe v2) (coe v4)))
      (coe MAlonzo.Code.Function.Inverse.C1525 erased erased)
name810 = "Codata.Musical.Colist._.to"
d810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Function.Inverse.T58) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T102 -> T102
d810 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du810 v8 v9 v10 v11
du810 ::
  (AgdaAny -> MAlonzo.Code.Function.Inverse.T58) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T102 -> T102
du810 v0 v1 v2 v3
  = coe
      du750 (coe v1) (coe v2)
      (coe
         (\ v4 ->
            MAlonzo.Code.Function.Equality.d38
              (coe MAlonzo.Code.Function.Inverse.d78 (coe v0 v4))))
      (coe v3)
name820 = "Codata.Musical.Colist._.from"
d820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Function.Inverse.T58) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T102 -> T102
d820 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du820 v0 v8 v9 v10 v11
du820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> MAlonzo.Code.Function.Inverse.T58) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T102 -> T102
du820 v0 v1 v2 v3 v4
  = coe
      du750 (coe v3) (coe v2)
      (coe
         (\ v5 ->
            MAlonzo.Code.Function.Equality.d38
              (coe MAlonzo.Code.Function.Inverse.d80 (coe v1 v5))))
      (coe du666 (coe v0) (coe v2) (coe v3) (coe v4))
name834 = "Codata.Musical.Colist._.to∘from"
d834 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Function.Inverse.T58) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 -> T102 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d834 = erased
name856 = "Codata.Musical.Colist._.from∘to"
d856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Function.Inverse.T58) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 -> T102 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d856 = erased
name882 = "Codata.Musical.Colist.index"
d882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> T54 AgdaAny AgdaAny -> T102 -> Integer
d882 v0 v1 v2 v3 v4 v5 = du882 v4 v5
du882 :: T54 AgdaAny AgdaAny -> T102 -> Integer
du882 v0 v1
  = case coe v1 of
      C118 v4 -> coe (0 :: Integer)
      C126 v4
        -> case coe v0 of
             C66 v5 v6
               -> coe
                    addInt (coe (1 :: Integer))
                    (coe
                       du882 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6))
                       (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name900 = "Codata.Musical.Colist.lookup-index"
d900 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T102 -> MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T18
d900 v0 v1 v2 v3 v4 v5 = du900 v4 v5
du900 ::
  T54 AgdaAny AgdaAny ->
  T102 -> MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T18
du900 v0 v1
  = case coe v1 of
      C118 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Relation.Unary.Any.C30
             (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
      C126 v4
        -> case coe v0 of
             C66 v5 v6
               -> coe
                    du900 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6))
                    (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name930 = "Codata.Musical.Colist.index-Any-resp"
d930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 -> T102 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d930 = erased
name958 = "Codata.Musical.Colist.index-Any-⋎"
d958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T102 -> MAlonzo.Code.Data.Nat.Base.T142
d958 v0 v1 v2 v3 v4 v5 v6 = du958 v0 v1 v4 v5 v6
du958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T102 -> MAlonzo.Code.Data.Nat.Base.T142
du958 v0 v1 v2 v3 v4
  = case coe v2 of
      C60 -> coe MAlonzo.Code.Data.Nat.Base.C146
      C66 v5 v6
        -> case coe v4 of
             C118 v9 -> coe MAlonzo.Code.Data.Nat.Base.C146
             C126 v9
               -> let v10
                        = coe
                            MAlonzo.Code.Function.Equality.d38
                            (MAlonzo.Code.Function.Inverse.d78
                               (coe
                                  du466 (coe v0) (coe v1) (coe v3)
                                  (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6))))
                            v9 in
                  let v11
                        = coe
                            du958 (coe v0) (coe v1) (coe v3)
                            (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6))
                            (coe v9) in
                  case coe v10 of
                    MAlonzo.Code.Data.Sum.Base.C38 v12
                      -> coe MAlonzo.Code.Data.Nat.Base.C152 v11
                    MAlonzo.Code.Data.Sum.Base.C42 v12 -> coe v11
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1008 = "Codata.Musical.Colist._∈_"
d1008 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> T54 AgdaAny AgdaAny -> ()
d1008 = erased
name1018 = "Codata.Musical.Colist._⊆_"
d1018 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> ()
d1018 = erased
name1030 = "Codata.Musical.Colist._⊑_"
d1030 a0 a1 a2 a3 = ()
data T1030 = C1038 | C1048 (MAlonzo.RTE.Infinity AgdaAny T1030)
name1062 = "Codata.Musical.Colist.Any-∈"
d1062 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Function.Inverse.T58
d1062 v0 v1 v2 v3 v4 = du1062 v4
du1062 :: T54 AgdaAny AgdaAny -> MAlonzo.Code.Function.Inverse.T58
du1062 v0
  = coe
      MAlonzo.Code.Function.Inverse.C2555
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.C501
            (coe
               MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
         (coe du1074 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.C501
            (coe
               MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
         (\ v1 ->
            case coe v1 of
              MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
                -> case coe v3 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C32 v4 v5
                       -> coe du1084 (coe v0) (coe v4) (coe v5)
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe MAlonzo.Code.Function.Inverse.C1525 erased erased)
name1074 = "Codata.Musical.Colist._.to"
d1074 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T102 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1074 v0 v1 v2 v3 v4 v5 v6 = du1074 v5 v6
du1074 ::
  T54 AgdaAny AgdaAny -> T102 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1074 v0 v1
  = case coe v1 of
      C118 v4
        -> case coe v0 of
             C66 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v5)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe C118 erased) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      C126 v4
        -> case coe v0 of
             C66 v5 v6
               -> coe
                    MAlonzo.Code.Data.Product.du148 (coe (\ v7 -> v7))
                    (coe
                       (\ v7 ->
                          coe
                            MAlonzo.Code.Data.Product.du148 (coe C126) (coe (\ v8 v9 -> v9))))
                    (coe
                       du1074 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6))
                       (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1084 = "Codata.Musical.Colist._.from"
d1084 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  AgdaAny -> T54 AgdaAny AgdaAny -> T102 -> AgdaAny -> T102
d1084 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1084 v6 v7 v8
du1084 :: T54 AgdaAny AgdaAny -> T102 -> AgdaAny -> T102
du1084 v0 v1 v2
  = case coe v1 of
      C118 v5 -> coe C118 v2
      C126 v5
        -> case coe v0 of
             C66 v6 v7
               -> coe
                    C126
                    (coe
                       du1084 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v7))
                       (coe v5) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1100 = "Codata.Musical.Colist._.to∘from"
d1100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T102 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1100 = erased
name1118 = "Codata.Musical.Colist._.from∘to"
d1118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T102 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1118 = erased
name1142 = "Codata.Musical.Colist.⊑⇒⊆"
d1142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T1030 -> AgdaAny -> T102 -> T102
d1142 v0 v1 v2 v3 v4 v5 v6 = du1142 v2 v3 v4 v6
du1142 ::
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T1030 -> T102 -> T102
du1142 v0 v1 v2 v3
  = case coe v2 of
      C1048 v7
        -> case coe v0 of
             C66 v8 v9
               -> case coe v1 of
                    C66 v10 v11
                      -> case coe v3 of
                           C118 v14 -> coe C118 v14
                           C126 v14
                             -> coe
                                  C126
                                  (coe
                                     du1142 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v9))
                                     (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v11))
                                     (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v7))
                                     (coe v14))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1156 = "Codata.Musical.Colist.⊑-Poset"
d1156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T204
d1156 v0 v1 = du1156 v0
du1156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du1156 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C4865
         (coe
            MAlonzo.Code.Relation.Binary.Structures.C2113
            (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe du652 (coe v0)))
            (coe du1164 (coe v0)) (coe du1170 (coe v0)))
         (coe du1190 (coe v0)))
name1164 = "Codata.Musical.Colist._.reflexive"
d1164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T1030
d1164 v0 v1 v2 v3 v4 = du1164 v0 v2 v3 v4
du1164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T1030
du1164 v0 v1 v2 v3
  = case coe v3 of
      C638 -> coe C1038
      C648 v7
        -> case coe v1 of
             C66 v8 v9
               -> case coe v2 of
                    C66 v10 v11
                      -> coe C1048 (coe du108157 (coe v0) (coe v9) (coe v11) (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1170 = "Codata.Musical.Colist._.trans"
d1170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T1030 -> T1030 -> T1030
d1170 v0 v1 v2 v3 v4 v5 v6 = du1170 v0 v2 v3 v4 v5 v6
du1170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T1030 -> T1030 -> T1030
du1170 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C1038 -> coe C1038
      C1048 v9
        -> case coe v1 of
             C66 v10 v11
               -> case coe v2 of
                    C66 v12 v13
                      -> case coe v5 of
                           C1048 v17
                             -> case coe v3 of
                                  C66 v18 v19
                                    -> coe
                                         C1048
                                         (coe
                                            du109929 (coe v0) (coe v11) (coe v13) (coe v9) (coe v19)
                                            (coe v17))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1186 = "Codata.Musical.Colist._.tail"
d1186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T1030 -> T1030
d1186 v0 v1 v2 v3 v4 v5 v6 = du1186 v6
du1186 :: T1030 -> T1030
du1186 v0
  = case coe v0 of
      C1048 v4 -> coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name1190 = "Codata.Musical.Colist._.antisym"
d1190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T1030 -> T1030 -> T632
d1190 v0 v1 v2 v3 v4 v5 = du1190 v0 v2 v3 v4 v5
du1190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T1030 -> T1030 -> T632
du1190 v0 v1 v2 v3 v4
  = case coe v3 of
      C1038 -> coe seq (coe v4) (coe C638)
      C1048 v8
        -> case coe v1 of
             C66 v9 v10
               -> case coe v2 of
                    C66 v11 v12
                      -> coe
                           C648 (coe du113661 (coe v0) (coe v10) (coe v12) (coe v8) (coe v4))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1206 = "Codata.Musical.Colist.⊑-Reasoning.Base._IsRelatedTo_"
d1206 a0 a1 a2 a3 = ()
name1208 = "Codata.Musical.Colist.⊑-Reasoning.Base._∎"
d1208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1208 v0 v1 = du1208 v0
du1208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du1208 v0
  = let v1 = coe du1156 (coe v0) in
    let v2
          = MAlonzo.Code.Relation.Binary.Structures.d126
              (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1)) in
    coe
      (\ v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
           (coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v2)) v3))
name1210 = "Codata.Musical.Colist.⊑-Reasoning.Base._≈⟨⟩_"
d1210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1210 v0 v1 v2 v3 v4 = du1210 v4
du1210 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du1210 v0 = coe v0
name1212 = "Codata.Musical.Colist.⊑-Reasoning.Base._≡⟨⟩_"
d1212 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1212 v0 = coe v0
name1214 = "Codata.Musical.Colist.⊑-Reasoning.Base.IsEquality"
d1214 a0 a1 a2 a3 a4 = ()
name1216 = "Codata.Musical.Colist.⊑-Reasoning.Base.IsEquality?"
d1216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Nullary.T32
d1216 v0 v1 = du1216
du1216 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Nullary.T32
du1216 v0 v1 v2
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du142 v2
name1218 = "Codata.Musical.Colist.⊑-Reasoning.Base.IsStrict"
d1218 a0 a1 a2 a3 a4 = ()
name1220 = "Codata.Musical.Colist.⊑-Reasoning.Base.IsStrict?"
d1220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Nullary.T32
d1220 v0 v1 = du1220
du1220 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Nullary.T32
du1220 v0 v1 v2
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du108 v2
name1222 = "Codata.Musical.Colist.⊑-Reasoning.Base.begin_"
d1222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 -> T1030
d1222 v0 v1 = du1222 v0
du1222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 -> T1030
du1222 v0
  = let v1 = coe du1156 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du160
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1)))
      (coe (\ v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d28))
name1224 = "Codata.Musical.Colist.⊑-Reasoning.Base.begin-equality_"
d1224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> T632
d1224 v0 v1 = du1224
du1224 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> T632
du1224 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du190 v2
name1230 = "Codata.Musical.Colist.⊑-Reasoning.Base.extractEquality"
d1230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T126 -> T632
d1230 v0 v1 = du1230
du1230 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T126 -> T632
du1230 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du152 v2 v3
name1232 = "Codata.Musical.Colist.⊑-Reasoning.Base.extractStrict"
d1232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T92 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1232 v0 v1 = du1232
du1232 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T92 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1232 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du118 v2 v3
name1242 = "Codata.Musical.Colist.⊑-Reasoning.Base.step-≈"
d1242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1242 v0 v1 = du1242 v0
du1242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du1242 v0
  = let v1 = coe du1156 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du254
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du322
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d80
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d126
               (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1))))
         (let v2 = MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1) in
          coe
            MAlonzo.Code.Relation.Binary.Structures.du112
            (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))))
name1244 = "Codata.Musical.Colist.⊑-Reasoning.Base.step-≈˘"
d1244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1244 v0 v1 = du1244 v0
du1244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du1244 v0
  = let v1 = coe du1156 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du280
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du322
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d80
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d126
               (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1))))
         (let v2 = MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1) in
          coe
            MAlonzo.Code.Relation.Binary.Structures.du112
            (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))))
name1246 = "Codata.Musical.Colist.⊑-Reasoning.Base.step-≡"
d1246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1246 v0 v1 v2 v3 v4 v5 v6 = du1246 v5
du1246 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du1246 v0 = coe v0
name1248 = "Codata.Musical.Colist.⊑-Reasoning.Base.step-≡˘"
d1248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1248 v0 v1 v2 v3 v4 v5 v6 = du1248 v5
du1248 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du1248 v0 = coe v0
name1270 = "Codata.Musical.Colist.⊑-Reasoning.step-⊑"
d1270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  T1030 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1270 v0 v1 = du1270 v0
du1270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  T1030 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du1270 v0
  = let v1 = coe du1156 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du228
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du268
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d84
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d126
               (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d128
            (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1)))
         (let v2 = MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1) in
          coe
            MAlonzo.Code.Relation.Binary.Structures.du100
            (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))))
name1274 = "Codata.Musical.Colist.⊆-Preorder"
d1274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T132
d1274 v0 v1 = du1274 v0
du1274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du1274 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.FromRel.du80
      (coe du652 (coe v0))
      (coe
         (\ v1 v2 v3 v4 ->
            coe
              du1142 (coe v2) (coe v3)
              (coe du1164 (coe v0) (coe v2) (coe v3) (coe v4))))
name1346 = "Codata.Musical.Colist.⊆-Reasoning.Base._IsRelatedTo_"
d1346 a0 a1 a2 a3 = ()
name1348 = "Codata.Musical.Colist.⊆-Reasoning.Base._∎"
d1348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d1348 v0 v1 = du1348 v0
du1348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du1348 v0
  = let v1 = coe du1274 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v1) in
    coe
      (\ v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.C68
           (coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v2)) v3))
name1350 = "Codata.Musical.Colist.⊆-Reasoning.Base._≈⟨⟩_"
d1350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d1350 v0 v1 v2 v3 v4 = du1350 v4
du1350 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du1350 v0 = coe v0
name1352 = "Codata.Musical.Colist.⊆-Reasoning.Base._≡⟨⟩_"
d1352 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d1352 v0 = coe v0
name1354 = "Codata.Musical.Colist.⊆-Reasoning.Base.IsEquality"
d1354 a0 a1 a2 a3 a4 = ()
name1356 = "Codata.Musical.Colist.⊆-Reasoning.Base.IsEquality?"
d1356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Nullary.T32
d1356 v0 v1 = du1356
du1356 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Nullary.T32
du1356 v0 v1 v2
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du90 v2
name1358 = "Codata.Musical.Colist.⊆-Reasoning.Base.begin_"
d1358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  AgdaAny -> T102 -> T102
d1358 v0 v1 = du1358 v0
du1358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  AgdaAny -> T102 -> T102
du1358 v0
  = let v1 = coe du1274 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du110
      (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v1))
name1360 = "Codata.Musical.Colist.⊆-Reasoning.Base.begin-equality_"
d1360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  AgdaAny -> T632
d1360 v0 v1 = du1360
du1360 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  AgdaAny -> T632
du1360 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du124 v2
name1364 = "Codata.Musical.Colist.⊆-Reasoning.Base.extractEquality"
d1364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T74 -> T632
d1364 v0 v1 = du1364
du1364 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T74 -> T632
du1364 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du100 v2 v3
name1372 = "Codata.Musical.Colist.⊆-Reasoning.Base.step-≈"
d1372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d1372 v0 v1 = du1372 v0
du1372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du1372 v0
  = let v1 = coe du1274 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du156
      (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v1))
name1374 = "Codata.Musical.Colist.⊆-Reasoning.Base.step-≈˘"
d1374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d1374 v0 v1 = du1374 v0
du1374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  T632 -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du1374 v0
  = let v1 = coe du1274 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du176
      (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v1))
name1376 = "Codata.Musical.Colist.⊆-Reasoning.Base.step-≡"
d1376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d1376 v0 v1 v2 v3 v4 v5 v6 = du1376 v5
du1376 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du1376 v0 = coe v0
name1378 = "Codata.Musical.Colist.⊆-Reasoning.Base.step-≡˘"
d1378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d1378 v0 v1 v2 v3 v4 v5 v6 = du1378 v5
du1378 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du1378 v0 = coe v0
name1390 = "Codata.Musical.Colist.⊆-Reasoning.step-⊆"
d1390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  (AgdaAny -> T102 -> T102) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d1390 v0 v1 = du1390 v0
du1390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  (AgdaAny -> T102 -> T102) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du1390 v0
  = let v1 = coe du1274 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du136
      (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v1))
name1398 = "Codata.Musical.Colist.⊆-Reasoning.step-∈"
d1398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  T102 -> T102
d1398 v0 v1 v2 v3 v4 v5 v6 = du1398 v0 v2 v3 v4 v5 v6
du1398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  T102 -> T102
du1398 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du110
      (MAlonzo.Code.Relation.Binary.Bundles.d154 (coe du1274 (coe v0)))
      v2 v3 v4 v1 v5
name1416 = "Codata.Musical.Colist.take-⊑"
d1416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T54 AgdaAny AgdaAny -> T1030
d1416 v0 v1 v2 v3 = du1416 v0 v2 v3
du1416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer -> T54 AgdaAny AgdaAny -> T1030
du1416 v0 v1 v2
  = case coe v1 of
      0 -> coe C1038
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v2 of
             C60 -> coe C1038
             C66 v4 v5 -> coe C1048 (coe du117451 (coe v0) (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name1432 = "Codata.Musical.Colist.Finite"
d1432 a0 a1 a2 = ()
data T1432 = C1438 | C1446 T1432
name1462 = "Codata.Musical.Colist.Finite-injective.∷-injective"
d1462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T1432 ->
  T1432 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1462 = erased
name1468 = "Codata.Musical.Colist.Infinite"
d1468 a0 a1 a2 = ()
newtype T1468 = C1480 (MAlonzo.RTE.Infinity AgdaAny T1468)
name1496 = "Codata.Musical.Colist.Infinite-injective.∷-injective"
d1496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1468 ->
  MAlonzo.RTE.Infinity AgdaAny T1468 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1496 = erased
name1504 = "Codata.Musical.Colist.not-finite-is-infinite"
d1504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  (T1432 -> MAlonzo.Code.Data.Empty.T4) -> T1468
d1504 v0 v1 v2 v3 = du1504 v0 v2
du1504 ::
  MAlonzo.Code.Agda.Primitive.T4 -> T54 AgdaAny AgdaAny -> T1468
du1504 v0 v1
  = case coe v1 of
      C60 -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      C66 v2 v3 -> coe C1480 (coe du120669 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name1520 = "Codata.Musical.Colist.finite-or-infinite"
d1520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  (MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d1520 = erased
name1528 = "Codata.Musical.Colist._.helper"
d1528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Nullary.T32 -> MAlonzo.Code.Data.Sum.Base.T30
d1528 v0 v1 v2 v3 = du1528 v0 v2 v3
du1528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Nullary.T32 -> MAlonzo.Code.Data.Sum.Base.T30
du1528 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Relation.Nullary.C46 v3 v4
        -> if coe v3
             then coe
                    MAlonzo.Code.Data.Sum.Base.C38
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v4))
             else coe
                    MAlonzo.Code.Data.Sum.Base.C42 (coe du1504 (coe v0) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name1540 = "Codata.Musical.Colist.not-finite-and-infinite"
d1540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny -> T1432 -> T1468 -> MAlonzo.Code.Data.Empty.T4
d1540 = erased
name1558 = "Codata.Musical.Colist._.fromMusical"
d1558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Codata.Colist.T28
d1558 v0 v1 v2 v3 = du1558 v3
du1558 :: T54 AgdaAny AgdaAny -> MAlonzo.Code.Codata.Colist.T28
du1558 v0
  = case coe v0 of
      C60 -> coe MAlonzo.Code.Codata.Colist.C34
      C66 v1 v2
        -> coe
             MAlonzo.Code.Codata.Colist.C36 (coe v1)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 ->
                      coe
                        du1558 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2)))))
      _ -> MAlonzo.RTE.mazUnreachableError
name1566 = "Codata.Musical.Colist._.toMusical"
d1566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Codata.Colist.T28 -> T54 AgdaAny AgdaAny
d1566 v0 v1 v2 = du1566 v0 v2
du1566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Codata.Colist.T28 -> T54 AgdaAny AgdaAny
du1566 v0 v1
  = case coe v1 of
      MAlonzo.Code.Codata.Colist.C34 -> coe C60
      MAlonzo.Code.Codata.Colist.C36 v2 v3
        -> coe C66 (coe v2) (coe du124105 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name1578 = "Codata.Musical.Colist.take′"
d1578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Data.BoundedVec.Inefficient.T10
d1578 v0 v1 v2 v3 = du1578 v2 v3
du1578 ::
  Integer ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Data.BoundedVec.Inefficient.T10
du1578 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.BoundedVec.Inefficient.C18
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C60 -> coe MAlonzo.Code.Data.BoundedVec.Inefficient.C18
             C66 v3 v4
               -> coe
                    MAlonzo.Code.Data.BoundedVec.Inefficient.C26 v3
                    (coe
                       du1578 (coe v2)
                       (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4)))
             _ -> MAlonzo.RTE.mazUnreachableError
name1600 = "Codata.Musical.Colist.take′-⊑"
d1600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T54 AgdaAny AgdaAny -> T1030
d1600 v0 v1 v2 v3 = du1600 v0 v2 v3
du1600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer -> T54 AgdaAny AgdaAny -> T1030
du1600 v0 v1 v2
  = case coe v1 of
      0 -> coe C1038
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v2 of
             C60 -> coe C1038
             C66 v4 v5 -> coe C1048 (coe du125751 (coe v0) (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name9249 = "Codata.Musical.Colist._.♯-0"
d9249 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.Codata.Musical.Conat.T6
d9249 v0 v1 v2 v3 = du9249 v0 v3
du9249 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.Codata.Musical.Conat.T6
du9249 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du238 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
name9907 = "Codata.Musical.Colist._.♯-1"
d9907 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d9907 v0 v1 v2 v3 v4 v5 v6 = du9907 v0 v1 v4 v6
du9907 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du9907 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du252 (coe v0) (coe v1) (coe v2)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
name10637 = "Codata.Musical.Colist._.♯-2"
d10637 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d10637 v0 v1 v2 v3 = du10637 v0 v3
du10637 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  [AgdaAny] -> MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du10637 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe du266 (coe v0) (coe v1))
name11765 = "Codata.Musical.Colist._.♯-3"
d11765 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.Codata.Musical.Conat.T6 ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d11765 v0 v1 v2 v3 = du11765 v0 v2 v3
du11765 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.Codata.Musical.Conat.T6 ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du11765 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du294 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)) (coe v2))
name12847 = "Codata.Musical.Colist._.♯-4"
d12847 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d12847 v0 v1 v2 v3 v4 = du12847 v0 v3 v4
du12847 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du12847 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du324 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)) (coe v2))
name13425 = "Codata.Musical.Colist._.♯-5"
d13425 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d13425 v0 v1 v2 v3 v4 = du13425 v0 v3 v4
du13425 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du13425 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du338 (coe v0) (coe v2)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
name14055 = "Codata.Musical.Colist._.♯-6"
d14055 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny (T54 AgdaAny MAlonzo.Code.Data.List.NonEmpty.T22) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d14055 v0 v1 v2 v3 = du14055 v0 v3
du14055 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny (T54 AgdaAny MAlonzo.Code.Data.List.NonEmpty.T22) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du14055 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du352 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
name14469 = "Codata.Musical.Colist._.♯-7"
d14469 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny (T54 AgdaAny MAlonzo.Code.Data.List.NonEmpty.T22) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d14469 v0 v1 v2 v3 v4 v5 = du14469 v0 v3 v4 v5
du14469 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny (T54 AgdaAny MAlonzo.Code.Data.List.NonEmpty.T22) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du14469 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du352 (coe v0)
         (coe
            C66 (coe MAlonzo.Code.Data.List.NonEmpty.C34 (coe v1) (coe v2))
            (coe v3)))
name15005 = "Codata.Musical.Colist._.♯-8"
d15005 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d15005 v0 v1 v2 = du15005
du15005 :: MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du15005 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe C60)
name44729 = "Codata.Musical.Colist._._.♯-14"
d44729 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632
d44729 v0 v1 v2 v3 = du44729 v0 v3
du44729 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632
du44729 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du660 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
name45497 = "Codata.Musical.Colist._._.♯-15"
d45497 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632
d45497 v0 v1 v2 v3 v4 v5 = du45497 v0 v3 v4 v5
du45497 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632
du45497 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du666 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
name47307 = "Codata.Musical.Colist._._.♯-16"
d47307 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632
d47307 v0 v1 v2 v3 v4 v5 v6 v7 = du47307 v0 v3 v4 v5 v6 v7
du47307 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632
du47307 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du672 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v5)))
name50361 = "Codata.Musical.Colist._.♯-17"
d50361 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632
d50361 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du50361 v0 v1 v4 v6 v7 v8
du50361 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632
du50361 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du722 (coe v0) (coe v1) (coe v2)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v5)))
name108157 = "Codata.Musical.Colist._._.♯-20"
d108157 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T1030
d108157 v0 v1 v2 v3 v4 v5 = du108157 v0 v3 v4 v5
du108157 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T1030
du108157 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du1164 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
name109929 = "Codata.Musical.Colist._._.♯-21"
d109929 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1030 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1030 ->
  MAlonzo.RTE.Infinity AgdaAny T1030
d109929 v0 v1 v2 v3 v4 v5 v6 v7 = du109929 v0 v3 v4 v5 v6 v7
du109929 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1030 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1030 ->
  MAlonzo.RTE.Infinity AgdaAny T1030
du109929 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du1170 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v5)))
name113661 = "Codata.Musical.Colist._._.♯-22"
d113661 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1030 ->
  T1030 -> MAlonzo.RTE.Infinity AgdaAny T632
d113661 v0 v1 v2 v3 v4 v5 v6 = du113661 v0 v3 v4 v5 v6
du113661 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1030 ->
  T1030 -> MAlonzo.RTE.Infinity AgdaAny T632
du113661 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du1190 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))
         (coe du1186 (coe v4)))
name117451 = "Codata.Musical.Colist._.♯-23"
d117451 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1030
d117451 v0 v1 v2 v3 v4 = du117451 v0 v2 v4
du117451 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1030
du117451 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du1416 (coe v0) (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2)))
name120669 = "Codata.Musical.Colist._.♯-25"
d120669 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  (T1432 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.RTE.Infinity AgdaAny T1468
d120669 v0 v1 v2 v3 v4 = du120669 v0 v3
du120669 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1468
du120669 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du1504 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
name124105 = "Codata.Musical.Colist._._.♯-26"
d124105 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Codata.Thunk.T10 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d124105 v0 v1 v2 v3 = du124105 v0 v3
du124105 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Codata.Thunk.T10 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du124105 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe du1566 (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased))
name125751 = "Codata.Musical.Colist._.♯-27"
d125751 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1030
d125751 v0 v1 v2 v3 v4 = du125751 v0 v2 v4
du125751 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1030
du125751 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du1600 (coe v0) (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2)))
