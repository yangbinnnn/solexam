pragma solidity ^0.4.24;

library Echo {
    function me() public view returns(address) {
        return msg.sender;
    }
}


contract App {
    string name = "app";

    function foo() public view returns(address){
        return Echo.me();
    }
    
    function bar() public view returns(address) {
        return msg.sender;
    }
}