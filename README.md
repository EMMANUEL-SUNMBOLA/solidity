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

## Data Types in Solidity

- `boolean` : true or false, 
- `uint` : unsigned integer +ve only // max is 256 bytes, if you don't specify size, it defaults to max
- `int` : signed integer -infinity to infinity // max is 256 bytes, if you don't specify size, it defaults to max
- `address` : regular wallet address so string
- `bytes` : bytes, 