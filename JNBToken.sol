pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract JNBToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function JNBToken(address _owner)  UpgradeableToken(_owner) {
    name = "JNBToken";
    symbol = "JNB";
    totalSupply = 1250000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}