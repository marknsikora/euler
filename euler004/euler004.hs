isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs

euler004 :: Integer
euler004 = maximum [ z | x <- [999,998..100],
                         y <- [999,998..x],
                         let z = x*y,
                         isPalindrome $ show z ]

main :: IO ()
main = print euler004
