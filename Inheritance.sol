pragma solidity ^0.4.24;

contract Owner {
    address owner;

    constructor() public {
        owner = msg.sender;
    }
    
    function getOwner() public view returns(address){
        return owner;
    }
}


contract App is Owner {
    
    bool _started;
    function Start() public {
        require(owner == msg.sender, "only owner can do this");
        _started = true;
    }
    
    
    function IsStarted() public view returns(bool) {
        return _started;
    }
}


contract Soc is App {
    string public name;
    
    constructor(string _name) public {
        name = _name;
    }
}


contract Game {
    string public name;
    
    constructor(string _name) public {
        name = _name;
    }
}


// awesome, it works
contract Swim is Owner, Game("swim") {
    function round() public view returns(uint256){
        require(owner == msg.sender, "only owner can do this");
        return 1;
    }
}