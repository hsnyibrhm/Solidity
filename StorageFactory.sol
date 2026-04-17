// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
//import untuk lebih murah gas fee nya
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public listOfSimpleStorageContracts;
    address[] public listOfSimpleAddresses;
    
    function createSimpleStorageContracts()public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        //address
        //abi - Application Binary Interface
        //function selector
        //SimpleStorage mySimpleStorage = SimpleStorage (listOfSimpleAddresses[_simpleStorageIndex]);

        // SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        // mySimpleStorage.toko(_newSimpleStorageNumber);  

        //sintak atas yang 2 baris bisa lebih simple dengan 1 baris seperti di bawah
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns ( uint256 ) {
        //SimpleStorage mySimpleStorage =  listOfSimpleStorageContracts[_simpleStorageIndex];
        //return mySimpleStorage.retrive();

        //sintak atas yang 2 baris bisa lebih simple dengan 1 baris seperti di bawah

        return listOfSimpleStorageContracts[_simpleStorageIndex].retrive();
    }
}