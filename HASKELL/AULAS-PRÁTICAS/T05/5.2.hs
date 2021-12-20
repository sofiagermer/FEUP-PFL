import Data.Maybe (isNothing)
import Stack
import Text.Read

imprimir ::  Stack Float -> [Float]
imprimir stack = if isEmpty (stack) then []
                 else [top (stack)] ++ imprimir (pop (stack))
-- ALÍNEA a)
calc :: Stack Float -> String -> Stack Float
calc stack1 string
    | string == "+" = push (top stack1 + top stack1 ) stack1
    | string == "*" = push(top stack1 * top(pop stack1)) stack1
    | string == "-" = push(top stack1 - top(pop stack1)) stack1
    | string == "/" = push(top stack1 / top(pop stack1)) stack1
    | otherwise = push (read string :: Float) stack1

-- ALÍNEA b)
calcular :: String -> Float 
calcular string = calcularAux3 (calcularAux2 string) empty

-- sofi2 :: String -> Float 
sofi2 string = sofi (calcularAux2 string) empty

sofi :: [String] -> Stack Float -> [Float]
sofi [] stack = imprimir stack
sofi (x:xs) stack = sofi xs (calc stack x)

calcularAux3 :: [String] -> Stack Float -> Float
calcularAux3 [] stack = top stack
calcularAux3 (x:xs) stack = calcularAux3 xs (calc stack x)

calcularAux2 :: String -> [String]
calcularAux2 string= calcularAux string ""

calcularAux :: String -> String -> [String]
calcularAux [] string = []
calcularAux (x:xs) string = if x == ' '  then string : calcularAux xs ""
                         else calcularAux xs (string ++ [x])
