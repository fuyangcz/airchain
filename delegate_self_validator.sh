read -p "请输入质押代币数量,比如你有1个amf,请输入1000000，以此类推: " math
read -p "请输入钱包名称: " wallet_name
junctiond tx staking delegate $(junctiond keys show $wallet_name --bech val -a)  ${math}amf --from $wallet_name --chain-id=junction --fees 10000amf --node $junctiond_RPC_PORT  -y
