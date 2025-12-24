// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "../contracts/SimpleStorage.sol";
contract StorageFactory{
    //dynamic array of type SimpleStorage which stores the address when we deploy the contract each time
    SimpleStorage[] public listofsimplestoragecontracts;

    function createsimplestoragecontract() public{
        SimpleStorage newsimplestoragecontract = new SimpleStorage(); //for deploying the contract we use new keyword
        listofsimplestoragecontracts.push(newsimplestoragecontract);
    }
    function sfStore(uint256 _simpleStorageIndex,uint256 _simpleStorageNumber) public {
        SimpleStorage x = listofsimplestoragecontracts[_simpleStorageIndex];
        x.store(_simpleStorageNumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint){
        SimpleStorage x = listofsimplestoragecontracts[_simpleStorageIndex];
        return x.retrieve();
    }
}
