shdir=$(cd "$(dirname "$0")" && pwd)
bindir=$shdir/../../bin

$bindir/osnadmin channel join \
--channelID       ict-channel-a \
--config-block    ${shdir}/ict-channel-a.block \
--orderer-address localhost:7053 \
--ca-file         ${shdir}/../cryptogen/crypto-config/ordererOrganizations/ictcog.or.kr/orderers/orderer1.ictcog.or.kr/tls/ca.crt \
--client-cert     ${shdir}/../cryptogen/crypto-config/ordererOrganizations/ictcog.or.kr/orderers/orderer1.ictcog.or.kr/tls/server.crt \
--client-key      ${shdir}/../cryptogen/crypto-config/ordererOrganizations/ictcog.or.kr/orderers/orderer1.ictcog.or.kr/tls/server.key

$bindir/osnadmin channel join \
--channelID       ict-channel-a \
--config-block    ${shdir}/ict-channel-a.block \
--orderer-address localhost:17053 \
--ca-file         ${shdir}/../cryptogen/crypto-config/ordererOrganizations/ictcog.or.kr/orderers/orderer2.ictcog.or.kr/tls/ca.crt \
--client-cert     ${shdir}/../cryptogen/crypto-config/ordererOrganizations/ictcog.or.kr/orderers/orderer2.ictcog.or.kr/tls/server.crt \
--client-key      ${shdir}/../cryptogen/crypto-config/ordererOrganizations/ictcog.or.kr/orderers/orderer2.ictcog.or.kr/tls/server.key

$bindir/osnadmin channel join \
--channelID       ict-channel-a \
--config-block    ${shdir}/ict-channel-a.block \
--orderer-address localhost:27053 \
--ca-file         ${shdir}/../cryptogen/crypto-config/ordererOrganizations/ictcog.or.kr/orderers/orderer3.ictcog.or.kr/tls/ca.crt \
--client-cert     ${shdir}/../cryptogen/crypto-config/ordererOrganizations/ictcog.or.kr/orderers/orderer3.ictcog.or.kr/tls/server.crt \
--client-key      ${shdir}/../cryptogen/crypto-config/ordererOrganizations/ictcog.or.kr/orderers/orderer3.ictcog.or.kr/tls/server.key
