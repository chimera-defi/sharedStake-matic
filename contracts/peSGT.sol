// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

/**
Polygon Emissions SGT - peSGT
Meant to be a mintable token for polygon farming emissions and liquidity bootstrapping
Will be made convertible to mainnet SGT and a cap created later 
 */

// import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol";

contract peSGT is ERC20PresetMinterPauser {
  string internal _name = "polygon-emissions-SGT";
  string internal _symbol = "peSGT";
  uint256 internal _initialSupply = 10000000; // 10m

  constructor()
  ERC20PresetMinterPauser(_name, _symbol)
  {
    _mint(msg.sender, _initialSupply);
  }
}
