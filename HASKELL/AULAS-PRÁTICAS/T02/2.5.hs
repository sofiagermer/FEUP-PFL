
divprop :: Integer -> [Integer ]
divprop n =  [x | x<-[1..(n-1)], (mod n x) ==0]

lista :: (Num a, Enum a) => a -> [a]
lista n = [1..n]

aux :: [Integer] -> [Integer]
aux [] = []
aux(x:xs) = if x == sum(divprop x) then [x] ++ aux(xs) else aux(xs)

perfeitos :: Integer -> [Integer]
perfeitos n = aux (lista n)


--oi = [1..10]