// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import {Script} from "forge-std/Script.sol";
import {EventEmitter} from "src/log-trigger/EventEmitter.sol";

contract DeployEventEmitter is Script {
    function run() external returns (EventEmitter) {
        vm.startBroadcast();
        EventEmitter eventEmitter = new EventEmitter();
        vm.stopBroadcast();
        return eventEmitter;
    }
}
