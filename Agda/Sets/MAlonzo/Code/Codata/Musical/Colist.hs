{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Construct.FromRel
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Setoid
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Negation

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
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
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
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
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
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
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
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
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
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
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
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
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
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
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
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
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
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
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
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
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
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d38 = erased
name40 = "Codata.Musical.Colist.¬¬Monad._.rawFunctor"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Category.Functor.T8
d40 v0 = du40
du40 ::
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Category.Functor.T8
du40
  = let v0 = MAlonzo.Code.Relation.Nullary.Negation.du134 in
    coe
      (MAlonzo.Code.Category.Applicative.Indexed.du74
         (coe (MAlonzo.Code.Category.Monad.Indexed.du146 (coe v0))))
name42 = "Codata.Musical.Colist.¬¬Monad._.rawIApplicative"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Category.Applicative.Indexed.T24
d42 v0 = du42
du42 :: MAlonzo.Code.Category.Applicative.Indexed.T24
du42
  = let v0 = MAlonzo.Code.Relation.Nullary.Negation.du134 in
    coe (MAlonzo.Code.Category.Monad.Indexed.du146 (coe v0))
name44 = "Codata.Musical.Colist.¬¬Monad._.return"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d44 = erased
name46 = "Codata.Musical.Colist.¬¬Monad._.zip"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
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
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  () ->
  () ->
  () ->
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
             (MAlonzo.Code.Codata.Musical.Conat.C12
                (coe (du4851 (coe v0) (coe v3))))
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
             (C66
                (coe v2 v4) (coe (du5269 (coe v0) (coe v1) (coe v2) (coe v5))))
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
      (:) v2 v3 -> coe (C66 (coe v2) (coe (du5723 (coe v0) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name278 = "Codata.Musical.Colist.take"
d278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Data.BoundedVec.Inefficient.T10
d278 v0 v1 v2 v3 = du278 v2 v3
du278 ::
  Integer ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Data.BoundedVec.Inefficient.T10
du278 v0 v1
  = case coe v0 of
      0 -> coe
             (\ v2 -> MAlonzo.Code.Data.BoundedVec.Inefficient.C18) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C60
               -> coe
                    (\ v3 -> MAlonzo.Code.Data.BoundedVec.Inefficient.C18) erased
             C66 v3 v4
               -> coe
                    (\ v5 v6 v7 -> MAlonzo.Code.Data.BoundedVec.Inefficient.C26 v6 v7)
                    erased v3
                    (du278
                       (coe v2)
                       (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4))))
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
        -> coe (C66 (coe v2) (coe (du6421 (coe v0) (coe v3) (coe v2))))
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
      C60 -> coe MAlonzo.Code.Data.Maybe.Base.C30
      C66 v2 v3
        -> case coe v0 of
             0 -> coe (MAlonzo.Code.Data.Maybe.Base.C28 (coe v2))
             _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (du306
                       (coe v4)
                       (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))))
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
        -> coe (C66 (coe v3) (coe (du7151 (coe v0) (coe v4) (coe v2))))
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
        -> coe (C66 (coe v3) (coe (du7527 (coe v0) (coe v4) (coe v2))))
      _ -> MAlonzo.RTE.mazUnreachableError
name352 = "Codata.Musical.Colist.concat"
d352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny MAlonzo.Code.Data.List.NonEmpty.T10 ->
  T54 AgdaAny AgdaAny
d352 v0 v1 v2 = du352 v0 v2
du352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny MAlonzo.Code.Data.List.NonEmpty.T10 ->
  T54 AgdaAny AgdaAny
du352 v0 v1
  = case coe v1 of
      C60 -> coe v1
      C66 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Data.List.NonEmpty.C24 v4 v5
               -> case coe v5 of
                    [] -> coe (C66 (coe v4) (coe (du7949 (coe v0) (coe v3))))
                    (:) v6 v7
                      -> coe
                           (C66 (coe v4) (coe (du8191 (coe v0) (coe v6) (coe v7) (coe v3))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name370 = "Codata.Musical.Colist.[_]"
d370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> T54 AgdaAny AgdaAny
d370 v0 v1 v2 = du370 v2
du370 :: AgdaAny -> T54 AgdaAny AgdaAny
du370 v0 = coe (C66 (coe v0) (coe du8619))
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
      (MAlonzo.Code.Function.Inverse.du156
         (coe (du404 (coe v0))) (coe (du420 (coe v0))) erased erased)
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
             C118 v6 -> coe (\ v7 v8 v9 -> C118 v9) erased erased v6
             C126 v6
               -> coe
                    (\ v7 v8 v9 -> C126 v9) erased erased
                    (du404
                       (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
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
      C118 v4 -> coe (\ v5 v6 v7 -> C118 v7) erased erased v4
      C126 v4
        -> case coe v0 of
             C66 v5 v6
               -> coe
                    (\ v7 v8 v9 -> C126 v9) erased erased
                    (du420
                       (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6)))
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
      (MAlonzo.Code.Function.Inverse.C309
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du126
            (coe
               (\ v4 v5 v6 -> MAlonzo.Code.Relation.Binary.C1037 v6) erased erased
               (MAlonzo.Code.Relation.Binary.Core.C5081 erased erased erased))
            (du478 (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du126
            (coe
               (\ v4 v5 v6 -> MAlonzo.Code.Relation.Binary.C1037 v6) erased erased
               (MAlonzo.Code.Relation.Binary.Core.C5081 erased erased erased))
            (du524 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe (MAlonzo.Code.Function.Inverse.C125 erased erased)))
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
      C60 -> coe (MAlonzo.Code.Data.Sum.Base.C42 (coe v2))
      C66 v3 v4
        -> case coe v2 of
             C118 v7
               -> coe
                    (MAlonzo.Code.Data.Sum.Base.C38
                       (coe (\ v8 v9 v10 -> C118 v10) erased erased v7))
             C126 v7
               -> coe
                    MAlonzo.Code.Data.Sum.Base.du66 MAlonzo.Code.Data.Sum.Base.C42
                    (\ v8 ->
                       MAlonzo.Code.Data.Sum.Base.C38
                         (coe (\ v9 v10 v11 -> C126 v11) erased erased v8))
                    (du478
                       (coe v1) (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4)))
                       (coe v7))
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
      C118 v7 -> coe (\ v8 v9 v10 -> C118 v10) erased erased v7
      C126 v7
        -> case coe v2 of
             C66 v8 v9
               -> coe
                    (\ v10 v11 v12 -> C126 v12) erased erased
                    (du504
                       (coe v0) (coe v1) (coe v3)
                       (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v9)))
                       (coe v7))
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
             (\ v7 v8 v9 -> C126 v9) erased erased
             (du498
                (coe v0) (coe v1) (coe v3)
                (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6)))
                (coe v4))
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
      (MAlonzo.Code.Data.Sum.Base.du52
         (coe (du498 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe (du504 (coe v0) (coe v1) (coe v2) (coe v3))))
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
  () -> MAlonzo.Code.Relation.Binary.T128
d652 v0 v1 = du652 v0
du652 ::
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Relation.Binary.T128
du652 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1037 v3) erased erased
      (MAlonzo.Code.Relation.Binary.Core.C5081
         (coe (du660 (coe v0))) (coe (du666 (coe v0)))
         (coe (du672 (coe v0))))
