// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCount;

    // Define the event for logging transactions
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    // Define the struct for transaction details
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    // Declare an array to store all transactions
    TransferStruct[] transactions;

    // Function to add a transaction to the blockchain
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        // Push the new transaction into the transactions array
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        // Emit an event for the transaction
        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    // Function to retrieve all transactions
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    // Function to get the count of transactions
    function getTransactionCount() public view returns (uint) {
        return transactionCount;
    }
}
