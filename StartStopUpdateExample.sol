pragma solidity ^0.5.13;

contract startstopupdateexample{

    address owner;
    bool public paused;
    constructor() public {
        owner = msg.sender;
    }
    function sendmoney() public payable {

    }

    function setpaused(bool _paused) public{
        require(msg.sender == owner,"you are not the owner");
        paused = _paused;
    }

    function withdrawallmoney(address payable _to) public {
        require(msg.sender == owner, " You are not the owner");
        require(!paused,"contract is paused");
        _to.transfer(address(this).balance);
    }
    function destroysmartcontract(address payable _to) public{
        require(msg.sender == owner , "you are not the owner");
        selfdestruct(_to);
    }
}