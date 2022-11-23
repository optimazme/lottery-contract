// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/VRFCoordinatorV2.sol";
import "https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/interfaces/LinkTokenInterface.sol";
import "https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/VRFConsumerBaseV2.sol";

contract VRFConsumer is VRFConsumerBaseV2 {
    VRFCoordinatorV2Interface COORDINATOR;
    LinkTokenInterface LINKETOKEN;
}

    // Subcription ID for the VRF
    // We can also code to directly fund this contract instead of subscribing
    uint64 subscriptionID;

    // We see no support for Optimism
