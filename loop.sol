pragma solidity ^0.8.1;

contract Countup{

    uint256 public sum =0;

    function Sum(uint256 limit) public pure returns (uint256){
        for(uint256 i=0; i<= limit;i++){
            sum+=i;
        }
        return sum;
    }
}