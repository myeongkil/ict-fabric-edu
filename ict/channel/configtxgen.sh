shdir=$(cd "$(dirname "$0")" && pwd)
bindir=$shdir/../../bin

$bindir/configtxgen -configPath $shdir -profile ict-channel-a -outputBlock $shdir/ict-channel-a.block -channelID ict-channel-a
$bindir/configtxgen -configPath $shdir -profile ict-channel-b -outputBlock $shdir/ict-channel-b.block -channelID ict-channel-b
