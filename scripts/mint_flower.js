const hre = require("hardhat");

async function main() {

  const Nifty = await hre.ethers.getContractFactory('Nifty');
  const nifty = await Nifty.attach("0xB5626c5EBc3d3F01f0650CF1c65d3053cba76cC1");
  const mintToken = await nifty.mint("ipfs://https://dweb.link/ipfs/bafybeifpac2tuqjqayg7rviypcb7r2k6nd4zs5ay43rfjkivrdxkkb5xmi");
  console.log("Trx hash:", mintToken.hash);
}

main()
  .then(()=> process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1)
  });