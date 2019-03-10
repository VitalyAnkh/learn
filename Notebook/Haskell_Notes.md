# Learn you a haskell for great good!
    
Pattarn matching is actually matching constructors.
```haskell
ghci> (++) "I love " "you"
"I love you"
```
```haskell
ghci> ((++) "I love ") "you"
"I love you"
```
```haskell
ghci> (++ "I love " ) "you"
"youI love "
```

Pure functions are lazy by default.
2. 
learnyouahaskell.com 讲到`catch`时，使用这个程序演示：
``` haskell
import           System.Environment
import           System.IO
import System.IO.Error

main = catch toTry handler

toTry :: IO ()
toTry = do
    (fileName : _) <- getArgs
    contents       <- readFile fileName
    putStrLn $ "The file has " ++ (show $length $lines contents) ++ " lines"

handler :: IOError -> IO ()
handler e = putStrLn "Whoops, had some trouble!"
```
为了跑通，应把`import System.IO.Error`改为`import System.IO.Error(catchIOError)`，同时把所有的`catch`改为`catchIOError`。