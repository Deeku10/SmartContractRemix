pragma solidity ^0.5.0;
contract myContract{
    address owner;
    bool paused;
    constructor() public {
        owner = msg.sender;
    }
    function recieve()public payable{

    }
    function getBalance()public view returns(uint){
        return address(this).balance;

    }
    function pause() public{
        require(msg.sender==owner,"you cannot pause");
        paused=!paused;
    }
    function withdraw(address payable _to)public{
        require(msg.sender==owner,"you are not the owner");
        require(!paused,"the contract is paused");
        _to.transfer(this.getBalance());
    }
    function destroyContract(address payable _to) public{
        require(msg.sender==owner,"you are not the owner");
        
        selfdestruct(_to);
    }

} 