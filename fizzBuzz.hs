import Data.Char(intToDigit)

main :: IO ()
main = mapM_ putStrLn $ map translate [1..100]

translate :: Int -> String
translate n | null c = show n
            | otherwise = c
            where c = concat [ str | (cnd, str) <- checks, cnd n ]
                  check b n = n `rem` b == 0 || has (intToDigit b) n
                  has c = (elem c) . show
                  checks = [(check 3, "Fizz"), (check 5, "Buzz"), (check 7, "Tazz")]
