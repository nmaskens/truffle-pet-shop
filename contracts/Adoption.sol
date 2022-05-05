pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;
    
    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        
        adopters[petId] = msg.sender;

        return petId;
    }
    // Retreiving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}