module BadIce where
import Control.Monad
mcomp :: Monad m =>
  (b -> m c )
  ->(a -> m b)
  ->a -> m c
mcomp f g a = join (f <$> (g a))
-- Haskell 函数类型声明中的最后一个括号是可要可不要的吗？比如，上面这个mcomp类型中的a->m c可不可以加上一个括号
-- 是的
-- (a -> b -> c) -> (d -> (e -> f)) 也与(a -> b -> c) -> d -> e -> f相同
