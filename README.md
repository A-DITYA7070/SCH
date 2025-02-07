# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

```shell
npm install  #installs all the dependencies.
npx hardhat help
npx hardhat test 
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/deploy.js
```

```
INTERACTING MagToken through console..
ex :-
1) const mgt = await ethers.getContractAt("MagToken","Token_address"); #creates instance of the MagToken as mgt.
2) const [owner,user1,user2,user3] = await ethers.getSigners() #test accounts.
3) await mgt.balanceOf(user1.address);
4) await mgt.mint(user1.address,ethers.parseUnits("500",8));
5) await mgt.balanceOf(user1.address);
```