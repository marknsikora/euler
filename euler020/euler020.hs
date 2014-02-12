import Data.Char (digitToInt)

fact n = product [1..n]

euler020 = sum . map digitToInt . show . fact $ 100

main = print euler020
