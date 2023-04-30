//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract loop
{
    uint[5] public arr = [0,0,0,0,0];

    function runWhile() public
    {
        uint counter;
        while(counter < arr.length)
        {
            arr[counter] = counter;
            counter++;
        }
    }

    function runFor1() public
    {
        uint counter;
        for(counter=0; counter < arr.length; counter++)
        {
            arr[counter] = counter**2;
        }
    }

    function runFor2() public
    {
        uint counter;
        for(; counter < arr.length; counter++)
        {
            arr[counter] = counter**2;
        }
    }

    function runFor3() public
    {
        uint counter;
        for(; counter < arr.length;)
        {
            arr[counter] = counter**2;
            counter++;
        }
    }



    function runDo() public
    {
        uint counter;
        do
        {
            arr[counter] = counter**3;
            counter++;
        }while(counter < arr.length);
    }


        

}