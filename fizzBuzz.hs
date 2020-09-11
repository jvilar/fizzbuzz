import Data.Char(intToDigit)

main :: IO ()
main = mapM_ putStrLn $ map translate [1..100]

translate :: Int -> String
translate n | isFizz && isBuzz = "FizzBuzz"
            | isFizz = "Fizz"
            | isBuzz = "Buzz"
            | otherwise = show n
            where isFizz = check 3 n
                  isBuzz = check 5 n
                  check b n = n `rem` b == 0 || has (intToDigit b) n
                  has c = (elem c) . show
