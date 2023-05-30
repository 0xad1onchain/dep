// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./Base.sol";

abstract contract Validator is Base {
    
    function _validate() internal view {
        require(msg.sender == owner, "Only owner can call this function.");
    }
}
