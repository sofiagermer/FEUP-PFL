data Arv a = Vazia | No a (Arv a) (Arv a)

soma :: Num a => Arv a -> a
soma Vazia = 0
soma (No x esq dir) = soma esq + x + soma dir

foldtree :: (a -> b -> b -> b) -> b -> Arv a -> b
foldtree f v Vazia = v
foldtree f v (No x esq dir) = f x (foldtree f v esq) (foldtree f v dir)