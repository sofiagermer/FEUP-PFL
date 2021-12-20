import GHC.Unicode
import Data.List

--Alínea a)
merge :: Ord a => [a] -> [a] -> [a]
merge lista1 lista2 = sort(lista1 ++ lista2)

--Alínea b)


met lista = fromIntegral(length lista) / 2
metades lista= [take (round(met lista)) lista] ++ [drop (round(met lista)) lista]



msort :: Ord a => [a] -> [a]
msort [] = [] 
msort [x] = [x]
msort [[x]] = [x]
msort lista = merge msort head(metades lista) msort tail(metades lista)
