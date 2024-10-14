
./bin/configtxgen -profile SampleMultiNodeEtcdRaft -channelID system-channel -outputBlock ./channel-artifacts/genesis.block

./bin/configtxgen -profile FiveOrgsChannel -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID mychannel

./bin/configtxgen -profile FiveOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors.tx -channelID mychannel -asOrg Org1MSP

./bin/configtxgen -profile FiveOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org2MSPanchors.tx -channelID mychannel -asOrg Org2MSP

./bin/configtxgen -profile FiveOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org3MSPanchors.tx -channelID mychannel -asOrg Org3MSP

./bin/configtxgen -profile FiveOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org4MSPanchors.tx -channelID mychannel -asOrg Org4MSP

./bin/configtxgen -profile FiveOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org5MSPanchors.tx -channelID mychannel -asOrg Org5MSP
