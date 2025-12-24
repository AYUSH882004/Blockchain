// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from '../contracts/SimpleStorage.sol';

// inheriting the SimpleStorage class
contract Add5tostore is SimpleStorage{ 
    function store(uint _no) public override{
        myFavoriteNumber = _no + 5;
    }
}
