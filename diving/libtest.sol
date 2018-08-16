pragma solidity ^0.4.24;

import { MathLib } from "./lib.sol";

contract LibTest {
    using MathLib for uint256;
    
    function foo() public pure returns(uint256) {
        uint256 a = 100;
        return a.Add(200);
    }
}