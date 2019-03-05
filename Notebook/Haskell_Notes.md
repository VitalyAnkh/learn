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