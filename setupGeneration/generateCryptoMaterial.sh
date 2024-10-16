# Directory where the crypto material is generated
CRYPTO_PATH="../crypto-config"

# Check if the crypto-config directory exists
if [ -d "$CRYPTO_PATH" ]; then
    echo "Crypto material already exists in $CRYPTO_PATH. Skipping generation."
else
    echo "Generating crypto material..."
    ../../bin/cryptogen generate --config=../crypto-config.yaml --output="$CRYPTO_PATH"
    echo "Crypto material generated in $CRYPTO_PATH."
fi
