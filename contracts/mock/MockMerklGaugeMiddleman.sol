// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

import "../middleman/MerklGaugeMiddleman.sol";

contract MockMerklGaugeMiddleman is MerklGaugeMiddleman {
    address public angleDistributorAddress;
    IERC20 public angleAddress;
    MerkleRewardManager public manager;

    constructor(ICoreBorrow _coreBorrow) MerklGaugeMiddleman(_coreBorrow) {}

    function angleDistributor() public view override returns (address) {
        return angleDistributorAddress;
    }

    function angle() public view override returns (IERC20) {
        return angleAddress;
    }

    function merkleRewardManager() public view override returns (MerkleRewardManager) {
        return manager;
    }

    function setAddresses(
        address _angleDistributorAddress,
        IERC20 _angleAddress,
        MerkleRewardManager _manager
    ) external {
        angleDistributorAddress = _angleDistributorAddress;
        angleAddress = _angleAddress;
        manager = _manager;
    }
}
