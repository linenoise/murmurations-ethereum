# Murmurations 
## Ethereum VM Smart Contracts

Source for https://murmurations.gallery/ NFT smart contracts.

This is [m0bius.eth](https://twitter.com/cyclemobius) and [linenoise.eth](https://linenoise.io/)'s NFT gallery.

## Test

`npx hardhat run scripts/run-alpha.js`

## Deploy

To Rinkeby testnet: 
1. `npx hardhat run scripts/deploy-alpha.js --network rinkeby`
2. Update the contract address in murmurations-web/src/App.js.
3. Copy the ABI file from murmurations-ethereum/artifacts/contracts/MurmurationsAlpha.sol/MurmurationsAlpha.json to murmurations-web/src/utils/MurmurationsAlpha.json.

## Verification

`npx hardhat verify NEW_CONTRACT_ADDRESS --network rinkeby`

## Public Keys

* Rinkeby / Developent: `0x37E017f84E468a01d7Bb84ef49A8E4668e6B2424`
* Mainnet / Production: `0x695dC24eE73164f71A8a82fe63a2a097A910096F`

## Changelog

Version 0.1

```bash
npm init -y
npm install --save-dev hardhat
npx hardhat
npm install --save-dev @nomiclabs/hardhat-waffle ethereum-waffle chai @nomiclabs/hardhat-ethers ethers
npm install @openzeppelin/contracts
npx hardhat run scripts/sample-script.js
```

## Hardhat

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
npx hardhat help
```
