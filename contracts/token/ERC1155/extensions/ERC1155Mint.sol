// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20FlashMint.sol";

/// @custom:security-contact Jessbennett924@gmail.com
contract MyTokenMint is ERC20, Ownable, ERC20Permit, ERC20FlashMint {
    constructor(address initialOwner)
        ERC20("MyToken-Mint", "MTK")
        Ownable(initialOwner)
        ERC20Permit("MyToken-Mint")
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
