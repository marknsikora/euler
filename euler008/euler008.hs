import Control.Applicative
import Data.Char (digitToInt)
import Data.List

euler008 :: [Int] -> Int
euler008 = maximum . map (product . take 5) . tails

main :: IO ()
main = do
  digits <- map digitToInt . concat . lines <$> readFile "number.txt"
  print $ euler008 digits
