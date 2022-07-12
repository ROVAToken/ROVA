// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/utils/SafeERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol";

contract ROVATOKEN is ERC20, Ownable, ERC20Burnable {
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
