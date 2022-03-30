pragma solidity ^0.5.0;
contract MyContract{
    address public adress;

    function setAddress(address _address) public{
        adress=_address;
    }
    function getBalance() public view returns(uint){
        return adress.balance;
    }
}