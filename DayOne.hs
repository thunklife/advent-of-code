module DayOne where

import Data.List

f :: Char -> Int
f '(' = 1
f ')' = -1
f _   = 0

solution1 :: String -> Int
solution1 = sum . fmap f

solution2 :: String -> Int
solution2 = length . head . filter ((== -1) . sum) . drop 1 . inits . fmap f
