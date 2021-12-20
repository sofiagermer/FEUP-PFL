-- ALÍNEA a)

data Arv a = Folha a | No (Arv a) (Arv a) deriving (Show, Eq)

emOrdem :: Ord (a) => Arv a -> [a]
emOrdem (Folha x) = [x]
emOrdem (No esq dir) = emOrdem(esq) ++ emOrdem(dir)

anyArv :: (a -> Bool) -> Arv a -> Bool 
anyArv f (Folha x) = f(x)
anyArv f (No esq dir) = (anyArv f esq) || (anyArv f dir)
