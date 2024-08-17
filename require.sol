pragma solidity ^0.8.1;

contract ValidNum {

    function checkNum(uint256 num) public returns (string memory){
        require(num!=0,"Number must not be zero");

        if(num>0){
            return "Positive Number";
        }else{
            return "Negitive Number";
        }
    }
}