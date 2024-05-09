// introducing import(s) in solidity
pragma solidity ^0.8.0;

// import here
import "./zombiefactory.sol";

contract ZombieFeeding is ZombieFactory {
// storage vs memory
function feedAndMultiply(uint _zombieId, uint _targetDNA) public {
require(msg.sender == zombieToOwner[_zombieId]);
Zombie storage myZombie = zombies[_zombieId]

// zombie DNA
_targetDna = _targetDna % dnaModulus;
uint newDna = (myZombie.dna + _targetDna)/2
_createZombie("NoName", newDna);

}

}
