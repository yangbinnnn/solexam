pragma solidity ^0.4.24;


contract EnumTest {
    enum Status {
        Close,
        Open
    }
    
    function CloseStatus() public pure returns(Status) {
        return Status.Close;
    }
    
    function OpenStatus() public pure returns(uint8) {
        return uint8(Status.Open);
    }
}