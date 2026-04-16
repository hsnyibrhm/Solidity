// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // deklarasi versi dari solidity

contract SimpleStorage {

    uint256 public noFav;
    //uint256 [] listnofav;

    struct Orang {
        uint256 NoFav;
        string nama;
    }

    Orang[] public listOrang;

    mapping(string => uint256) public namaToNoFav;
    
    function toko(uint256 _noFav) public {
        noFav = _noFav;
    }

    function retrive() public view returns (uint256) {    
        return noFav;
    }

    // calldata memory, storage
    function addOrang(string memory _nama, uint256 _nofav) public {
       listOrang.push(Orang(_nofav, _nama));
       namaToNoFav[_nama] = _nofav;
    }
}

contract SimpleStorage2{}
contract SimpleStorage3{}
contract SimpleStorage4{}


//0xd9145CCE52D386f254917e481eB44e9943F39138