// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ProjectRepresentationToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("Project Representation Token", "MOONppt") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    function triggerWithdrawal(address account, uint256 amount) public  {
        
    }

    function burnToWithdraw(address account, uint256 amount) public {
        burnFrom(account, amount);
    }
}