module DayOne where

f :: Char -> Integer
f x
  | x == '(' = 1
  | otherwise = -1

solution :: String -> Integer 
solution = foldr ((+) . f) 0

main :: IO ()
main = putStrLn "Puzzle input please" >> solution <$> getLine >>= print
