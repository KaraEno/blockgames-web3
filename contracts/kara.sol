//SPDX-license-Identifier: MIT
pragma solidity ^0.8.12;

contract HelloWorld {
    string public studentName;
    string public greet = "Hello  ";

    constructor (string memory name){
        studentName = name;
    }

    function setName(string memory participant) public {
          studentName = participant;
    }

    function getName() public view returns(string memory){
        return string(abi.encodePacked(greet, studentName));
    }
}