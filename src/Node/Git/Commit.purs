module Node.Git.Commit where

import Prelude (class Show)

import Data.Date (LocaleOffset, Date)
import Data.Time (Seconds, Milliseconds)
import Data.Function (runFn0)
import Unsafe.Coerce (unsafeCoerce)

foreign import data Commit :: *

instance showCommit :: Show Commit where
  show = unsafeCoerce \a -> runFn0 a.toString

-- | Returns the commit time as a Date object.
date :: Commit -> Date
date = unsafeCoerce \a -> runFn0 a.date

-- | Returns the message of a commit
message :: Commit -> String
message = unsafeCoerce \a -> runFn0 a.message

-- | Returns the raw message of a commit
messageRaw :: Commit -> String
messageRaw = unsafeCoerce \a -> runFn0 a.messageRaw

-- | Returns the SHA of a commit.
sha :: Commit -> String
sha = unsafeCoerce \a -> runFn0 a.sha

-- | Returns the commit time
time :: Commit -> Seconds
time = unsafeCoerce \a -> runFn0 a.time

-- | Returns the commit time as a unix timestamp.
timeMs :: Commit -> Milliseconds
timeMs = unsafeCoerce \a -> runFn0 a.timeMs

-- | Returns positive or negative timezone offset, in minutes from UTC
timeOffset :: Commit -> LocaleOffset
timeOffset = unsafeCoerce \a -> runFn0 a.timeOffset
