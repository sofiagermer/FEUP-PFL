--curta :: [a] -> Bool

curta lista = length lista < 3

curta2 [] = True
curta2 [_] = True
curta2 [_,_] = True
curta2 x = False

