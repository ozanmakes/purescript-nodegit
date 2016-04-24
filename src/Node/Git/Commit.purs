module Node.Git.Commit where

import Data.Function (runFn0)
import Data.Date (Date)
import Unsafe.Coerce (unsafeCoerce)

foreign import data Commit :: *

-- | Returns the commit time as a Date object.
date :: Commit -> Date
date = unsafeCoerce \a -> runFn0 a.date

-- | Returns the message of a commit
message :: Commit -> String
message = unsafeCoerce \a -> runFn0 a.message

-- | Returns the raw message of a commit
messageRaw :: Commit -> String
messageRaw = unsafeCoerce \a -> runFn0 a.messageRaw
