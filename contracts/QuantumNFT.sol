// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract QuantumNFT is ERC721URIStorage {
     
    using Counters for Counters.Counter;
    bytes32 private circuitId;
    Counters.Counter private _tokenIds;
    uint256 private tokenId; 

    constructor() ERC721 ("QuantumNFT", "QNFT") {}

    function mint(string memory circuit, uint8 num_qubits, uint256 random_seed) public {
        // 1. hash circuit 
        circuitId = bytes16(keccak256(bytes(circuit)));
        // 0x9c22ff5f21f0b81b113e63f7db6da94f00000000000000000000000000000000

        // 2. compute tokenId
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        tokenId = uint256(circuitId) + newItemId;
        // 0x9c22ff5f21f0b81b113e63f7db6da94f00000000000000000000000000000001

        // 3. calls generateCircuit(circuit, qubits, random_seed) 
        // presume already have captured result - quantum state which is a uint256[] array of 256 bytes  

        // 4. calls setTokenURI from ERC721URIStorage
        _setTokenURI(tokenId, getTokenURI(newItemId));
    }

    function getTokenURI(uint256 tokenId) public view returns (string memory) {
        
    }

    function getCircuitId() public view returns (bytes32) {
        return circuitId; 
    }

    function getTokenId() public view returns (bytes32) {
        return bytes32(tokenId); 
    }
}

