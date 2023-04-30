//SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract A
{
    uint age;
    string public name = "Ali";
    
    constructor(uint _age, string memory _name)
    {
        age = _age;
        name = _name;
    }

    function setAge(uint _age) public virtual
    {
        age = _age;
    }

    function getAge() public view returns(uint)
    {
        return age;
    }

    function f1() public pure virtual returns(uint)
    {
        return 1;
    }

}

contract B
{    
    A public a = new A(1, "Ali");
    uint public b = a.getAge();
}

contract C is A
{
    
    uint public ageC = getAge();
    uint public c;

    constructor(uint _age, string memory _name, uint _c) A(_age, _name)
    {
        c = _c;
        //super(_age, _name);
    }

    function setAge(uint _age) public override
    {
        super.setAge(_age);
    }

    function f1() public pure override returns(uint)
    {
        uint val = super.f1();
        return val + 1;
    }

}

