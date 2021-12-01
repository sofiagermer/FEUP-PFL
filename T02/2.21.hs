import GHC.Unicode

-- Alínea a)
myMinimum :: Ord a => [a] -> a
myMinimum [x] = x
myMinimum (x:xs) = myAux x (myMinimum xs)
myAux a b = if a < b then a else b

-- Alínea b)
myDelete :: Eq a => a -> [a] -> [a]
myDelete n [] = []
myDelete n (x:xs) = if n == x then xs else [x] ++ myDelete n xs

--Alínea c)
ssort :: Ord a => [a] -> [a]
ssort [] = []
ssort lista = [myMinimum lista] ++ ssort (myDelete (myMinimum lista) lista)
