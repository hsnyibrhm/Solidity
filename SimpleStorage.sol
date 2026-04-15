// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // deklarasi versi dari solidity

contract SimpleStorage {

    uint256 public noFav;
    function toko(uint256 _noFav) public {
        noFav = _noFav;
    }

}

//0xd9145CCE52D386f254917e481eB44e9943F39138