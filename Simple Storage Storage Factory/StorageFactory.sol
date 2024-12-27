// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol"; //always name import, cause you want to save memory

    contract StorageFactory {
        //uint256 public favorite number
        // type visibility name
        SimpleStorage[] public ListOfsimpleStorageContracts;

        function createSimpleStorageContract() public {
            // how does the storage factory knows what simple storage looks like?
            SimpleStorage newSimpleSotrageContract = new SimpleStorage();
            ListOfsimpleStorageContracts.push(newSimpleSotrageContract);
        }

        function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
            //address
            //ABI - Application Binary Interface
            SimpleStorage mySimpleStorage = ListOfsimpleStorageContracts[_simpleStorageIndex];
            mySimpleStorage.store(_newSimpleStorageNumber);
       }

       function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage mySimpleStorage = ListOfsimpleStorageContracts[_simpleStorageIndex];
        return (mySimpleStorage.retrieve());
       }
    }