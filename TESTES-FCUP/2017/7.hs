partesAux :: Num a => [a] -> [a]
partesAux lista = init(init lista) ++ [last lista + last(init lista)]

partesAux2 :: Num a => [a] -> [[a]]
partesAux2 [] = []
partesAux2 [_] = []
partesAux2 lista = partesAux lista : partesAux2 (partesAux lista)

partes :: Num a => Int -> [[a]]
partes n = replicate n 1 : partesAux2 (replicate n 1)

crescenteAux :: Ord t => [t] -> t -> Bool
crescenteAux [] el = True
crescenteAux (x:xs) el = (x >= el) && crescenteAux xs x

crescente :: Ord a => [a] -> Bool
crescente lista = crescenteAux lista (head lista)

