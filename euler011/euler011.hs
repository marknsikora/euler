import Control.Applicative
import Data.List

euler012 :: [[Int]] -> Int
euler012 m =
  let directions = [id, transpose, diag, diag . reverse]
  in maximum . map max_product $ directions <*> pure m
  where
    max_product = maximum . map (product . take 4) . tails . concat

    diag = concatMap (transpose . diag') . tails
      where
        diag' (x:xs) = x : (diag' . map (drop 1) $ xs)
        diag' [] = []

main :: IO ()
main = do
  numbers <- map (map read . words) . lines <$> readFile "numbers.txt"
  print $ euler012 numbers
