// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Script.sol";
import "../src/challengesol.sol";

contract chall is Script {
        challenge challengedeployed;
        
        function run() public{
            uint256 key = vm.envUint("private_key");
            vm.startBroadcast(key);
            challengedeployed = new challenge();

            challengedeployed.add();
            vm.stopBroadcast();
        }
}