// compiler version
pragma solidity ^0.8.0;

// contract declaration
contract ZombieFactory {

// declare event(s) here
event NewZombie(uint zombieId, string name, uint dna)

uint dnaDigits = 16;
uint dnaModulus = 10 ** dnaDigits;

// Struct
struct Zombie {
string name;
uint dna;
}

// Array(s)
Zombie[] public zombies;

// declare mappings here
mapping (uint => address) public zombieToOwner;
mapping (address => uint) ownerZombieCount;

// function declaration & making the function private
function _createZombie(string _name, uint _dna) private {
// working with structs and arrays
uint id = zombie.push(Zombie(_name, _dna)) -1;
// fire the event here
// Introducing Msg.sender (validating ownership and increasing security)
zombieToOwner[id] = msg.sender;
ownerZombieCount[msg.sender]++;
NewZombie(id, _name, _dna);
}

// private view returns function
function _generateRandomDna(string _str) private view returns (uint)
// Keccak256 & Typecasting
uint rand = uint (keccak256(_str));
return rand % dnaModulus;
}

// putting the contract together
function createRandomZombie(string _name) public {
// introducing require statements
require(ownerZombieCount[msg.sender] == 0);
uint randDna = _generateRandomDna(_name);
_createZombie(_name, randDna);
}

