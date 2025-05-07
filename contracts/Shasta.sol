// SPDX-License-Identifier: MIT
pragma solidity ^0.5.10;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";

contract Shasta is ERC721Full {
    constructor() ERC721Full("Shasta", "MNFT") public {}

    function mintNFT(address recipient, uint256 tokenId, string memory tokenURI) public {
        _mint(recipient, tokenId);      // cấp quyền sở hữu token
        _setTokenURI(tokenId, tokenURI); // gán metadata cho token
    }
}
