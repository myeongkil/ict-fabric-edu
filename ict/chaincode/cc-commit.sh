shdir=$(cd "$(dirname "$0")" && pwd)
bindir=$shdir/../../bin

export FABRIC_CFG_PATH=$shdir/../network

# org daegu.ictcog.or.kr setup
export CORE_PEER_TLS_ROOTCERT_FILE=$shdir/../cryptogen/crypto-config/peerOrganizations/daegu.ictcog.or.kr/tlsca/tlsca.daegu.ictcog.or.kr-cert.pem
export FNM_COREPACK_ENABLED=false
export CORE_PEER_LOCALMSPID=DaeguMSP
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_MSPCONFIGPATH=$shdir/../cryptogen/crypto-config/peerOrganizations/daegu.ictcog.or.kr/users/Admin@daegu.ictcog.or.kr/msp

# peer0.daegu.ictcog.or.kr
export CORE_PEER_ADDRESS=localhost:7051
$bindir/peer lifecycle chaincode commit \
--channelID ict-channel-a \
-o localhost:7050 \
--ordererTLSHostnameOverride orderer1.ictcog.or.kr \
--tls \
--cafile "../cryptogen/crypto-config/ordererOrganizations/ictcog.or.kr/tlsca/tlsca.ictcog.or.kr-cert.pem" \
--name ict-auction-cc \
--version 1.0 \
--sequence 1 \
--peerAddresses localhost:7051 \
--tlsRootCertFiles "$shdir/../cryptogen/crypto-config/peerOrganizations/daegu.ictcog.or.kr/tlsca/tlsca.daegu.ictcog.or.kr-cert.pem" \
--peerAddresses localhost:9051 \
--tlsRootCertFiles "$shdir/../cryptogen/crypto-config/peerOrganizations/pohang.ictcog.or.kr/tlsca/tlsca.pohang.ictcog.or.kr-cert.pem"

$bindir/peer lifecycle chaincode querycommitted \
--channelID ict-channel-a \
--name ict-auction-cc