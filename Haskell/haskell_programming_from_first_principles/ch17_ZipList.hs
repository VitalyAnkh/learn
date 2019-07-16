module Apl1 where

import Control.Applicative
import Data.Monoid
import Test.QuickCheck
import Test.QuickCheck.Checkers
import Test.QuickCheck.Classes

-- instance Monoid a => Monoid (ZipList a) where
--   mempty = ZipList []
--   mappend = liftA2 mappend

instance Eq a=> EqProp (ZipList a) where
  (=-=)=eq
