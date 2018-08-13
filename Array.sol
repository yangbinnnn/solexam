pragma solidity ^0.4.24;

// https://solidity.readthedocs.io/en/v0.4.24/types.html?highlight=data%20location#arrays
contract ArrayContract {
    // fixed size in storage
    bool[3] fixedBoolPool;
    // bool[] fixedBoolPool = new bool[](3);
    // 0 base array, 0 <= i < 3
    function addBool(uint256 i, bool b) public returns(uint256 n) {
        fixedBoolPool[i] = b; // no push method
        return fixedBoolPool.length; // fixed 3
    }
    
    // out of fixed num will be error
    function getBool(uint256 i) public view returns(bool b) {
        return fixedBoolPool[i];
    }
    
    // dynamic size in storage
    bool[] dynamicBoolPool;
    function addDynamicBool(bool b) public returns(uint256 n) {
        dynamicBoolPool.push(b);
        return dynamicBoolPool.length; // equal elements num
    }
    
    // out of elements num will be error
    function getDynamicBool(uint256 i) public view returns(bool b) {
        return dynamicBoolPool[i];
    }
    
    function getMemPool() public pure returns(bool[]) {
        // new array in memory
        bool[] memory memBoolPool = new bool[](3);
        memBoolPool[0] = true;
        memBoolPool[1] = false;
        memBoolPool[2] = true;
        return memBoolPool;
    }
    
    // error: new array in memory, memory only in params and local
    // bool[] memory memBoolPool = new bool[](3);
    // function addMemBool(uint256 i, bool b) public returns(uint256 n) {
    //     memBoolPool[i] = b;
    //     return memBoolPool.length;
    // }
}