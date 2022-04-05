pragma solidity ^0.5.0;
contract MyContract{
    mapping(address=>uint) public balanceAddress;
    function recieveMoney() public payable{
        balanceAddress[msg.sender] +=msg.value;
    }
    function withdrawRequired(address payable _to,uint _amount)public{
        require(balanceAddress[_to]>=_amount,"You dont't have sufficient balance");
        balanceAddress[_to]-=_amount;
        _to.transfer(_amount);
    }
    function contractBalance() public view returns(uint){
        return address(this).balance;
    }
}