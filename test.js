// npm install web3
var Web3 = require('web3')
var pnetRpc = 'http://192.168.1.33:8547'
var contractAddr = '0x516a0eac61903979ab6cc199ccaf0c85674a4d64'
var abi = [
	{
		"payable": true,
		"stateMutability": "payable",
		"type": "fallback"
	},
	{
		"inputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"constant": false,
		"inputs": [],
		"name": "withdraw",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "balance",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "foo",
		"outputs": [
			{
				"name": "",
				"type": "bool"
			}
		],
		"payable": false,
		"stateMutability": "pure",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "getBalance",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
]

var web3 = new Web3(Web3.currentProvider || pnetRpc)
var contract = new web3.eth.Contract(abi, contractAddr, {from: '0xbd8bbbc5ed42e8154274974bf951f8abbd0ccd88'})
contract.methods.foo().call().then(console.log)
contract.methods.balance().call().then(console.log)


