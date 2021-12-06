const main = async () => {
    // HRE is the Hardhat Runtime Environment loaded by hardhat.config.js
    // https://hardhat.org/advanced/hardhat-runtime-environment.html
    const nftContractFactory = await hre.ethers.getContractFactory('MurmurationsAlpha');
    const nftContract = await nftContractFactory.deploy();
    await nftContract.deployed();
    console.log("Contract deployed to:", nftContract.address);

    // Call the minting function.
    let txn = await nftContract.mintMurmuration()
    await txn.wait()
    console.log("Minted NFT #1")

    // Mint another NFT for fun.
    txn = await nftContract.mintMurmuration()
    await txn.wait()
    console.log("Minted NFT #2")
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