pragma solidity ^0.4.24;

// http://solidity.readthedocs.io/en/v0.4.24/control-structures.html#error-handling-assert-require-revert-and-exceptions
contract ExceptionContract {
    function requireExc() public pure {
        require(0 == 1);
    }
    
    function requireExcMsg() public pure {
        require(0 == 1, "require msg");
    }
    
    function assertExc() public pure {
        assert(0 == 1);
    }
    
    // not supported msg
    // function assertExcMsg() {
        // assert(0 == 1, "assert msg");
    // }
    
    function revertExc() public pure {
        revert();
    }
    
    function revertExcMsg() public pure {
        revert("revert msg");
    }
}