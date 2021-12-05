import Data.List(zipWith)
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith f [] [] = []
myZipWith f (x:xs) (y:ys) = [f x y] ++ myZipWith f xs ys
