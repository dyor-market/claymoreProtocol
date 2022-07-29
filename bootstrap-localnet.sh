#!/bin/bash
set -e
anchor idl init CfGXJX3jD3mnXjwVP8gtrMMC3U1YUhBZVum3NFC1EMvb --filepath target/idl/spl_token_bonding.json --provider.cluster localnet
anchor idl init 6SLodLeX6pkaF4u55arxmAHjzuuQCoFuyTR9t73Jj4uw --filepath target/idl/spl_token_collective.json --provider.cluster localnet
env WRAPPED_SOL_MINT_PATH=$HOME/.config/solana/twsol.json env OPEN_MINT_PATH=$HOME/.config/solana/open-mint-id.json env ANCHOR_WALLET=$HOME/.config/solana/id.json ANCHOR_PROVIDER_URL=http://127.0.0.1:8899 yarn run bootstrap
