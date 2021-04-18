// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IProjectRepresentationToken {
    function mint(address to, uint256 amount) external;
    function triggerWithdrawal(address account, uint256 amount) external;
    function burnToWithdraw(address account, uint256 amount) external;
}