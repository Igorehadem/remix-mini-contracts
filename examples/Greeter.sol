// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title Greeter
contract Greeter {
    string public greeting;
    constructor(string memory greeting_) { greeting = greeting_; }
    function greet() external view returns (string memory) { return greeting; }
}
