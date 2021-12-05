data Arv a = Vazia | No a (Arv a) (Arv a)

-- nivel :: Int -> Arv a -> [a]
nivelAux Vazia counter = []
nivelAux (No x esq dir) 0 = []
nivelAux (No x esq dir) counter = nivelAux dir (counter-1) ++ [x] ++ nivelAux esq (counter-1)
