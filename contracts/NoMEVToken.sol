// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./MEV.sol";

contract NoMEVToken is ERC20, MEV {
    uint256 public constant MIN_GASPRICE = 10 gwei;

    constructor(string memory _name, string memory _symbol)
        ERC20(_name, _symbol)
    {}

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override noMEV(MIN_GASPRICE) {
        super._beforeTokenTransfer(from, to, amount);
    }
}
