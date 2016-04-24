module Node.Git.Reference where

import Prelude (class Show)

import Data.Function (runFn0)
import Unsafe.Coerce (unsafeCoerce)

foreign import data Reference :: *

instance showReference :: Show Reference where
  show = unsafeCoerce \a -> runFn0 a.toString
