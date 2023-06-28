require("dotenv").config();

module.exports = {
  solidity: "0.8.10",
  networks: {
    mumbai: {
      url: process.env.TESTNET_RPC,
      accounts: [process.env.PRIVATE_KEY]
    },
  },
  polygonscan: {
    apiKey: process.env.POLYGONSCAN_API_KEY
  }
};