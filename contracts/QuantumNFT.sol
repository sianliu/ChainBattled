// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/Base64.sol";

contract QuantumNFT is ERC721URIStorage {
    using Strings for uint256;
    using Counters for Counters.Counter; 
    Counters.Counter private _circuitIds;

    constructor() ERC721 ("QuantumNFT", "QNFT") {} 
    
    // stores NFT fully on-chain 
    function generateCircuit() public view returns(string memory) {

    bytes memory svg = abi.encodePacked(
        'svg code goes here'
    );
    return string(
        // creates the "URL" to view image in a browser
        abi.encodePacked(
            "data:image/svg+xml;base64,",
            Base64.encode(svg)
        )    
    );
    } // end generateCharacter

    // assigns ownership
    function mint() public {
        _circuitIds.increment();
        uint256 newCircuitId = _circuitIds.current();
        _safeMint(msg.sender, newCircuitId);
        // calls generateCircuit
    } //end mint function
}


