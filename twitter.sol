pragma solidity 0.8.1;

contract Twitter {

    struct Tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    mapping (address => Tweet[]) public tweets;

    function createTweets(string memory _tweets) public{
       
        Tweet memory newTweet = Tweet({
            author:msg.sender,
            content:_tweets,
            timestamp:block.timestamp,
            likes:0


        });
        tweets[msg.sender].push(newTweet);
    }

    function getAllTweets(address _owner) public view returns (Tweet[] memory){
        return tweets[_owner];
    }

    function getParticularTweets(address _owner,uint256 _i) public view returns(Tweet memory){
        return tweets[_owner][_i];
    }
}