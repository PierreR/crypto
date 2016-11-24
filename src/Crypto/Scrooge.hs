module Crypto.Scrooge
    ( handleTxs
    ) where

import Crypto.Transaction (Transaction)
import qualified Crypto.Transaction as Tx

type Ledger = [Transaction]

handleTxs :: [Transaction] -> Ledger
handleTxs = []
