// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {simplecontract, simplecontract2} from "./SimpleStorage.sol";

contract StorageFactory {
    //simplecontract[] public listOfmysimplecontracts;
    address[] public listOfmysimplecontractsAddress;

    // create new simple storage contract form the storage factory contract
    function createSimpleStoragecontract() public {
        simplecontract newSimpleStorageContract = new simplecontract();
        listOfmysimplecontracts.push(newSimpleStorageContract);
    }


    // Interacting with contract ABI..........sf (storage factory)
   function sfstoreNumber(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
    // address
    // ABI
    simplecontract mySimpleStorage = listOfmysimplecontracts[_simpleStorageIndex];
   simplecontract.store(_newSimpleStorageNumber); // Corrected line
}


    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        simplecontract mySimpleStorage = listOfmysimplecontracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}

        