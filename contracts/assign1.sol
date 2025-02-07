// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MagToken is ERC20 {
    address public owner;

    event TokenMinted(address indexed _addr,uint256 _amt);

    constructor(uint256 initialSupply) ERC20("MagToken","MGT"){
        owner = msg.sender;
        _mint(msg.sender,initialSupply);
    }

    modifier onlyOwner(){
        require(msg.sender == owner,"Caller is not owner");
        _;
    }

    function mint(address _to,uint256 _amount) external onlyOwner returns(uint256){
        _mint(_to,_amount);
        emit TokenMinted(_to,_amount);
        return _amount;
    }

}