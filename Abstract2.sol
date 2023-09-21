// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

interface MyInterface {
    function setNumber(uint num) external;
    function getNumber() external view returns (uint);
}

contract MyContract is MyInterface {
    uint256 private myNumber;

    function setNumber(uint num) public override {
        myNumber = num;
    }

    function getNumber() public view override returns (uint) {
        return myNumber;
    }
}
