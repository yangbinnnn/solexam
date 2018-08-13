pragma solidity ^0.4.24;

contract StructContract {
    uint256 idSeed_ = 1;
    
    struct Player {
        uint256 id;
        string name;
    }
    
    mapping (uint256 => Player) PlayersMap;
    Player[] PlayersArr;
    
    function addPlayerToMap(string name) returns(bool) {
        id = idSeed_++;
        PlayersMap[id] = Player(id, name);
        return true;
    }
    
    function addPlayerToArr(string name) {
        id = PlayersArr.length+1;
        
        
    }
}