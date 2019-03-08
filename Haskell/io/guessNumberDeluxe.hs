import           System.Random
import           Control.Monad                  ( when )

main = do
    gen <- getStdGen
    askForNumber gen

askForNumber :: StdGen -> IO ()
askForNumber gen = do
    let (randNumber, newGen) = randomR (1, 10) gen :: (Int, StdGen)
    putStr "Which number in the range 1 to 100 am I thinking?"
    numberString <- getLine
    when (not $ null numberString) $ do
        let number = read numberString
        if randNumber == number
            then putStrLn "Your are correct!"
            else putStrLn "Sorry, guess again"
        newStdGen
        main
