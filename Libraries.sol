pragma solidity ^0.8.15;

import  "./SafeMath.sol";

contract LibrariesExample{

    using SafeMath for uint ;

    mapping(address => uint) public tokenBalance ;

    constructor() public {
        tokenBalance[msg.sender] =1;
    }

    function sendToken(address _to , uint _amount) public returns(bool){
        tokenBalance[msg.sender] = tokenBalance[msg.sender].sub(_amount);
        tokenBalance[_to] = tokenBalance[_to].add(_amount);
        return true ;
    }        
}
