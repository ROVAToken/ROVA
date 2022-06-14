pragma solidity ^0.8.14;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ROVATOKEN is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("ROVA2", "ROVA2") {
        _mint(msg.sender, initialSupply*(10**uint256(decimals())));
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }

    function mint(address account, uint256 amount) public onlyOwner  {
        _mint(account, amount*(10**uint256(decimals())));
    }
}
