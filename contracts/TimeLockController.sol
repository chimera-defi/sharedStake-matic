// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "@openzeppelin/contracts/governance/TimelockController.sol";


contract polygonTimeLock is TimelockController {
  uint256 internal _minDelay = 12 hours;
  // address[] internal immutable _proposers = [
  //   0xa1feaF41d843d53d0F6bEd86a8cF592cE21C409e,0x72cc61130064db9a3BBe7D58095fA6601612c3cf
  // ]
  // address[] internal immutable _executors = [
  //   0xa1feaF41d843d53d0F6bEd86a8cF592cE21C409e,0x72cc61130064db9a3BBe7D58095fA6601612c3cf
  // ]
  constructor(
    address[] memory proposers,
    address[] memory executors
  ) TimelockController(_minDelay, proposers, executors) {}
}
