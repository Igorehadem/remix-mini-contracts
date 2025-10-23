// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title Ping
contract Ping {
    uint256 public immutable SALT;
    constructor(uint256 salt_) { SALT = salt_; }
    function ping() external pure returns (string memory) { return "pong"; }
}

/// @title Greeter
contract Greeter {
    string public greeting;
    constructor(string memory greeting_) { greeting = greeting_; }
    function greet() external view returns (string memory) { return greeting; }
}

/// @title TinyStorage
contract TinyStorage {
    address public immutable OWNER;
    uint256 private value;
    constructor(address owner_) { OWNER = owner_; }
    function set(uint256 v) external {
        require(msg.sender == OWNER, "only owner");
        value = v;
    }
    function get() external view returns (uint256) { return value; }
}

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
