//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract SampleContract {
 string public myString = "Hello!";

 function UpdateString(string memory _newString) public payable {
if (msg.value == 1 ether) {
    myString = _newString;
} else {
    payable (msg.sender).transfer(msg.value);
}
 }

}