pragma solidity ^0.5.0;
contract MyContract{
    struct Instructor{
        uint age;
        string fname;
        string lname;
    }
    mapping (address=>Instructor) instructors;
    address[] public instructorAccount;
    function setInstructor(address _address, uint age,string memory fname,string memory lname) public{
        Instructor storage instructor = instructors[_address];
        instructor.age=age;
        instructor.fname=fname;
        instructor.lname=lname;
        instructorAccount.push(_address) -1;
    }
    function getInstructor(address _address) public view returns(uint,string memory ,string memory){
        return(instructors[_address].age,instructors[_address].fname,instructors[_address].lname);
    }
}