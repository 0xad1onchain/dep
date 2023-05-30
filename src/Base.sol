// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

abstract contract Base {
    address immutable public owner;    

    constructor(address _owner) {
        owner = _owner;
    }
}
