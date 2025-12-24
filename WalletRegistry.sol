// I'm a comment!
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract WalletRegistry {
    mapping(address => uint256) public balance;
    mapping(address => bool) public isRegistered;
    address[] public users;

    function registerUser() public {
        require(!isRegistered[msg.sender], "Already registered");
            isRegistered[msg.sender] = true;
            users.push(msg.sender);
    }
    function deposit(uint256 _amount) public{
       require(isRegistered[msg.sender], "Not registered");
            balance[msg.sender]+=_amount;
    }
    function withdraw(uint256 _amount) public{
        require(isRegistered[msg.sender], "Not registered");
            require(balance[msg.sender] >= _amount, "Insufficient balance");
                balance[msg.sender]-=_amount;
    }
    function getUserCount() public view returns(uint){
        return users.length;
    }
    function getUserBalance(address user) public view returns(uint){
    return balance[user];
}

}
