shdir=$(cd "$(dirname "$0")" && pwd)
bindir=$shdir/../../bin

$bindir/cryptogen generate --config=$shdir/crypto-config.yaml --output=$shdir/crypto-config
