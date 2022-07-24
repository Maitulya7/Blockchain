pragma solidity ^0.5.11;

contract ownded {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyowner(){
        require (msg.sender == owner, "you are not the owner" );
        _;
    }
}