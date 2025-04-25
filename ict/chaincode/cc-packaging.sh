shdir=$(cd "$(dirname "$0")" && pwd)
bindir=$shdir/../../bin

export FABRIC_CFG_PATH=$shdir/../network

# org daegu.ictcog.or.kr setup
export CORE_PEER_TLS_ROOTCERT_FILE=$shdir/../cryptogen/crypto-config/peerOrganizations/daegu.ictcog.or.kr/tlsca/tlsca.daegu.ictcog.or.kr-cert.pem
export FNM_COREPACK_ENABLED=false
export CORE_PEER_LOCALMSPID=DaeguMSP
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_MSPCONFIGPATH=$shdir/../cryptogen/crypto-config/peerOrganizations/daegu.ictcog.or.kr/users/Admin@daegu.ictcog.or.kr/msp

$bindir/peer lifecycle chaincode package $shdir/ict-auction-cc.tar.gz --path $shdir/auction --lang golang --label ict-auction-cc_1.0