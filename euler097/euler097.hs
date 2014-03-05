import Data.Bits

euler097 :: Integer
euler097 = let prime = 28433 * (1 `shiftL` 7830457) + 1
           in prime `rem` 10000000000

main :: IO ()
main = print euler097
