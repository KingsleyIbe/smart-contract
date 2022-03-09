// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Program {
    string public greeting = "Hello World ";
    string public user;

    constructor(string memory userName){
        user = userName;
    }
    function createRecord(string memory NewRecord) public {
        user = NewRecord;
    }
    function getRecord() public view returns (string memory) {
        return string(abi.encodePacked(greeting, user));
    }
}
