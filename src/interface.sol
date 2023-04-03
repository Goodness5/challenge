// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;


interface Ichallenge {
    function lock_me() external;
    function exploit_me(string memory _name) external;
    function pause(bool _status) external;
    
}