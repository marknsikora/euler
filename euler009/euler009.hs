import Control.Monad

pythagoreanTriplets :: Integral a => a -> [(a,a,a)]
pythagoreanTriplets n = do
  c <- [1..n-2]
  b <- [1..n-c-1]
  let a = n - c - b
  guard (a < b)
  guard (c*c == a*a + b*b)
  return (a,b,c)

tripletProduct :: Integral a => (a,a,a) -> a
tripletProduct (a,b,c) = a * b * c

euler009 :: Integer
euler009 = tripletProduct . head . pythagoreanTriplets $ 1000

main :: IO ()
main = print euler009
