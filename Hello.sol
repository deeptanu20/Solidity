//SPDX-License-Identifier: MIT
pragma solidity  ^0.8.1;

contract Hello {

    uint256 result = 10;

    function get() public view returns (uint256){
              return  result;
    }
     
}