// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.6.0;

contract ItemDelivery {

    //Address that represent the Ethereum addresses of the seller
    address payable public seller;
    
    //Address that represent the Ethereum addresses of the buyer
    address payable public buyer;
    
    //Boolean that is true if the item has been delivered and false otherwise.
    bool public itemDelivered;

    //A constructor function that sets the seller and buyer variables and 
    //initializes the itemDelivered variable to false.
    constructor(address payable _seller, address payable _buyer) public {

        seller = _seller;
        buyer = _buyer;
        itemDelivered = false;
    }

    //The deliverItem function allows the seller to mark the item as delivered
    function deliverItem() public {

        //Checks that the message sender is the seller
        require(msg.sender == seller, "Only the seller can mark the item as delivered");
        
        //Checks that the item has been already delivered or not
        require(!itemDelivered, "Item has already been delivered.");

        //sets the itemDelivered variable to true
        itemDelivered = true;
    }

    //The sendPaymentToSeller function allows the buyer to send a payment.
    function sendFundsToSeller() public payable {

        //Checks that the message sender is the buyer
        require(msg.sender == buyer, "Only the buyer can send funds to the contract");
        
        //Checks that the payment is greater than zero
        require(msg.value > 0, "You must send a positive amount of funds");
        
        //Checks that the item has been delivered or not
        require(itemDelivered, "The item must be marked as delivered before sending funds");

        //sends payment to the seller
        seller.transfer(msg.value);
    }
}