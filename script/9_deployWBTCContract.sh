#!/usr/bin/env bash

echo "Instructing the shell to exit immediately if any command returns a non-zero exit status..."
set -e
echo "Done."

echo "Navigating to the root directory of the project..."
cd ../
echo "Done."

echo "Setting environment variables..."
source .env
echo "Done."

echo "Deploying OptimismMintableERC20 WBTC token smart contract..."
cast send --rpc-url $L2_RPC_URL "0x4200000000000000000000000000000000000012" "createOptimismMintableERC20WithDecimals(address,string,string,uint8)" $REMOTE_TOKEN_ADDR_WBTC "Wrapped BTC" "WBTC" 8 -i
