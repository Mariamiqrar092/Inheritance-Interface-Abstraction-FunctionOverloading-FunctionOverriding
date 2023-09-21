// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract ParentClass {
    uint public parentrecord;

    constructor(uint initData) {
        parentrecord = initData;
    }

    function parentFunction() public pure returns (string memory) {
        return "Function in the parent contract.";
    }
}

contract ChildClass is ParentClass {
    uint public childrecord;

    constructor(uint initData, uint childInitData) ParentClass(initData) {
        childrecord = childInitData;
    }

    function childFunction() public pure returns (string memory) {
        return "Function in the child contract.";
    }
}