pragma solidity ^0.4.0;

contract Types {
    
    function toBytes32(uint256 i) public pure returns(bytes32 b) {
        return bytes32(i);
    }
    
    function fromBytes32(bytes32 b) public pure returns(uint256 i) {
        return uint256(b);
    }
}