pragma solidity ^0.4.24;

contract ExternalLib {
    function Add(uint256 a, uint256 b) public pure returns(uint256);
}

contract CallExternal {
    
    ExternalLib internal ext;
    constructor (address addr) public {
        require(addr > 0, "must give an address");
        ext = ExternalLib(addr);
    }
    
    function foo(uint256 a, uint256 b) public view returns (uint256) {
        return ext.Add(a, b);
    }
}