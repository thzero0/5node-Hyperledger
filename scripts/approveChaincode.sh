# To get the key run: docker images
key="2ed0a9de64aa0e91d287a51e1b148abdbbb7765a7d6805adb84acf6b6f8b3d02"


# for ORG1
docker exec \
    cli peer lifecycle chaincode approveformyorg \
    --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem \
    --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
    --package-id fabcar_1:$key

# for ORG2
docker exec \
    -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp \
    -e CORE_PEER_ADDRESS=peer0.org2.example.com:9051 \
    -e CORE_PEER_LOCALMSPID="Org2MSP" \
    -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt \
    cli peer lifecycle chaincode approveformyorg \
    --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem \
    --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
    --package-id fabcar_1:$key

# for ORG3
docker exec \
    -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp \
    -e CORE_PEER_ADDRESS=peer0.org3.example.com:11051 \
    -e CORE_PEER_LOCALMSPID="Org3MSP" \
    -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt \
    cli peer lifecycle chaincode approveformyorg \
    --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem \
    --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
    --package-id fabcar_1:$key

# for ORG4
docker exec \
    -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp \
    -e CORE_PEER_ADDRESS=peer0.org4.example.com:13051 \
    -e CORE_PEER_LOCALMSPID="Org4MSP" \
    -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/ca.crt \
    cli peer lifecycle chaincode approveformyorg \
    --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem \
    --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
    --package-id fabcar_1:$key

# for ORG5
docker exec \
    -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp \
    -e CORE_PEER_ADDRESS=peer0.org5.example.com:15051 \
    -e CORE_PEER_LOCALMSPID="Org5MSP" \
    -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/tls/ca.crt \
    cli peer lifecycle chaincode approveformyorg \
    --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem \
    --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
    --package-id fabcar_1:$key


