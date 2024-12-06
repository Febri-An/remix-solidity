// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage {
    SimpleStorage[] public listOfSimpleStorage;

    function createSimpleStorage() public {
        SimpleStorage simpleStorageFactoryVariable = new SimpleStorage();
        listOfSimpleStorage.push(simpleStorageFactoryVariable);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageFavoriteNumber) public {
        listOfSimpleStorage[_simpleStorageIndex].store(_simpleStorageFavoriteNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return listOfSimpleStorage[_simpleStorageIndex].retrive();
    }

}