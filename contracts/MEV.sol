// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.4;

contract MEV {
    modifier onlyMEV {
        require(tx.gasprice == 0, "not MEV");
        _;
    }

    modifier noMEV {
        require(tx.gasprice > 0, "fuck you bot");
        _;
    }
}
