read -p "请输入钱包地址: " wallet_address
junctiond query bank balances "$wallet_address" --node $junctiond_RPC_PORT
