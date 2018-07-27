module Network.Bitcoin.Transaction where

import Foundation

data Transaction = Legacy LegacyTransaction
                 | Segwit SegwitTransaction
    deriving (Eq, Show)

data LegacyTransaction = LegacyTransaction
    { version :: Int
    , inputs :: [Txin]
    , outputs :: [Txout]
    , lockTime :: _
    }

data SegwitTransaction = SegwitTransaction
    {
    }