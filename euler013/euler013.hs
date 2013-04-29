import Control.Applicative
import Data.Char (digitToInt)

euler013 ss =
  let numbers = map read ss
  in take 10 . show . sum $ numbers

main = do
  numbers <- lines <$> readFile "numbers.txt"
  putStrLn $ euler013 numbers
