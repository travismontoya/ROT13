module Main where
-- ROT13.hs ROT13 substitution cipher
-- Reference:
-- http://en.wikipedia.org/wiki/ROT13

import Data.List

alpha, cipher :: String
alpha    = ['A'..'Z'] ++ ['a'..'z']
cipher   = ['N'..'Z'] ++ ['A'..'M'] ++ ['n'..'z'] ++ ['a'..'m']

rot13 :: Char -> Char
rot13 x  = case elemIndex x alpha of
             Just n  -> cipher !! n
             Nothing -> x

encipher :: String -> String
encipher = fmap rot13

main :: IO()
main     = do l <- getLine
              putStrLn $ encipher l