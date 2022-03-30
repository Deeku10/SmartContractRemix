pragma solidity ^0.5.0;
contract myContract{
    uint public getBalance;
    function recieveMoney() public payable{
        getBalance+= msg.value;
    }
    function getbalance() public view returns(uint){
        return address(this).balance;
    }
    function withdraw() public{
        address payable to = msg.sender;
        to.transfer(this.getbalance());
        getBalance=this.getbalance();
    }
    function withdrawTo(address payable _to) public{
     _to.transfer(this.getbalance());
      getBalance=this.getbalance();
    }
}