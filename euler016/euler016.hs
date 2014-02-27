import Data.Bits
import Data.Char(digitToInt)

euler016 :: Int
euler016 =
  let separateDigits x = map digitToInt . show $ x
      number = 1 `shiftL` 1000 :: Integer
  in sum . separateDigits $ number

main :: IO ()
main = print euler016
