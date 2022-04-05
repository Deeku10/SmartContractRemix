pragma solidity ^0.5.0;
contract myContracct{
    struct Payment{
        uint amount;
        uint timeStamp;
    }
    struct Balance{
        uint totalBalance;
        uint numPayments;
        mapping (uint=>Payment) payments;
    }
    mapping (address=>Balance) balanceRecieved;
    function recieveMoney() public payable {
    balanceRecieved[msg.sender].totalBalance+=msg.value;
    balanceRecieved[msg.sender].numPayments++;
    Payment memory payment=Payment(msg.value,now);

    balanceRecieved[msg.sender].payments[balanceRecieved[msg.sender].numPayments]=payment;
    }
    function getBalanceOfAdddress(address _address) public view returns(uint){
        return  balanceRecieved[_address].totalBalance;
    }
    function withdraw(address  payable  _address,uint amount) public{
   require(balanceRecieved[_address].totalBalance>=amount,"No Sufficient Balance");
   balanceRecieved[_address].totalBalance-=amount;
   _address.transfer(amount);
    }

}
