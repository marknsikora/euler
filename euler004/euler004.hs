isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs

euler004 :: Integral a => a
euler004 = maximum [ z | x <- [999,998..100],
                         y <- [999,998..x],
                         let z = x*y,
                         isPalindrome $ show z ]

main = print euler004