name660 = "Codata.Musical.Colist._.refl"
d660 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T54 AgdaAny AgdaAny -> T632
d660 v0 v1 v2 = du660 v0 v2
du660 ::
  MAlonzo.Code.Agda.Primitive.T4 -> T54 AgdaAny AgdaAny -> T632
du660 v0 v1
  = case coe v1 of
      C60 -> coe C638
      C66 v2 v3
        -> coe
             (\ v4 v5 v6 v7 -> C648 v7) erased erased erased
             (du24427 (coe v0) (coe v3))
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
                      -> coe
                           (\ v12 v13 v14 v15 -> C648 v15) erased erased erased
                           (du24885 (coe v0) (coe v9) (coe v11) (coe v7))
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
      C638 -> coe (seq (coe v5) (coe v4))
      C648 v9
        -> case coe v5 of
             C648 v13
               -> case coe v1 of
                    C66 v14 v15
                      -> case coe v2 of
                           C66 v16 v17
                             -> case coe v3 of
                                  C66 v18 v19
                                    -> coe
                                         (\ v20 v21 v22 v23 -> C648 v23) erased erased erased
                                         (du26145
                                            (coe v0) (coe v17) (coe v19) (coe v15) (coe v9)
                                            (coe v13))
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
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
d690 v0 v1 = du690 v0
du690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
du690 v0
  = let v1 = du652 (coe v0) in
    let v2
          = MAlonzo.Code.Relation.Binary.Core.d414
              (coe (MAlonzo.Code.Relation.Binary.d144 (coe v1))) in
    coe
      (\ v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34 (coe v2 v3))
name692 = "Codata.Musical.Colist.≈-Reasoning.R._≈˘⟨_⟩_"
d692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
d692 v0 v1 = du692 v0
du692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
du692 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
         (coe (du652 (coe v0))))
name694 = "Codata.Musical.Colist.≈-Reasoning.R._∼⟨_⟩_"
d694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
d694 v0 v1 = du694 v0
du694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
du694 v0
  = let v1 = du652 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
         (coe
            (MAlonzo.Code.Relation.Binary.Core.d418
               (coe (MAlonzo.Code.Relation.Binary.d144 (coe v1))))))
name696 = "Codata.Musical.Colist.≈-Reasoning.R._≡˘⟨_⟩_"
d696 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
d696 v0 v1 v2 v3 v4 v5 v6 = du696 v6
du696 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
du696 v0 = coe v0
name698 = "Codata.Musical.Colist.≈-Reasoning.R._≡⟨_⟩_"
d698 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
d698 v0 v1 v2 v3 v4 v5 v6 = du698 v6
du698 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
du698 v0 = coe v0
name700 = "Codata.Musical.Colist.≈-Reasoning.R._≡⟨⟩_"
d700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
d700 v0 v1 v2 v3 v4 = du700 v4
du700 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
du700 v0 = coe v0
name702 = "Codata.Musical.Colist.≈-Reasoning.R.begin_"
d702 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 -> T632
d702 = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
name720 = "Codata.Musical.Colist.map-cong"
d720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T632
d720 v0 v1 v2 v3 v4 v5 v6 v7 = du720 v0 v1 v4 v5 v6 v7
du720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T632
du720 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C638 -> coe v5
      C648 v9
        -> case coe v3 of
             C66 v10 v11
               -> case coe v4 of
                    C66 v12 v13
                      -> coe
                           (\ v14 v15 v16 v17 -> C648 v17) erased erased erased
                           (du28211 (coe v0) (coe v11) (coe v13) (coe v1) (coe v2) (coe v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name748 = "Codata.Musical.Colist.Any-resp"
d748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T632 -> T102 -> T102
d748 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du748 v6 v7 v8 v9 v10
du748 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T632 -> T102 -> T102
du748 v0 v1 v2 v3 v4
  = case coe v3 of
      C648 v8
        -> case coe v4 of
             C118 v11
               -> case coe v0 of
                    C66 v12 v13
                      -> coe (\ v14 v15 v16 -> C118 v16) erased erased (coe v2 v12 v11)
                    _ -> MAlonzo.RTE.mazUnreachableError
             C126 v11
               -> case coe v0 of
                    C66 v12 v13
                      -> case coe v1 of
                           C66 v14 v15
                             -> coe
                                  (\ v16 v17 v18 -> C126 v18) erased erased
                                  (du748
                                     (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v13)))
                                     (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v15)))
                                     (coe v2)
                                     (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v8)))
                                     (coe v11))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name782 = "Codata.Musical.Colist.Any-cong"
