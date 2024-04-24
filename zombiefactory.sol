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

// function declaration
function createZombie(string _name, uint _dna) {
}

}
