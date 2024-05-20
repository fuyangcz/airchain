    read -p "请输入你的验证者名称: " validator_name
    sudo tee ~/validator.json > /dev/null <<EOF
{
  "pubkey": $(junctiond tendermint show-validator),
  "amount": "1000000amf",
  "moniker": "$validator_name",
  "details": "dalubi",
  "commission-rate": "0.10",
  "commission-max-rate": "0.20",
  "commission-max-change-rate": "0.01",
  "min-self-delegation": "1"
}

EOF
    junctiond tx staking create-validator $HOME/validator.json --node $junctiond_RPC_PORT \
    --from=wallet \
    --chain-id=junction \
    --fees 10000amf
