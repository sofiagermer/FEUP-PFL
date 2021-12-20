calculaNumero :: a -> Int -> [a] -> [a]
calculaNumero n 0 lista = n : lista
calculaNumero n counter [] = []
calculaNumero n counter (x:xs) = x : calculaNumero n (counter-1) xs

intercalarAux :: a -> Int -> [[a]] -> [[a]]
intercalarAux n counter [] = []
intercalarAux n counter (x:xs) = calculaNumero n counter x : intercalarAux n (counter+1) xs

intercalar :: a -> [a] -> [[a]]
intercalar n [] = []
intercalar n lista = intercalarAux n 0 (replicate (length lista + 1) lista)

perms :: [a] -> [[a]]
perms [] = []
perms lista = permsAux (intercalar (head lista) lista) ++ perms (tail lista)

permsAux :: [[a]] -> [[a]]
permsAux [] = []
permsAux (x:xs) = perms x 