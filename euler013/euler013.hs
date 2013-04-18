import Data.Char (digitToInt)

euler013 :: IO Integer
euler013 = do
  str <- readFile "numbers.txt"
  let numbers = map read $ lines str
  return . read . take 10 . show . sum $ numbers

main = euler013 >>= print
