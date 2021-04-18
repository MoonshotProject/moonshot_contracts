// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './interfaces/IMoonshotToken.sol';
import './interfaces/IProjectRepresentationToken.sol';

contract ProjectRepresentationToken {
    constructor() {
    }

    // address payable supporter = msg.sender;
    // mapping(address => uint256) balance;


    // function deposit() external payable {
    //         require(msg.value > 0);
    //         sender = msg.sender;
    //         deposited = msg.value;
    //         receiver = supporter;
    //         balance[sender] = deposited;
    //         receiver.transfer(deposited);
    // }

    // // get funds from supporter, transfer to protocol smart contract
    // // mint MoonshotToken and give to supporter
    // function contributeToProject(address projectAddress) public {
    //     require(msg.value > 0);
    //     supporter = msg.sender;
    //     projectAddress.transfer()
    // }
}