d782 ::
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
d782 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du782 v0 v6 v7 v8 v9
du782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Function.Inverse.T58) ->
  T632 -> MAlonzo.Code.Function.Inverse.T58
du782 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Function.Inverse.C309
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du126
            (coe
               (\ v5 v6 v7 -> MAlonzo.Code.Relation.Binary.C1037 v7) erased erased
               (MAlonzo.Code.Relation.Binary.Core.C5081 erased erased erased))
            (du748
               (coe v1) (coe v2)
               (coe
                  (\ v5 ->
                     MAlonzo.Code.Function.Equality.d38
                       (coe (MAlonzo.Code.Function.Inverse.d78 (coe v3 v5)))))
               (coe v4)))
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du126
            (coe
               (\ v5 v6 v7 -> MAlonzo.Code.Relation.Binary.C1037 v7) erased erased
               (MAlonzo.Code.Relation.Binary.Core.C5081 erased erased erased))
            (du818 (coe v0) (coe v3) (coe v1) (coe v2) (coe v4)))
         (coe (MAlonzo.Code.Function.Inverse.C125 erased erased)))
name808 = "Codata.Musical.Colist._.to"
d808 ::
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
d808 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du808 v8 v9 v10 v11
du808 ::
  (AgdaAny -> MAlonzo.Code.Function.Inverse.T58) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T102 -> T102
du808 v0 v1 v2 v3
  = coe
      (du748
         (coe v1) (coe v2)
         (coe
            (\ v4 ->
               MAlonzo.Code.Function.Equality.d38
                 (coe (MAlonzo.Code.Function.Inverse.d78 (coe v0 v4)))))
         (coe v3))
name818 = "Codata.Musical.Colist._.from"
d818 ::
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
d818 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du818 v0 v8 v9 v10 v11
du818 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> MAlonzo.Code.Function.Inverse.T58) ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T102 -> T102
du818 v0 v1 v2 v3 v4
  = coe
      (du748
         (coe v3) (coe v2)
         (coe
            (\ v5 ->
               MAlonzo.Code.Function.Equality.d38
                 (coe (MAlonzo.Code.Function.Inverse.d80 (coe v1 v5)))))
         (coe (du666 (coe v0) (coe v2) (coe v3) (coe v4))))
name832 = "Codata.Musical.Colist._.to∘from"
d832 ::
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
d832 = erased
name854 = "Codata.Musical.Colist._.from∘to"
d854 ::
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
d854 = erased
name880 = "Codata.Musical.Colist.index"
d880 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> T54 AgdaAny AgdaAny -> T102 -> Integer
d880 v0 v1 v2 v3 v4 v5 = du880 v4 v5
du880 :: T54 AgdaAny AgdaAny -> T102 -> Integer
du880 v0 v1
  = case coe v1 of
      C118 v4 -> coe (0 :: Integer)
      C126 v4
        -> case coe v0 of
             C66 v5 v6
               -> coe
                    (addInt
                       (coe (1 :: Integer))
                       (coe
                          (du880
                             (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6)))
                             (coe v4))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name898 = "Codata.Musical.Colist.lookup-index"
d898 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T102 -> MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T18
d898 v0 v1 v2 v3 v4 v5 = du898 v4 v5
du898 ::
  T54 AgdaAny AgdaAny ->
  T102 -> MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T18
