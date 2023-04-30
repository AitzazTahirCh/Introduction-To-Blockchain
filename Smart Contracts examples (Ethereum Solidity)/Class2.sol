//SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Test
{
    string public name;
    uint public age;

    constructor(uint _age, string memory _name)
    {
        name = _name;
        age = _age;
    }
} 