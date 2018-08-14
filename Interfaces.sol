pragma solidity ^0.4.24;


interface Game {
    function setName(string _name) external;
    function start() external;
}


contract MyGame is Game {
    string public name;
    function setName(string _name) external {
        name = _name;
    }
    
    function start() public {

    }
    
    function other() public pure {
        
    }
}