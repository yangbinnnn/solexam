pragma solidity ^0.4.24;

contract StructContract {
    uint256 idSeed_ = 1;
    
    struct Player {
        uint256 id;
        string name;
    }
    
    mapping (uint256 => Player) PlayersMap;
    Player[] PlayersArr;
    
    function addPlayerToMap(string name) public returns(uint256 n) {
        uint256 id = idSeed_++;
        PlayersMap[id] = Player(id, name);
        return id;
    }
    
    function addPlayerToArr(string name) public returns(uint256 n){
        uint256 id = PlayersArr.length+1;
        PlayersArr.push(Player(id, name));
        return PlayersArr.length;
    }
    
    function getPlayerFromMap(uint256 id) public view returns(uint256, string) {
        require(id > 0);
        Player memory player = PlayersMap[id];
        if (player.id == 0) {
            return (0, "");
        }
        return (player.id, player.name);
    }
    
    function getPlayerFromArr(uint256 id) public view returns(uint256, string) {
        require(id > 0);
        id -= 1;
        Player memory player = PlayersArr[id];
        if (player.id == 0) {
            return (0, "");
        }
        return (player.id, player.name);
    }
    
    // return struct, now must be internal
    function getPlay(uint256 id) internal view returns(Player) {
        require(id > 0);
        id -= 1;
        return PlayersArr[id];
    }
    
    function printPlayer(uint256 id) public view returns(uint256, string) {
        Player memory player = getPlay(id);
        if (player.id == 0) {
            return (0, "");
        }
        return (player.id, player.name);
    }
    

}