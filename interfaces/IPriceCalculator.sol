// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IPriceCalculator {
    struct ReferenceData {
        uint256 lastData;
        uint256 lastUpdated;
    }

    function keeper() external view returns (address);

    function setTokenFeed(address asset, address feed) external ;

    function priceOf(address asset) external view returns (uint256);

    function pricesOf(address[] memory assets) external view returns (uint256[] memory);

    function priceOfETH() external view returns (uint256);

    function getUnderlyingPrice(address lToken) external view returns (uint256);

    function getUnderlyingPrices(address[] memory lTokens) external view returns (uint256[] memory);
}
