var Web3 = require('web3');
var web3 = new Web3(Web3.currentProvider || 'https://mainnet.infura.io/v3/0d53687fabef4eab916d0e65a44c3db8')
var signer = '0x5f7687e1bc47c508bd4a742b71eb34732163bce6'
let signature = web3.eth.sign('hello world!', signer, console.log)
console.log(signature)
