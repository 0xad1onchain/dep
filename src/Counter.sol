// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./Base.sol";
import "./Authorizer.sol";
import "./Validator.sol";

contract Counter is Base, Authorizer, Validator{

    constructor(address _owner) Base(_owner) {
    }

    uint256 public number;

    function setNumber(uint256 newNumber) public {
        Validator._validate();
        Authorizer._authorize();
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
