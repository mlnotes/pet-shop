pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {
	Adoption adoption = Adoption(DeployedAddresses.Adoption());

	function testAdopt() public {
		uint returnId = adoption.adopt(8);
		Assert.equal(returnId, 8, "return id and assert id should be equal");
	}

	function testGetAdopters() public {
		address[16] memory adopters = adoption.getAdopters();

		Assert.equal(adopters[8], this, "");
	}

	function testGetAdopter() public {
		address adopter = adoption.getAdopter(8);
		Assert.equal(adopter, this, "");
	}
}
