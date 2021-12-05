
-- mdc :: Integral t => t -> t -> t
-- mdc a b = if b == 0 then a else mdc b (mod a b)

-- UNTIL FUCNTION :
-- given a predicate p, a unary function f and a value x
-- aplies f to x until the predicate p is satisfied 

mdc :: Int -> Int -> Int
mdc a b = until (== 0) (mod a) b

mdcAux a b = 
