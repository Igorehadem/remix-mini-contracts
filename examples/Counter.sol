// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title Counter
contract Counter {
    uint256 public immutable START;
    uint256 public current;

    constructor(uint256 start_) {
        START = start_;
        current = start_;
    }

    function inc() external { unchecked { current++; } }
    function dec() external { require(current > 0, "zero"); unchecked { current--; } }
}
