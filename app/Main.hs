module Main where

import GHC.Debug.Client 
import GHC.Debug.Snapshots

main :: IO ()
main = withDebuggeeConnect "/tmp/ghc-debug" $ \e -> 
  makeSnapshot e "/tmp/cardano-node-snapshot"
