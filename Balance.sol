pragma solidity ^0.8.1;

contract Balance {

    mapping(address => uint256 ) public balance;

    function set(address _user,uint256 _val) public {
       balance[_user] = _val;
    }

    function get(address _user) public view returns (uint256){
        return balance[_user];
    }
}