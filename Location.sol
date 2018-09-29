pragma solidity ^0.4.24;


contract Location {
    
    struct Book {
        uint256 price;
    }

    struct Player {
        address addr;
        uint256 status;
        Book book;
    }
    
    mapping(address => Player) players;
    
    constructor() public {
        Book memory _book = Book(1);
        players[msg.sender] = Player(msg.sender, 0, _book);
    }
    
    function me() public view returns(address, uint256, uint256) {
        Player memory _player = players[msg.sender];
        return (_player.addr, _player.status, _player.book.price);
    }
    
    function updateStatus(uint256 status) public {
        players[msg.sender].status = status;
    }
    
    function storagePlayer(uint256 status) public {
        Player storage p = players[msg.sender];
        p.status = status;  
    }
    
    // memory is a copy to storage variable
    function memoryPlayer(uint256 status) public {
        Player memory p = players[msg.sender];
        p.status = status; // no change
    }
    
    
    function getBook() public view returns(uint256 price) {
        Player memory p = players[msg.sender];
        return p.book.price;
    }
    
    function storageBook(uint256 price) public {
        Player storage p = players[msg.sender];
        Book storage _book = p.book;
        _book.price = price;
    }
    
    function memoryBook(uint256 price) public {
        Player memory p = players[msg.sender];
        Book memory _book = p.book;
        _book.price = price;
    }
    
    function storageInternalPlayer(uint256 status) public {
        Player storage p = players[msg.sender];
        internalUpdate(p, status);
    }
    
    function internalUpdate(Player storage _player, uint256 status) internal {
        _player.status = status;
    }
}