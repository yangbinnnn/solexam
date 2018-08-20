pragma solidity ^0.4.24;

contract ExternalLib {
    function Add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}