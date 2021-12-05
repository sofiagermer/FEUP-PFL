import Data.List
import GHC.List ()

--calcPi1, calcPi2 :: Int -> Double 

numerador1 :: [Integer]
numerador1 = repeat 4

denominador1 :: [Integer]
denominador1 = [1,3..]

numerador2 :: [Integer]
numerador2 = 3 : cycle [4,-4]

denominador2 :: [Integer]
denominador2 = map (*2) [1,2..]
calcPi1 = zipWith div numerador1 denominador1

sofi = take 20 denominador2
