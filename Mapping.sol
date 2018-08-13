pragma solidity ^0.4.24;


contract MappingContract {
    mapping(uint256 => bool) mb;
    
    function initMapping() public {
        for(uint256 i=0; i<10; i++) {
            mb[i] = true;
        }
    }
    
    function getMappingValue(uint256 i) public view returns(bool) {
        return mb[i];
    }
    
    function errMappingFunc() public pure {
        // can't define mapping in function
        // mapping(uint256 => bool) emb;
    }
}