{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Nullary

name42 = "Data.List.Properties._.∷-injective"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d42 v0 v1 v2 v3 v4 v5 v6 = du42
du42 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du42 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name44 = "Data.List.Properties._.∷-injectiveˡ"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d44 = erased
name46 = "Data.List.Properties._.∷-injectiveʳ"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d46 = erased
name48 = "Data.List.Properties.≡-dec"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T14
d48 v0 v1 v2 v3 v4 = du48 v2 v3 v4
du48 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T14
du48 v0 v1 v2
  = case coe v1 of
      []
        -> case coe v2 of
             [] -> coe (MAlonzo.Code.Relation.Nullary.C22 erased)
             (:) v3 v4 -> coe (\ v5 -> MAlonzo.Code.Relation.Nullary.C26) erased
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v3 v4
        -> case coe v2 of
             [] -> coe (\ v5 -> MAlonzo.Code.Relation.Nullary.C26) erased
             (:) v5 v6
               -> let v7 = coe v0 v3 v5 in
                  let v8 = du48 (coe v0) (coe v4) (coe v6) in
                  case coe v7 of
                    MAlonzo.Code.Relation.Nullary.C22 v9
                      -> case coe v8 of
                           MAlonzo.Code.Relation.Nullary.C22 v10
                             -> coe (MAlonzo.Code.Relation.Nullary.C22 erased)
                           MAlonzo.Code.Relation.Nullary.C26
                             -> coe (\ v11 -> MAlonzo.Code.Relation.Nullary.C26) erased
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe (\ v10 -> MAlonzo.Code.Relation.Nullary.C26) erased
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name112 = "Data.List.Properties.map-id"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d112 = erased
name126 = "Data.List.Properties.map-id₂"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T32 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d126 = erased
name138 = "Data.List.Properties.map-++-commute"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d138 = erased
name158 = "Data.List.Properties.map-cong"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d158 = erased
name176 = "Data.List.Properties.map-cong₂"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T32 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d176 = erased
name186 = "Data.List.Properties.length-map"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d186 = erased
name200 = "Data.List.Properties.map-compose"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d200 = erased
name210 = "Data.List.Properties.mapMaybe-just"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d210 = erased
name222 = "Data.List.Properties.mapMaybe-nothing"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d222 = erased
name238 = "Data.List.Properties._.mapMaybe-concatMap"
d238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d238 = erased
name262 = "Data.List.Properties._.length-mapMaybe"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
d262 v0 v1 v2 v3 v4 v5 = du262 v4 v5
du262 ::
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
du262 v0 v1
  = case coe v1 of
      [] -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Data.Maybe.Base.C28 v5
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                    (du262 (coe v0) (coe v3))
             MAlonzo.Code.Data.Maybe.Base.C30 -> coe (du262 (coe v0) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name286 = "Data.List.Properties.length-++"
d286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d286 = erased
name314 = "Data.List.Properties._._.Associative"
d314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d314 = erased
name316 = "Data.List.Properties._._.Cancellative"
d316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d316 = erased
name324 = "Data.List.Properties._._.Conical"
d324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d324 = erased
name330 = "Data.List.Properties._._.Identity"
d330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d330 = erased
name342 = "Data.List.Properties._._.LeftIdentity"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d342 = erased
name354 = "Data.List.Properties._._.RightIdentity"
d354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) -> ()
d354 = erased
name396 = "Data.List.Properties._._.IsMagma"
d396 a0 a1 a2 = ()
name398 = "Data.List.Properties._._.IsMonoid"
d398 a0 a1 a2 a3 = ()
name406 = "Data.List.Properties._._.IsSemigroup"
d406 a0 a1 a2 = ()
name1536 = "Data.List.Properties._.++-assoc"
d1536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1536 = erased
name1552 = "Data.List.Properties._.++-identityˡ"
d1552 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1552 = erased
name1556 = "Data.List.Properties._.++-identityʳ"
d1556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1556 = erased
name1564 = "Data.List.Properties._.++-identity"
d1564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1564 v0 v1 = du1564
du1564 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du1564 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1570 = "Data.List.Properties._.++-identityʳ-unique"
d1570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1570 = erased
name1582 = "Data.List.Properties._.++-identityˡ-unique"
d1582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1582 = erased
name1624 = "Data.List.Properties._.++-cancelˡ"
d1624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1624 = erased
name1640 = "Data.List.Properties._.++-cancelʳ"
d1640 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1640 = erased
name1668 = "Data.List.Properties._.++-cancel"
d1668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1668 v0 v1 = du1668
du1668 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du1668 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1674 = "Data.List.Properties._.++-conicalˡ"
d1674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1674 = erased
name1680 = "Data.List.Properties._.++-conicalʳ"
d1680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1680 = erased
name1682 = "Data.List.Properties._.++-conical"
d1682 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1682 v0 v1 = du1682
du1682 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du1682 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1684 = "Data.List.Properties._.++-isMagma"
d1684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Algebra.Structures.T84
d1684 v0 v1 = du1684
du1684 :: MAlonzo.Code.Algebra.Structures.T84
du1684
  = coe
      (MAlonzo.Code.Algebra.Structures.C277
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         erased)
name1686 = "Data.List.Properties._.++-isSemigroup"
d1686 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Algebra.Structures.T118
d1686 v0 v1 = du1686
du1686 :: MAlonzo.Code.Algebra.Structures.T118
du1686
  = coe (MAlonzo.Code.Algebra.Structures.C781 (coe du1684) erased)
name1688 = "Data.List.Properties._.++-isMonoid"
d1688 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Algebra.Structures.T268
d1688 v0 v1 = du1688
du1688 :: MAlonzo.Code.Algebra.Structures.T268
du1688
  = coe
      (MAlonzo.Code.Algebra.Structures.C1873 (coe du1686) (coe du1564))
name1698 = "Data.List.Properties._.++-semigroup"
d1698 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> MAlonzo.Code.Algebra.T76
d1698 v0 v1 = du1698
du1698 :: MAlonzo.Code.Algebra.T76
du1698
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C285 v2 v3) erased erased
      MAlonzo.Code.Data.List.Base.du58 du1686
