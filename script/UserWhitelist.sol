// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "forge-std/Script.sol";
import {UserWhitelist} from "../src/UserWhitelist.sol";

/* solhint-disable no-console*/
import {console2} from "forge-std/console2.sol";

contract UserWhitelistDeploy is Script {


    function run() public {

        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_KEY");

        vm.broadcast(deployerPrivateKey);
        
        UserWhitelist whitelist = new UserWhitelist();

        console2.log(
            "\nUser Whitelist address:",
            address(whitelist),
            "\n"
        );
    }
}
