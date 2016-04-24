module Node.Git.Status where

import Prelude
import Data.Function (runFn0)
import Unsafe.Coerce (unsafeCoerce)

foreign import data StatusFile :: *

statusBit :: StatusFile -> Int
statusBit = unsafeCoerce \a -> runFn0 a.statusBit

path :: StatusFile -> String
path = unsafeCoerce \a -> runFn0 a.path

isNew :: StatusFile -> Boolean
isNew = unsafeCoerce \a -> runFn0 a.isNew /= 0

isModified :: StatusFile -> Boolean
isModified = unsafeCoerce \a -> runFn0 a.isModified /= 0

isDeleted :: StatusFile -> Boolean
isDeleted = unsafeCoerce \a -> runFn0 a.isDeleted /= 0

isTypechange :: StatusFile -> Boolean
isTypechange = unsafeCoerce \a -> runFn0 a.isTypechange /= 0

isRenamed :: StatusFile -> Boolean
isRenamed = unsafeCoerce \a -> runFn0 a.isRenamed /= 0

isIgnored :: StatusFile -> Boolean
isIgnored = unsafeCoerce \a -> runFn0 a.isIgnored /= 0

isConflicted :: StatusFile -> Boolean
isConflicted = unsafeCoerce \a -> runFn0 a.isConflicted /= 0

inWorkingTree :: StatusFile -> Boolean
inWorkingTree = unsafeCoerce \a -> runFn0 a.inWorkingTree /= 0

inIndex :: StatusFile -> Boolean
inIndex = unsafeCoerce \a -> runFn0 a.inIndex /= 0
