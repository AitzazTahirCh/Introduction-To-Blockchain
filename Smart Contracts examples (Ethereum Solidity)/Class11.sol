//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract Global
{
    uint public age;

    function getValue()  view public returns(uint, uint, address)
    {
        return (block.number, block.timestamp, msg.sender);
    }

    function setAge(uint _age) public 
    {
        age = _age;
    }
}