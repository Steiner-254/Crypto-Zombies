// introducing import & imports in solidity
pragma solidity ^0.8.0;

// import here
import "./zombiefactory.sol";

contract ZombieFeeding is ZombieFactory {
// storage vs memory
function feedAndMultiply(uint _zombieId, uint _targetDNA) public {
require(msg.sender == zombieToOwner[_zombieId]);
Zombie storage myZombie = zombies[_zombieId]
}

}
