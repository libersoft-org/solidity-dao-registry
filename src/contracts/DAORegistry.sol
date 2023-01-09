// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

import '@openzeppelin/contracts/access/Ownable.sol';

contract DAORegistry is Ownable {
 address[] public recognizedDAOs;

 function addContract(address _daoAddress) public onlyOwner {
  recognizedDAOs.push(_daoAddress);
 }
}
