{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.String.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Char.Properties
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Extrema
import qualified MAlonzo.Code.Data.List.Membership.DecSetoid
import qualified MAlonzo.Code.Data.List.NonEmpty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary

name118 = "Data.String.Base._≈_"
d118 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> ()
d118 = erased
name120 = "Data.String.Base._<_"
d120 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> ()
d120 = erased
name122 = "Data.String.Base.fromChar"
d122 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d122 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d10
      (coe
         MAlonzo.Code.Agda.Builtin.List.C22 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.List.C16))
name124 = "Data.String.Base.fromList⁺"
d124 ::
  MAlonzo.Code.Data.List.NonEmpty.T22 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d124 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d10
      (coe MAlonzo.Code.Data.List.NonEmpty.du60 (coe v0))
name126 = "Data.String.Base._++_"
d126 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d126 = coe MAlonzo.Code.Agda.Builtin.String.d12
name128 = "Data.String.Base.length"
d128 :: MAlonzo.Code.Agda.Builtin.String.T6 -> Integer
d128 v0
  = coe
      MAlonzo.Code.Data.List.Base.du272
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
name130 = "Data.String.Base.replicate"
d130 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d130 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.String.d10
      (coe MAlonzo.Code.Data.List.Base.du282 (coe v0) (coe v1))
name134 = "Data.String.Base.concat"
d134 ::
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d134
  = coe
      MAlonzo.Code.Data.List.Base.du216 (coe d126)
      (coe (Data.Text.pack ""))
name136 = "Data.String.Base.intersperse"
d136 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d136 v0 v1
  = coe d134 (coe MAlonzo.Code.Data.List.Base.du68 (coe v0) (coe v1))
name140 = "Data.String.Base.unlines"
d140 ::
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d140 = coe d136 (coe (Data.Text.pack "\n"))
name146 = "Data.String.Base.wordsBy"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Char.T6 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Char.T6 ->
   MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  [MAlonzo.Code.Agda.Builtin.String.T6]
