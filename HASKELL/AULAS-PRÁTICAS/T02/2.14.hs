nub :: Eq a => [a] -> [a]
nubAux [] = []
nubAux (x:xs) = if (elem x xs) then nubAux xs
                else [x] ++ nubAux xs
nub lista = reverse(nubAux (reverse lista))
