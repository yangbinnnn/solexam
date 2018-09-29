pragma solidity ^0.4.25;

// THIS CONTRACT CONTAINS A BUG - DO NOT USE
contract TxUserWallet {
    address public owner;
    mapping(address => uint256) balances;

    constructor() public payable {
        owner = msg.sender;
    }
    
    function balance() public view returns (uint256) {
        return address(this).balance;
    }

    function transferTo(address dest, uint amount) public {
        require(tx.origin == owner, "owner only");
        balances[dest] += amount;
        dest.transfer(amount);
    }
    
    function balanceOf(address addr) public view returns (uint256) {
        return balances[addr];
    }
    
    function() public payable {
        
    }
}
