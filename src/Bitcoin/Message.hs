module Bitcoin.Message where

import RIO

data VarInt = V8  Word8
            | V16 Word16
            | V32 Word32
            | V64 Word64

newtype VarStr = VarStr { unVarStr :: Text }

data Message = Mversion
             | Mverack
             | Maddr
             | Minv
             | Mgetdata
             | Mnotfound
             | Mgetblocks
             | Mgetheaders
             | Mtx
             | Mblock
             | Mheaders
             | Mgetaddr
             | Mmempool
             | Mcheckorder
             | Msubmitorder
             | Mreply
             | Mping
             | Mpong
             | Mreject
             | Mfilterload
             | Mfilteradd
             | Mfilterclear
             | Mmerkleblock
             | Malert
             | Msendheaders
             | Mfeefilter
             | Msendcmpct
             | Mcmpctblock
             | Mgetblocktxn
             | Mblocktxn
