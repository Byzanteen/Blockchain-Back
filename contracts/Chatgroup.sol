pragma solidity ^0.5.0;

contract Chatgroup {
    struct Message {
        string text;
        address sender;
    }

    Message[100] public messages;
    address public p1;
    uint public i = 0;
    
    // function establishConn() public {
    //     p1 = msg.sender;
    // }
    
    function fullChat() private returns (bool){
        if (i==99)
            return true;
        return false;
    }
    
    function makeSpace() private {
        for(uint j=0;j<99;j++){
            messages[j] = messages[j+1]; 
        }
    }
    
    function sendMessage(string memory text) public {
        if(fullChat()){
            makeSpace();
        }
        messages[i].text = text;
        messages[i].sender = msg.sender;
        i++;
    }
}