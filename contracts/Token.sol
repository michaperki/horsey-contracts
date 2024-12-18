// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PromoToken is ERC20 {
    address public admin;

    constructor(uint256 initialSupply) ERC20("PromoToken", "PTK") {
        admin = msg.sender;
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }

    function mint(address to, uint256 amount) external {
        require(msg.sender == admin, "Only admin can mint");
        _mint(to, amount);
    }
}

