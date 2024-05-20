read -p "请输入钱包名称（默认为wallet）: " wallet_name
junctiond tx slashing unjail --from $wallet_name --fees=10000amf --chain-id=junction --node $junctiond_RPC_PORT
