myScanl :: (a -> b -> a) -> a -> [b] -> [a]
myScanl f z [] = [z]
myScanl f z (x:xs) = z : myScanl f (f z x) xs