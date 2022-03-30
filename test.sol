pragma solidity ^0.5.0;

contract MyContract{
   string public myString="Creating something awsome";
   uint256 public myInt;
   function intSetter(uint _mInt) public{
      myInt=_mInt;
   }
  bool public myBool;
  function boolReciever(bool _myBool) public{
     myBool =_myBool;
  }  
  function increment() public{
     myInt++;
  }
  function decrement() public{
     myInt--;
  }
}