--primeiro lista = head(x)
--segundo lista = head(tail(x))
--ultimo lista = head(reverse(x))

--if (primeiro > segundo && segundo > ultimo) 
mediana x
            | head(x) < head(tail(x)) && head(tail(x)) < head(reverse(x)) = head(tail(x)) -- ordem crescente
            | head(x) > head(tail(x)) && head(tail(x)) > head(reverse(x)) = head(tail(x)) -- ordem decrescente
            | head(x) < head(tail(x)) && head(x) > head(reverse(x)) = head(x) -- [2,3,1]
            | head(x) < head(reverse(x)) && head(x) > head(tail(x)) = head(x) -- [2,1,3]
            | head(x) > head(tail(x)) && head(tail(x)) < head(reverse(x)) = head(reverse(x)) -- [3,1,2]
            | head(x) < head(tail(x)) && head(tail(x)) > head(reverse(x)) = head(reverse(x)) -- [1,3,2]
            
mediana2 a b c = (a + b + c) - max a (max b c) - min a (min b c)
