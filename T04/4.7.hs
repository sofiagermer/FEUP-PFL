data Arv a = Vazia | No a (Arv a) (Arv a)

sumArv :: Num a => Arv a -> a
sumArv Vazia = 0
sumArv (No val esq dir) = sum [val, sumArv esq, sumArv dir]