du898 v0 v1
  = case coe v1 of
      C118 v4
        -> coe
             (\ v5 v6 -> MAlonzo.Code.Data.Maybe.Relation.Unary.Any.C30 v6)
             erased erased
      C126 v4
        -> case coe v0 of
             C66 v5 v6
               -> coe
                    (du898
                       (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6)))
                       (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name928 = "Codata.Musical.Colist.index-Any-resp"
d928 ::
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
d928 = erased
name956 = "Codata.Musical.Colist.index-Any-⋎"
d956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T102 -> MAlonzo.Code.Data.Nat.Base.T122
d956 v0 v1 v2 v3 v4 v5 v6 = du956 v0 v1 v4 v5 v6
du956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T102 -> MAlonzo.Code.Data.Nat.Base.T122
du956 v0 v1 v2 v3 v4
  = case coe v2 of
      C60 -> coe MAlonzo.Code.Data.Nat.Base.C126
      C66 v5 v6
        -> case coe v4 of
             C118 v9 -> coe MAlonzo.Code.Data.Nat.Base.C126
             C126 v9
               -> let v10
                        = coe
                            MAlonzo.Code.Function.Equality.d38
                            (MAlonzo.Code.Function.Inverse.d78
                               (coe
                                  (du466
                                     (coe v0) (coe v1) (coe v3)
                                     (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6))))))
                            v9 in
                  let v11
                        = du956
                            (coe v0) (coe v1) (coe v3)
                            (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6)))
                            (coe v9) in
                  case coe v10 of
                    MAlonzo.Code.Data.Sum.Base.C38 v12
                      -> coe
                           (\ v13 v14 -> MAlonzo.Code.Data.Nat.Base.C132 v14) erased v11
                    MAlonzo.Code.Data.Sum.Base.C42 v12 -> coe v11
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1006 = "Codata.Musical.Colist._∈_"
d1006 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> T54 AgdaAny AgdaAny -> ()
d1006 = erased
name1016 = "Codata.Musical.Colist._⊆_"
d1016 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> ()
d1016 = erased
name1028 = "Codata.Musical.Colist._⊑_"
d1028 a0 a1 a2 a3 = ()
data T1028 = C1036 | C1046 (MAlonzo.RTE.Infinity AgdaAny T1028)
name1060 = "Codata.Musical.Colist.Any-∈"
d1060 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Function.Inverse.T58
d1060 v0 v1 v2 v3 v4 = du1060 v4
du1060 :: T54 AgdaAny AgdaAny -> MAlonzo.Code.Function.Inverse.T58
du1060 v0
  = coe
      (MAlonzo.Code.Function.Inverse.C309
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du126
            (coe
               (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1037 v3) erased erased
               (MAlonzo.Code.Relation.Binary.Core.C5081 erased erased erased))
            (du1072 (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.du126
            (coe
               (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1037 v3) erased erased
               (MAlonzo.Code.Relation.Binary.Core.C5081 erased erased erased))
            (\ v1 ->
               case coe v1 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
                   -> case coe v3 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C32 v4 v5
                          -> coe (du1082 (coe v0) (coe v4) (coe v5))
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe (MAlonzo.Code.Function.Inverse.C125 erased erased)))
name1072 = "Codata.Musical.Colist._.to"
d1072 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T102 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1072 v0 v1 v2 v3 v4 v5 v6 = du1072 v5 v6
du1072 ::
  T54 AgdaAny AgdaAny -> T102 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1072 v0 v1
  = case coe v1 of
      C118 v4
        -> case coe v0 of
             C66 v5 v6
               -> coe
                    (MAlonzo.Code.Agda.Builtin.Sigma.C32
                       (coe v5)
                       (coe
                          (MAlonzo.Code.Agda.Builtin.Sigma.C32
                             (coe (\ v7 v8 v9 -> C118 v9) erased erased erased) (coe v4))))
             _ -> MAlonzo.RTE.mazUnreachableError
      C126 v4
        -> case coe v0 of
             C66 v5 v6
               -> coe
                    (MAlonzo.Code.Data.Product.du150
                       (coe (\ v7 -> v7))
                       (coe
                          (\ v7 ->
                             MAlonzo.Code.Data.Product.du150
                               (coe (\ v8 v9 v10 -> C126 v10) erased erased)
                               (coe (\ v8 v9 -> v9))))
                       (coe
                          (du1072
                             (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v6)))
                             (coe v4))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1082 = "Codata.Musical.Colist._.from"
d1082 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  AgdaAny -> T54 AgdaAny AgdaAny -> T102 -> AgdaAny -> T102
d1082 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1082 v6 v7 v8
du1082 :: T54 AgdaAny AgdaAny -> T102 -> AgdaAny -> T102
du1082 v0 v1 v2
  = case coe v1 of
      C118 v5 -> coe (\ v6 v7 v8 -> C118 v8) erased erased v2
      C126 v5
        -> case coe v0 of
             C66 v6 v7
               -> coe
                    (\ v8 v9 v10 -> C126 v10) erased erased
                    (du1082
                       (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v7))) (coe v5)
                       (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1098 = "Codata.Musical.Colist._.to∘from"
d1098 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T102 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1098 = erased
name1116 = "Codata.Musical.Colist._.from∘to"
d1116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T102 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1116 = erased
name1140 = "Codata.Musical.Colist.⊑⇒⊆"
d1140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T1028 -> AgdaAny -> T102 -> T102
d1140 v0 v1 v2 v3 v4 v5 v6 = du1140 v2 v3 v4 v6
du1140 ::
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T1028 -> T102 -> T102
du1140 v0 v1 v2 v3
  = case coe v2 of
      C1046 v7
        -> case coe v3 of
             C118 v10 -> coe (\ v11 v12 v13 -> C118 v13) erased erased v10
             C126 v10
               -> case coe v0 of
                    C66 v11 v12
                      -> case coe v1 of
                           C66 v13 v14
                             -> coe
                                  (\ v15 v16 v17 -> C126 v17) erased erased
                                  (du1140
                                     (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v12)))
                                     (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v14)))
                                     (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v7)))
                                     (coe v10))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1154 = "Codata.Musical.Colist.⊑-Poset"
d1154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.T310
d1154 v0 v1 = du1154 v0
du1154 ::
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Relation.Binary.T310
du1154 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C1973 v4) erased
      erased erased
      (MAlonzo.Code.Relation.Binary.C1639
         (coe
            (MAlonzo.Code.Relation.Binary.C17
               (coe (MAlonzo.Code.Relation.Binary.d144 (coe (du652 (coe v0)))))
               (coe (du1162 (coe v0))) (coe (du1168 (coe v0)))))
         (coe (du1188 (coe v0))))
