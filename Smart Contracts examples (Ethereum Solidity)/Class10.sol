//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract A 
{
    function f1() public pure returns(uint)
    {
        return 1;
    }
    function f2() external pure returns(uint)
    {
        return 1;
    }
    function f3() internal pure returns(uint)
    {
        return 1;
    }
    function f4() private pure returns(uint)
    {
        return 1;
    }
}

contract B 
{
    A a = new A();
    uint public f22 = a.f1();

}