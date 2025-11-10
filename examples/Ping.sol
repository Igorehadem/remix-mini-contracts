// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title Ping
contract Ping {
    uint256 public immutable SALT;
    constructor(uint256 salt_) { SALT = salt_; }
    function ping() external pure returns (string memory) { return "pong"; }
}
