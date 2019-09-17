module BadIce where
import           Control.Monad
import           Control.Monad            ((>=>))
import           Test.QuickCheck
import           Test.QuickCheck.Checkers
import           Test.QuickCheck.Classes
mcomp :: Monad m =>
  (b -> m c )
  ->(a -> m b)
  ->a -> m c
mcomp f g a = join (f <$> (g a))
-- Haskell 函数类型声明中的最后一个括号是可要可不要的吗？比如，上面这个mcomp类型中的a->m c可不可以加上一个括号
-- 是的
-- (a -> b -> c) -> (d -> (e -> f)) 也与(a -> b -> c) -> d -> e -> f相同

data Nope a = NopeDotJpg
instance Functor Nope where
  fmap _ _ = NopeDotJpg
instance Applicative Nope where
  pure _ = NopeDotJpg
  _ <*> _ = NopeDotJpg

instance Monad Nope where
  return = pure
  _ >>= _ = NopeDotJpg


sayHi :: String -> IO String
sayHi greeting = do
  putStrLn greeting
  getLine

readM :: Read a => String->IO a
readM = return . read

getAge::String -> IO Int
getAge = sayHi >=> readM

askForAge :: IO Int
askForAge = getAge "Hello, how old are you?"

