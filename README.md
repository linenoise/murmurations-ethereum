# Murmurations 

Source for https://murmurations.gallery/

m0bius.eth and linenoise.eth's NFT marketplace

## Runtime

Compile the smart contract: `npx hardhat run scripts/run-alpha.js`

Deploy the smart contract to Rinkeby testnet: `npx hardhat run scripts/deploy-alpha.js --network rinkeby`

Publish the contents of 'gallery' folder to metadata.gallery: `scripts/publish.sh`

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

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```