d146 v0 v1 v2 v3 = du146 v2 v3
du146 ::
  (MAlonzo.Code.Agda.Builtin.Char.T6 ->
   MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  [MAlonzo.Code.Agda.Builtin.String.T6]
du146 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du20
      (coe MAlonzo.Code.Agda.Builtin.String.d10)
      (coe
         MAlonzo.Code.Data.List.Base.du836 v0
         (coe MAlonzo.Code.Agda.Builtin.String.d8 v1))
name150 = "Data.String.Base.words"
d150 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  [MAlonzo.Code.Agda.Builtin.String.T6]
d150
  = coe
      du146
      (coe
         (\ v0 ->
            MAlonzo.Code.Data.Bool.Properties.d2042
              (coe MAlonzo.Code.Agda.Builtin.Char.d14 v0)))
name152 = "Data.String.Base.unwords"
d152 ::
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d152 = coe d136 (coe (Data.Text.pack " "))
name154 = "Data.String.Base.parens"
d154 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d154 v0
  = coe d126 (Data.Text.pack "(") (coe d126 v0 (Data.Text.pack ")"))
name158 = "Data.String.Base.parensIfSpace"
d158 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d158 v0
  = let v1
          = MAlonzo.Code.Relation.Nullary.d42
              (coe
                 MAlonzo.Code.Data.List.Membership.DecSetoid.du62
                 (coe
                    MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du254
                    (coe MAlonzo.Code.Data.Char.Properties.d52))
                 (coe ' ') (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)) in
    if coe v1 then coe d154 (coe v0) else coe v0
name170 = "Data.String.Base.braces"
d170 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d170 v0
  = coe d126 (Data.Text.pack "{") (coe d126 v0 (Data.Text.pack "}"))
name174 = "Data.String.Base._<+>_"
d174 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d174 v0 v1
  = let v2
          = let v2 = coe d126 v0 (coe d126 (Data.Text.pack " ") v1) in
            case coe v1 of
              l | (==) l (Data.Text.pack "") -> coe v0
              _ -> coe v2 in
    case coe v0 of
      l | (==) l (Data.Text.pack "") -> coe v1
      _ -> coe v2
name184 = "Data.String.Base.padLeft"
d184 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d184 v0 v1 v2
  = let v3
          = coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 (d128 (coe v2)) in
    let v4 = coe d126 (d130 (coe v3) (coe v0)) v2 in
    case coe v3 of
      0 -> coe v2
      _ -> coe v4
name210 = "Data.String.Base.padRight"
d210 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d210 v0 v1 v2
  = let v3
          = coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 (d128 (coe v2)) in
    let v4 = coe d126 v2 (d130 (coe v3) (coe v0)) in
    case coe v3 of
      0 -> coe v2
      _ -> coe v4
name236 = "Data.String.Base.padBoth"
d236 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d236 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Agda.Builtin.Nat.d22 v2 (d128 (coe v3)) in
    let v5
          = coe
              d126 (d130 (coe MAlonzo.Code.Data.Nat.Base.d114 (coe v4)) (coe v0))
              (coe
                 d126 v3
                 (d130 (coe MAlonzo.Code.Data.Nat.Base.d118 (coe v4)) (coe v1))) in
    case coe v4 of
      0 -> coe v3
      _ -> coe v5
name268 = "Data.String.Base.Alignment"
d268 = ()
data T268 = C270 | C272 | C274
name276 = "Data.String.Base.fromAlignment"
d276 ::
  T268 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d276 v0
  = case coe v0 of
      C270 -> coe d210 (coe ' ')
      C272 -> coe d236 (coe ' ') (coe ' ')
      C274 -> coe d184 (coe ' ')
      _ -> MAlonzo.RTE.mazUnreachableError
name280 = "Data.String.Base.rectangle"
d280 ::
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> MAlonzo.Code.Data.Vec.Base.T24
d280 v0 v1 v2 = du280 v1 v2
du280 ::
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> MAlonzo.Code.Data.Vec.Base.T24
du280 v0 v1
  = coe
      MAlonzo.Code.Data.Vec.Base.du258
      (coe (\ v2 -> coe v2 (coe du292 (coe v1)))) (coe v0) (coe v1)
name290 = "Data.String.Base._.sizes"
d290 ::
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> [Integer]
d290 v0 v1 v2 = du290 v2
du290 :: MAlonzo.Code.Data.Vec.Base.T24 -> [Integer]
du290 v0
  = coe
      MAlonzo.Code.Data.List.Base.du20 (coe d128)
      (coe MAlonzo.Code.Data.Vec.Base.du652 (coe v0))
name292 = "Data.String.Base._.width"
d292 ::
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> Integer
d292 v0 v1 v2 = du292 v2
du292 :: MAlonzo.Code.Data.Vec.Base.T24 -> Integer
du292 v0
  = coe
      MAlonzo.Code.Data.List.Extrema.du124
      MAlonzo.Code.Data.Nat.Properties.d1484 (0 :: Integer)
      (coe du290 (coe v0))
name300 = "Data.String.Base.rectangleˡ"
d300 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> MAlonzo.Code.Data.Vec.Base.T24
d300 v0 v1
  = coe
      du280
      (coe MAlonzo.Code.Data.Vec.Base.du490 (coe v0) (coe d184 (coe v1)))
name306 = "Data.String.Base.rectangleʳ"
d306 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> MAlonzo.Code.Data.Vec.Base.T24
d306 v0 v1
  = coe
      du280
      (coe MAlonzo.Code.Data.Vec.Base.du490 (coe v0) (coe d210 (coe v1)))
name312 = "Data.String.Base.rectangleᶜ"
d312 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> MAlonzo.Code.Data.Vec.Base.T24
d312 v0 v1 v2
  = coe
      du280
      (coe
         MAlonzo.Code.Data.Vec.Base.du490 (coe v0)
         (coe d236 (coe v1) (coe v2)))
