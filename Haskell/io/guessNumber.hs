import           Control.Monad (when)
import           System.Random

main = do
  gen <- getStdGen
  askForNumber gen

askForNumber :: StdGen -> IO ()
askForNumber gen = do
  let (randNumber, newGen) = randomR (1, 10) gen :: (Int, StdGen)
  putStrLn "Which number in the range 1 to 100 am I thinking?"
  numberString <- getLine
  when (not $ null numberString) $ do
    let number = read numberString
    if randNumber == number
      then putStrLn "Your are correct!"
      else putStrLn $ "Sorry, it was " ++ show randNumber
    askForNumber newGen
