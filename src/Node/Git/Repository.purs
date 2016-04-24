module Node.Git.Repository where

import Prelude

import Data.Function (runFn0)
import Control.Monad.Aff (Aff)
import Unsafe.Coerce (unsafeCoerce)

import Node.Git (Git)
import Node.Git.Commit (Commit)
import Node.Git.Reference (Reference)
import Node.Git.Status (StatusFile)

foreign import data Repository :: *

foreign import open
  :: forall eff. String -> Aff (git :: Git | eff) Repository

-- | Look up a branch's most recent commit.
foreign import getBranchCommit
  :: forall eff. String -> Repository -> Aff (git :: Git | eff) Commit

-- | Gets the branch that HEAD currently points to. Alias for `head`.
getCurrentBranch :: forall eff. Repository -> Aff (git :: Git | eff) Reference
getCurrentBranch = head

-- | Retrieves the commit that HEAD is currently pointing to.
foreign import getHeadCommit
  :: forall eff. Repository -> Aff (git :: Git | eff) Commit

-- | Retrieves the master branch commit.
foreign import getMasterCommit
  :: forall eff. Repository -> Aff (git :: Git | eff) Commit

-- | Gets the status of a repo to it's working directory.
foreign import getStatus
  :: forall eff. Repository -> Aff (git :: Git | eff) (Array StatusFile)

-- | Gets the branch that HEAD currently points to.
foreign import head
  :: forall eff. Repository -> Aff (git :: Git | eff) Reference

-- | Returns true if the repository is in the APPLY_MAILBOX or
-- | APPLY_MAILBOX_OR_REBASE state.
isApplyingMailbox :: Repository -> Boolean
isApplyingMailbox = unsafeCoerce \a -> runFn0 a.isApplyingMailbox

-- | Returns true if the repository is bare.
isBare :: Repository -> Boolean
isBare = unsafeCoerce \a -> runFn0 a.isBare /= 0

-- | Returns true if the repository is in the BISECT state.
isBisecting :: Repository -> Boolean
isBisecting = unsafeCoerce \a -> runFn0 a.isBisecting

-- | Returns true if the repository is in the CHERRYPICK state.
isCherrypicking :: Repository -> Boolean
isCherrypicking = unsafeCoerce \a -> runFn0 a.isCherrypicking

-- | Returns true if the repository is in the default NONE state.
isDefaultState :: Repository -> Boolean
isDefaultState = unsafeCoerce \a -> runFn0 a.isDefaultState

-- | Returns true if the repository is empty.
isEmpty :: Repository -> Boolean
isEmpty = unsafeCoerce \a -> runFn0 a.isEmpty /= 0

-- | Returns true if the repository is in the MERGE state.
isMerging :: Repository -> Boolean
isMerging = unsafeCoerce \a -> runFn0 a.isMerging

-- | Returns true if the repository is in the REBASE, REBASE_INTERACTIVE, or
-- | REBASE_MERGE state.
isRebasing :: Repository -> Boolean
isRebasing = unsafeCoerce \a -> runFn0 a.isRebasing

-- | Returns true if the repository is in the REVERT state.
isReverting :: Repository -> Boolean
isReverting = unsafeCoerce \a -> runFn0 a.isReverting

-- | Returns true if shallow.
isShallow :: Repository -> Boolean
isShallow = unsafeCoerce \a -> runFn0 a.isShallow /= 0

-- | Returns the path to the repository.
path :: Repository -> String
path = unsafeCoerce \a -> runFn0 a.path
