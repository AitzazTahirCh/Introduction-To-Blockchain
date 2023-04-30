//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract A
{
    bytes public val1;
        
    constructor()
    {
        val1 = "a6";
    }

    function popValue() public view returns(bytes memory)
    {   
        //return val1.pop();
        return val1;
    }

    function pushValue(bytes memory _v1) public 
    {
        //val1.push(_v1);
        val1 = _v1;
    }
}