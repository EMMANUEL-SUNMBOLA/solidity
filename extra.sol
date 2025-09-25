// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

import {SimpleStorage} from './SimpleStorage.sol';

contract defi{

    SimpleStorage public mystorageList;

    function createSorage() public{

        SimpleStorage mystorage = new SimpleStorage();

        mystorageList.push(mystorage);

    }

    function getCa(uint256 _index) public view returns(address){

        return address(mystorageList[_index]);

    }

    function storeFave(uint256 _index, uint256 x) public{

        mystorageList[_index].store(x);

    }

    function getFave(uint256 _index) public view returns(uint256){

        return mystorageList[_index].retrieveFavNum();

    }

}