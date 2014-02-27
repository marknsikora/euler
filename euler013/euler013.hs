import Control.Applicative

euler013 :: [Integer] -> String
euler013 = take 10 . show . sum

main :: IO ()
main = do
  numbers <- map read . lines <$> readFile "numbers.txt"
  putStrLn $ euler013 numbers
