// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IRewardDistributor {
    function withdrawTokens() external;
    function tokensClaimable(address _user) external view returns (uint256 claimableAmount);
}
