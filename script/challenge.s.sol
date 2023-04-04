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

            // vm.prank(0xE6e2595f5f910c8A6c4cf42267Ca350c6BA8c054);
            challengedeployed.add();
            vm.stopBroadcast();
        }
}