pragma solidity ^0.5.13;

contract WorkingWithVariables{
    uint256 public myUint;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    bool public myBool;

    function setMyBool (bool _myBool) public{
        myBool = _myBool; 
    }

    uint8 public myuint8;

    function incrementuint8() public {
        myuint8++;
    }

    function decrementuint8() public{
        myuint8--;
    }

    address public myAddress;

    function setAddress(address _address) public{
        myAddress = _address;
    }

    function getBalanceOfAdress() public view returns(uint){
        return myAddress.balance;
    }

    string public myString;

    function setMystring(string memory _myString) public{
        myString = _myString;
    }

}

