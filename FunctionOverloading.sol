// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract sample {
   function getSum(uint a, uint b) public pure returns(uint){      
      return a + b;
   }
   function getSum(uint a, uint b, uint c) public pure returns(uint){      
      return a + b + c;
   }
   function callSumWithTwoArguments() public pure returns(uint){
      return getSum(4,9);
   }
   function callSumWithThreeArguments() public pure returns(uint){
      return getSum(1,4,7);
   }
}