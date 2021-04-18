const { defaultAccounts } = require("@ethereum-waffle/provider");
const { ethers } = require("hardhat");

// scripts/index.js
async function main() {
    const MoonToken = await ethers.getContractFactory("Moonshot");
    const moon = await MoonToken.attach(' 0x5fbdb2315678afecb367f032d93f642f64180aa3')
    
    // box functionality
    // await moon.mint('0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266', 100);

    const accounts = await ethers.provider.listAccounts();

    for(var i in accounts) {
        let account = accounts[i];
        console.log('account', account);
        // await moon.mint(accounts[i], 100);
        let balance = await ethers.provider.getBalance(account);
        // console.log('account', accounts[i], 'balance', balance);
    }
    
    
  }
  
  main()
    .then(() => process.exit(0))
    .catch(error => {
      console.error(error);
      process.exit(1);
    });