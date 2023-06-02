
# Trustblock Whitelist Contract Test

Whitelisting contract for the Event Management System Challenge

## Installation

You need to install foundry before doing anything. 

Please use this [guide](https://book.getfoundry.sh/getting-started/installation)

## Running Tests

To build & run tests, run the following command

```bash
  forge test -vvvv --gas-report
```

## To Deploy

1. Create .env with contents of .env-example and replace it with your values.

Here are the some node providers you may use to get Mumbai node URL:

- Alchemy
- Infura
- Moralis
- QuickNode

Please get PolygonScan API key from [PolygonScan](https://polygonscan.com/)

Deployer key is the private key of your wallet. **Please do not use our actual wallet. Create a new one for this challenge**

2. Top up your wallet

Use any mumbai Faucets to get test MATIC to deploy your smart contract. For example: https://mumbaifaucet.com/

3. Run the script to deploy our smart contract and verify it

```bash
  forge script UserWhitelistDeploy --rpc-url mumbai --broadcast --verify
```  

4. Check PolygonMumbaiScan to confirm deployment: https://mumbai.polygonscan.com/

5. Now you can interact with the smart contract to whitelist users & check if user is whitelisted.