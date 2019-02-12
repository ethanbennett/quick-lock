pragma solidity ^0.5.3;

contract OasisDirectInterface {
    function buyAllAmountPayEth(address, address, uint, address) public payable returns (uint);
}

contract SaiProxyInterface {
    function wipe(address, bytes32, uint, address) public payable;
}

contract QuickLock {
    function buyAndWipe(address oasisDirectProxy, address saiProxy, address otc, address dai, address weth, address tub, uint buyAmount, bytes32 cup) public payable {
        if (msg.value > 0) {
            OasisDirectInterface(oasisDirectProxy).buyAllAmountPayEth.value(msg.value)(otc, dai, buyAmount, weth);
            SaiProxyInterface(saiProxy).wipe(tub, cup, buyAmount, otc);
        }
    }
}
