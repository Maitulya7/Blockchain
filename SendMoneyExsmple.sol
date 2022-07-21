pragma solidity ^0.5.13;

contract sendmoneyexample {

    uint public balanceReceive;


    function receivemoney() public payable {
         balanceReceive += msg.value;
    }    

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdrawmonet() public{
        address payable to = msg.sender;

        to.transfer(this.getBalance());
    }

    function widhdrawmonryTo(address payable _to) public{
        _to.transfer(this.getBalance());
    } 
}