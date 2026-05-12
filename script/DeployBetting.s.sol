// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
// import "../contracts/Betting.sol";

contract DeployBetting is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Deploy logic
        // Betting betting = new Betting();

        vm.stopBroadcast();
    }
}
