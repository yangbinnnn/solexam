pragma solidity ^0.4.0;

contract Types {
    
    function toBytes32(uint256 i) public pure returns(bytes32 b) {
        return bytes32(i);
    }
    
    function fromBytes32(bytes32 b) public pure returns(uint256 i) {
        return uint256(b);
    }
    
    function bytesToString(bytes memory b) public pure returns(string s) {
        return string(b);
    }
    
    function stringToBytes(string memory s) public pure returns(bytes b) {
        return bytes(s);
    }
    
    
    
}