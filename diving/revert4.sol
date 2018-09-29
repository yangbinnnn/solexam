pragma solidity ^0.4.24;

contract Revert1 {
    function test() public pure {
        revert("hello world xx yy zz aa");
    }
}
