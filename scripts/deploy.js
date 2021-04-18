// scripts/deploy.js
async function main() {
    // We get the contract to deploy
    const MoonToken = await ethers.getContractFactory("Moonshot");
    const moon = await MoonToken.deploy();
    await moon.deployed();
    console.log("moon deployed to:", moon.address);
  }
  
  main()
    .then(() => process.exit(0))
    .catch(error => {
      console.error(error);
      process.exit(1);
    });