# Check and generate genesis block
if [ ! -f ../channel-artifacts/genesis.block ]; then
    ../../bin/configtxgen -profile SampleMultiNodeEtcdRaft -channelID system-channel -outputBlock ../channel-artifacts/genesis.block
    if [ $? -eq 0 ]; then
        echo "genesis.block created successfully."
    else
        echo "Failed to create genesis.block."
    fi
else
    echo "genesis.block already exists, skipping generation."
fi

# Check and generate channel.tx
if [ ! -f ../channel-artifacts/channel.tx ]; then
    ../../bin/configtxgen -profile FiveOrgsChannel -outputCreateChannelTx ../channel-artifacts/channel.tx -channelID mychannel
    if [ $? -eq 0 ]; then
        echo "channel.tx created successfully."
    else
        echo "Failed to create channel.tx."
    fi
else
    echo "channel.tx already exists, skipping generation."
fi

# Check and generate Org1MSP anchor peer update
if [ ! -f ../channel-artifacts/Org1MSPanchors.tx ]; then
    ../../bin/configtxgen -profile FiveOrgsChannel -outputAnchorPeersUpdate ../channel-artifacts/Org1MSPanchors.tx -channelID mychannel -asOrg Org1MSP
    if [ $? -eq 0 ]; then
        echo "Org1MSPanchors.tx created successfully."
    else
        echo "Failed to create Org1MSPanchors.tx."
    fi
else
    echo "Org1MSPanchors.tx already exists, skipping generation."
fi

# Check and generate Org2MSP anchor peer update
if [ ! -f ../channel-artifacts/Org2MSPanchors.tx ]; then
    ../../bin/configtxgen -profile FiveOrgsChannel -outputAnchorPeersUpdate ../channel-artifacts/Org2MSPanchors.tx -channelID mychannel -asOrg Org2MSP
    if [ $? -eq 0 ]; then
        echo "Org2MSPanchors.tx created successfully."
    else
        echo "Failed to create Org2MSPanchors.tx."
    fi
else
    echo "Org2MSPanchors.tx already exists, skipping generation."
fi

# Check and generate Org3MSP anchor peer update
if [ ! -f ../channel-artifacts/Org3MSPanchors.tx ]; then
    ../../bin/configtxgen -profile FiveOrgsChannel -outputAnchorPeersUpdate ../channel-artifacts/Org3MSPanchors.tx -channelID mychannel -asOrg Org3MSP
    if [ $? -eq 0 ]; then
        echo "Org3MSPanchors.tx created successfully."
    else
        echo "Failed to create Org3MSPanchors.tx."
    fi
else
    echo "Org3MSPanchors.tx already exists, skipping generation."
fi

# Check and generate Org4MSP anchor peer update
if [ ! -f ../channel-artifacts/Org4MSPanchors.tx ]; then
    ../../bin/configtxgen -profile FiveOrgsChannel -outputAnchorPeersUpdate ../channel-artifacts/Org4MSPanchors.tx -channelID mychannel -asOrg Org4MSP
    if [ $? -eq 0 ]; then
        echo "Org4MSPanchors.tx created successfully."
    else
        echo "Failed to create Org4MSPanchors.tx."
    fi
else
    echo "Org4MSPanchors.tx already exists, skipping generation."
fi

# Check and generate Org5MSP anchor peer update
if [ ! -f ../channel-artifacts/Org5MSPanchors.tx ]; then
    ../../bin/configtxgen -profile FiveOrgsChannel -outputAnchorPeersUpdate ../channel-artifacts/Org5MSPanchors.tx -channelID mychannel -asOrg Org5MSP
    if [ $? -eq 0 ]; then
        echo "Org5MSPanchors.tx created successfully."
    else
        echo "Failed to create Org5MSPanchors.tx."
    fi
else
    echo "Org5MSPanchors.tx already exists, skipping generation."
fi
