//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract payment
{
    address payable user = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
    
    //function pay() public payable
    //{}

    receive() external payable
    {
        //user.transfer(1000000000000000000); // 1 Ether = 10^18 Wei
    }

    //fallback() external   //The fallback function always receives data (Call Data)
    //{}

    //fallback() external payable  // But to also receive Ether, you should mark it as payable. 
    //{}

    function getBalance() public view returns(uint)
    {
        return address(this).balance;
    }

    function transfer() public 
    {
         //user.transfer(1000000000000000000); // 1 Ether = 10^18 Wei
         //user.transfer(100); //Default in wei
         user.transfer(2 ether);
    }

}