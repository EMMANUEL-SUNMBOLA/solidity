
// // SPDX-License-Identifier: MIT

// pragma 0.8.19;

// contract SimpleStorage{

//     bool hasFavoriteNumber = true;
//     int64 FavoriteSignedInt = -88;
//     uint64 FavoriteUnSignedInt = 88;
//     // max int or unint byte size is 256, if you don't specify, it'll defualt to the max
//     address cavewallet = "0xbD658a3282e5a3332328e7C84A74B34516668c48";
//     uint256 favNum; // initializes it to 0
    

//     function store(uint256 _x) public{
//         favNum = _x;
//     }
// }


// contract SimpleStorage {
//     uint256 public FavNum;

//     function store(uint256 _x) public {
//         FavNum = _x;
//     }

//     function score() public view returns (uint256) {
//         return FavNum;
//     }

//     function add(int256 x, int256 y) public pure returns(int256) {
//         return x + y;
//     }
// }



// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract SimpleStorage {
    // uint256[] listOfFavNum;
    uint256 internal  myFavNum ;

    struct person{
        uint256 FavNum;
        string name;
    }


    // person public caveman = person(7, "caveman");
    // person public emmanuel = person({FavNum :7, name: "emmanuel"});

    person[] public listOfPeople; 

    uint256[] listOfFav;

    function addPerson(string memory _name, uint256 _favNum) public{
        listOfPeople.push(person({FavNum: _favNum, name: _name}));
    }

    function store(uint256 x) public {
        myFavNum = x;
    }

    function retrieveFavNum() public view returns(uint256){
        return myFavNum;
    }

    function add(uint256 x, uint256 y) public pure returns (uint256) {
        uint256 sum = x + y;
        return sum;  
    }

    
}
