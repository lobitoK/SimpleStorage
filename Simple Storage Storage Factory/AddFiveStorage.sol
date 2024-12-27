// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;     // Stating our version

import {SimpleStorage} from "./SimpleStorage.sol";


contract AddFiveStorage is SimpleStorage{
    //+5 en store
    // we are using overrides
    //virtual override
    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber+5;
    }
}