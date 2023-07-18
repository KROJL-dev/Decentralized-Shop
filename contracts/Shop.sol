// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Shop {
    address payable public owner;
    mapping(address => uint) items;

    constructor() {
        owner = payable(msg.sender);
    }

    modifier enoughMoney(uint price) {
        if (msg.value >= price) {
            _;
        }
    }

    function buySomeItem(
        address item
    ) public payable enoughMoney(items[item]) {}
}