name1162 = "Codata.Musical.Colist._.reflexive"
d1162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T1028
d1162 v0 v1 v2 v3 v4 = du1162 v0 v2 v3 v4
du1162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> T632 -> T1028
du1162 v0 v1 v2 v3
  = case coe v3 of
      C638 -> coe (\ v4 -> C1036) erased
      C648 v7
        -> case coe v1 of
             C66 v8 v9
               -> case coe v2 of
                    C66 v10 v11
                      -> coe
                           (\ v12 v13 v14 v15 -> C1046 v15) erased erased erased
                           (du56427 (coe v0) (coe v9) (coe v11) (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1168 = "Codata.Musical.Colist._.trans"
d1168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T1028 -> T1028 -> T1028
d1168 v0 v1 v2 v3 v4 v5 v6 = du1168 v0 v2 v3 v4 v5 v6
du1168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T1028 -> T1028 -> T1028
du1168 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C1036 -> coe (\ v7 -> C1036) erased
      C1046 v9
        -> case coe v5 of
             C1046 v13
               -> case coe v1 of
                    C66 v14 v15
                      -> case coe v2 of
                           C66 v16 v17
                             -> case coe v3 of
                                  C66 v18 v19
                                    -> coe
                                         (\ v20 v21 v22 v23 -> C1046 v23) erased erased erased
                                         (du57657
                                            (coe v0) (coe v17) (coe v19) (coe v15) (coe v9)
                                            (coe v13))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1184 = "Codata.Musical.Colist._.tail"
d1184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T1028 -> T1028
d1184 v0 v1 v2 v3 v4 v5 v6 = du1184 v6
du1184 :: T1028 -> T1028
du1184 v0
  = case coe v0 of
      C1046 v4
        -> coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name1188 = "Codata.Musical.Colist._.antisym"
d1188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T1028 -> T1028 -> T632
d1188 v0 v1 v2 v3 v4 v5 = du1188 v0 v2 v3 v4 v5
du1188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny -> T1028 -> T1028 -> T632
du1188 v0 v1 v2 v3 v4
  = case coe v3 of
      C1036 -> coe (seq (coe v4) (coe C638))
      C1046 v8
        -> case coe v1 of
             C66 v9 v10
               -> case coe v2 of
                    C66 v11 v12
                      -> coe
                           (\ v13 v14 v15 v16 -> C648 v16) erased erased erased
                           (du60183 (coe v0) (coe v10) (coe v12) (coe v8) (coe v4))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1204 = "Codata.Musical.Colist.⊑-Reasoning.R._<⟨_⟩_"
d1204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1204 v0 v1 = du1204 v0
du1204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du1204 v0
  = let v1 = du1154 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du202
         (coe
            MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du450
            (MAlonzo.Code.Relation.Binary.d332 (coe v1)))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du160
               (coe
                  (MAlonzo.Code.Relation.Binary.d36
                     (coe
                        (MAlonzo.Code.Relation.Binary.d274
                           (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1)))))))
               (let v2 = MAlonzo.Code.Relation.Binary.d332 (coe v1) in
                coe
                  (MAlonzo.Code.Relation.Binary.du66
                     (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2)))))))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du80
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d416
                     (coe
                        (MAlonzo.Code.Relation.Binary.d36
                           (coe
                              (MAlonzo.Code.Relation.Binary.d274
                                 (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1)))))))))
               (coe
                  (MAlonzo.Code.Relation.Binary.d40
                     (coe
                        (MAlonzo.Code.Relation.Binary.d274
                           (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1)))))))
               (coe
                  (MAlonzo.Code.Relation.Binary.d276
                     (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1)))))
               (let v2 = MAlonzo.Code.Relation.Binary.d332 (coe v1) in
                coe
                  (MAlonzo.Code.Relation.Binary.du60
                     (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))))))
name1206 = "Codata.Musical.Colist.⊑-Reasoning.R._IsRelatedTo_"
d1206 a0 a1 a2 a3 = ()
name1208 = "Codata.Musical.Colist.⊑-Reasoning.R._∎"
d1208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1208 v0 v1 = du1208 v0
du1208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du1208 v0
  = let v1 = du1154 (coe v0) in
    let v2
          = MAlonzo.Code.Relation.Binary.d274
              (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1))) in
    coe
      (\ v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C84
           (coe
              MAlonzo.Code.Relation.Binary.Core.d414
              (MAlonzo.Code.Relation.Binary.d36 (coe v2)) v3))
name1210 = "Codata.Musical.Colist.⊑-Reasoning.R._≈˘⟨_⟩_"
d1210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1210 v0 v1 = du1210 v0
du1210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du1210 v0
  = let v1 = du1154 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du280
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1)))))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du160
               (coe
                  (MAlonzo.Code.Relation.Binary.d36
                     (coe
                        (MAlonzo.Code.Relation.Binary.d274
                           (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1)))))))
               (let v2 = MAlonzo.Code.Relation.Binary.d332 (coe v1) in
                coe
                  (MAlonzo.Code.Relation.Binary.du66
                     (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))))))
name1212 = "Codata.Musical.Colist.⊑-Reasoning.R._≈⟨_⟩_"
d1212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1212 v0 v1 = du1212 v0
du1212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du1212 v0
  = let v1 = du1154 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du254
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1)))))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du160
               (coe
                  (MAlonzo.Code.Relation.Binary.d36
                     (coe
                        (MAlonzo.Code.Relation.Binary.d274
                           (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1)))))))
               (let v2 = MAlonzo.Code.Relation.Binary.d332 (coe v1) in
                coe
                  (MAlonzo.Code.Relation.Binary.du66
                     (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))))))
name1214 = "Codata.Musical.Colist.⊑-Reasoning.R._≈⟨⟩_"
d1214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1214 v0 v1 v2 v3 v4 = du1214 v4
du1214 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du1214 v0 = coe v0
name1216 = "Codata.Musical.Colist.⊑-Reasoning.R._≡˘⟨_⟩_"
d1216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1216 v0 v1 v2 v3 v4 v5 v6 = du1216 v6
du1216 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du1216 v0 = coe v0
name1218 = "Codata.Musical.Colist.⊑-Reasoning.R._≡⟨_⟩_"
d1218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1218 v0 v1 v2 v3 v4 v5 v6 = du1218 v6
du1218 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du1218 v0 = coe v0
name1220 = "Codata.Musical.Colist.⊑-Reasoning.R._≡⟨⟩_"
d1220 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1220 v0 = coe v0
name1222 = "Codata.Musical.Colist.⊑-Reasoning.R._≤⟨_⟩_"
d1222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T1028 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1222 v0 v1 = du1222 v0
du1222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T1028 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du1222 v0
  = let v1 = du1154 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du228
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1)))))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du98
               (coe
                  (MAlonzo.Code.Relation.Binary.d40
                     (coe
                        (MAlonzo.Code.Relation.Binary.d274
                           (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1)))))))
               (coe
                  (MAlonzo.Code.Relation.Binary.d276
                     (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1)))))
               (let v2 = MAlonzo.Code.Relation.Binary.d332 (coe v1) in
                coe
                  (MAlonzo.Code.Relation.Binary.du54
                     (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))))))
