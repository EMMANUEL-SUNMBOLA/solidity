# Solidity

## A Caveman's Ride to Solidity Prowess

### Basics

- `solidity` file extension is `.sol`
- First line must start with `solidity` version being used

    ```solidity
        // we can use different symbols to give a range of compatible versions

        pragma 0.8.19; // strictly 0.8.19

        pragma ^0.8.19; // 0.8.19 and everything above it

        pragma >= 0.8.19 < 0.8.30; // any version above 0.8.19 but below 0.8.30


    ```

### Data Types in Solidity

- `boolean` : true or false, 
- `uint` : unsigned integer +ve only // max is 256 bytes, if you don't specify size, it defaults to max
- `int` : signed integer -infinity to infinity // max is 256 bytes, if you don't specify size, it defaults to max
- `address` : regular wallet address so string
- `bytes` : bytes, 

### Visibility

- Variables, functions and almost every other thing in solidity have changable visibility, 
- `public` , `private` , `internal` , `external`

### Functions

- Layout: 

    ```solidity
        function <function_name>(<param_type> <param_name>) <visibility> <state mutability> <returns(<return_type>)>{

        }

        function addOne(int256 x) public pure returns(int256){
            x += 1;
        }

        
    ```

### Structs and Arrays in Solidity . . .

- mutability types `view` and `pure` are used to denote functions that don't change the state of the blockchain, i.e they don't require gas
- `Array` is a group of the same data type
- `Array` can be fixed lenght or dynamic 

    ```solidity
        uint256[8] eightnumbers; // fixed array

        uint256[] flexnumbers; // dynamic array
    ```

- adding data to an `Array` is simple

    ```solidity
            function addNames(string memory _name) public {

                names.push(_name);

            }
    ```

- indexing data from an `Array` is straightforward
    ```solidity 
            function fetchName(uint256 index) public view returns(string memory){

                return names[index];

            }
    ```

- deleting data in an `Array` is easy, but instead of deleting the data , it replaces it with 0 if its a `uint256` or `int256` `Array` , but for `string` it replaces the data with `""` and empty string, if it's an address array, it replaces the address with "0x0000000000000000000000000000000000000000"

<!-- I guess 0x0000000000000000000000000000000000000000 is the equivalent of 0 in hex so 0x + 0 in hexadecimal number-->

    ```solidity 

            function eraseName(uint256 index) public {

                // removes a data in the array
                delete names[index];

            }
    
    ```

- A `struct` is a custom data type devs use to group different data types
- A `struct` is an object


    ```solidity
        struct user{
            address addy;
            uint256 txn;
            string status;
        }

        user public caveman = user(0x0000000000000000000000000000000000000000, 7000, "eligible");

        // OR

        user public xxtent = user({addy: 0x0000000000000000000000000000000000000011, txn: 8000, status: "ineligible"});

        // you can use either method to create a new struct
    ```
- getting data from structs is easy, there's no print and echo in solidity

    ```solidity
        function getCaveAddy() public view returns(address){
            
            return caveman.addy;

        }

        function getTentStatus() public view returns(string memory){

            return xxtent.status;

        }
    ```

- To group a large set of structs, we make an array of the structs

    ```solidity
        user[]                              public          users;
        //declare the type of array         visibility      name

        function addUser(address _addy, uint256 _txn, string memory status) public {

            users.push(user(_addy, _txn, _status));
            //name push to add each struct to the array 

        }

        function getUserAddy(uint256 index) public view returns(address){

            return users[index]             .addy;
            //      index in the array      to access the addy of the indexed struct

        }
    ```