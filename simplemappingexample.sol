pragma solidity ^0.6.0;

contract simplemappingexample{

    mapping( uint => bool) public mymapping;
    mapping(address => bool) public myadressmapping;



    function setValue(uint _index) public{
        mymapping[_index] = true ;
    }

    function setmyaddrssstotrue() public{
        myadressmapping[msg.sender] = true;
    }
    
}