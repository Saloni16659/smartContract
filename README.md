# Understanding Error Handling

Understanding Error handling in Solidity using require(), assert() and revert() statements.

## Description

1. Developing a Smart Contract
2. Understanding Error Handling

## Getting Started

### Installing

* You can use a online Ethereum IDE, here in this code Remix is being used.

### Executing program

* Go to the Remix Ethereum IDE (remix.ethereum.org)
* Create a new file with any suitable name with (.sol) extension
* Write the desired code in the main screen
* Now, compile your file using solidity compiler
* After complining just deploy it get the desired output.

* Copy the following code and execute in a Ethereum IDE
1. Code for require() function.
``` Solidity
function deposit() public payable {
        // Using require() to check the valid amount
        require(msg.value > 0, "Please enter a deposit amount that exceeds zero.");
        balance += msg.value;
        
    }
```

2. Code for assert() function.
``` Solidity
 function checkInvariant() public view {
        // Using assert() to check an invariant condition
        assert(balance >= 0);
    }
```

3. Code for revert() function.
``` Solidity
function resetBalance() public {
        // Using reset() to check whether the caller is owner
        if (msg.sender != owner) {
            revert("Only the owner is authorized to reset the balance.");
        }
        balance = 0;
    }
```

## Help

For any issue with the code take help of debug option.

### Authors

Saloni Gupta
[salonig16659@gmail.com]
7404580278

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
