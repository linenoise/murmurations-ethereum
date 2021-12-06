const main = async () => {
  // HRE is the Hardhat Runtime Environment loaded by hardhat.config.js
  // https://hardhat.org/advanced/hardhat-runtime-environment.html
  const nftContractFactory = await hre.ethers.getContractFactory('MurmurationsAlpha');
  const nftContract = await nftContractFactory.deploy();
  await nftContract.deployed();
  console.log("Contract deployed to:", nftContract.address);

  // Count murmurations
  let txn = await nftContract.countMurmurations()
  await txn.wait()

  // Mint a new murmuration
  txn = await nftContract.mintMurmuration()
  await txn.wait()

  // Count murmurations
  txn = await nftContract.countMurmurations()
  await txn.wait()

  // Mint a second murmuration
  txn = await nftContract.mintMurmuration()
  await txn.wait()

  // Count murmurations
  txn = await nftContract.countMurmurations()
  await txn.wait()

  // Mint a second murmuration
  txn = await nftContract.mintMurmuration()
  await txn.wait()
  
  // Count murmurations
  txn = await nftContract.countMurmurations()
  await txn.wait()
};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.log(error);
    process.exit(1);
  }
};

runMain();