name1224 = "Codata.Musical.Colist.⊑-Reasoning.R.IsEquality"
d1224 a0 a1 a2 a3 a4 = ()
name1226 = "Codata.Musical.Colist.⊑-Reasoning.R.IsEquality?"
d1226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Nullary.T14
d1226 v0 v1 = du1226
du1226 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Nullary.T14
du1226
  = coe
      (\ v0 v1 v2 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du140 v2)
name1228 = "Codata.Musical.Colist.⊑-Reasoning.R.IsStrict"
d1228 a0 a1 a2 a3 a4 = ()
name1230 = "Codata.Musical.Colist.⊑-Reasoning.R.IsStrict?"
d1230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Nullary.T14
d1230 v0 v1 = du1230
du1230 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Nullary.T14
du1230
  = coe
      (\ v0 v1 v2 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du106 v2)
name1232 = "Codata.Musical.Colist.⊑-Reasoning.R.begin_"
d1232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 -> T1028
d1232 v0 v1 = du1232 v0
du1232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 -> T1028
du1232 v0
  = let v1 = du1154 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du160
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (MAlonzo.Code.Relation.Binary.d332 (coe v1)))))
         (coe (\ v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d28)))
name1234 = "Codata.Musical.Colist.⊑-Reasoning.R.begin-equality_"
d1234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  AgdaAny -> T632
d1234 v0 v1 = du1234
du1234 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  AgdaAny -> T632
du1234
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du190 v2)
name1236 = "Codata.Musical.Colist.⊑-Reasoning.R.begin-strict_"
d1236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1236 v0 v1 = du1236
du1236 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1236
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du176 v2)
name1240 = "Codata.Musical.Colist.⊑-Reasoning.R.extractEquality"
d1240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T124 -> T632
d1240 v0 v1 = du1240
du1240 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T124 -> T632
du1240
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du150 v2 v3)
name1242 = "Codata.Musical.Colist.⊑-Reasoning.R.extractStrict"
d1242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T90 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1242 v0 v1 = du1242
du1242 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T90 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1242
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du116 v2 v3)
name1270 = "Codata.Musical.Colist.⊆-Preorder"
d1270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.T74
d1270 v0 v1 = du1270 v0
du1270 ::
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Relation.Binary.T74
du1270 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Construct.FromRel.du80
         (coe (du652 (coe v0)))
         (coe
            (\ v1 v2 v3 v4 ->
               du1140
                 (coe v2) (coe v3)
                 (coe (du1162 (coe v0) (coe v2) (coe v3) (coe v4))))))
name1328 = "Codata.Musical.Colist.⊆-Reasoning.R._IsRelatedTo_"
d1328 a0 a1 a2 a3 = ()
name1330 = "Codata.Musical.Colist.⊆-Reasoning.R._∎"
d1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d1330 v0 v1 v2 = du1330 v0 v2
du1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du1330 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.C66
         (coe
            MAlonzo.Code.Relation.Binary.Core.d414
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d96 (coe (du1270 (coe v0))))))
            v1))
name1332 = "Codata.Musical.Colist.⊆-Reasoning.R._∼⟨_⟩_"
d1332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> T102 -> T102) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d1332 v0 v1 = du1332 v0
du1332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  (AgdaAny -> T102 -> T102) ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du1332 v0
  = let v1 = du1270 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du156
         (coe (MAlonzo.Code.Relation.Binary.d96 (coe v1))))
name1334 = "Codata.Musical.Colist.⊆-Reasoning.R._≈˘⟨_⟩_"
d1334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d1334 v0 v1 = du1334 v0
du1334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du1334 v0
  = let v1 = du1270 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du196
         (coe (MAlonzo.Code.Relation.Binary.d96 (coe v1))))
name1336 = "Codata.Musical.Colist.⊆-Reasoning.R._≈⟨_⟩_"
d1336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d1336 v0 v1 = du1336 v0
du1336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T632 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du1336 v0
  = let v1 = du1270 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du176
         (coe (MAlonzo.Code.Relation.Binary.d96 (coe v1))))
name1338 = "Codata.Musical.Colist.⊆-Reasoning.R._≈⟨⟩_"
d1338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d1338 v0 v1 v2 v3 v4 = du1338 v4
du1338 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du1338 v0 = coe v0
name1340 = "Codata.Musical.Colist.⊆-Reasoning.R._≡˘⟨_⟩_"
d1340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d1340 v0 v1 v2 v3 v4 v5 v6 = du1340 v6
du1340 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du1340 v0 = coe v0
name1342 = "Codata.Musical.Colist.⊆-Reasoning.R._≡⟨_⟩_"
d1342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d1342 v0 v1 v2 v3 v4 v5 v6 = du1342 v6
du1342 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du1342 v0 = coe v0
name1344 = "Codata.Musical.Colist.⊆-Reasoning.R._≡⟨⟩_"
d1344 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d1344 v0 = coe v0
name1346 = "Codata.Musical.Colist.⊆-Reasoning.R.IsEquality"
d1346 a0 a1 a2 a3 a4 = ()
name1348 = "Codata.Musical.Colist.⊆-Reasoning.R.IsEquality?"
d1348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Nullary.T14
d1348 v0 v1 = du1348
du1348 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Nullary.T14
du1348
  = coe
      (\ v0 v1 v2 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du110 v2)
name1350 = "Codata.Musical.Colist.⊆-Reasoning.R.begin_"
d1350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  AgdaAny -> T102 -> T102
d1350 v0 v1 = du1350 v0
du1350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  AgdaAny -> T102 -> T102
du1350 v0
  = let v1 = du1270 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du130
         (coe (MAlonzo.Code.Relation.Binary.d96 (coe v1))))
