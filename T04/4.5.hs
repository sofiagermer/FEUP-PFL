{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
import Control.Monad.ST (ST)
import Language.Haskell.TH.Syntax (counter)
alfabeto = "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"

deslocamento :: [Int]
deslocamento = [0,1..25]

dic :: [(Char, Int)]
dic = zip alfabeto deslocamento

cifrar :: Int -> String -> String
cifrar n [] = []
cifrar n (x:xs) =   if x == ' ' then ' ' : cifrar n xs
                    else procura alfabeto x n : cifrar n xs

procuraAux :: (Eq t1, Num t1) => [p] -> t2 -> t1 -> p
procuraAux(x:xs) char counter
  | counter == 0 = x
  | otherwise = procuraAux xs char (counter-1)

procura :: (Num t1, Eq t1, Eq t2) => [t2] -> t2 -> t1 -> t2
procura (x:xs) char counter
  | counter == 0 = x
  | x == char = procuraAux xs char (counter-1)
  | otherwise = procura xs char counter

-- sofia :: String -> String -> Int -> (Char, Char)
-- cifrarChave :: String -> String -> (String, String)
-- cifrarChaveAux2 :: [(String, String)]

-- cifrarChaveAux3 = 

-- cifrarChaveAux2 [] counter = []
procuraLetra :: Char -> Int -> Int
procuraLetra letra counter = if (alfabeto!!counter) == letra then counter else procuraLetra letra (counter+1)

cifrarChaveAux1 :: String -> String -> [(Char, Char)]
cifrarChaveAux1 palavra1 palavra2 = sofia palavra1 palavra2 0

cifrarChaveAux2 :: [(Char,Char)] -> Int -> String
cifrarChaveAux2 xs counter = foldr (\ x -> (++) (cifrar (procuraLetra (snd x) 0) [fst x])) [] xs

-- cifrarChaveAux :: String-> String -> [(String, String)]

cifrarChave :: String -> String -> String
cifrarChave palavra1 palavra2= cifrarChaveAux2 (cifrarChaveAux1 palavra1 palavra2 ) 0

-- sofia :: String -> String -> Int -> [(String, String)]
sofia [] palavra2 counter= []
sofia (x:xs) palavra2 counter = (x , palavra2 !!counter) : sofia xs palavra2 (mod (counter +1) (length palavra2))

