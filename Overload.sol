pragma solidity ^0.4.20;

contract OverloadContract {

    // working
    function foo(uint256 n, uint256 m) public pure returns (uint256) {
        return n + m;
    }
    
    // not working ?
    function foo(uint256 n) public pure returns (uint256) {
        return n;
    }
    
    // working
    function foo() public pure returns (uint256) {
        return 1;
    }
    
    // working
    function foo(uint256 i, uint256 n, uint256 m) public pure returns (uint256) {
        return i + n + m;
    }
    
}