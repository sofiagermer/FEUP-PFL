{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
import GHC.Unicode
alfabeto = "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"

cifrar :: Int -> String -> String
cifrar n [] = []
cifrar n (x:xs) =   if x == ' ' then ' ' : cifrar n xs
                    else procura alfabeto x n : cifrar n xs
--cifrar n = map (\ x -> procura alfabeto x (mod n 25))

procuraAux :: (Eq t1, Num t1) => [p] -> t2 -> t1 -> p
procuraAux(x:xs) char counter
  | counter == 0 = x
  | otherwise = procuraAux xs char (counter-1)

procura :: (Num t1, Eq t1, Eq t2) => [t2] -> t2 -> t1 -> t2
procura (x:xs) char counter
  | counter == 0 = x
  | x == char = procuraAux xs char (counter-1)
  | otherwise = procura xs char counter
