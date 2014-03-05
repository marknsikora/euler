import Data.List

euler029 :: Int -> Int
euler029 n = length . group . sort $ combinations
  where
    n' = fromIntegral n
    combinations = [ a ^ b | a <- [2..n'], b <- [2..n'] ] :: [Integer]

main :: IO ()
main = print $ euler029 100
