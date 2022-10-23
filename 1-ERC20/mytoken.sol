pragma solidity ^0.5.10;


contract MyToken {
    string public name;
    string public symbol;
    uint8 public decimals;

    constructor(string memory initName, string memory initSymbol) public{
        name = initName;
        symbol = initSymbol;
        decimals = 18; // let's go for standard
    }

    // I don't want to provide a getter, because
    // it's everyone's token
    mapping(address => uint256) private _balances;
    

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account] + 1e5*10e18; //everyone gets to have a million
    }

    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    function transfer(address to, uint256 value) public returns (bool success){
        require( to != address(0), "to shoulnd'be a null address");

        uint256 balance = balanceOf(msg.sender);
        require(balance > value, "the address transferring should have sufficient balance");

        _balances[msg.sender] -= value;
        _balances[to] += value;
        
        emit Transfer(msg.sender, to, value);

        return true;
    }

    
    
}