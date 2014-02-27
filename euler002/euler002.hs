fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

euler002 :: Integer
euler002 = sum . filter even . takeWhile (<4000000) $ fibs

main :: IO ()
main = print euler002
