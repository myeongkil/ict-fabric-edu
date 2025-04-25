- https://hyperledger-fabric.readthedocs.io/en/latest/install.html

```sh
mkdir -p $HOME/go/src/github.com/myeongkil
cd $HOME/go/src/github.com/myeongkil
git clone github.com/myeongkil/ict-fabric-edu
cd ict-fabric-edu
curl -sSLO https://raw.githubusercontent.com/hyperledger/fabric/main/scripts/install-fabric.sh && chmod +x install-fabric.sh
./install-fabric.sh binary
```

```sh
./ict/cryptogen/cryptogen.sh
```

```sh
docker compose -f ./ict/network/docker-compose.yaml up -d
```

```sh
./ict/channel/configtxgen.sh
./ict/channel/create-channel.sh
./ict/channel/join-channel.sh
```

```sh
./ict/chaincode/cc-packaging.sh
./ict/chaincode/cc-install.sh
./ict/chaincode/cc-approve.sh
./ict/chaincode/cc-commit.sh
```
