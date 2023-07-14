// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "hardhat/console.sol";

abstract contract QuantumNFT is ERC721 {
     
    constructor() ERC721 ("QuantumNFT", "QNFT") {}

    function mint(string memory circuit) public returns (uint256[] memory) {
        // 1. hash circuit 
        // 2. compute tokenId
        // 3. calls generateCircuit(circuit)
    }
}

