pragma   solidity ^0.5.11;

import "./owned.sol";

contract InferitaceModifierExample is ownded {
    mapping (address => uint) public tokenBalance;

    address owner;

    uint tokenPrice = 1 ether;

    constructor() public{
      
        tokenBalance[owner] = 100;
    }

    function createNewToken() public {
        tokenBalance[owner]++;
    }

    function burnToken() public { 
        tokenBalance[owner]--;

    }

    function purchaseToken() public payable {
        require ((tokenBalance[owner] * tokenPrice) /msg.value > 0 ,"not enough token");
        tokenBalance[owner] -= msg.value / tokenPrice;
        tokenBalance[msg.sender] += msg.value / tokenPrice;

    }

    function sendToken(address _to , uint _amount) public {
        require (tokenBalance[msg.sender] >= _amount , "not enough token");
        assert(tokenBalance[_to] + _amount >= tokenBalance[_to]);
        assert(tokenBalance[msg.sender] - _amount <= tokenBalance[msg.sender]);

    }
}
