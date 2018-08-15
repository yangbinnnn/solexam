pragma solidity ^0.4.24;


/*
owner: 0xbd8bbbc5ed42e8154274974bf951f8abbd0ccd88 (100eth)
contractAddr: 0xabcffded4f84def13e35db13c410a297a8e30891


1. contract = web3.eth.contract(abi).at('0xabcffded4f84def13e35db13c410a297a8e30891')
2. contract.balance({}, function(error, data) {
    console.log(data)
   })
3. send eth to contract (95eth)
web3.eth.sendTransaction({to: "0xabcffded4f84def13e35db13c410a297a8e30891", value: web3.toWei("5", "ether")}, function(error, data) {
    console.log(data)
})
4. contract.balance({}, function(error, data) {
    console.log(data)
   })
5. withdraw the eth (100eth)
contract.withdraw({}, function(error, data) {
    console.log(data)
   })
*/

contract ReceiveEth {
    address owner;
    uint256 public balance;
    
    constructor() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(owner == msg.sender, "only owner");
        _;
    }
    
    function () public payable {
        if (msg.value > 0) {
            balance += msg.value;
        }
    }
    
    
    function withdraw() 
    public
    onlyOwner
    {
        selfdestruct(owner);   
    }
    
    function foo() public pure returns(bool){
        return true;
    }
    
    // same as balance
    function getBalance() public view returns(uint256) {
        return address(this).balance;
    }
    
}
