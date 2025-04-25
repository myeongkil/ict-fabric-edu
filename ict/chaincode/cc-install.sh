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
$bindir/peer lifecycle chaincode install $shdir/ict-auction-cc.tar.gz

# peer1.daegu.ictcog.or.kr
export CORE_PEER_ADDRESS=localhost:17051
$bindir/peer lifecycle chaincode install $shdir/ict-auction-cc.tar.gz

# org pohang.ictcog.or.kr setup
export CORE_PEER_TLS_ROOTCERT_FILE=$shdir/../cryptogen/crypto-config/peerOrganizations/pohang.ictcog.or.kr/tlsca/tlsca.pohang.ictcog.or.kr-cert.pem
export FNM_COREPACK_ENABLED=false
export CORE_PEER_LOCALMSPID=PohangMSP
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_MSPCONFIGPATH=$shdir/../cryptogen/crypto-config/peerOrganizations/pohang.ictcog.or.kr/users/Admin@pohang.ictcog.or.kr/msp

# peer0.pohang.ictcog.or.kr
export CORE_PEER_ADDRESS=localhost:9051
$bindir/peer lifecycle chaincode install $shdir/ict-auction-cc.tar.gz

# peer1.pohang.ictcog.or.kr
export CORE_PEER_ADDRESS=localhost:19051
$bindir/peer lifecycle chaincode install $shdir/ict-auction-cc.tar.gz
