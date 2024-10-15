require("dotenv").config();  // Carrega as variáveis do .env
require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks: {
    local: {
      url: "http://127.0.0.1:8545/",
      chainId: 31337,
      accounts: {
        mnemonic: "test test test test test test test test test test test junk"
      }
    },
    sepolia: {
      url: process.env.INFURA_URL,
      chainId: 11155111,
      accounts: {
        mnemonic: process.env.SECRET
      }
    }
  },
  etherscan: {
    apiKey: process.env.API_KEY
  }
};
