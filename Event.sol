pragma solidity ^0.4.24;

// http://solidity.readthedocs.io/en/v0.4.24/contracts.html#events
contract EventContract {
    event Deposit (
        address indexed from,
        uint256 indexed id,
        uint256 value
    );
    
    function dopoist(uint256 id) public payable {
        emit Deposit(msg.sender, id, msg.value);
    }
}


