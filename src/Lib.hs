{-# LANGUAGE OverloadedStrings #-}
module Lib
  ( sayHello
  )
where

import           System.Process.Typed           ( runProcess_ )

sayHello :: IO ()
sayHello = runProcess_ "hello"
