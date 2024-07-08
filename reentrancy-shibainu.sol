pragma
solidity ^ 0.4
.24;

contract
Vulnerable
{
    mapping(address= > uint) private
userBalances;

function
withdrawBalance()
public
{
    uint
amountToWithdraw = userBalances[msg.sender];
require(msg.sender.call.value(amountToWithdraw)());
userBalances[msg.sender] = 0;
}

// ...
more
code
}
