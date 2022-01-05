data Chain =
    GenesisBlock
    | Block Chain Txs
type Txs = Int

chainLength :: Chain -> Int
chainLength GenesisBlock = 0
chainLength (Block c _) = chainLength c + 1

hasBlock :: Txs -> Chain -> Bool
hasBlock x GenesisBlock = False
hasBlock x (Block c t) = x == t || hasBlock x c
