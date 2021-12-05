maiores [] = []
maiores [_] = []
maiores (x:y:xs) = if x > y then x : maiores (y:xs)
                      else maiores (y:xs)
-- maiores lista =