// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import {Test, console} from "forge-std/Test.sol";
import {TimeBased} from "src/TimeBased.sol";
import {DeployTimeBased} from "script/DeployTimeBased.s.sol";

contract TimeBasedTest is Test {
    TimeBased timeBased;

    function setUp() public {
        DeployTimeBased deployer = new DeployTimeBased();
        timeBased = deployer.run();
    }

    function testCount() public {
        uint256 initialCounter = timeBased.counter();
        timeBased.count();
        assertEq(timeBased.counter(), initialCounter + 1);
    }
}
