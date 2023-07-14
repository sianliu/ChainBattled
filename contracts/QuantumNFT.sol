// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "hardhat/console.sol";

contract QuantumNFT is ERC721 {
     
    bytes16 private circuitId;

    constructor() ERC721 ("QuantumNFT", "QNFT") {}

    function mint(string memory circuit) public {
        // 1. hash circuit 
        circuitId = bytes16(keccak256(bytes(circuit)));
        
        // 2. compute tokenId
        // 3. calls generateCircuit(circuit)
    }

    function getCircuitId() public view returns (bytes16) {
        return circuitId; 
    }
}

