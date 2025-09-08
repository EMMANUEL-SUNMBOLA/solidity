
// SPDX-License-Identifier: MIT

pragma 0.8.19;

contract SimpleStorage{

    bool hasFavoriteNumber = true;
    int64 FavoriteSignedInt = -88;
    uint64 FavoriteUnSignedInt = 88;
    // max int or unint byte size is 256, if you don't specify, it'll defualt to the max
    address cavewallet = 0xbD658a3282e5a3332328e7C84A74B34516668c48;
    uint256 favNum; // initializes it to 0
    

    function store(uint256 _x) public{
        favNum = _x;
    }
}


contract SimpleStorage {
    uint256 public FavNum;

    function store(uint256 _x) public {
        FavNum = _x;
    }

    function score() public view returns (uint256) {
        return FavNum;
    }
}

