// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import {Script} from "forge-std/Script.sol";
import {LogTrigger} from "src/log-trigger/LogTrigger.sol";

contract DeployLogTrigger is Script {
    function run() external returns (LogTrigger) {
        vm.startBroadcast();
        LogTrigger logTrigger = new LogTrigger();
        vm.stopBroadcast();
        return logTrigger;
    }
}