name1700 = "Data.List.Properties._.++-monoid"
d1700 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> MAlonzo.Code.Algebra.T346
d1700 v0 v1 = du1700
du1700 :: MAlonzo.Code.Algebra.T346
du1700
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C1409 v2 v3 v4) erased
      erased MAlonzo.Code.Data.List.Base.du58
      MAlonzo.Code.Agda.Builtin.List.C16 du1688
name1718 = "Data.List.Properties._.alignWith-cong"
d1718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T38 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1718 = erased
name1741 = "Data.List.Properties..absurdlambda"
d1741 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1741 = erased
name1742 = "Data.List.Properties._.length-alignWith"
d1742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1742 = erased
name1764 = "Data.List.Properties._.alignWith-map"
d1764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1764 = erased
name1796 = "Data.List.Properties._.map-alignWith"
d1796 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1796 = erased
name1834 = "Data.List.Properties._.zipWith-comm"
d1834 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1834 = erased
name1874 = "Data.List.Properties._.zipWith-identityˡ"
d1874 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1874 = erased
name1882 = "Data.List.Properties._.zipWith-identityʳ"
d1882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1882 = erased
name1892 = "Data.List.Properties._.length-zipWith"
d1892 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1892 = erased
name1897 = "Data.List.Properties..absurdlambda"
d1897 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1897 = erased
name1930 = "Data.List.Properties._.zipWith-map"
d1930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1930 = erased
name1978 = "Data.List.Properties._.map-zipWith"
d1978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1978 = erased
name2006 = "Data.List.Properties.unalignWith-this"
d2006 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2006 = erased
name2016 = "Data.List.Properties.unalignWith-that"
d2016 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2016 = erased
name2038 = "Data.List.Properties._.unalignWith-cong"
d2038 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2038 = erased
name2102 = "Data.List.Properties._.unalignWith-map"
d2102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2102 = erased
name2154 = "Data.List.Properties._.map-unalignWith"
d2154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2154 = erased
name2218 = "Data.List.Properties._.unalignWith-alignWith"
d2218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  (MAlonzo.Code.Data.These.Base.T38 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2218 = erased
name2276 = "Data.List.Properties._.length-unzipWith₁"
d2276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2276 = erased
name2284 = "Data.List.Properties._.length-unzipWith₂"
d2284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2284 = erased
name2292 = "Data.List.Properties._.zipWith-unzipWith"
d2292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2292 = erased
name2316 = "Data.List.Properties.foldr-universal"
d2316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  ([AgdaAny] -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  (AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2316 = erased
name2358 = "Data.List.Properties.foldr-cong"
d2358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2358 = erased
name2386 = "Data.List.Properties.foldr-fusion"
d2386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2386 = erased
name2402 = "Data.List.Properties.id-is-foldr"
d2402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2402 = erased
name2412 = "Data.List.Properties.++-is-foldr"
d2412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2412 = erased
name2438 = "Data.List.Properties.foldr-++"
d2438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2438 = erased
name2462 = "Data.List.Properties.map-is-foldr"
d2462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2462 = erased
name2510 = "Data.List.Properties.foldr-∷ʳ"
d2510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2510 = erased
name2548 = "Data.List.Properties._.foldr-forcesᵇ"
d2548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T32
d2548 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2548 v4 v5 v6 v7 v8
du2548 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T32
du2548 v0 v1 v2 v3 v4
  = case coe v3 of
      [] -> coe MAlonzo.Code.Data.List.Relation.Unary.All.C38
      (:) v5 v6
        -> let v7
                 = coe
                     v1 v5
                     (MAlonzo.Code.Data.List.Base.du202 (coe v0) (coe v2) (coe v6))
                     v4 in
           case coe v7 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v8 v9
               -> coe
                    (\ v10 v11 v12 v13 ->
                       MAlonzo.Code.Data.List.Relation.Unary.All.C48 v12 v13)
                    erased erased v8
                    (du2548 (coe v0) (coe v1) (coe v2) (coe v6) (coe v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2582 = "Data.List.Properties._.foldr-preservesᵇ"
d2582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T32 -> AgdaAny
d2582 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du2582 v4 v5 v6 v7 v8 v9
du2582 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T32 -> AgdaAny
du2582 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Unary.All.C38 -> coe v4
      MAlonzo.Code.Data.List.Relation.Unary.All.C48 v8 v9
        -> case coe v3 of
             (:) v10 v11
               -> coe
                    v1 v10
                    (MAlonzo.Code.Data.List.Base.du202 (coe v0) (coe v2) (coe v11)) v8
                    (du2582 (coe v0) (coe v1) (coe v2) (coe v11) (coe v4) (coe v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2602 = "Data.List.Properties._.foldr-preservesʳ"
d2602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny
d2602 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2602 v4 v5 v6 v7 v8
du2602 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny
du2602 v0 v1 v2 v3 v4
  = case coe v4 of
      [] -> coe v3
      (:) v5 v6
        -> coe
             v1 v5
             (MAlonzo.Code.Data.List.Base.du202 (coe v0) (coe v2) (coe v6))
             (du2602 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
name2622 = "Data.List.Properties._.foldr-preservesᵒ"
d2622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
d2622 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du2622 v4 v5 v6 v7 v8
du2622 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
du2622 v0 v1 v2 v3 v4
  = case coe v3 of
      []
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Base.C38 v5 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v5 v6
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Base.C38 v7
               -> coe
                    v1 v5
                    (MAlonzo.Code.Data.List.Base.du202 (coe v0) (coe v2) (coe v6))
                    (MAlonzo.Code.Data.Sum.Base.C42
                       (coe (du2622 (coe v0) (coe v1) (coe v2) (coe v6) (coe v4))))
             MAlonzo.Code.Data.Sum.Base.C42 v7
               -> case coe v7 of
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C38 v10
                      -> coe
                           v1 v5
                           (MAlonzo.Code.Data.List.Base.du202 (coe v0) (coe v2) (coe v6))
                           (MAlonzo.Code.Data.Sum.Base.C38 (coe v10))
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C46 v10
                      -> coe
                           v1 v5
                           (MAlonzo.Code.Data.List.Base.du202 (coe v0) (coe v2) (coe v6))
                           (MAlonzo.Code.Data.Sum.Base.C42
                              (coe
                                 (du2622
                                    (coe v0) (coe v1) (coe v2) (coe v6)
                                    (coe (MAlonzo.Code.Data.Sum.Base.C42 (coe v10))))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2668 = "Data.List.Properties.foldl-++"
d2668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2668 = erased
name2694 = "Data.List.Properties.foldl-∷ʳ"
d2694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2694 = erased
name2714 = "Data.List.Properties.concat-map"
d2714 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [[AgdaAny]] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2714 = erased
name2762 = "Data.List.Properties.sum-++-commute"
d2762 ::
  [Integer] -> [Integer] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2762 = erased
name2782 = "Data.List.Properties.length-replicate"
d2782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2782 = erased
name2790 = "Data.List.Properties.scanr-defn"
d2790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2790 = erased
name2872 = "Data.List.Properties.scanl-defn"
d2872 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2872 = erased
name2900 = "Data.List.Properties.length-applyUpTo"
d2900 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> AgdaAny) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2900 = erased
name2914 = "Data.List.Properties.lookup-applyUpTo"
d2914 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2914 = erased
name2936 = "Data.List.Properties._.length-applyDownFrom"
d2936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> AgdaAny) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2936 = erased
name2944 = "Data.List.Properties._.lookup-applyDownFrom"
d2944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2944 = erased
name2954 = "Data.List.Properties.length-upTo"
d2954 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2954 = erased
name2960 = "Data.List.Properties.lookup-upTo"
d2960 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2960 = erased
name2964 = "Data.List.Properties.length-downFrom"
d2964 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2964 = erased
name2970 = "Data.List.Properties.lookup-downFrom"
d2970 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2970 = erased
name2978 = "Data.List.Properties.tabulate-cong"
d2978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2978 = erased
name2988 = "Data.List.Properties.tabulate-lookup"
d2988 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2988 = erased
name3000 = "Data.List.Properties.length-tabulate"
d3000 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3000 = erased
name3018 = "Data.List.Properties.lookup-tabulate"
d3018 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3018 = erased
name3032 = "Data.List.Properties.map-tabulate"
d3032 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3032 = erased
name3052 = "Data.List.Properties.length-%="
d3052 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3052 = erased
name3074 = "Data.List.Properties.length-∷="
d3074 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3074 = erased
name3092 = "Data.List.Properties.map-∷="
d3092 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3092 = erased
name3118 = "Data.List.Properties.length-─"
d3118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3118 = erased
name3140 = "Data.List.Properties.map-─"
d3140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3140 = erased
name3162 = "Data.List.Properties.length-take"
d3162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3162 = erased
name3178 = "Data.List.Properties.length-drop"
d3178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3178 = erased
name3194 = "Data.List.Properties.take++drop"
d3194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3194 = erased
name3210 = "Data.List.Properties.splitAt-defn"
d3210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3210 = erased
name3254 = "Data.List.Properties._.takeWhile++dropWhile"
d3254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3254 = erased
name3274 = "Data.List.Properties._.span-defn"
d3274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3274 = erased
name3308 = "Data.List.Properties._.length-filter"
d3308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
d3308 v0 v1 v2 v3 v4 v5 = du3308 v4 v5
du3308 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
du3308 v0 v1
  = case coe v1 of
      [] -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Relation.Nullary.C22 v5
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                    (du3308 (coe v0) (coe v3))
             MAlonzo.Code.Relation.Nullary.C26 -> coe (du3308 (coe v0) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name3328 = "Data.List.Properties._.filter-all"
d3328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T32 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3328 = erased
name3364 = "Data.List.Properties._.filter-notAll"
d3364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3364 v0 v1 v2 v3 v4 v5 v6 = du3364 v4 v5 v6
du3364 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.Nat.Base.T6
du3364 v0 v1 v2
  = case coe v1 of
      (:) v3 v4
        -> case coe v2 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C38 v7
               -> let v8 = coe v0 v3 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Nullary.C22 v9
                      -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe
                           (\ v10 v11 v12 -> MAlonzo.Code.Data.Nat.Base.C18 v12) erased erased
                           (du3308 (coe v0) (coe v4))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.List.Relation.Unary.Any.C46 v7
               -> let v8 = coe v0 v3 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Nullary.C22 v9
                      -> coe
                           (\ v10 v11 v12 -> MAlonzo.Code.Data.Nat.Base.C18 v12) erased erased
                           (du3364 (coe v0) (coe v4) (coe v7))
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe (du3364 (coe v0) (coe v4) (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name3414 = "Data.List.Properties._.filter-some"
d3414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3414 v0 v1 v2 v3 v4 v5 v6 = du3414 v4 v5 v6
du3414 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.Nat.Base.T6
du3414 v0 v1 v2
  = case coe v1 of
      (:) v3 v4
        -> case coe v2 of
             MAlonzo.Code.Data.List.Relation.Unary.Any.C38 v7
               -> let v8 = coe v0 v3 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Nullary.C22 v9
                      -> coe
                           (\ v10 v11 v12 -> MAlonzo.Code.Data.Nat.Base.C18 v12) erased erased
                           (coe (\ v10 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.List.Relation.Unary.Any.C46 v7
               -> let v8 = coe v0 v3 in
                  coe (seq (coe v8) (coe (du3414 (coe v0) (coe v4) (coe v7))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name3464 = "Data.List.Properties._.filter-none"
d3464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T32 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3464 = erased
name3498 = "Data.List.Properties._.filter-complete"
d3498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3498 = erased
name3542 = "Data.List.Properties._.partition-defn"
d3542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3542 = erased
name3610 = "Data.List.Properties._._.Involutive"
d3610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> ([AgdaAny] -> [AgdaAny]) -> ()
d3610 = erased
name3650 = "Data.List.Properties._.unfold-reverse"
d3650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3650 = erased
name3664 = "Data.List.Properties._._.helper"
d3664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3664 = erased
name3680 = "Data.List.Properties._.reverse-++-commute"
d3680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3680 = erased
name3698 = "Data.List.Properties._.reverse-involutive"
d3698 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3698 = erased
name3712 = "Data.List.Properties._.length-reverse"
d3712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3712 = erased
name3728 = "Data.List.Properties.reverse-map-commute"
d3728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3728 = erased
name3750 = "Data.List.Properties.reverse-foldr"
d3750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3750 = erased
name3774 = "Data.List.Properties.reverse-foldl"
d3774 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3774 = erased
name3806 = "Data.List.Properties._.∷ʳ-injective"
d3806 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d3806 v0 v1 v2 v3 v4 v5 v6 = du3806 v4 v5
du3806 ::
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du3806 v0 v1
  = case coe v0 of
      []
        -> coe
             (seq
                (coe v1) (coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)))
      (:) v2 v3
        -> case coe v1 of
             (:) v4 v5
               -> let v6 = du42 in
                  coe
                    (seq
                       (coe v6)
                       (coe
                          (MAlonzo.Code.Data.Product.du150
                             erased (coe (\ v7 v8 -> v8)) (coe (du3806 (coe v3) (coe v5))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name3840 = "Data.List.Properties._.∷ʳ-injectiveˡ"
d3840 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3840 = erased
name3852 = "Data.List.Properties._.∷ʳ-injectiveʳ"
d3852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3852 = erased
name3860 = "Data.List.Properties.gfilter-just"
d3860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3860 = erased
name3862 = "Data.List.Properties.gfilter-nothing"
d3862 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3862 = erased
name3864 = "Data.List.Properties.gfilter-concatMap"
d3864 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3864 = erased
name3866 = "Data.List.Properties.length-gfilter"
d3866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
d3866 = coe d262
name3868 = "Data.List.Properties.right-identity-unique"
d3868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3868 = erased
name3870 = "Data.List.Properties.left-identity-unique"
d3870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3870 = erased
name3882 = "Data.List.Properties._.boolTakeWhile++boolDropWhile"
d3882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3882 = erased
name3902 = "Data.List.Properties._.boolSpan-defn"
d3902 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3902 = erased
name3924 = "Data.List.Properties._.length-boolFilter"
d3924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) -> [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
d3924 v0 v1 v2 v3 = du3924 v2 v3
du3924 ::
  (AgdaAny -> Bool) -> [AgdaAny] -> MAlonzo.Code.Data.Nat.Base.T6
du3924 v0 v1
  = coe
      (du262
         (coe
            (\ v2 ->
               MAlonzo.Code.Data.Bool.Base.du42
                 (coe v0 v2) (coe (MAlonzo.Code.Data.Maybe.Base.C28 (coe v2)))
                 (coe MAlonzo.Code.Data.Maybe.Base.C30)))
         (coe v1))
name3930 = "Data.List.Properties._.boolPartition-defn"
d3930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3930 = erased
name3966 = "Data.List.Properties._.boolFilter-filters"
d3966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T32
d3966 v0 v1 v2 v3 v4 v5 = du3966 v4 v5
du3966 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T32
du3966 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Data.List.Relation.Unary.All.C38
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Relation.Nullary.C22 v5
               -> coe
                    (\ v6 v7 v8 v9 ->
                       MAlonzo.Code.Data.List.Relation.Unary.All.C48 v8 v9)
                    erased erased v5 (du3966 (coe v0) (coe v3))
             MAlonzo.Code.Relation.Nullary.C26 -> coe (du3966 (coe v0) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name3988 = "Data.List.Properties.idIsFold"
d3988 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3988 = erased
name3990 = "Data.List.Properties.++IsFold"
d3990 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3990 = erased
name3992 = "Data.List.Properties.mapIsFold"
d3992 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3992 = erased
