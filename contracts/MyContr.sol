// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContr {
    uint256 public totalFunds;

    function contribute() public payable {
        totalFunds += msg.value;
    }

    function isFullyFunded() public view returns (bool) {
        return totalFunds >= 2 ether;
    }

    function getMessage() public view returns (string memory) {
        if (isFullyFunded()) {
            return "Fully funded";
        } else {
            return "Not yet 100% funded";
        }
    }
}
