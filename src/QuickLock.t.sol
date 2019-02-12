pragma solidity ^0.5.3;

import "ds-test/test.sol";

import "./QuickLock.sol";

contract QuickLockTest is DSTest {
    QuickLock lock;

    function setUp() public {
        lock = new QuickLock();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
