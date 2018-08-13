pragma solidity ^0.4.24;

contract ModifierContract {
    address owner;
    constructor() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner, "only owner can do this!");
        _; // the code is inserted here
    }
    
    function start() public onlyOwner payable returns(bool){
        return true;
    }
}