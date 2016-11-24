{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE StrictData #-}


module Crypto.Transaction
    ( Transaction (Transaction)
    ) where

import Data.Hashable (Hashable)
import GHC.Generics (Generic)
import Crypto.PubKey.ECC.ECDSA (PublicKey)
import Data.ByteString (ByteString)

data Input = Input ByteString deriving (Show, Eq, Generic)
data Output = Output
  { _value :: Double
  , _pk :: ByteString
  } deriving (Show, Eq, Generic)

-- | Transaction represents act of transfering units of currency from
-- set of inputs to set of outputs.
data Transaction = Transaction
  { _txInputs  :: [Input]
  , _txOutputs :: [Output]
  } deriving (Show, Eq, Generic)

instance Hashable Output
instance Hashable Input
instance Hashable Transaction
