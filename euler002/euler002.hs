maxCount :: Int
maxCount = 4000000

fibs :: (Integral a) => [a]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

euler002 :: Int
euler002 = sum $ filter even $ takeWhile (<maxCount) fibs

main = print euler002
