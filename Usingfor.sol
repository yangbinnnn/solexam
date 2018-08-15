pragma solidity ^0.4.24;

library math {
    function add(uint256 self, uint256 n)
    public
    pure
    returns (uint256) {
        return self + n;
    }
}


contract UsingForContract {
    using math for uint256;
    function run() public pure returns(uint256) {
        uint256 a = 1;
        return a.add(10);
    }
}