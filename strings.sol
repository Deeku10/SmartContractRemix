pragma solidity ^0.5.0;

contract MyContract{
    string public myString;
    function stringsetter(string memory _string) public{
        myString=_string;
    }
}