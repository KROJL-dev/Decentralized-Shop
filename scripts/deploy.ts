import { ethers } from "hardhat";

async function main() {
  const shop = await ethers.deployContract("Shop");

  await shop.waitForDeployment();
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
