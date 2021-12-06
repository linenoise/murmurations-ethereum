# Murmurations 

Source for https://murmurations.gallery/ and publicly auditable NFT smart contracts.

[m0bius.eth](https://twitter.com/cyclemobius) and [linenoise.eth](https://linenoise.io/)'s NFT gallery.

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

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
npx hardhat help
```
