import Data.Char as Char

euler016 :: Int
euler016 =
  let separateDigits x = map Char.digitToInt $ show x
  in sum $ separateDigits (2^1000)

main :: IO ()
main = do putStrLn $ show euler016
