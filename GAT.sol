// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GitArmoryToken is ERC20, Ownable {
    constructor() ERC20("Git Armory Token", "GAT") Ownable(msg.sender) {}

    function mintFifty() public onlyOwner {
        _mint(msg.sender, 1000000 * 10**18);
    }
}
