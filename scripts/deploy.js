const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();
  console.log(`Deploying contracts with account: ${deployer.address}`);

  const Nifty = await hre.ethers.getContractFactory('Nifty');
  const nifty = await Nifty.deploy();
  console.log(`Contract address: ${nifty.address}`)
}

main()
  .then(()=> process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1)
  });