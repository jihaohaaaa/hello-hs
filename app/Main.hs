module Main (main) where

import MyLib qualified (someFunc)

add :: Int -> Int -> Int
add x y = x + y

factorial :: Int -> Int
factorial n = product [1 .. n]

nCr :: Int -> Int -> Int
nCr n r = factorial n `div` factorial r `div` factorial (n - r)

nC3 :: Int -> Int
nC3 = \x -> nCr x 3

result :: Int
result = nC3 5

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  MyLib.someFunc
  putStrLn $ show $ add 1 2
  print result