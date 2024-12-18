// scripts/deploy.js
const hre = require("hardhat");

async function main() {
  const initialSupply = 1000000; // 1,000,000 PTK
  const PromoToken = await hre.ethers.getContractFactory("PromoToken");
  const promoToken = await PromoToken.deploy(initialSupply);

  await promoToken.deployed();

  console.log("PromoToken deployed to:", promoToken.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
