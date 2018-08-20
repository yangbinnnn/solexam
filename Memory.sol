pragma solidity ^0.4.24;

contract MemoryTest {
    uint[] data1;
    uint[] data2;

    function appendOne() public {
        append(data1);
    }

    function appendTwo() public {
        append(data2);
    }

    function append(uint[] storage d) internal {
        d.push(1);
    }

    // TypeError: Member "push" is not available in uint256[] memory outside of storage
    // function appendMemory(uint[] d) internal {
    //     d.push(1);
    // }
}