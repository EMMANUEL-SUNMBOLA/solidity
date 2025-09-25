// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

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

    alcohol[] public alcoholData;

    function addAlchol(string _name, uint256 _proof, string _type) public{
        alcoholData.push(alcohol({name: _name, proof: _proof, type: _type}));
    }

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

        // since this function doesn't change anything in the chain, it doesn't require gas
        uint256 sum = x + y;
        return sum;  
    }



    
}

contract arrays{


    // An arrayy is a group of similar data types

    string[] names;

    function addNames(string memory _name) public {

        names.push(_name);

    }


    function fetchName(uint256 index) public view returns(string memory){

        return names[index];

    }

    function eraseName(uint256 index) public {

        // removes a data in the array
        delete names[index];

    }
}

contract structs{

    struct user{
        address addy;
        uint256 txns;
        string status;
        uint256 allocation;
    }

    user public caveman = user(0x0000000000000000000000000000000000000000, 800, "eligible", 700000);

    function getCaveAddy() public returns(address){

        return caveman.addt;

    }

    function getCaveTxn() public returns(uint256){

        return caveman.txns;

    }

    function getCaveStat() public returns(string memory){

        return caveman.status;

    }

    function getCaveAllo() public returns(uint256){

        return caveman.allocation;

    }

}

contract structarray{

    // array of structs is need to create a function that automatically adds new structs

    struct user{
        address addy;
        string username;
        uint256 age;
        uint256 portfolio;
    }

    user[] users;

    function addUser(address _addy, string memory _username, uint256 _age, uint256 _portfolio) public {

        users.push(user(_addy, _username, _age, _portfolio));
        // OR
        users.push(user({addy: _addy, username: _username, age: _age, portfolio: _portfolio}));

    }


    function getAddy(uint256 index) public view returns(address){

        return users[index].addy;

    }


    function getUsername(uint256 index) public view returns(string memory){

        return users[index].username;

    }

    function getAge(uint256 index) public view returns(uint256){

        return users[index].age;

    }

}

contract mappingstruct{


    struct user{
        string username;
        uint256 txns; 
        uint256 allocation;
        string status;
    }

    mapping( address => user ) users;

    function addUser(address _addy, string memory _username,  uint256 _txns, uint256 _alloc, string memory _status) public {

        users[_addy] = user(_username, _txns, _alloc, _status);

        // OR

        users[_addy] = user({username: _username, txns: _txns, allocation: _alloc, status: _status});

    }

    function getUsername(address _addy) public view returs(string memory){

        return users[_addy].username;

    }

}