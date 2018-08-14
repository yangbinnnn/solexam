pragma solidity ^0.4.24;

// http://solidity.readthedocs.io/en/v0.4.24/contracts.html#events
contract EventContract {
    event Deposit (
        address indexed from,
        uint256 indexed id,
        uint256 value
    );
    
    function deposit(uint256 id) public payable {
        emit Deposit(msg.sender, id, msg.value);
    }
    
}


/**
 * 
 * contract = web3.eth.contract(abi).at('0x49590975567cadf7ddb5e524175055237c5faae4')
 * event = contract.Deposit([], [{fromBlock: 0, toBlock: "latest"}])
 * 
 * // get all event
 * event.get(function(error, data) {
 *   console.log(data) 
 * })
 * 
 * // watch for event
 * event.watch(function(error, data) {
 *   console.log(data)
 * })
 *
 * 
 **/ 