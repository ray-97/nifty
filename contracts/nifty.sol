// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol"; // responsible for token ids

contract Nifty is ERC721URIStorage {
  
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  string public projTitle = "nifty";
  string public projSymbol = "NIF";
  // address public owner; // provided by erc721
  // uint totalSupply = 1000 * (10**18); // 1000 * smallest denomination for ether / matic, which is wei = 1000 coins. 
                                // calculations are done in wei.
  // mapping(address => uint) balances;

  constructor() ERC721(projTitle, projSymbol) {
    // _mint(msg.sender, supply);
    // owner = msg.sender;
    // balances[msg.sender] = totalSupply;
  }

  function mint(string memory tokenURI) public returns(uint256) {
    _tokenIds.increment();
    uint256 newItemid = _tokenIds.current();
    _safeMint(msg.sender, newItemid); // mint by whoever is interacting with this fx
    _setTokenURI(newItemid, tokenURI);
    return newItemid;
  }

  /*
  More functionalities:
  1. limiting number of nfts
  2. adding allow list
  3. etc
  */

}