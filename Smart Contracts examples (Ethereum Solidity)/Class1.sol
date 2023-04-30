//SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Student
{
    uint private age;
    string private name;

    constructor(uint _age, string memory _name)
    {
        age = _age;
        name = _name;
    }

    function getName() public view returns(string memory)
    {
        return name;
    }
}