module DayOne where

f :: Char -> Integer
f '(' = 1
f _   = -1

solution :: String -> Integer
solution = foldr ((+) . f) 0

main :: IO ()
main = putStrLn "Puzzle input please" >> solution <$> getLine >>= print
