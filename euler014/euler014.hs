import Data.List
import Data.Ord

import Data.MemoCombinators as Memo

collatz :: Integer -> Integer
collatz = Memo.integral collatz'
  where
    collatz' 1 = 1
    collatz' n = succ . collatz . next $ n

    next n | even n    = n `div` 2
           | otherwise = (n * 3) + 1

euler014 :: Integer
euler014 = maximumBy (comparing collatz) [1..1000000]

main :: IO ()
main = print euler014
