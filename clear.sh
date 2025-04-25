shdir=$(dirname $0)

docker compose -f ${shdir}/ict/network/docker-compose.yaml down
rm -rf ${shdir}/ict/cryptogen/crypto-config
rm -rf ${shdir}/ict/channel/ict-channel-a.block
rm -rf ${shdir}/ict/channel/ict-channel-b.block
rm -rf ${shdir}/ict/chaincode/ict-auction-cc.tar.gz