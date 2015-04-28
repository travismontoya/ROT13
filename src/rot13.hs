module Main where

import Data.List

alpha, cipher :: String
alpha    = ['A'..'Z'] ++ ['a'..'z']
cipher   = ['N'..'Z'] ++ ['A'..'M'] ++ 
           ['n'..'z'] ++ ['a'..'m']
              
rot13 :: Char -> Char
rot13 x  = case elemIndex x alpha of
                Just n  -> cipher !! n
                Nothing -> x

encipher :: String -> String
encipher = fmap rot13

main :: IO()
main     = do l <- getLine
              let e = encipher l
              putStrLn e