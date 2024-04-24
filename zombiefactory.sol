// compiler version
pragma solidity ^0.8.0;

// contract declaration
contract ZombieFactory {

uint dnaDigits = 16;
uint dnaModulus = 10 ** dnaDigits;

// Struct(s)
struct Zombie {
string name;
uint dna;
}

// Array(s)
Zombie[] public zombies;

// function declaration & making the function private
function _createZombie(string _name, uint _dna) private {
// working with structs and arrays
zombie.push(Zombie(_name, _dna));

// More on Functions, Solidity Pure Vs View Function
function _generateRandomDna(string _str) private view returns (uint)

}

}
