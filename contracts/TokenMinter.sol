//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract TokenMint is ERC20 {
  
  string _tokenName;
  string _tokenSymbol;

  constructor(string memory _name,string memory _symbol,uint _supply) ERC20(_name,_symbol) {
        _tokenName=_name;
        _tokenSymbol=_symbol;
        _mint(msg.sender, _supply * 10 ** 18 );
  }

  

}