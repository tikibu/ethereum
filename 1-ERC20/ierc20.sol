pragma solidity ^0.5.10;

//based on https://ethereum.org/en/developers/docs/standards/tokens/erc-20/
interface IERC20 {
    
    // The core stuff
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    function balanceOf(address _owner) external view returns (uint256 balance);
    function transfer(address _to, uint256 _value) external returns (bool success);


    //declarative stuff 
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint256);



    //allowance - related
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    function transferFrom(address _from, address _to, uint256 _value) external returns (bool success);
    function approve(address _spender, uint256 _value) external returns (bool success);
    function allowance(address _owner, address _spender) external view returns (uint256 remaining);

}
