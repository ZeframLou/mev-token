// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./MEV.sol";

contract OnlyMEVToken is ERC20, MEV {
    constructor(string memory _name, string memory _symbol)
        ERC20(_name, _symbol)
    {}

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override onlyMEV {
        super._beforeTokenTransfer(from, to, amount);
    }
}
