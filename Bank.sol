pragma solidity 0.6.6;
contract bank {

    address owner; 
    uint private balance=0;
    constructor() public {
        owner = msg.sender;
    }

    function withdraw(uint256 amount) public {
        if(msg.sender == owner){
            balance=balance-amount;
        } 
    }
    function deposit(uint256 amount) public  {
        if(msg.sender == owner){
            balance = balance+amount;
        }
        
    }
    function getBalance() public view returns (uint256) {
        return (balance);
    }
}
