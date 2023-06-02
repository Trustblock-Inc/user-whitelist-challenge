// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "forge-std/Test.sol";
import "../src/UserWhitelist.sol";

contract UserWhitelistTest is Test {

    address public user = vm.addr(2);

    UserWhitelist whitelist;

    function setUp() public {

        whitelist = new UserWhitelist();

    }


    function test_whitelist_succeeds() public {

        assertEq(whitelist.whitelisting(user), false, "User should not be whitelisted");

        whitelist.whitelist(user);

        assertEq(whitelist.whitelisting(user), true , "User should be whitelisted");

    }


      function test_whitelist_failed_NotOwner() public {

        assertEq(whitelist.whitelisting(user), false, "User should not be whitelisted");

        vm.expectRevert(UserWhitelist.NotOwner.selector);

        vm.prank(user);

        whitelist.whitelist(user);

    }

}
