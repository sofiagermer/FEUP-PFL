{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

import Data.List

myReverse :: [a] -> [a]
myReverse l = foldr (\x acc -> acc ++ [x]) [] l

myReverse2 :: [a] -> [a]
myReverse2 l = foldl (\acc x -> [x] ++ acc) [] l
--mini lista = foldr() [x]

myFilter p lista = foldr(\x acc -> if p x then [x] ++ acc else acc) [] lista

myMap f lista = foldr(\x acc -> [f x] ++ acc) []lista 