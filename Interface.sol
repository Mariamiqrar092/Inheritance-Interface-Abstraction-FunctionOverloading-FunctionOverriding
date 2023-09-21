// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

interface Wallet {
    function transfer(address to, uint256 value) external returns (bool);
    function balanceOf(address owner) external view returns (uint256);
}

contract MyContract is Wallet {
    mapping(address => uint256) balances;

    constructor() {
        balances[msg.sender] = 1000;
    }

    function transfer(address to, uint256 value) public override returns (bool) {
        require(balances[msg.sender] >= value, "Insufficient balance");
        balances[msg.sender] -= value;
        balances[to] += value;
        return true;
    }

    function balanceOf(address owner) public view override returns (uint256) {
        return balances[owner];
    }
}
