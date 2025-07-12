// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import {Script} from "forge-std/Script.sol";
import {CustomLogic} from "src/CustomLogic.sol";

contract DeployCustomLogic is Script {
    function run() external returns (CustomLogic) {
        vm.startBroadcast();
        CustomLogic customLogic = new CustomLogic(300); // 5 minutes interval
        vm.stopBroadcast();
        return customLogic;
    }
}
