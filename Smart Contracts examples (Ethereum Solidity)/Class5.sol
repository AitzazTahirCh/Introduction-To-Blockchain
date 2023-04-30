//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;


contract A
{
    bytes1 public a = "a";
    bytes1 public aa = 0x61;
    
    bytes2 public bb = "A ";
    bytes public c = "abc";

    function setV(bytes1 _b) public 
    {
        c.push(_b);
    }

    function getV(uint index) public view returns(bytes1) 
    {
        return c[index];
    }

    function getTime() public view returns(uint) 
    {
        return block.timestamp;
    }

}