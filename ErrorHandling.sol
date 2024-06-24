// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract errorHandling {
    
    address public owner;
    uint256 public balance;
    
    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    function deposit() public payable {
        // Using require() to check the valid amount
        require(msg.value > 0, "Please enter a deposit amount that exceeds zero.");
        balance += msg.value;
        
    }

    function withdraw(uint256 amount) public {
        // Using require() to ensure the caller is the owner
        require(msg.sender == owner, "Only the owner can withdraw funds");
        // Using require() to check sufficient balance
        require(balance >= amount, "Insufficient balance");
        balance -= amount;
        payable(owner).transfer(amount);
    }
    
    function checkInvariant() public view {
        // Using assert() to check an invariant condition
        assert(balance >= 0);
    }
    
    function resetBalance() public {
        // Using reset() to check whether the caller is owner
        if (msg.sender != owner) {
            revert("Only the owner is authorized to reset the balance.");
        }
        balance = 0;
    }
}
