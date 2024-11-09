require('@nomiclabs/hardhat-ethers');
require('dotenv').config();  // if you're using environment variables for sensitive data

module.exports = {
  solidity: "0.8.0",
  networks: {
    sepolia: {
      url: `https://eth-sepolia.g.alchemy.com/v2/${process.env.ALCHEMY_API_KEY}`,  // Alchemy or Infura API URL
      accounts: [process.env.PRIVATE_KEY]  // Private key for deployment account (ensure this is correctly set in .env)
    }
  }
};
