

const hre = require("hardhat");

async function main(){
    const mgToken = await hre.ethers.getContractFactory("MagToken");

    const initialSupply = hre.ethers.parseUnits("1000000",18);
    const token = await mgToken.deploy(initialSupply);

    await token.waitForDeployment();

    console.log(`mgToken deployed at ${await token.getAddress()}`);
}


main().catch((error) => {
    console.log(error);
    process.exitCode=1;
})