pragma solidity ^0.5.13;

contract mappingstructexample{

    struct payment {
        uint amount;
        uint timestamps;

    }

    struct balance{
        uint totalbalance;
        uint numpayments;
        mapping(uint => payment)payments;
    }

    mapping(address => balance) public balancereceived;

    function getblance() public view returns(uint){
        return address(this).balance;
    }

    function sendmoney() public payable {
        balancereceived[msg.sender].totalbalance += msg.value;

        payment memory payment = payment(msg.value,now);

        balancereceived[msg.sender].payments[balancereceived[msg.sender].numpayments] = payment;
        balancereceived[msg.sender].numpayments++;
    }

    function withdrawmoney(address payable _to,uint _amount)public{

        require(balancereceived[msg.sender].totalbalance >= _amount , "not enough funds");
        balancereceived[msg.sender].totalbalance -=_amount;
        _to.transfer(_amount);
        
    }
    function withdrawallmoney(address payable _to) public{
        uint  balancetosend =     balancereceived[msg.sender].totalbalance;
        balancereceived[msg.sender].totalbalance =0;
        _to.transfer(balancetosend);
        
    }
}