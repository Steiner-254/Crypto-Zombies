// compiler version (prevents errors that arise from future compiler versions)
pragma solidity ^0.8.0;

// contract declaration
contract ZombieFactory {

uint dnaDigits = 16;
uint dnaModulus = 10 ** dnaDigits;

// Structs
struct Zombie {
string name;
uint dna;
}

// Array(s)
Zombie[] public zombies;

}
