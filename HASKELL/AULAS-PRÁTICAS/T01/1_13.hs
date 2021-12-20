import GHC.Unicode
import Data.List ()
-- condicionais
safetail1 :: [a] -> [a]
safetail1 lista = if null lista then [] else tail lista

-- guardas
safetail2 :: [a] -> [a]
safetail2 lista
                | null lista = []
                | otherwise =  tail lista

-- padrões
safetail3 :: [a] -> [a]
safetail3 [] = []
safetail3 lista = tail lista
