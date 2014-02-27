import Data.Bits
import Data.Char(digitToInt)

euler016 :: Int -> Int
euler016 n =
  let separateDigits x = map digitToInt . show $ x
      number = 1 `shiftL` n :: Integer
  in sum . separateDigits $ number

main :: IO ()
main = print $ euler016 1000
