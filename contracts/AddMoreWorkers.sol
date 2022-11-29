//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./OphirDepartmentStorage.sol";

// A simple contract to add more workers to current workers

contract AddMoreWOrkers is OphirDepartments {

    function storeNumOfWorkers(uint256 _numOfWorkers) public override {
        numOfWorkers = _numOfWorkers + 15;
    }

}