//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;
contract A
{
    uint public a;

    constructor()
    {
        a = 5;
    }

    function f1() public view returns(uint)
    {
        return a;
    }
}
contract B
{
    A obj = new A();
    uint public b = obj.f1();
}

contract C
{
    uint public c = 100;
    A obj = new A();
    //uint public b = obj.f1();
    //uint public b = obj.a; // Not Valid
    uint public b = obj.a();
}