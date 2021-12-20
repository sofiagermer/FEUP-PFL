--dotprod :: [Float] -> [Float] -> Float 
--dotprod [] [] = 0
--aux (a,b) = a*b
--aux (x:xs) = aux x + aux xs

aux (a,b) = a*b
dotprod lista1 lista2 = sum(map aux(zip lista1 lista2))