name1352 = "Codata.Musical.Colist.⊆-Reasoning.R.begin-equality_"
d1352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  AgdaAny -> T632
d1352 v0 v1 = du1352
du1352 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  AgdaAny -> T632
du1352
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du144 v2)
name1356 = "Codata.Musical.Colist.⊆-Reasoning.R.extractEquality"
d1356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T94 -> T632
d1356 v0 v1 = du1356
du1356 ::
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T94 -> T632
du1356
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du120 v2 v3)
name1360 = "Codata.Musical.Colist.⊆-Reasoning.R.levelOf"
d1360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Agda.Primitive.T4
d1360 v0 v1 = du1360 v0
du1360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Agda.Primitive.T4
du1360 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du72
           (coe v0) (coe v0) v3)
name1364 = "Codata.Musical.Colist.⊆-Reasoning.R.relOf"
d1364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  T54 AgdaAny AgdaAny -> T54 AgdaAny AgdaAny -> ()
d1364 = erased
name1386 = "Codata.Musical.Colist.⊆-Reasoning._∈⟨_⟩_"
d1386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T102 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 -> T102
d1386 v0 v1 v2 v3 v4 v5 v6 = du1386 v0 v2 v3 v4 v5 v6
du1386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T54 AgdaAny AgdaAny ->
  T102 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 -> T102
du1386 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du130
      (MAlonzo.Code.Relation.Binary.d96 (coe (du1270 (coe v0)))) v2 v3 v5
      v1 v4
name1404 = "Codata.Musical.Colist.take-⊑"
d1404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T54 AgdaAny AgdaAny -> T1028
d1404 v0 v1 v2 v3 = du1404 v0 v2 v3
du1404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer -> T54 AgdaAny AgdaAny -> T1028
du1404 v0 v1 v2
  = case coe v1 of
      0 -> coe (\ v3 -> C1036) erased
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v2 of
             C60 -> coe (\ v4 -> C1036) erased
             C66 v4 v5
               -> coe
                    (\ v6 v7 v8 v9 -> C1046 v9) erased erased erased
                    (du62145 (coe v0) (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name1420 = "Codata.Musical.Colist.Finite"
d1420 a0 a1 a2 = ()
data T1420 = C1426 | C1434 T1420
name1450 = "Codata.Musical.Colist.Finite-injective.∷-injective"
d1450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T1420 ->
  T1420 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1450 = erased
name1456 = "Codata.Musical.Colist.Infinite"
d1456 a0 a1 a2 = ()
newtype T1456 = C1468 (MAlonzo.RTE.Infinity AgdaAny T1456)
name1484 = "Codata.Musical.Colist.Infinite-injective.∷-injective"
d1484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1456 ->
  MAlonzo.RTE.Infinity AgdaAny T1456 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1484 = erased
name1492 = "Codata.Musical.Colist.not-finite-is-infinite"
d1492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  (T1420 -> MAlonzo.Code.Data.Empty.T4) -> T1456
d1492 v0 v1 v2 v3 = du1492 v0 v2
du1492 ::
  MAlonzo.Code.Agda.Primitive.T4 -> T54 AgdaAny AgdaAny -> T1456
du1492 v0 v1
  = case coe v1 of
      C60 -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      C66 v2 v3
        -> coe
             (\ v4 v5 v6 -> C1468 v6) erased erased (du63695 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name1508 = "Codata.Musical.Colist.finite-or-infinite"
d1508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  (MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d1508 = erased
name1516 = "Codata.Musical.Colist._.helper"
d1516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Nullary.T14 -> MAlonzo.Code.Data.Sum.Base.T30
d1516 v0 v1 v2 v3 = du1516 v0 v2 v3
du1516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.Code.Relation.Nullary.T14 -> MAlonzo.Code.Data.Sum.Base.T30
du1516 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Relation.Nullary.C22 v3
        -> coe (MAlonzo.Code.Data.Sum.Base.C38 (coe v3))
      MAlonzo.Code.Relation.Nullary.C26
        -> coe
             (MAlonzo.Code.Data.Sum.Base.C42 (coe (du1492 (coe v0) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name1528 = "Codata.Musical.Colist.not-finite-and-infinite"
d1528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T54 AgdaAny AgdaAny -> T1420 -> T1456 -> MAlonzo.Code.Data.Empty.T4
d1528 = erased
name1546 = "Codata.Musical.Colist._.fromMusical"
d1546 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T54 AgdaAny AgdaAny -> MAlonzo.Code.Codata.Colist.T10
d1546 v0 v1 v2 v3 = du1546 v3
du1546 :: T54 AgdaAny AgdaAny -> MAlonzo.Code.Codata.Colist.T10
du1546 v0
  = case coe v0 of
      C60 -> coe MAlonzo.Code.Codata.Colist.C18
      C66 v1 v2
        -> coe
             (MAlonzo.Code.Codata.Colist.C20
                (coe v1)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v3 ->
                            du1546
                              (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2))))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name1554 = "Codata.Musical.Colist._.toMusical"
d1554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Codata.Colist.T10 -> T54 AgdaAny AgdaAny
d1554 v0 v1 v2 = du1554 v0 v2
du1554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Codata.Colist.T10 -> T54 AgdaAny AgdaAny
du1554 v0 v1
  = case coe v1 of
      MAlonzo.Code.Codata.Colist.C18 -> coe C60
      MAlonzo.Code.Codata.Colist.C20 v2 v3
        -> coe (C66 (coe v2) (coe (du65549 (coe v0) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name4851 = "Codata.Musical.Colist._.♯-0"
d4851 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.Codata.Musical.Conat.T6
d4851 v0 v1 v2 v3 = du4851 v0 v3
du4851 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.Codata.Musical.Conat.T6
du4851 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du238
               (coe v0)
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))))))
name5269 = "Codata.Musical.Colist._.♯-1"
d5269 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d5269 v0 v1 v2 v3 v4 v5 v6 = du5269 v0 v1 v4 v6
du5269 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du5269 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du252
               (coe v0) (coe v1) (coe v2)
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))))))
name5723 = "Codata.Musical.Colist._.♯-2"
d5723 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d5723 v0 v1 v2 v3 = du5723 v0 v3
du5723 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  [AgdaAny] -> MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du5723 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe (du266 (coe v0) (coe v1))))
name6421 = "Codata.Musical.Colist._.♯-3"
d6421 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.Codata.Musical.Conat.T6 ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d6421 v0 v1 v2 v3 = du6421 v0 v2 v3
du6421 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.Codata.Musical.Conat.T6 ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du6421 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du294
               (coe v0) (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
               (coe v2))))
