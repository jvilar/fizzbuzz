
main :: IO ()
main = mapM_ putStrLn $ map translate [1..100]

translate :: Int -> String
translate n | isFizz && isBuzz = "FizzBuzz"
            | isFizz = "Fizz"
            | isBuzz = "Buzz"
            | otherwise = show n
            where isFizz = n `rem` 3 == 0
                  isBuzz = n `rem` 5 == 0
