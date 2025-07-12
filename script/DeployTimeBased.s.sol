// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import {Script} from "forge-std/Script.sol";
import {TimeBased} from "src/TimeBased.sol";

contract DeployTimeBased is Script {
    function run() external returns (TimeBased) {
        vm.startBroadcast();
        TimeBased timeBased = new TimeBased();
        vm.stopBroadcast();
        return timeBased;
    }
}
