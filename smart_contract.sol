// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract practicing{
    address public last_sender ;
    uint public last_gas;

    function pay(address payable adder) public payable {
        (bool sent,bytes memory data)=adder.call{value:1 ether}("");
        require(sent,"Eth is not sent");
    }

    function receiveing() public payable {
        last_sender=msg.sender;
        last_gas=gasleft();
    }

    function balance_view() public view returns (uint){
        return address(this).balance;
    }

}