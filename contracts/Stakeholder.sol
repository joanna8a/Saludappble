pragma solidity ^0.4.2;

contract Stakeholder {

    string personalID;
    string name;
    address public owner = msg.sender;

    modifier onlyOwner() {
        if (msg.sender != owner) {
            throw;
        }else{
            _
        }
    }

    function setData(string _name, string _personalID) onlyOwner{
        personalID = _personalID;
        name = _name;
    }

    function kill() onlyOwner{
        suicide(owner);
    }

    function getContractAddress() constant returns (address)
    {
        return this;
    }


}