pragma solidity ^0.4.24;

contract Returns {
    function foo() public pure returns (uint256, bool) {
        return (1, true);
    }
    
    // better
    function foo1() public pure returns (uint256 num, bool ok) {
        return (1, true);
    }
    
    // better
    function foo2() public pure returns (uint256 num, bool ok) {
        num = 1;
        ok = true;
    }
}