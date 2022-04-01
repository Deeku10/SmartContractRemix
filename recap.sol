pragma solidity ^0.5.0;
contract MyContract{
     address owner;
     bool pause;
     constructor () public{
         owner = msg.sender;
     }
    function getMoney() public payable{

    }
    function getContractBalance() public view returns(uint) {
     return address(this).balance;
    }
    function getOwnerBalance() public view returns(uint){
    require(!pause,"contract paused");
     return owner.balance;
    }
    function pauseContract() public{
        require(owner==msg.sender,"you are not the owner");
        pause=!pause;
    }
    
    function destroy(address payable _to) public{
    require(!pause,"contract paused");
    require(owner==msg.sender,"you are not the owner");
     selfdestruct(_to);
    }
}