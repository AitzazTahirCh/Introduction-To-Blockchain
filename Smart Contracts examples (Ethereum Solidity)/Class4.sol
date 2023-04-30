//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract operators
{
    uint public val1;
    uint public val2;
        
    constructor()
    {
        val1 = 5;
        val2 = 6;
    }

    function getValue() public view returns(uint)
    {   
        uint res = val1 ^ val2;
        return res;
    }

    function setValues(uint _v1, uint _v2) public 
    {
        val1 = _v1;
        val2 = _v2;
    }
} 