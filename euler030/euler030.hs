import Data.Char (digitToInt)

euler030:: Int -> Int
euler030 n = sum . filter isPowerSum $ [2..upper]
  where
    upper = 10^(n+1)
    isPowerSum x = x == (sum . map ((^n) . digitToInt) . show $ x)

main :: IO ()
main = print $ euler030 5
