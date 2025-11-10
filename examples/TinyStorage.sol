// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title TinyStorage
contract TinyStorage {
    address public immutable OWNER;
    uint256 private value;

    constructor(address owner_) { OWNER = owner_; }

    function set(uint256 v) external {
        require(msg.sender == OWNER, "only owner");
        value = v;
    }

    function get() external view returns (uint256) {
        return value;
    }
}
