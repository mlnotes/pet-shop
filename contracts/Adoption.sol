pragma solidity ^0.4.17;

contract Adoption {
  address[16] public adopters;
  
  // Adopting a pet
  function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId < 16);
    adopters[petId] = msg.sender;
    return petId;
  }

  // Retrieving adopter
  function getAdopter(uint petId) public view returns (address) {
    return adopters[petId];
  }

  function getAdopters() public view returns(address[16]) {
    return adopters;
  }
}
