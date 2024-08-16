pragma solidity 0.8.1;

contract Twitter {

    mapping (address => string[]) public tweets;

    function createTweets(string memory _tweets) public{
        tweets[msg.sender].push(_tweets);
    }

    function getAllTweets(address _owner) public view returns (string[] memory){
        return tweets[_owner];
    }

    function getParticularTweets(address _owner,uint256 _i) public view returns(string memory){
        return tweets[_owner][_i];
    }
}