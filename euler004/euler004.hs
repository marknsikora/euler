isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs

euler004 :: Int -> Integer
euler004 n = maximum [ z | x <- [upper,upper-1..lower],
                           y <- [upper,upper-1..x],
                           let z = x*y,
                           isPalindrome $ show z ]
  where
    upper = (10 ^ n) - 1
    lower = 10 ^ (n - 1)

main :: IO ()
main = print $ euler004 3
