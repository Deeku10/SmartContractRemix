pragma solidity ^0.5.0;
contract MyContract{
    mapping  (address=>bool) public myMap;
    
    function selectWhitelist()public{
    myMap[msg.sender]=true;
    }
}