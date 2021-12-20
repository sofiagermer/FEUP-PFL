data Arv a = Vazia | No a (Arv a) (Arv a)

listarDecrescente :: Arv a -> [a]
listarDecrescente Vazia = []
listarDecrescente (No x esq dir) = listarDecrescente dir ++ [x] ++ listarDecrescente esq

