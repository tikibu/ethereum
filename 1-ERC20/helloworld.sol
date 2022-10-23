pragma solidity ^0.5.10;

contract HelloWorld {

    constructor() public {
    }

    event HellowWorldEvent(string _value);

    function hello_world() public {
        emit HellowWorldEvent("Hello world!");
    }
    
}