name7151 = "Codata.Musical.Colist._.♯-4"
d7151 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d7151 v0 v1 v2 v3 v4 = du7151 v0 v3 v4
du7151 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du7151 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du324
               (coe v0) (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
               (coe v2))))
name7527 = "Codata.Musical.Colist._.♯-5"
d7527 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d7527 v0 v1 v2 v3 v4 = du7527 v0 v3 v4
du7527 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du7527 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du338
               (coe v0) (coe v2)
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))))))
name7949 = "Codata.Musical.Colist._.♯-6"
d7949 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny (T54 AgdaAny MAlonzo.Code.Data.List.NonEmpty.T10) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d7949 v0 v1 v2 v3 = du7949 v0 v3
du7949 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny (T54 AgdaAny MAlonzo.Code.Data.List.NonEmpty.T10) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du7949 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du352
               (coe v0)
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))))))
name8191 = "Codata.Musical.Colist._.♯-7"
d8191 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny (T54 AgdaAny MAlonzo.Code.Data.List.NonEmpty.T10) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d8191 v0 v1 v2 v3 v4 v5 = du8191 v0 v3 v4 v5
du8191 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny (T54 AgdaAny MAlonzo.Code.Data.List.NonEmpty.T10) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du8191 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du352
               (coe v0)
               (coe
                  (C66
                     (coe (MAlonzo.Code.Data.List.NonEmpty.C24 (coe v1) (coe v2)))
                     (coe v3))))))
name8619 = "Codata.Musical.Colist._.♯-8"
d8619 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d8619 v0 v1 v2 = du8619
du8619 :: MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du8619 = coe (MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe C60))
name24427 = "Codata.Musical.Colist._._.♯-14"
d24427 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632
d24427 v0 v1 v2 v3 = du24427 v0 v3
du24427 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632
du24427 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du660
               (coe v0)
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))))))
name24885 = "Codata.Musical.Colist._._.♯-15"
d24885 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632
d24885 v0 v1 v2 v3 v4 v5 = du24885 v0 v3 v4 v5
du24885 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632
du24885 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du666
               (coe v0) (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))))))
name26145 = "Codata.Musical.Colist._._.♯-16"
d26145 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632
d26145 v0 v1 v2 v3 v4 v5 v6 v7 = du26145 v0 v3 v4 v5 v6 v7
du26145 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632
du26145 v0 v1 v2 v3 v4 v5
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du672
               (coe v0) (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v5))))))
name28211 = "Codata.Musical.Colist._.♯-17"
d28211 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632
d28211 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du28211 v0 v3 v4 v5 v7 v8
du28211 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T632
du28211 v0 v1 v2 v3 v4 v5
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du720
               (coe v0) (coe v3) (coe v4)
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v5))))))
name56427 = "Codata.Musical.Colist._._.♯-20"
d56427 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T1028
d56427 v0 v1 v2 v3 v4 v5 = du56427 v0 v3 v4 v5
du56427 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T632 ->
  MAlonzo.RTE.Infinity AgdaAny T1028
du56427 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du1162
               (coe v0) (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))))))
name57657 = "Codata.Musical.Colist._._.♯-21"
d57657 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1028 ->
  MAlonzo.RTE.Infinity AgdaAny T1028 ->
  MAlonzo.RTE.Infinity AgdaAny T1028
d57657 v0 v1 v2 v3 v4 v5 v6 v7 = du57657 v0 v3 v4 v5 v6 v7
du57657 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1028 ->
  MAlonzo.RTE.Infinity AgdaAny T1028 ->
  MAlonzo.RTE.Infinity AgdaAny T1028
du57657 v0 v1 v2 v3 v4 v5
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du1168
               (coe v0) (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v5))))))
name60183 = "Codata.Musical.Colist._._.♯-22"
d60183 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1028 ->
  T1028 -> MAlonzo.RTE.Infinity AgdaAny T632
d60183 v0 v1 v2 v3 v4 v5 v6 = du60183 v0 v3 v4 v5 v6
du60183 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1028 ->
  T1028 -> MAlonzo.RTE.Infinity AgdaAny T632
du60183 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du1188
               (coe v0) (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
               (coe (du1184 (coe v4))))))
name62145 = "Codata.Musical.Colist._.♯-23"
d62145 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1028
d62145 v0 v1 v2 v3 v4 = du62145 v0 v2 v4
du62145 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1028
du62145 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du1404
               (coe v0) (coe v1)
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2))))))
name63695 = "Codata.Musical.Colist._.♯-25"
d63695 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  (T1420 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.RTE.Infinity AgdaAny T1456
d63695 v0 v1 v2 v3 v4 = du63695 v0 v3
du63695 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny T1456
du63695 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du1492
               (coe v0)
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))))))
name65549 = "Codata.Musical.Colist._._.♯-26"
d65549 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Codata.Thunk.T10 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
d65549 v0 v1 v2 v3 = du65549 v0 v3
du65549 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Codata.Thunk.T10 ->
  MAlonzo.RTE.Infinity AgdaAny (T54 AgdaAny AgdaAny)
du65549 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du1554 (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased))))
