module Main where

import GHC.Debug.Client 

main :: IO ()
main = withDebuggeeConnect "/tmp/ghc-debug" $ \e -> 
  makeSnapshot e "/tmp/cardano-node-snapshot"
